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

## OTWCOL.BIN Internal Structure

The 112 colors `OTWCOL.BIN` writes into palette slots `0x10..0x7F` are not a flat
sampler — they are laid out as **7 hue blocks of 16 entries each**, where every
block is a monotone dark-to-light ramp inside one hue family.

| Slot range   | Hue family       | Ramp endpoints (approx RGB) |
|--------------|------------------|-----------------------------|
| `0x10..0x1F` | neutral gray     | `08 08 08` → `FC E0 FC`     |
| `0x20..0x2F` | red              | `40 00 00` → `FC D8 D8`     |
| `0x30..0x3F` | brown / tan      | `40 20 00` → `E4 AC 8C`     |
| `0x40..0x4F` | blue             | `00 00 40` → `D8 D8 FC`     |
| `0x50..0x5F` | green            | `18 28 10` → `F8 FC D0`     |
| `0x60..0x6F` | teal             | `00 18 20` → `EC FC F0`     |
| `0x70..0x7F` | steel / sky blue | `00 14 28` → `D8 EC FC`     |

So a palette index `0xHB` in this range decomposes naturally into
`H` = hue-family nibble and `B` = brightness-within-hue nibble. The brightness
nibble is **strictly monotonic** within each block: higher `B` means lighter.

The arrangement is identical across all OTWCOL variants we've sampled, which is
why the layout is documented here under the format rather than as per-map data.

### Why the layout matters — OR-blend lighting

This structure is the precondition that makes the engine's render-mode-0
("light") polygon path work. The rasterizers in `sub_15ADD` (triangle/quad) and
`sub_11EA0` (line) take an alternate scanline path for these polygons:

```
or  es:[di], ax     ; instead of `rep stosw`
```

i.e. the polygon's resolved 16-bit dither pair is **bitwise-OR'd** into the
framebuffer rather than overwriting it. The typical mode-0 pair is `0x0707`,
which OR's the constant `0x07` into every covered pixel.

Because the OTWCOL layout above stores `H` in the high nibble and `B` in the
low nibble, OR-ing `0x07` preserves the hue family and **raises the brightness
nibble to at least 7**:

| Background pixel      | OR with 0x07 | Effect                    |
|-----------------------|--------------|---------------------------|
| `0x40` darkest blue   | `0x47`       | jumps to mid-bright blue  |
| `0x50` darkest green  | `0x57`       | jumps to mid-bright green |
| `0x68` mid teal       | `0x6F`       | jumps to brightest teal   |
| `0x77` already bright | `0x77`       | no-op (saturated)         |

That is the entire "light polygon" effect: in-palette brightening that follows
the hue of whatever the polygon is drawn on top of. The fixed EGA block at
`0x00..0x0F` does **not** participate cleanly in this trick (it has its own
unrelated layout), which is one reason that range is excluded from
`OTWCOL.BIN`'s payload.

Practical consequence for tooling: any reconstructor that re-packs or
re-quantises `OTWCOL.BIN` must preserve the block-and-ramp ordering, otherwise
mode-0 polygons will produce nonsense colors at runtime even if the individual
RGB triples are still present in the palette.

## Working Model

The current best model is:

1. Choose bank `0..127` or `128..255`
2. Keep that bank's first `16` base colors fixed
3. Load `112` colors from a palette file into the rest of the bank
4. Optionally apply the separate `32`-color partial load into the middle of the selected bank

This matches the traced loader behavior and the palette data patterns in the shipped assets.
