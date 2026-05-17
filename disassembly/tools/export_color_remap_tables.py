#!/usr/bin/env python3
"""
Export Test Drive 3 paired-pixel lookup tables ("color remap") as Markdown.

What the table is
-----------------
Each map contains a 256-entry table at ``map_base + 0x1F27``. Every entry is a
2-byte ``(left_pixel, right_pixel)`` VGA palette-index pair that the engine
writes directly to the framebuffer:

* ``sub_11408`` (sky/horizon gradient): builds a sky-band pair with
  ``rep stosw`` of one full 320-pixel scanline, then ``add ax, 0x0101`` to
  walk the gradient.
* ``sub_15153`` (sprite blitter, race mode 0x13 only): emits one pair via
  ``mov [di], cx`` for every two sprite pixels.

The table is indexed by ``idx = (high_seed << 4) | low_seed`` where the seeds
come from either a header byte (sky base), the header word ``word_285B0``
(sky/fog gradient), or sprite source bytes (mode 0x13).

* Diagonal entries (``a == b``) are solid colors; the sky-base lookup in
  ``sub_11408`` only ever hits diagonals.
* Off-diagonal entries (``a != b``) are 1-pixel-wide dither pairs that
  visually average to an intermediate shade. Reachable through
  ``word_285B0`` or the mode-0x13 sprite path.

Identity init
-------------
``sub_8680`` rewrites the table to a 16x16 identity cube in race modes 9 and
0xD: ``entry[idx] = (idx & 0xF, idx >> 4)`` — that is, ``(column, row)``.
Most published map files store solid colors (``a == b``) at most slots and
override only the slots their scene actually needs, so the count of
"identity-init pairs" tells you how much of the file is unchanged baseline.
"""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path


REMAP_OFFSET = 0x1F27
REMAP_ENTRY_COUNT = 256

# Pre-grid header seeds that key into the remap table.
# (offset relative to map_base, label, what it feeds.)
SKY_BASE_DAY_OFFSET = 0x2E   # byte_285AC
SKY_BASE_NIGHT_OFFSET = 0x2F  # byte_285AD
SKY_FOG_SEED_OFFSET = 0x32    # word_285B0 (little-endian)


@dataclass(frozen=True)
class MapSpec:
    group: str
    label: str
    dat_file: str
    map_offset: int


MAP_SPECS: tuple[MapSpec, ...] = (
    MapSpec("Pacific Coast", "Pacific Coast #1", "SCENE01.DAT", 0x10240),
    MapSpec("Pacific Coast", "Pacific Coast #2", "SCENE01.DAT", 0x1A1CC),
    MapSpec("Pacific Coast", "Pacific Coast #3", "SCENE01.DAT", 0x1C319),
    MapSpec("Pacific Coast", "Pacific Coast #4", "SCENE01.DAT", 0x21565),
    MapSpec("Pacific Coast", "Pacific Coast #5", "SCENE01.DAT", 0x236B2),
    MapSpec("Cape Cod", "Cape Cod #1", "SCENE02.DAT", 0x1014D),
    MapSpec("Cape Cod", "Cape Cod #2", "SCENE02.DAT", 0x2158F),
    MapSpec("Cape Cod", "Cape Cod #3", "SCENE02.DAT", 0x26273),
    MapSpec("Cape Cod", "Cape Cod #4", "SCENE02.DAT", 0x283C0),
    MapSpec("Cape Cod", "Cape Cod #5", "SCENE02.DAT", 0x2D87C),
    MapSpec("Title Map", "Title Screen", "DATAB.DAT", 0x21603),
)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Export Test Drive 3 paired-pixel lookup tables as Markdown.",
    )
    parser.add_argument(
        "--base-dir",
        type=Path,
        default=None,
        help="Directory containing the DAT files (default: public/base relative to repo root).",
    )
    parser.add_argument(
        "--row-size",
        type=int,
        default=16,
        help=(
            "Number of indices per Markdown sub-table (default: 16, matching "
            "one row of the natural 16x16 grid where high_nibble selects the row)."
        ),
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=None,
        help="Optional output Markdown file. Prints to stdout when omitted.",
    )
    return parser.parse_args()


def repo_root() -> Path:
    return Path(__file__).resolve().parents[2]


def load_dat_files(base_dir: Path) -> dict[str, bytes]:
    needed = sorted({spec.dat_file for spec in MAP_SPECS})
    return {name: (base_dir / name).read_bytes() for name in needed}


# ---------------------------------------------------------------------------
# Table reading
# ---------------------------------------------------------------------------


