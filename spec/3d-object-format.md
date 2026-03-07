# Test Drive 3 - 3D Object File Format Specification

This document describes the binary format used for 3D objects in Test Drive III: The Passion (1990).

**Status:** Work in progress - some fields are not fully understood.

## Overview

3D objects are stored as polygon meshes with vertex colors. The format supports multiple primitive types including points, lines, triangles, and quads.

## Object Variants

The format has two variants with different header sizes:

| Variant | Header Size | Typical Consumers |
|---------|-------------|-------------------|
| Short   | 4 bytes     | Tile paths, plus some scene-object consumers |
| Long    | 8 bytes     | Object-bank consumers with alternate-shape support, vehicles |

Important clarification:

- The `isobj` flag is a viewer/extractor convenience, not a traced original in-file flag.
- In the original game, the choice is made by **which parser/consumer reaches the record**, not by a single decoded bit in the first 4 bytes.
- The same scene-object bank (`SCENETTO.BIN`) is consumed by both:
  - a 4-byte-header path (`sub_14FC4`)
  - 8-byte-header paths (`sub_12F6F`, `sub_13069`)

So the header is not currently known to be self-describing enough to replace `isobj` with a guaranteed in-band test.

Practical note from rescanning the shipped files in `public/base`:

- For the shipped assets, a structural heuristic gets very close:
  - `count3 > 0` implies the short form
  - `byte3 != 0` strongly indicates the long form
  - otherwise, object-bank long records usually reveal themselves because bytes `+4/+5/+6`
    form a plausible alternate shape header whose data fits inside the entry
- This heuristic matches the current manual tables almost completely, but not perfectly.
- Two entries currently disagree with the old hardcoded lists and should be treated as outliers
  pending visual/runtime verification:
  - `objs1[37]` looks short: its entry span fits the 4-byte form exactly and does not fit the 8-byte form
  - `objs2[42]` looks long/alternate-only: bytes `+0/+1` are zero, while `+4/+5` hold plausible counts

So for tooling aimed at the shipped data, the header is probably sufficient with structural validation.
For a format spec, that still falls short of a proven universal discriminator.

## Binary Structure

### Header

```
Offset  Size  Field       Description
------  ----  -----       -----------
0x00    1     npoly       Number of polygons
0x01    1     npoints     Number of vertices
0x02    1     count3      Tile-only auxiliary record count in sampled data
0x03    1     byte3       Variant-specific flags/metadata byte
```

For objects (`isobj=true`), there are 4 additional bytes:
```
0x04    4     ???         Object-only metadata (purpose still unclear)
```

Observed values in the shipped assets:

- Tiles: `byte3` is always `0`; `count3` is often non-zero
- Scene objects: `count3` is always `0`; `byte3` values `0,1,2,4,5` occur
- Cars (`*.POB`): `count3` is always `0`; `byte3` is `2`

### Vertex Data

Immediately follows the header. Vertices are stored as **three separate arrays** (not interleaved):

```
Array 1: npoints × int16    First coordinate (stored as Z in viewer)
Array 2: npoints × int16    Second coordinate (stored as X in viewer)
Array 3: npoints × int16    Third coordinate (stored as Y in viewer)
```

All values are 16-bit signed integers, little-endian.

**Note:** The coordinate mapping (which array is X/Y/Z) was determined empirically for the 3D viewer. The original game may interpret these differently.

**Total size:** `npoints × 6` bytes

### Polygon Data

Each polygon record is 8 bytes (4 × 16-bit words):

```
Offset  Size  Field
------  ----  -----
0x00    2     word0
0x02    2     word1
0x04    2     word2
0x06    2     word3
```

#### Bit Layout

```
word0:  [15:13] type     [12:11] flags   [10:0] index0
word1:  [15:11] color0   [10:0]  index1
word2:  [15:11] color1   [10:0]  index2
word3:  [15:11] material [10:0]  index3
```

- `type` (3 bits): Primitive type
- `color0`, `color1` (5 bits each): Color indices
- `index0-3` (11 bits each): Vertex indices
- `material` (5 bits): Surface/effect code used by the game renderer
- `flags` (2 bits): Sparse renderer flags, mostly seen on point/line records

#### Primitive Types

| Type | Primitive | Indices Used                   | Notes                                    |
|------|-----------|--------------------------------|------------------------------------------|
| 0    | Point?    | index0                         | Observed for wheels, mostly not rendered |
| 1    | Point?    | index0                         | Alternate form of type 0                 |
| 2    | Line      | index0, index1                 |                                          |
| 3    | Line      | index0, index1                 | Alternate form of type 2                 |
| 4    | Triangle  | index0, index1, index2         |                                          |
| 5    | Triangle  | index0, index1, index2         | Alternate form of type 4                 |
| 6    | Quad      | index0, index1, index2, index3 |                                          |
| 7    | Quad      | index0, index1, index2, index3 | Alternate form of type 6                 |

Disassembly-backed observations:

- Bits `15:14` of `word0` choose the primitive arity:
  - `00`: point (`0/1`)
  - `01`: line (`2/3`)
  - `10`: triangle (`4/5`)
  - `11`: quad (`6/7`)
