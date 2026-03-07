# Test Drive 3 - Map File Format Specification

This document describes the binary format used for race-track maps in Test Drive III: The Passion (1990).

**Status:** Partly confirmed. The tile grid is well supported by the disassembly. The header, the object block, and the map tail are still partly empirical.

## Overview

Each map contains:
- A `0x00DF`-byte pre-grid header with mostly unknown semantics
- A confirmed `32 x 16` tile grid (`512` entries, `2` bytes each)
- A `0x0A02`-byte middle block consisting of a 2-byte prefix plus eight `0x140`-byte chunks
- A later block whose front portion plausibly stores placed-object arrays
- A final `0x210`-byte tail whose first `0x200` bytes are a `256 x 2` table used by the current tools as a color/remap table

## File Locations

Maps are stored at fixed offsets inside the DAT files:

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

**Total size:** `0x2137` bytes (`8503`)

### Layout Summary

| Offset Range        | Size     | Content |
|---------------------|----------|---------|
| `0x0000 - 0x00DE`   | `0x00DF` | Pre-grid header |
| `0x00DF - 0x04DE`   | `0x0400` | Tile grid (`32 x 16 x 2`) |
| `0x04DF - 0x04E0`   | `0x0002` | Unknown prefix word |
| `0x04E1 - 0x0EE0`   | `0x0A00` | Eight `0x140`-byte chunks |
| `0x0EE1 - 0x1486`   | `0x05A6` | Probable object arrays |
| `0x1487 - 0x1F26`   | `0x0AA0` | Unresolved tail of the object block |
| `0x1F27 - 0x2126`   | `0x0200` | `256 x 2` table used by current tooling as a color/remap table |
| `0x2127 - 0x2136`   | `0x0010` | Unknown trailer |

---

## Header Section (0x0000 - 0x00DE)

This `0xDF`-byte prefix is present in every map. The ranges below are empirical and based on recurring values; I did not find direct code that decodes this header field-by-field.

### Observed Header Layout

| Offset | Size | Observed Content | Confidence |
|--------|------|------------------|------------|
| `0x00-0x03` | 4  | Constant `00 00 58 02` | High |
| `0x04-0x17` | 20 | Small values, mostly `0..4` | Medium |
| `0x18-0x1D` | 6  | Per-map 6-byte tuple | Medium |
| `0x1E-0x4F` | 50 | Mostly stable parameter block | Low |
| `0x50-0x7F` | 48 | Repeated-pattern block | Low |
| `0x80-0xDE` | 95 | 47 paired bytes plus one trailing byte | Low |

### Constant Prefix

```text
00 00 58 02
```

This is constant across the known maps.

### Small-Value Block (0x04-0x17)

These 20 bytes contain small values such as:

```text
Pacific 1: 00 02 03 02 00 02 02 02 02 02 02 03 02 02 02 00 02 02 02 02
Cape Cod : 00 02 04 00 02 02 02 02 02 02 02 03 02 04 00 02 02 02 02 02
```

The earlier interpretation as row/terrain configuration is plausible, but still unverified.

### Per-Map 6-Byte Tuple (0x18-0x1D)

Examples:

| Map       | Bytes               |
|-----------|---------------------|
| Pacific 1 | `02 1E 08 2A 08 18` |
| Pacific 2 | `02 05 0B 1E 0C 18` |
| Pacific 3 | `02 08 08 08 08 18` |

This likely contains start or route parameters, but the exact field split is unknown.

### Repeated-Pair Table (0x80-0xDE)

This region looks like 47 2-byte entries plus one trailing byte:

```text
00 01  00 02  00 03  00 04 ...
00 1E  01 0A  00 0C  01 0D ...
```

The old document called this a tile-remap table. That may be correct, but I did not identify the consumer in the disassembly yet.

---

## Tile Grid (0x00DF - 0x04DE)

This is the best-understood part of the format.

### Confirmed Grid Properties

- Dimensions: `32 x 16`
- Entry size: `2` bytes
- Total size: `0x400` bytes
- Tile spacing in world space: `0x1000` (`4096`) units, as seen in the grid-position code

### Tile Entry Format

Each tile entry is:

```text
Byte 0: tile_id
Byte 1: [7:6] rotation | [5:0] height/elevation field
```

| Byte | Bits  | Field      | Notes                                                 |
|------|-------|------------|-------------------------------------------------------|
| 0    | 7:0   | `tile_id`  | Used to resolve a tile descriptor via a pointer table |
| 1    | 7:6   | `rotation` | Quarter-turn orientation                              |
| 1    | 5:0   | `height`   | 6-bit elevation field                                 |

