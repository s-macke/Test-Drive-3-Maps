# Test Drive 3 - 3D Object File Format Specification

This document describes the binary format used for 3D objects in Test Drive III: The Passion (1990).

**Status:** Work in progress - some fields are not fully understood.

## Overview

3D objects are stored as polygon meshes with vertex colors. The format supports multiple primitive types including points, lines, triangles, and quads.

## Object Variants

The format has two variants with different header sizes:

| Variant | Header Size | Used For                |
|---------|-------------|-------------------------|
| Tile    | 4 bytes     | Map terrain tiles       |
| Object  | 8 bytes     | Scene objects, vehicles |

The distinction is made in code via the `isobj` flag.

## Binary Structure

### Header

```
Offset  Size  Field       Description
------  ----  -----       -----------
0x00    1     npoly       Number of polygons
0x01    1     npoints     Number of vertices
0x02    1     count3      Third data section count (purpose unclear)
0x03    1     byte3       Unknown (observed as 0)
```

For objects (`isobj=true`), there are 4 additional bytes:
```
0x04    4     ???         Unknown purpose
```

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
word0:  [15:13] type     [12:11] ???     [10:0] index0
word1:  [15:11] color0   [10:0]  index1
word2:  [15:11] color1   [10:0]  index2
word3:  [15:11] ???      [10:0]  index3
```

- `type` (3 bits): Primitive type
- `color0`, `color1` (5 bits each): Color indices
- `index0-3` (11 bits each): Vertex indices
- Bits 12:11 of word0 and bits 15:11 of word3: Purpose unknown

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

**Unknown:** The difference between even types (0,2,4,6) and odd types (1,3,5,7) is not understood. Possibilities include:
- Back-face culling flag
- Different shading modes
- Rendering priority

**Total size:** `npoly × 8` bytes

### Third Data Section

If `count3 > 0` (header byte 2), there is additional data after the polygons:

```
count3 × 8 bytes of unknown structure
```

This section is **not fully understood**. The commented code in extract.js suggests:
```
Offset  Size  Description
0x00    2     Coordinate? (int16)
0x02    2     Coordinate? (int16)
0x04    2     Coordinate? (int16)
0x06    2     Type/ID? (uint16)
```

This could be: sprite/billboard positions, attachment points, LOD markers, or something else entirely.

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

The original game renders each polygon with a **single flat color** - no shading, lighting, or gradients.

Each polygon stores two 5-bit color indices (`color0`, `color1`). Why there are two values is **unknown** - the original game may only use one, or combine them in some way.

The viewer averages them and adds its own lighting for better visualization:
```
final = (palette[ColorIndex[color0]] + palette[ColorIndex[color1]]) / 2
```

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
2. What distinguishes even/odd primitive types (0/1, 2/3, 4/5, 6/7)?
3. What are bits 12:11 of word0 used for?
4. What are bits 15:11 of word3 used for? (Commented code suggests surface types)
5. What is the third data section (count3) actually storing?
6. Is the coordinate interpretation (Z,X,Y order) correct?

## References

- Forum discussion: http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960
- Implementation: `src/shared/extract.js`
