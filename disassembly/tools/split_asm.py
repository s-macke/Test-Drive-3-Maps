#!/usr/bin/env python3
"""
Split an IDA .asm file into subroutine or pure-data chunks.

Chunk boundaries are detected by lines containing:
- "S U B R O U T I N E" (or "S U B R O U T I N E S") -> *_sub.asm
- "Pure data" -> *_dat.asm
- Separator lines ("; ---...") after "endp" when followed by data (db/dw/dd) -> *_dat.asm

For "Pure data" chunks, the two lines immediately preceding the marker
are moved from the previous chunk into the data chunk.

For data sections after subroutines (separator + db/dw/dd), the data is
split into a separate file when a separator line follows an "endp" and
the next substantive content is data statements (not a new SUBROUTINE).

Output files are named using the seg:offset from the same line, e.g.
"seg000_0000_sub.asm" or "dseg_0000_dat.asm".
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path


SUB_RE = re.compile(r"S U B R O U T I N E(?: S)?")
DATA_RE = re.compile(r"\bPure data\b", re.IGNORECASE)
SEG_RE = re.compile(r"^([A-Za-z][\w$]*):([0-9A-Fa-f]+)")

# New patterns for detecting data sections after endp
SEPARATOR_RE = re.compile(r"; -+\s*$")
ENDP_RE = re.compile(r"\bendp\b", re.IGNORECASE)
# Match data statements: db, dw, dd, dq, dt (but not align alone, or instructions)
DATA_STMT_RE = re.compile(r"^\s*(?:db|dw|dd|dq|dt)\b", re.IGNORECASE)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Split an IDA .asm file into subroutine chunks."
    )
    parser.add_argument(
        "asm_path",
        nargs="?",
        default="td3.asm",
        help="Path to the input .asm file (default: td3.asm)",
    )
    parser.add_argument(
        "-o",
        "--output-dir",
        default="functions",
        help="Output directory for chunks (default: functions)",
    )
    return parser.parse_args()


def find_seg_offset(line: str) -> tuple[str, str] | None:
    match = SEG_RE.match(line)
    if match:
        return match.group(1), match.group(2)
    stripped = line.lstrip()
    match = SEG_RE.match(stripped)
    if match:
        return match.group(1), match.group(2)
    return None


def unique_path(base: Path) -> Path:
    if not base.exists():
        return base
    stem = base.stem
    suffix = base.suffix
    counter = 2
    while True:
        candidate = base.with_name(f"{stem}_{counter}{suffix}")
        if not candidate.exists():
            return candidate
        counter += 1


def write_chunk(
    output_dir: Path, seg: str, offset: str, kind: str, lines: list[str]
) -> Path:
    suffix = "sub" if kind == "sub" else "dat"
    filename = f"{seg}_{offset}_{suffix}.asm"
    path = unique_path(output_dir / filename)
    with path.open("w", encoding="latin-1", newline="") as handle:
        handle.write("".join(lines))
    return path


def detect_marker(line: str) -> str | None:
    if SUB_RE.search(line):
        return "sub"
    if DATA_RE.search(line):
        return "dat"
    return None


def is_separator_line(line: str) -> bool:
    """Check if line is a separator (e.g., '; ---------------------------------------------------------------------------')."""
    return bool(SEPARATOR_RE.search(line))


def has_endp(line: str) -> bool:
    """Check if line contains 'endp' (end of procedure)."""
    return bool(ENDP_RE.search(line))


def is_data_statement(line: str) -> bool:
    """Check if line contains a data statement (db, dw, dd, dq, dt)."""
    # Extract the part after seg:offset if present
    seg_offset = find_seg_offset(line)
    if seg_offset:
        # Get content after seg:offset
        match = SEG_RE.search(line.lstrip())
        if match:
            content = line[line.find(match.group(0)) + len(match.group(0)):]
            return bool(DATA_STMT_RE.match(content))
    return bool(DATA_STMT_RE.search(line))


def is_blank_or_align(line: str) -> bool:
    """Check if line is blank or only contains align directive."""
    stripped = line.strip()
    if not stripped:
        return True
    # Check for align directive
    seg_offset = find_seg_offset(line)
    if seg_offset:
        match = SEG_RE.search(line.lstrip())
        if match:
            content = line[line.find(match.group(0)) + len(match.group(0)):].strip()
            return not content or content.lower().startswith("align")
    return stripped.lower().startswith("align")


def lookahead_is_data_section(lines: list[str], start_idx: int) -> bool:
    """
    Look ahead from start_idx to determine if the following content is a data section.
    Returns True if the first substantive content (skipping blanks/align) is data (db/dw/dd/etc).
    Returns False if it's a SUBROUTINE marker or code instructions.
    """
    for i in range(start_idx, min(start_idx + 20, len(lines))):
        line = lines[i]
        # If we hit a SUBROUTINE marker, it's not a data section
        if SUB_RE.search(line):
            return False
        # Skip blank lines and align statements
        if is_blank_or_align(line):
            continue
        # Check if it's a data statement
        return is_data_statement(line)
    return False


def split_asm(asm_path: Path, output_dir: Path) -> list[Path]:
    text = asm_path.read_text(encoding="latin-1")
    lines = text.splitlines(True)

    output_dir.mkdir(parents=True, exist_ok=True)

    # Clear existing .asm files from output directory
    for old_file in output_dir.glob("*.asm"):
        old_file.unlink()

    chunks: list[Path] = []
    preamble: list[str] = []
    current_lines: list[str] | None = None
    current_seg: str | None = None
    current_offset: str | None = None
    current_kind: str | None = None
    seen_endp = False  # Track if we've seen endp in current subroutine

    idx = 0
    while idx < len(lines):
        line = lines[idx]

        # Check for SUBROUTINE or "Pure data" markers
        kind = detect_marker(line)
        if kind:
            seg_offset = find_seg_offset(line)
            if not seg_offset:
                raise SystemExit(
                    f"Marker line missing seg:offset: {line.strip()}"
                )

            carry: list[str] = []
            if kind == "dat":
                source = current_lines if current_lines is not None else preamble
                if source:
                    carry = source[-2:]
                    del source[-2:]

            if current_lines is not None:
                chunks.append(
                    write_chunk(
                        output_dir, current_seg, current_offset, current_kind, current_lines
                    )
                )
                current_lines = []
            else:
                current_lines = []
                if preamble:
                    current_lines.extend(preamble)
                    preamble = []

            current_seg, current_offset = seg_offset
            current_kind = kind
            seen_endp = False  # Reset endp tracking for new chunk
            if carry:
                current_lines.extend(carry)
            current_lines.append(line)
            idx += 1
            continue

        # Track endp lines
        if has_endp(line):
            seen_endp = True

        # Check for separator line after endp that precedes a data section
        if seen_endp and is_separator_line(line) and current_lines is not None:
            # Look ahead to see if this is a data section
            if lookahead_is_data_section(lines, idx + 1):
                # Get seg:offset from the separator line for the data file name
                seg_offset = find_seg_offset(line)
                if seg_offset:
                    # Write out current subroutine chunk (without this separator line)
                    chunks.append(
                        write_chunk(
                            output_dir, current_seg, current_offset, current_kind, current_lines
                        )
                    )
                    # Start new data chunk
                    current_seg, current_offset = seg_offset
                    current_kind = "dat"
                    current_lines = [line]
                    seen_endp = False
                    idx += 1
                    continue

        if current_lines is None:
            preamble.append(line)
        else:
            current_lines.append(line)
        idx += 1

    if current_lines is None:
        raise SystemExit("No subroutine markers found; nothing to split.")

    chunks.append(
        write_chunk(output_dir, current_seg, current_offset, current_kind, current_lines)
    )
    return chunks


def main() -> None:
    args = parse_args()
    asm_path = Path(args.asm_path)
    output_dir = Path(args.output_dir)

    if not asm_path.is_file():
        raise SystemExit(f"Input file not found: {asm_path}")

    chunks = split_asm(asm_path, output_dir)
    print(f"Wrote {len(chunks)} chunk(s) to {output_dir}")


if __name__ == "__main__":
    main()