### Tile ID Resolution

The game does not inline a simple `if (id >= 0x40)` branch at the point where the old doc cited it. Instead, it:

1. Reads the 2-byte tile entry from `dseg:6A82`
2. Masks the low byte to get the tile id
3. Indexes the descriptor pointer table at `word_2C18E/word_2C190`

See [`sub_13770`](../disassembly/functions/seg006_5920_sub.asm): it does `and ax, 0FFh` and then dereferences the descriptor table.

The current repo tooling uses this split, which matches extracted tile banks better than the old reversed table:

| ID Range  | Current Tooling Interpretation | Notes |
|-----------|--------------------------------|-------|
| `0x00-0x3F` | Shared tile set from `DATAB.DAT` | Direct index |
| `0x40-0xFF` | Scene-local tile set | Subtract `0x40` before indexing |

This split is still partly inferred from data/layout and tooling. The important correction is that the earlier `cmp ah, 40h` citation did not actually prove the old statement.

### Current Tooling World Reconstruction

The repo's 3D viewers currently reconstruct tiles as:

```text
world_x = 4096 * (i - 16)
world_y = -4096 * (j - 8)
world_z = height * 256
rotation = -pi/2 * rotation_bits
```

The `4096` spacing is well supported by the disassembly. The exact `height * 256` scaling is still a tooling interpretation, not a cleanly isolated engine constant.

---

## Middle Block (0x04DF - 0x0EE0)

This area is still unresolved.

### Observed Layout

| Offset   | Size     | Notes               |
|----------|----------|---------------------|
| `0x04DF` | `0x0002` | Unknown prefix word |
| `0x04E1` | `0x0140` | Chunk 1             |
| `0x0621` | `0x0140` | Chunk 2             |
| `0x0761` | `0x0140` | Chunk 3             |
| `0x08A1` | `0x0140` | Chunk 4             |
| `0x09E1` | `0x0140` | Chunk 5             |
| `0x0B21` | `0x0140` | Chunk 6             |
| `0x0C61` | `0x0140` | Chunk 7             |
| `0x0DA1` | `0x0140` | Chunk 8             |

The chunk size `0x140` (`320`) is stable, but I did not identify a consumer that makes their purpose clear.

---

## Probable Object Block (0x0EE1 - 0x1F26)

The front part of this region is plausibly a placed-object section. The current repo tooling uses it successfully to build plausible object placements, but I did not yet confirm the full engine-side consumer in the disassembly. Treat the structure below as empirical.

### Observed Header (0x0EE1 - 0x0EE6)

| Offset          | Size  | Observed Meaning                     | Confidence  |
|-----------------|-------|--------------------------------------|-------------|
| `0x0EE1`        | 1     | Count byte                           | Medium      |
| `0x0EE2`        | 1     | Unknown                              | Low         |
| `0x0EE3-0x0EE4` | 2     | Legacy guess: active-count-like word | Low         |
| `0x0EE5-0x0EE6` | 2     | Legacy guess: LOD-count-like word    | Low         |

The old standalone `player_car` byte at `0x0EE7` was wrong. `0x0EE7` is also the start of the first object-id word in the array layout below.

### Front Array Layout (0x0EE7 - 0x1486)

| Range             | Size    | Current Tooling Interpretation  |
|-------------------|---------|---------------------------------|
| `0x0EE7 - 0x1026` | `0x140` | 160 object-id words             |
| `0x1027 - 0x1166` | `0x140` | 160 signed Z-like words         |
| `0x1167 - 0x12A6` | `0x140` | 160 signed X-like words         |
| `0x12A7 - 0x13E6` | `0x140` | 160 signed Y-like words         |
| `0x13E7 - 0x1486` | `0x0A0` | 160 rotation/state bytes        |

### Current Tooling Interpretation

The current viewer/exporter assumes:

- Object ids are 2-byte entries, but only the low byte is currently used
- The coordinate arrays are signed 16-bit values
- The last byte array uses the top two bits as quarter-turn rotation
- Coordinates are scaled by `4` in the current 3D reconstruction

This produces plausible results, but these exact semantics still need an engine-side confirmation pass.

### Unresolved Tail (0x1487 - 0x1F26)

The old document incorrectly made the whole `0x0EE1 - 0x1F26` range sound understood. It is not. The trailing `0x0AA0` bytes after the front arrays are still unresolved.

---

## Tail Table (0x1F27 - 0x2136)

The end of the map contains:

- `0x1F27 - 0x2126`: `256` pairs of bytes
- `0x2127 - 0x2136`: `16` trailing bytes