def read_remap_table(dat: bytes, map_offset: int) -> list[tuple[int, int]]:
    """Return the 256 ``(left_pixel, right_pixel)`` entries as little-endian pairs."""
    start = map_offset + REMAP_OFFSET
    return [
        (dat[start + index * 2], dat[start + index * 2 + 1])
        for index in range(REMAP_ENTRY_COUNT)
    ]


def read_header_seeds(dat: bytes, map_offset: int) -> dict[str, int]:
    """Return the pre-grid header bytes that key into the remap table."""
    return {
        "sky_base_day": dat[map_offset + SKY_BASE_DAY_OFFSET],
        "sky_base_night": dat[map_offset + SKY_BASE_NIGHT_OFFSET],
        "sky_fog_seed": dat[map_offset + SKY_FOG_SEED_OFFSET]
        | (dat[map_offset + SKY_FOG_SEED_OFFSET + 1] << 8),
    }


# ---------------------------------------------------------------------------
# Semantic helpers
# ---------------------------------------------------------------------------


def identity_pair_for(index: int) -> tuple[int, int]:
    """The pair the engine identity-init writes (sub_8680, modes 9 / 0xD)."""
    return (index & 0xF, (index >> 4) & 0xF)


def is_diagonal_index(index: int) -> bool:
    """Diagonal indices are the only ones reachable from the sub_11408 sky-base lookup."""
    return (index & 0xF) == ((index >> 4) & 0xF)


def index_for_sky_base(seed: int) -> int:
    """The diagonal index hit by ``sub_11408`` first lookup, given a single seed byte."""
    nibble = seed & 0xF
    return (nibble << 4) | nibble


def index_for_sky_fog(seed_word: int) -> int:
    """The (possibly off-diagonal) index hit by ``sub_11408`` second lookup.

    The engine reads ``ax = word_285B0``, then computes
    ``bl = al | ((ah & 0xF) << 4)`` (four left-shifts of ``ah`` reduce it to
    its low nibble) and uses ``bx = 2 * bl`` to index the table. ``al`` can
    affect both nibbles of the index if its high nibble is set.
    """
    al = seed_word & 0xFF
    ah = (seed_word >> 8) & 0xFF
    return (al | ((ah & 0xF) << 4)) & 0xFF


# ---------------------------------------------------------------------------
# Formatting
# ---------------------------------------------------------------------------


def format_pair(pair: tuple[int, int]) -> str:
    return f"`{pair[0]:02X} {pair[1]:02X}`"


def format_pair_with_marker(pair: tuple[int, int], index: int) -> str:
    """Add a small marker for diagonal indices so the grid structure is visible."""
    marker = "*" if is_diagonal_index(index) else " "
    return f"`{pair[0]:02X} {pair[1]:02X}`{marker}"


def format_summary_row(spec: MapSpec, table: list[tuple[int, int]]) -> str:
    solid_pairs = sum(1 for a, b in table if a == b)
    dither_pairs = sum(1 for a, b in table if a != b)
    identity_init_pairs = sum(
        1 for index, pair in enumerate(table) if pair == identity_pair_for(index)
    )
    diagonals_customized = sum(
        1
        for index, pair in enumerate(table)
        if is_diagonal_index(index) and pair != identity_pair_for(index)
    )
    off_diagonals_customized = sum(
        1
        for index, pair in enumerate(table)
        if not is_diagonal_index(index) and pair != identity_pair_for(index)
    )
    distinct_pairs = len(set(table))
    distinct_values = len({value for pair in table for value in pair})
    return (
        f"| {spec.label} | `{spec.dat_file}` | `0x{spec.map_offset:05X}` | "
        f"{solid_pairs} | {dither_pairs} | {identity_init_pairs} | "
        f"{diagonals_customized} | {off_diagonals_customized} | "
        f"{distinct_pairs} | {distinct_values} |"
    )


def format_seeds_row(
    spec: MapSpec, seeds: dict[str, int], table: list[tuple[int, int]]
) -> str:
    day_seed = seeds["sky_base_day"]
    night_seed = seeds["sky_base_night"]
    fog_seed = seeds["sky_fog_seed"]
    day_index = index_for_sky_base(day_seed)
    night_index = index_for_sky_base(night_seed)
    fog_index = index_for_sky_fog(fog_seed)
    return (
        f"| {spec.label} | "
        f"`0x{day_seed:02X}` → idx `0x{day_index:02X}` = {format_pair(table[day_index])} | "
        f"`0x{night_seed:02X}` → idx `0x{night_index:02X}` = {format_pair(table[night_index])} | "
        f"`0x{fog_seed:04X}` → idx `0x{fog_index:02X}` = {format_pair(table[fog_index])} |"
    )


