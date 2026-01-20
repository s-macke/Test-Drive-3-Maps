# Test Drive 3 - Map File Format Specification

This document describes the binary format used for race track maps in Test Drive III: The Passion (1990).

**Status:** Work in progress - some fields are not fully understood.

## Overview

Each map defines a race track layout consisting of:
- A 32×16 tile grid for terrain and roads
- Placed objects (signs, buildings, vehicles, etc.)
- Color mapping for dynamic palette entries

## File Locations

Maps are stored within SCENE DAT files at fixed offsets:

| File        | Map | Offset   | Description       |
|-------------|-----|----------|-------------------|
| SCENE01.DAT | 1   | 0x10240  | Pacific Coast #1  |
| SCENE01.DAT | 2   | 0x1A1CC  | Pacific Coast #2  |
| SCENE01.DAT | 3   | 0x1C319  | Pacific Coast #3  |
| SCENE01.DAT | 4   | 0x21565  | Pacific Coast #4  |
| SCENE01.DAT | 5   | 0x236B2  | Pacific Coast #5  |
| SCENE02.DAT | 1   | 0x1014D  | Cape Cod #1       |
| SCENE02.DAT | 2   | 0x2158F  | Cape Cod #2       |
| SCENE02.DAT | 3   | 0x26273  | Cape Cod #3       |
| SCENE02.DAT | 4   | 0x283C0  | Cape Cod #4       |
| SCENE02.DAT | 5   | 0x2D87C  | Cape Cod #5       |
| DATAB.DAT   | -   | 0x21603  | Title screen map  |

## Binary Structure

**Total size:** 0x2137 bytes (8503 bytes)

### Layout Summary

| Offset Range        | Size     | Content                    |
|---------------------|----------|----------------------------|
| `0x0000 - 0x00DE`   | `0x00DF` | Unknown header             |
| `0x00DF - 0x04DE`   | `0x0400` | Tile grid (32×16×2 bytes)  |
| `0x04DF - 0x0EE0`   | `0x0A02` | Unknown chunk data         |
| `0x0EE1 - 0x1F26`   | `0x1046` | Object placement section   |
| `0x1F27 - 0x2136`   | `0x0210` | Color mapping section      |

---

## Tile Grid (0x00DF - 0x04DE)

The tile grid defines the terrain layout as a 32×16 array of tile references.

### Grid Properties

- **Dimensions:** 32 columns × 16 rows = 512 tiles
- **Entry size:** 2 bytes per tile
- **Total size:** 1024 bytes (0x400)
- **Tile spacing:** 4096 world units (the value 2048+2048 in code)
- **World coverage:** 131,072 × 65,536 units

### Tile Entry Format

Each 2-byte tile entry:

```
Byte 0: Tile ID
Byte 1: [7:6] Rotation | [5:0] Height
```

| Byte | Bits  | Field    | Description                              |
|------|-------|----------|------------------------------------------|
| 0    | 7:0   | tile_id  | Tile index (see lookup below)            |
| 1    | 7:6   | rotation | Rotation: 0=0°, 1=90°, 2=180°, 3=270° CW |
| 1    | 5:0   | height   | Height offset (×256 for world units)     |

### Tile ID Lookup

The tile ID determines which tile set to use:

| ID Range  | Tile Set | Lookup                        |
|-----------|----------|-------------------------------|
| 0x00-0x3F | tiles2   | Scene-specific (SCENE0x.DAT)  |
| 0x40-0xFF | tiles1   | Shared tiles (DATAB.DAT)      |

For IDs >= 0x40, subtract 0x40 to get the index into tiles1.

### World Position Calculation

For tile at grid position (i, j):

```
world_x = 4096 × (i - 16)
world_y = -4096 × (j - 8)
world_z = height × 256
rotation_rad = -π/2 × rotation
```

---

## Unknown Chunk Data (0x04DF - 0x0EE0)

This section contains multiple 320-byte chunks. Purpose is not fully understood.

### Chunk Offsets

| Offset | Size  | Notes           |
|--------|-------|-----------------|
| 0x04E1 | 0x140 | Chunk 1 (320 B) |
| 0x0621 | 0x140 | Chunk 2         |
| 0x0761 | 0x140 | Chunk 3         |
| 0x08A1 | 0x140 | Chunk 4         |
| 0x09E1 | 0x140 | Chunk 5         |
| 0x0B21 | 0x140 | Chunk 6         |
| 0x0C61 | 0x140 | Chunk 7         |
| 0x0DA1 | 0x140 | Chunk 8         |