- Bit `13` is a secondary mode bit. It does **not** change vertex count.
- In one derived-key pass (`sub_112E8`), even types (`0/2/4/6`) use an averaged vertex-derived value, while odd types (`1/3/5/7`) use the minimum referenced vertex value. That is the clearest traced behavior difference so far.

`word0` bits `12:11` are not part of primitive selection. The traced line rasterizers check `word0 & 0x1800` and switch to an alternate patterned-line path when non-zero. These bits are also mutated by at least one special-case handler at runtime, so they are best treated as renderer flags/work bits rather than stable geometry type data.

**Total size:** `npoly × 8` bytes

### Third Data Section

If `count3 > 0`, there is additional data after the polygons:

```
count3 × 8 bytes of auxiliary records
```

What is now safe to say:

- In the sampled game data, this section appears only on **tiles**, never on scene objects or cars.
- The first word behaves like a packed anchor word:
  - bits `15:13` use only types `0`, `1`, and `3`
  - bits `10:0` are almost always a valid vertex index into the tile
- The remaining three words behave like small signed values rather than vertex indices.

So this is not a second plain polygon list and not a plain `x,y,z,id` tuple either. The best current interpretation is:

- tile-only auxiliary attachment/decoration records
- probably anchored to tile vertices
- likely used for special lines, billboards, or similar helper geometry/effects

The exact per-record meaning is still unresolved.

## Color System

### Palette

The game uses a 256-color VGA palette:
- Entries 0-143: Hardcoded in the executable
- Entries 144-255: Loaded from map data (112 colors)

### Color Index Mapping

The 5-bit color values (0-31) in polygons are mapped through a lookup table:

```
ColorIndex[32] = {
     0,  1,   2,  3,  4,  5,  6,  7,
     0,  9,  10, 11, 12, 13, 14, 15,
    19, 15, 107, 13, 38,  5, 55, 27,
    21, 75, 109, 13, 43, 13, 94, 29
};
```

### Color Usage

The original game renders each polygon with a precomputed flat fill/pattern value - no 3D lighting model or Gouraud shading is involved.

Disassembly now confirms that the game uses **both** 5-bit color fields:

- `sub_15153` extracts the upper 5 bits from `word1` and `word2`
- each value is mapped through a 32-entry lookup table
- the pair is combined into the runtime fill word stored alongside the polygon record

So `color0` and `color1` are real packed color/material inputs, not dead fields.

The viewer still averages them and adds its own lighting for better visualization:
```
final = (palette[ColorIndex[color0]] + palette[ColorIndex[color1]]) / 2
```

That averaging is a viewer choice, not the original game's exact fill logic.

### Material / Effect Codes

The upper 5 bits of `word3` are actively used by the game:

- they are copied into the runtime polygon record as a separate material/effect code
- collision / nearby-surface logic branches on these values
- the fill updater has explicit special handling for codes `0..13`
- higher codes fall through to default fill behavior

This field is therefore a **surface/material/behavior code**, not unused padding.

## Object Lists

Multiple objects are stored in lists with an offset table:

```
Offset      Content
------      -------
0x00        Offset to object 0 (uint16, relative to list start)
0x02        Offset to object 1
...
n×2         Offset to object n
[data]      Object data follows
```

Special case: If offset ≤ 0x10, the object duplicates the previous entry.

## Known File Locations

| File | Offset | Content |
|------|--------|---------|
| SCENE01.DAT | 0x0045B | Tiles (59 entries) |
| SCENE02.DAT | 0x00488 | Tiles (64 entries) |
| SCENE02.DAT | 0x1534D | Objects (64 entries) |
| DATAB.DAT | 0x2373B | Tiles (64 entries) |
| DATAB.DAT | 0x32F1A | Objects (64 entries) |

### Car Files (*.POB)

Player car models start at offset 0 with `isobj=true`:
- CCERV.POB - Corvette
- CCNSX.POB - NSX
- CDIAB.POB - Diablo
- CMYTH.POB - Mythos
- CSTEL.POB - Stealth

## Open Questions

1. What is the purpose of the extra 4 bytes in object headers?
2. What exact semantic meaning does the odd/even type bit (bit 13 of `word0`) encode beyond the traced average-vs-min behavior?
3. What exact line/effect meaning do bits `12:11` of `word0` encode?
4. What is the per-code meaning of the `word3` material/effect values?
5. What is the exact tile-only third section structure?
6. Is the coordinate interpretation (Z,X,Y order) correct?

## References

- Forum discussion: http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960
- Implementation: `src/shared/extract.ts`
- Disassembly: `disassembly/functions/seg006_7303_sub.asm`, `disassembly/functions/seg006_38F8_sub.asm`, `disassembly/functions/seg006_3498_sub.asm`, `disassembly/functions/seg006_336D_sub.asm`, `disassembly/functions/seg006_4C32_sub.asm`, `disassembly/functions/seg006_662B_sub.asm`, `disassembly/functions/seg006_8152_sub.asm`