def render_group_tables(
    group_name: str,
    specs: list[MapSpec],
    tables: dict[str, list[tuple[int, int]]],
    row_size: int,
) -> list[str]:
    lines = [f"## {group_name}", ""]
    lines.append(
        "Pairs marked `*` are diagonal entries (the only ones the sky-base "
        "lookup in `sub_11408` can hit)."
    )
    lines.append("")
    for start in range(0, REMAP_ENTRY_COUNT, row_size):
        end = min(start + row_size - 1, REMAP_ENTRY_COUNT - 1)
        lines.append(f"### Indices `0x{start:02X}-0x{end:02X}`")
        lines.append("")
        header = "| Index | " + " | ".join(spec.label for spec in specs) + " |"
        divider = "|---|" + "---|" * len(specs)
        lines.append(header)
        lines.append(divider)
        for index in range(start, end + 1):
            row = [f"`0x{index:02X}`"]
            for spec in specs:
                row.append(format_pair_with_marker(tables[spec.label][index], index))
            lines.append("| " + " | ".join(row) + " |")
        lines.append("")
    return lines


def render_markdown(
    specs: tuple[MapSpec, ...],
    tables: dict[str, list[tuple[int, int]]],
    header_seeds: dict[str, dict[str, int]],
    row_size: int,
) -> str:
    lines: list[str] = [
        "# Paired-Pixel Lookup Tables",
        "",
        "Generated from the 256-entry table at `map_base + 0x1F27`.",
        "Each entry is a 2-byte `(left_pixel, right_pixel)` VGA palette-index pair",
        "consumed by `sub_11408` (sky/horizon gradient) and, in race mode `0x13`,",
        "by `sub_15153` (sprite blitter). The table is indexed by",
        "`idx = (high_seed << 4) | low_seed`, so `entry[idx]` lives on the natural",
        "16x16 grid where the row is `idx >> 4` and the column is `idx & 0xF`.",
        "",
        "## Summary",
        "",
        "*Solid* = `a == b` (entry emits a flat-color pixel pair).",
        "*Dither* = `a != b` (entry emits a 1-pixel-wide checkerboard between two palette indices).",
        "*Identity-init* = matches `sub_8680`'s mode-9 / mode-0xD reset value `(col, row)`.",
        "",
        "| Map | DAT File | Map Offset | Solid | Dither | Identity-Init "
        "| Diagonals Customized | Off-Diagonals Customized | Distinct Pairs | Distinct Byte Values |",
        "|---|---|---:|---:|---:|---:|---:|---:|---:|---:|",
    ]

    for spec in specs:
        lines.append(format_summary_row(spec, tables[spec.label]))

    lines.append("")
    lines.append("## Header Seeds That Index The Table")
    lines.append("")
    lines.append(
        "The pre-grid header carries the seeds that `sub_11408` packs into "
        "indices. Below shows the seed value, the computed index, and the "
        "table entry that index resolves to. Day vs night sky base is "
        "selected at runtime by `byte_285B4` (map `0x36`)."
    )
    lines.append("")
    lines.append(
        "| Map | Sky base (day) `byte_285AC` @ `0x2E` "
        "| Sky base (night) `byte_285AD` @ `0x2F` "
        "| Sky/fog gradient `word_285B0` @ `0x32` |"
    )
    lines.append("|---|---|---|---|")
    for spec in specs:
        lines.append(format_seeds_row(spec, header_seeds[spec.label], tables[spec.label]))
    lines.append("")

    grouped_specs: dict[str, list[MapSpec]] = {}
    for spec in specs:
        grouped_specs.setdefault(spec.group, []).append(spec)

    for group_name, group in grouped_specs.items():
        lines.extend(render_group_tables(group_name, group, tables, row_size))

    return "\n".join(lines)


def main() -> None:
    args = parse_args()
    root = repo_root()
    base_dir = args.base_dir if args.base_dir is not None else root / "public" / "base"
    dat_files = load_dat_files(base_dir)

    tables = {
        spec.label: read_remap_table(dat_files[spec.dat_file], spec.map_offset)
        for spec in MAP_SPECS
    }
    header_seeds = {
        spec.label: read_header_seeds(dat_files[spec.dat_file], spec.map_offset)
        for spec in MAP_SPECS
    }
    markdown = render_markdown(MAP_SPECS, tables, header_seeds, args.row_size)

    if args.output is not None:
        args.output.write_text(markdown + "\n", encoding="utf-8")
    else:
        print(markdown)


if __name__ == "__main__":
    main()