**Note:** Each chunk is 320 bytes = 16×20 or 160×2. May be additional per-tile metadata or animation data.

---

## Object Placement Section (0x0EE1)

This section defines objects placed in the world (signs, buildings, trees, vehicles, etc.).

### Header (6 bytes)

| Offset | Size | Field        | Description                            |
|--------|------|--------------|----------------------------------------|
| 0x0EE1 | 1    | num_objects  | Number of placed objects (max 160)     |
| 0x0EE2 | 1    | ???          | Unknown                                |
| 0x0EE3 | 2    | active_count | Number of active objects (?)           |
| 0x0EE5 | 2    | lod_count    | Number of LOD objects (?)              |
| 0x0EE7 | 1    | player_car   | Player car ID (usually 0x01, 0xE4=X-Wing) |

**Note:** The header interpretation comes from code comments; actual field meanings may differ.

### Object Data Arrays

Starting at offset 0x0EE7 (header + 6), object data is stored as parallel arrays:

| Array | Offset | Size  | Entry Size | Content                    |
|-------|--------|-------|------------|----------------------------|
| 0     | +0x06  | 0x140 | 2 bytes    | Object IDs                 |
| 1     | +0x146 | 0x140 | 2 bytes    | Z coordinates (int16)      |
| 2     | +0x286 | 0x140 | 2 bytes    | X coordinates (int16)      |
| 3     | +0x3C6 | 0x140 | 2 bytes    | Y coordinates (int16)      |
| 4     | +0x506 | 0x0A0 | 1 byte     | Rotation (bits 7:6)        |

Each array supports up to 160 objects.

### Object Entry Details

**Object ID (Array 0):**
- Lower 6 bits (& 0x3F) = index into objects array
- Upper bits: unknown purpose

**Coordinates (Arrays 1-3):**
- 16-bit signed integers, little-endian
- Scaled by ×4 for world coordinates
- Note: array order is Z, X, Y (not X, Y, Z)

**Rotation (Array 4):**
- Only bits 7:6 are used
- Values 0-3 represent 0°, 90°, 180°, 270° clockwise

### World Position Calculation

```
base_x = 4096 × (-15.5)  = -63,488
base_y = 4096 × (-7.5)   = -30,720
base_z = -1999 × 4       = -7,996

world_x = base_x + z_coord × 4
world_y = base_y + x_coord × 4
world_z = base_z + y_coord × 4
rotation_rad = -π/2 × (rot_byte >> 6)
```

---

## Color Mapping Section (0x1F27)

This section defines dynamic palette colors for the map.

### Known Color Offsets

| Offset | Description                           |
|--------|---------------------------------------|
| 0x1F27 | Street/road color                     |
| 0x1F4A | NPC car color (map 1) / lake color    |

### Related Palette Offsets

In some files, additional color mappings appear at:
- 0x12167-0x12168: Street color (alternate)
- 0x12189-0x1218A: NPC car/lake color (alternate)

---

## Color System

### VGA Palette Structure

The game uses a 256-color VGA palette:

| Range     | Count | Source                              |
|-----------|-------|-------------------------------------|
| 0-143     | 144   | Hardcoded in executable             |
| 144-255   | 112   | Loaded dynamically from map/palette |

### Dynamic Palette Loading

The `LoadPalette` function loads 112 colors (336 bytes) into palette entries 144-255:

```
For i = 0 to 111:
    palette[144 + i] = source[i] × 4  // VGA uses 6-bit color, scale to 8-bit
```

### Color Index Mapping

Polygon colors (5-bit values 0-31) are mapped through a lookup table to palette indices:

```
ColorIndex[32] = {
     0,  1,   2,  3,  4,  5,  6,  7,   // Direct EGA colors
     0,  9,  10, 11, 12, 13, 14, 15,   // Index 8 maps to 0 (street color slot)
    19, 15, 107, 13, 38,  5, 55, 27,   // Various palette entries
    21, 75, 109, 13, 43, 13, 94, 29    // Various palette entries
};
```

---

## Open Questions

1. What is stored in the 0xDF byte header at the start of the map?
2. What is the purpose of the 320-byte chunks between tile grid and object section?
3. What do bits 10:6 of the object ID word encode?
4. How are the header fields (active_count, lod_count, player_car) actually used?
5. What is the full structure of the color mapping section?
6. Are there additional object properties stored elsewhere?

## References

- Forum discussion: http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960
- Implementation: `src/shared/extract.ts`, `src/shared/mapgen.ts`
