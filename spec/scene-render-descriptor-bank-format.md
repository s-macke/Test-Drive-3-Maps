# Test Drive 3 - Scene Render Descriptor Bank

This document describes the scene render descriptor bank family found in `SCENE01.DAT`, `SCENE02.DAT`, and `SCENETT1.DAT`.

**Status:** Partially identified. The loader path and runtime use are now clearer than the original write-up, but several field meanings inside the source descriptors are still unresolved.

## Overview

This chunk is not a map, image, or plain object list. The game loads it with a raw block-copy routine and immediately feeds it into an expansion step that builds a pointer-based render structure.

Current best interpretation:

- a scene-specific sprite / render-descriptor bank
- used by the scene renderer to select and draw 2D object graphics
- tied to a specific route or demo scene rather than to the generic map format

Known instances:

| File                       | Offset    | Size     |
|----------------------------|-----------|----------|
| `SCENE01.DAT`              | `0x15490` | `0x28D6` |
| `SCENE02.DAT`              | `0x1229A` | `0x30B2` |
| `DATAB.DAT` `SCENETT1.DAT` | `0x1ED2C` | `0x28D6` |

`SCENE01.DAT` and `SCENETT1.DAT` are byte-identical. `SCENE02.DAT` is a same-family variant with a different size and header values, but it decodes into coherent sprite leaves with the same current extractor.

## Loader Path

The block is loaded by [`sub_DBA`](../disassembly/functions/seg000_0DBA_sub.asm), which copies the file contents directly into memory without decompression.

The first known consumer is [`sub_10455`](../disassembly/functions/seg006_2605_sub.asm), called from:

- [`sub_70AE`](../disassembly/functions/seg001_536E_sub.asm) for the title/demo setup
- [`sub_83E0`](../disassembly/functions/seg002_0D10_sub.asm) for the scene setup path

`sub_10455` then expands the block into an in-memory pointer structure that is later consumed by the scene renderer.

## Binary Structure

The fully traced structure below refers to the byte-identical `SCENE01.DAT` / `SCENETT1.DAT` bank.

**Total size:** `0x28D6` bytes

### Layout Summary

| Offset Range      | Size     | Meaning                                                        |
|-------------------|----------|----------------------------------------------------------------|
| `0x0000 - 0x0007` | `0x0008` | Header                                                         |
| `0x0008 - 0x068F` | `0x0688` | `209` fixed-size source descriptor slots (`8` bytes each)      |
| `0x0690 - 0x2865` | `0x21D6` | Substitution region processed in place by the first-stage pass |
| `0x2856 - 0x2865` | `0x0010` | 16-byte substitution table at the end of that region           |
| `0x2866 - 0x28D5` | `0x0070` | Trailing bytes outside the first-stage substitution range      |

## Header

The first eight bytes are:

```text
00 00 90 06 66 28 20 00
```

Interpreted as little-endian words:

| Offset   | Value    | Meaning                                           |
|----------|----------|---------------------------------------------------|
| `0x0000` | `0x0000` | Unknown / reserved                                |
| `0x0002` | `0x0690` | Start of the in-place substitution range          |
| `0x0004` | `0x2866` | End marker used by the first-stage token expander |
| `0x0006` | `0x0020` | Root entry count (`32`)                           |

The values at `0x0002`, `0x0004`, and `0x0006` match the fields read by [`sub_10455`](../disassembly/functions/seg006_2605_sub.asm).

### SCENE02 Variant Header

`SCENE02.DAT @ 0x1229A` starts with:

```text
00 00 B8 06 42 30 20 00
```

Interpreted as little-endian words:

| Offset   | Value    | Meaning |
|----------|----------|---------|
| `0x0000` | `0x0000` | Unknown / reserved |
| `0x0002` | `0x06B8` | Start of the in-place substitution range |
| `0x0004` | `0x3042` | End marker used by the first-stage token expander |
| `0x0006` | `0x0020` | Root entry count (`32`) |

This keeps the same overall header shape as the `0x28D6` bank, but expands the substitution region and total block size.

## First-Stage Expansion

Before structure construction, the game runs a simple in-place substitution pass via [`sub_1043A`](../disassembly/functions/seg006_25EA_sub.asm):

- bytes from `range_start` to `range_end - 1` are scanned in place
- values `< 0x10` are kept as-is
- values `>= 0x10` are remapped through a 16-byte table located at `range_end - 0x10`

For the traced `0x28D6` chunk:

- range start: `0x0690`
- range end: `0x2866`
- translation table: `0x2856 - 0x2865`

This is a small in-place substitution pass, not general decompression.

For the `SCENE02.DAT` variant:

- range start: `0x06B8`
- range end: `0x3042`
- the same in-place substitution logic appears to apply

## Source Descriptor Bank

The area from `0x0008` to `0x068F` contains `209` source descriptors of `8` bytes each.

The traced builder path addresses the first `32` of those descriptors directly as roots, because [`sub_10455`](../disassembly/functions/seg006_2605_sub.asm) iterates `word_214F2 = 0x20`.

Each descriptor consumed by [`sub_10566`](../disassembly/functions/seg006_2716_sub.asm) has these traced source fields:

- word at `+0`
- word at `+2`
- word at `+4`

What can be stated safely:

- `word +0` is split into bytes and propagated into the expanded output structure.
- `word +2` and `word +4` behave like in-block references, but they do not point only into `0x0690 - 0x2865`.
- Many descriptors reference earlier bytes inside the `0x0008 - 0x068F` region, so the source block is more interleaved than the original write-up assumed.
- I have not found a traced consumer for `word +6`, even though it exists in every `8`-byte source slot.