### What Is Confirmed

The repo currently reads the first `0x200` bytes as:

```ts
for (let i = 0; i < 256; i++) {
  color0 = dat[offset + 0x1F27 + i * 2 + 0];
  color1 = dat[offset + 0x1F27 + i * 2 + 1];
}
```

See [`src/shared/color.ts`](../src/shared/color.ts).

### What Is Not Confirmed

- The exact meaning of each byte pair
- Whether the table is a palette remap table, a material/color lookup table, or something else
- The meaning of the final 16-byte trailer at `0x2127 - 0x2136`

Legacy notes singled out offsets like `0x1F27` and `0x1F4A` as street/lake related, but I did not confirm those labels in the disassembly.

### Related Palette Loader Correction

The older document claimed map-related palette loads always target VGA entries `144..255`. That is wrong as a general statement.

The actual palette loaders:
- [`sub_CA8`](../disassembly/functions/seg000_0CA8_sub.asm) copies `0x150` bytes to `0x0B9A + 3 * byte_280DC`
- [`sub_D3C`](../disassembly/functions/seg000_0D3C_sub.asm) copies `0x60` bytes to `0x0C2A + 3 * byte_280DC`

So palette loading is banked by `byte_280DC`, not hardwired to one fixed palette range.

---

## Disassembly-Backed Notes

### Key Functions

| Function    | File                  | What It Confirms                                               |
|-------------|-----------------------|----------------------------------------------------------------|
| `sub_14D99` | `seg006_6F49_sub.asm` | Tile index computation from world position and tile-grid reads |
| `sub_13770` | `seg006_5920_sub.asm` | Tile id to descriptor-table lookup                             |
| `sub_13132` | `seg006_52E2_sub.asm` | Consumption of tile rotation/height and descriptor data        |
| `sub_CA8`   | `seg000_0CA8_sub.asm` | Banked `0x150`-byte palette load                               |
| `sub_D3C`   | `seg000_0D3C_sub.asm` | Banked `0x60`-byte palette load                                |

### Confirmed Tile Access Pattern

```asm
; Read one tile entry from the 32x16 grid
mov ax, [bx-6A83h]      ; AL = tile id, AH = rotation|height

; Split the second byte
mov ch, ah
and ch, 0C0h           ; rotation bits
and cx, 3F00h          ; height bits remain in the high byte

; Resolve tile id through the descriptor pointer table
and ax, 0FFh
mov si, ax
shl si, 1
mov es, word_2C190
add si, word_2C18E
mov si, es:[si]
```

Relevant code:
- [`seg006_6F49_sub.asm`](../disassembly/functions/seg006_6F49_sub.asm)
- [`seg006_5920_sub.asm`](../disassembly/functions/seg006_5920_sub.asm)

### Runtime State Related to the Map

| Address                   | Meaning                                     |
|---------------------------|---------------------------------------------|
| `dseg:6A82`               | Tile grid copy                              |
| `dseg:53BB`               | Per-entity current tile index               |
| `dseg:527B`               | Per-entity runtime tile-derived state/flags |
| `word_2C18E / word_2C190` | Tile descriptor pointer table               |

### Important Correction About `0xA0`

The old document used `mov cx, 0A0h` in [`sub_11408`](../disassembly/functions/seg006_35B8_sub.asm) as proof of a 160-object limit.

That was a bad citation. In that routine, `0xA0` is used in `rep stosw` buffer-fill loops, i.e. `160` words per scanline (`320` pixels), not as an object-count field.

---

## Open Questions

1. What are the exact semantics of the `0x00DF`-byte pre-grid header?
2. What is the purpose of the 2-byte prefix at `0x04DF` and the eight `0x140`-byte chunks that follow it?
3. Which code path consumes the object block directly, and what do the two header words at `0x0EE3` and `0x0EE5` mean?
4. What does the unresolved `0x1487 - 0x1F26` tail store?
5. What is the exact meaning of the `256 x 2` table at `0x1F27 - 0x2126`?
6. What does the 16-byte trailer at `0x2127 - 0x2136` do?
7. Can the shared-vs-scene-local tile-id split be proven directly from engine code rather than only from data/layout and tooling?

## References

- Forum discussion: http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960
- Current tooling: `src/shared/color.ts`, `src/shared/extract.ts`, `src/shared/mapgen.ts`
- Disassembly: `functions/seg006_6F49_sub.asm`, `functions/seg006_5920_sub.asm`, `functions/seg006_52E2_sub.asm`, `functions/seg000_0CA8_sub.asm`, `functions/seg000_0D3C_sub.asm`
