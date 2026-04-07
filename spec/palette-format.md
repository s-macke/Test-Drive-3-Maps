# Test Drive 3 - Palette Notes

This note summarizes the current working model for palette handling in Test Drive III.

**Status:** Partly confirmed by disassembly and partly inferred from shipped data.

## Overview

The game appears to use a 256-color VGA palette split into two 128-color banks:

- bank `0`: palette entries `0..127`
- bank `1`: palette entries `128..255`

Within each bank:

- the first `16` colors are fixed
- the next `112` colors are loaded from palette files

So the effective layout is:

| Bank       | Fixed Colors  | Loaded Colors  |
|------------|---------------|----------------|
| `0..127`   | `0..15`       | `16..127`      |
| `128..255` | `128..143`    | `144..255`     |

## Fixed Colors

The first `16` colors in each bank are preserved by the `0x150`-byte palette loader.

These colors look like a fixed EGA-style base set:

- black
- blue
- green
- cyan
- red
- magenta
- brown
- light gray
- dark gray
- light blue
- light green
- light cyan
- light red
- light magenta
- yellow
- white

This is not yet traced to an original IBM/EGA table in the executable, but the colors and ordering strongly resemble a DOS base palette.

## 112-Color Palette Loads

Disassembly-backed loader behavior:

- [`sub_CA8`](../disassembly/functions/seg000_0CA8_sub.md) loads `0x150` bytes = `112` RGB triples
- the destination is `dseg:0B9A + 3 * byte_280DC`
- this corresponds to palette entries `16..127` when `byte_280DC = 0`
- and palette entries `144..255` when `byte_280DC = 0x80`

So `sub_CA8` fills the loaded portion of one 128-color bank while leaving that bank's first `16` colors intact.

## Bank Select

The palette loaders are banked by `byte_280DC`:

- `0` selects the low bank
- `0x80` selects the high bank

Because the loader multiplies this by `3`, the palette write base shifts by `128` colors.

## 32-Color Partial Loads

There is also a second palette loader:

- [`sub_D3C`](../disassembly/functions/seg000_0D3C_sub.asm) loads `0x60` bytes = `32` RGB triples
- its destination starts at palette entry `64` relative to the selected bank

So this loader targets:

- `64..95` in the low bank, or
- `192..223` in the high bank

The exact gameplay role of this 32-color layer is still unresolved.

## Known Palette Resources

Examples of `112`-color palette resources in the shipped files:

- scene palettes in [dat-file-layouts.md](./dat-file-layouts.md)
- `OTWCOL.BIN` in `DATAC.DAT`
- car/interface palettes such as `CCERVCOL.BIN`, `CCERVSC.BIN`, and similar files

Current evidence from the extractor-side reconstruction:

- `OTWCOL.BIN` matches palette entries `16..127`
- this means its first `16` colors populate palette entries `16..31`
- not palette entries `0..15`

## Working Model

The current best model is:

1. Choose bank `0..127` or `128..255`
2. Keep that bank's first `16` base colors fixed
3. Load `112` colors from a palette file into the rest of the bank
4. Optionally apply the separate `32`-color partial load into the middle of the selected bank

This matches the traced loader behavior and the palette data patterns in the shipped assets.