The later render path shows that expanded leaf entries eventually carry sprite width/height plus row control data, but that does not mean every source descriptor maps directly to one finished sprite.

## Expansion Structure

`sub_10455` allocates an output structure and iterates over `32` top-level entries. For each entry, [`sub_104DC`](../disassembly/functions/seg006_268C_sub.asm) and [`sub_10566`](../disassembly/functions/seg006_2716_sub.asm) build a pointer-based lookup structure.

Important observed properties:

- fanout constant: `22` (`byte_285AB = 0x16`)
- root count: `32`
- builder state is selected by small code tables in [`sub_104DC`](../disassembly/functions/seg006_268C_sub.asm) and [`sub_10B82`](../disassembly/functions/seg006_2D32_sub.asm)
- the expansion step emits leaf records that later contain width, height, row-run counts, and pointers into pixel data

This is still tree-like in memory, but it is clearly tied to render-time sprite selection rather than being just a generic spatial lookup.

## Runtime Use

The strongest evidence against the old "scene lookup tree" label is the later consumer chain:

- [`sub_10F0A`](../disassembly/functions/seg006_30BA_sub.asm) is part of the scene rendering path.
- It calls [`sub_105B7`](../disassembly/functions/seg006_2767_sub.asm), which selects an expanded entry from the structure built by `sub_10455`.
- `sub_105B7` extracts dimensions and row metadata, then calls [`sub_10665`](../disassembly/functions/seg006_2815_sub.asm) or [`sub_10840`](../disassembly/functions/seg006_29F0_sub.asm).
- Those routines, together with [`sub_1076A`](../disassembly/functions/seg006_291A_sub.asm) and [`sub_10948`](../disassembly/functions/seg006_2AF8_sub.asm), rasterize transparent 2D data into scene buffers.

So the `0x28D6` chunk participates directly in drawing scene objects or billboard-like graphics. That is much firmer than the earlier guess about visibility or traversal.

## Extracted Runtime Leaf Record

The current sprite extractor does not dump the raw `0x28D6` source descriptors directly. It first rebuilds the runtime leaf records that the renderer consumes after `sub_10455` has expanded the bank.

At that expanded stage, each decoded leaf record currently looks like this:

| Offset      | Size              | Meaning |
|-------------|-------------------|---------|
| `+0x00`     | `1`               | Source row count |
| `+0x01`     | `1`               | Output width in pixels |
| `+0x02`     | `1`               | Output height in pixels |
| `+0x03`     | `sourceRowCount`  | Row-run table |
| following   | `sourceRowCount * width` | Indexed pixel rows |

Observed properties of this runtime format:

- `sourceRowCount` is the number of stored source rows before vertical expansion.
- The row-run table gives the repeat count for each stored row.
- `sum(rowRuns) == height` for valid decoded leaves.
- The pixel plane stores `sourceRowCount` rows of `width` indexed pixels.
- Expanding the sprite means repeating each stored row according to its row-run entry.

This layout is an extracted runtime format, not necessarily a verbatim substructure in the original `0x28D6` source block.

## Rasterization Notes

The later rasterizers treat palette index `0` as transparent. That matches the current extractor, which writes the sprite PNGs with indexed transparency on color `0`.

The traced path is:

- [`sub_105B7`](../disassembly/functions/seg006_2767_sub.asm) selects one expanded entry and reads its dimensions plus row metadata.
- [`sub_1076A`](../disassembly/functions/seg006_291A_sub.asm) and [`sub_10948`](../disassembly/functions/seg006_2AF8_sub.asm) consume the row/pixel stream and skip transparent pixels.

## Extraction Status

The repository now contains an extractor for these banks:

- command: `npm run spriteextract`
- implementation: [`src/tools/spriteextract/extract-scene-sprites.ts`](../src/tools/spriteextract/extract-scene-sprites.ts)
- shared logic: [`src/shared/scene-sprites.ts`](../src/shared/scene-sprites.ts)

Current output:

- `SCENE01`: `128` unique sprites
- `SCENE02`: `110` unique sprites
- `SCENETT1`: `128` unique sprites

Output directories:

- [`images/SCENE01_SPRITES`](../images/SCENE01_SPRITES)
- [`images/SCENE02_SPRITES`](../images/SCENE02_SPRITES)
- [`images/SCENETT1_SPRITES`](../images/SCENETT1_SPRITES)

## Current Caveat

The extractor is usable, but the builder is still an approximation of the runtime expansion code.

Current implementation limits:

- it uses a larger offline workspace (`0x10000`) instead of the tighter traced runtime arena
- it stops once rebuilt records would move outside that offline workspace
- it skips invalid late root tables instead of claiming a perfect emulation of every runtime edge case

So the exported sprites are good evidence for the bank containing scene-object graphics, but the exact source-to-runtime transformation is not yet fully reconstructed.

## Working Interpretation

The safest current label is:

- `Scene render descriptor bank`
- or more informally, `scene sprite bank`

Plausible uses:

- route-dependent bank of compressed 2D scene-object graphics
- descriptor tables for choosing sprite variants during scene rendering
- title/demo scene render assets that are built into a runtime lookup structure

Less likely interpretations:

- plain map data
- stand-alone image/palette resource
- object placement list
- generic visibility tree with no render data

## Open Questions

- Exact meaning of all four words in each `8`-byte source descriptor
- Whether the first `32` descriptors are only roots and the remaining `177` act as shared subrecords
- What the trailing `0x0070` bytes after `0x2866` contain
- How this chunk relates to `SCENETTP.BIN` and the nearby scene object/tile banks
