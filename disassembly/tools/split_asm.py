#!/usr/bin/env python3
"""
Split an IDA .asm file into subroutine or pure-data chunks.

Chunk boundaries are detected by lines containing:
- "S U B R O U T I N E" (or "S U B R O U T I N E S") -> *_sub.asm
- "Pure data" -> *_dat.asm

For "Pure data" chunks, the two lines immediately preceding the marker
are moved from the previous chunk into the data chunk.

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


def split_asm(asm_path: Path, output_dir: Path) -> list[Path]:
    text = asm_path.read_text(encoding="latin-1")
    lines = text.splitlines(True)

    output_dir.mkdir(parents=True, exist_ok=True)

    chunks: list[Path] = []
    preamble: list[str] = []
    current_lines: list[str] | None = None
    current_seg: str | None = None
    current_offset: str | None = None
    current_kind: str | None = None

    for line in lines:
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
            if carry:
                current_lines.extend(carry)
            current_lines.append(line)
            continue

        if current_lines is None:
            preamble.append(line)
        else:
            current_lines.append(line)

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
