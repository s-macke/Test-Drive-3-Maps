# Test Drive 3 - Map File Format Specification

This document describes the binary format used for race-track maps in Test Drive III: The Passion (1990).

**Status:** Mostly confirmed from disassembly. The tile grid, object block, color table, and 16-byte trailer have identified consumers. The first ~`0x46` bytes of the pre-grid header are a strongly-typed parameter struct with 29 named fields; the rest of the header and parts of the middle block are still empirical.

## Overview

Each map contains:
- A `0x00DF`-byte pre-grid header. The first ~`0x46` bytes are a parameter struct with 29 named consumers (sky/fog seeds, tile-id thresholds, day/night flag, etc.); bytes `0x46..0xDE` are still unidentified.
- A confirmed `32 x 16` tile grid (`512` entries, `2` bytes each)
- A `0x0A02`-byte middle block consisting of a 2-byte prefix plus eight `0x140`-byte chunks. Chunks 1, 3, 5, 7 are confirmed as a `(type, X, Y, Z)` entity pool; chunks 2, 4, 6, 8 have no direct-displacement reads.
- A confirmed object block containing **13 parallel word arrays** of 160 entries each (the previously "unresolved tail" is just more fields).
- A `256 x 2` color/material remap table consumed by both the sky/fog gradient (`sub_11408`) and the mode-`0x13` sprite blitter (`sub_15153`), followed by a 16-byte secondary remap table.

## Runtime Load Address

The map blob is loaded at **`dseg:949E`** by `sub_DBA(file_id=0x0ADA, dest=0x949E)`. See [`seg002_0FB0_sub.asm`](../disassembly/functions/seg002_0FB0_sub.asm) lines 26-30 and the matching call in [`seg001_536E_sub.asm`](../disassembly/functions/seg001_536E_sub.asm) line 173.

All "dseg:XXXX" references below are computed as `0x949E + map_offset`. The signed displacements IDA prints (e.g. `[bx-6A83h]`) are the 16-bit two's complement of these dseg offsets (`-0x6A83 mod 0x10000 = 0x957D` = `949E + 0xDF`), which is why the tile grid appears as `[bx-6A83h]` even though it lives at `dseg:957D`.

| Map offset       | dseg     | IDA disp. |
|------------------|----------|-----------|
| `0x0000` (start) | `949E`   | `-6B62h`  |
| `0x00DF` (grid)  | `957D`   | `-6A83h`  |
| `0x04DF` (mid)   | `997D`   | `-6683h`  |
| `0x0EE1` (objs)  | `A37F`   | `-5C81h`  |
| `0x1F27` (color) | `B3C5`   | `-4C3Bh`  |
| `0x2127` (trail) | `B5C5`   | `-4A3Bh`  |

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

| Offset Range        | Size     | Content                                                                          |
|---------------------|----------|----------------------------------------------------------------------------------|
| `0x0000 - 0x00DE`   | `0x00DF` | Pre-grid header (mostly empirical)                                               |
| `0x00DF - 0x04DE`   | `0x0400` | Tile grid (`32 x 16 x 2`)                                                        |
| `0x04DF - 0x04E0`   | `0x0002` | Unknown prefix word                                                              |
| `0x04E1 - 0x0EE0`   | `0x0A00` | Eight `0x140`-byte chunks. Chunks 1/3/5/7 = `(type, X, Y, Z)` secondary entity pool. |
| `0x0EE1 - 0x0EE6`   | `0x0006` | Three entity-count words (collision / AI / LOD)                                  |
| `0x0EE7 - 0x1F26`   | `0x1040` | Entity table: 13 parallel word arrays * 160 entries                              |
| `0x1F27 - 0x2126`   | `0x0200` | `256 x 2` color/material remap table                                             |
| `0x2127 - 0x2136`   | `0x0010` | 16-byte secondary remap (race mode `0x13`)                                       |

---

## Header Section (0x0000 - 0x00DE)

This `0xDF`-byte prefix is a strongly-typed parameter struct, not opaque metadata. The first `~0x46` bytes are individually consumed: IDA gives 29 stable labels (`byte_285xx` / `word_285xx`) in the dseg range `0x94A0..0x94E4` (= `map[0x02..0x46]`), each with its own consumer subroutine. The remaining bytes (`0x46..0xDE`) have no direct-displacement or labeled reads and are still unidentified.

The two displacement-form reads I called out previously are real but only a small slice of the picture:

- `mov cl, [bx-6B5Dh]` in [`sub_13132`](../disassembly/functions/seg006_52E2_sub.asm) reads a byte at `map[0x05 + bx]` — a per-entity byte LUT.
- `mov si, [si-6B45h]` with `si = (rotation & 3) << 1` reads one of four words at `map[0x1D, 0x1F, 0x21, 0x23]` — a quarter-turn direction LUT keyed on the low two rotation bits.

### Named Header Fields

Every row below corresponds to an IDA label, an initial value taken from the static dseg dump, and a consumer subroutine. Map offset = `dseg − 0x949E`. Bytes between labels (e.g. `0x05..0x18`) are either part of byte LUTs read indirectly or still unaccounted for.

| Map | dseg   | IDA label     | Default  | Consumer                              | Role |
|-----|--------|---------------|----------|---------------------------------------|------|
| `0x02` | `94A0` | `word_28580`  | `0x0258` | `sub_94F4:loc_9981`                   | Unknown scalar (≈600) |
| `0x04` | `94A2` | `byte_28582`  | `0`      | `sub_D045+43`                         | Sound subsystem input |
| `0x19` | `94B7` | `word_28597`  | `0x0818` | `sub_13EC9+25`                        | Unknown |
| `0x1B` | `94B9` | `word_28599`  | `0x0818` | `sub_13EC9+41`                        | Unknown (paired with `0x19`) |
| `0x23` | `94C1` | `word_285A1`  | `0x0042` | `sub_13F16+30`                        | Unknown |
| `0x25` | `94C3` | `word_285A3`  | `2`      | `sub_1101E+2C`                        | Unknown |
| `0x27` | `94C5` | `word_285A5`  | `2`      | `sub_1101E+1C`                        | Unknown (paired with `0x25`) |
| `0x29` | `94C7` | `word_285A7`  | `0x04B0` | `sub_0+41A`                           | Read very early at startup |
| `0x2B` | `94C9` | `byte_285A9`  | `2`      | `sub_14B5E+A7`                        | Unknown |
| `0x2C` | `94CA` | `byte_285AA`  | `0`      | `sub_E98A+A`                          | Unknown |
| `0x2D` | `94CB` | `byte_285AB`  | `0x16`   | `sub_10455+2F`                        | Unknown |
| `0x2E` | `94CC` | `byte_285AC`  | `0x0B`   | `sub_11408` first lookup              | **Sky/horizon base seed (day)** — see Tail Table consumers |
| `0x2F` | `94CD` | `byte_285AD`  | `0x07`   | `sub_11408` first lookup              | **Sky/horizon base seed (night)** |
| `0x30` | `94CE` | `byte_285AE`  | `0x79`   | `sub_11408` (loaded as `bl`)          | **Companion byte to `byte_285AC`** (day) |
| `0x31` | `94CF` | `byte_285AF`  | `0x19`   | `sub_11408` (loaded as `bl`)          | **Companion byte to `byte_285AD`** (night) |
| `0x32` | `94D0` | `word_285B0`  | `0x0203` | `sub_11408+142`                       | **Sky/fog gradient seed** — keys into the `0x1F27` remap table at any entry |
| `0x35` | `94D3` | `byte_285B3`  | `1`      | `sub_8680+A9`                         | Gate for the mode-`0x13` table-darken pass |
| `0x36` | `94D4` | `byte_285B4`  | `0`      | `sub_76D6:loc_7A24` (write)           | Selects day vs night seeds at the first `sub_11408` lookup |
| `0x37` | `94D5` | `byte_285B5`  | `0x21`   | `sub_14D99+85`                        | Tile-id threshold (first of three) |
| `0x38` | `94D6` | `byte_285B6`  | `0x30`   | `sub_14D99+8D`                        | Tile-id threshold |
| `0x39` | `94D7` | `byte_285B7`  | `0x1B`   | `sub_14D99+95`                        | Tile-id threshold |
| `0x3A` | `94D8` | `byte_285B8`  | `0x40`   | `sub_13132:loc_131BF`                 | Step constant added to entity field 9 |
| `0x3B` | `94D9` | `word_285B9`  | `0x017B` | `sub_10E38+C2`                        | Unknown |
| `0x3D` | `94DB` | `word_285BB`  | `0x0080` | `sub_110C3+14`                        | Unknown |
| `0x3F` | `94DD` | `word_285BD`  | `0x00FF` | `sub_137A0:loc_1382C`                 | Unknown |
| `0x41` | `94DF` | `word_285BF`  | `0x0020` | `sub_1176A+2B4`                       | Unknown |
| `0x43` | `94E1` | `byte_285C1`  | `0x7F`   | `sub_13AC5+13`                        | Unknown |
| `0x44` | `94E2` | `byte_285C2`  | `0xF0`   | `sub_13C23:loc_13C36`                 | Unknown |
| `0x45` | `94E3` | `word_285C3`  | `0`      | `sub_94F4+A98`                        | Unknown |

### Day / Night Color Toggle

`byte_285AC..byte_285AF` (map `0x2E..0x31`) are the *initial* sky/fog seeds, but a toggle at `seg006:0608` overwrites them with one of two hardcoded sets when `byte_285B3` flips:

| Toggle state         | `0x2E` | `0x2F` | `0x30` | `0x31` |
|----------------------|--------|--------|--------|--------|
| `byte_285B3` = 0     | `0x09` | `0x08` | `0x72` | `0x13` |
| `byte_285B3` = 1     | `0x0B` | `0x07` | `0x79` | `0x19` |

`word_285B0` (map `0x32..0x33`) is **not** touched by the toggle and stays at the file value.

### Empirical Byte Patterns

These are the visible byte-level patterns in the on-disk file. They are still useful for sanity checks even though many of the bytes are now explained by the field table above.

| Offset | Size | Observed Content |
|--------|------|------------------|
| `0x00-0x03` | 4  | Constant `00 00 58 02` |
| `0x04-0x17` | 20 | Small values, mostly `0..4` |
| `0x18-0x24` | 13 | Per-map 5-byte tuple (`0x18..0x1C`) followed by a 4-word direction LUT (`0x1D..0x24`) read by `sub_13132` |
| `0x25-0x45` | 33 | Strongly-typed parameter block — see Named Header Fields table |
| `0x46-0xDE` | 153 | Unidentified. Includes the repeated-pair block at `0x80..0xDE` from the original notes; no consumer was found. |

#### Constant Prefix

```text
00 00 58 02
```

This is constant across the known maps.

#### Small-Value Block (0x04-0x17)

These 20 bytes contain small values such as:

```text
Pacific 1: 00 02 03 02 00 02 02 02 02 02 02 03 02 02 02 00 02 02 02 02
Cape Cod : 00 02 04 00 02 02 02 02 02 02 02 03 02 04 00 02 02 02 02 02
```

The earlier interpretation as row/terrain configuration is plausible, but still unverified.

#### Per-Map Tuple (0x18-0x1C) + Direction LUT (0x1D-0x24)

Examples of the leading 6 bytes only:

| Map       | Bytes               |
|-----------|---------------------|
| Pacific 1 | `02 1E 08 2A 08 18` |
| Pacific 2 | `02 05 0B 1E 0C 18` |
| Pacific 3 | `02 08 08 08 08 18` |

The first five bytes (`0x18..0x1C`) likely contain start or route parameters; the byte at `0x1D` is the low byte of the first word of the direction LUT read by `sub_13132`, so it is part of that LUT rather than the per-map tuple.

### Playtest Note

On April 6, 2026, changing Pacific Coast #1 byte `0x19` from `0x1E` to `0x05`
(`02 1E 08 2A 08 18` -> `02 05 08 2A 08 18`) produced no obvious change in
normal play. Per the field table, byte `0x19` is the low byte of `word_28597`
(read by `sub_13EC9`); a single drive may not exercise that consumer.

### Repeated-Pair Table (0x80-0xDE)

This region looks like 47 2-byte entries plus one trailing byte:

```text
00 01  00 02  00 03  00 04 ...
00 1E  01 0A  00 0C  01 0D ...
```

No labeled consumer was found at any byte in `0x80..0xDE`. The old document called this a tile-remap table; that label remains unproven.

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

1. Reads the 2-byte tile entry from `dseg:957D` (the IDA displacement `[bx-6A83h]` resolves to `+0x957D`, i.e. `949E + 0xDF`)
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

This is a secondary entity pool, separate from the main object block. Four of the eight chunks have confirmed consumers; the other four show no direct-displacement reads.

### Observed Layout

| Offset   | Size     | dseg | Confirmed Role |
|----------|----------|------|----------------|
| `0x04DF` | `0x0002` | `997D` | Unknown prefix word |
| `0x04E1` | `0x0140` | `997F` | **Chunk 1 — type/state word per entry**. `cmp [di-6681h], 0` is the "empty slot" check. Written by `sub_14FC4`. |
| `0x0621` | `0x0140` | `9ABF` | Chunk 2 — no direct reads found at `-6541h`. |
| `0x0761` | `0x0140` | `9BFF` | **Chunk 3 — X coordinate word.** `sub_14FC4` writes `[bx-6401h] = ax + word_2AD14`. |
| `0x08A1` | `0x0140` | `9D3F` | Chunk 4 — no direct reads found at `-62C1h`. |
| `0x09E1` | `0x0140` | `9E7F` | **Chunk 5 — Y coordinate word.** `sub_14FC4` writes `[bx-6181h] = cx + word_2AD16`. |
| `0x0B21` | `0x0140` | `9FBF` | Chunk 6 — no direct reads found at `-6041h`. |
| `0x0C61` | `0x0140` | `A0FF` | **Chunk 7 — Z coordinate word.** `sub_14FC4` writes `[bx-5F01h] = ax + word_2AD18`. |
| `0x0DA1` | `0x0140` | `A23F` | Chunk 8 — no direct reads found at `-5DC1h`. |

### Consumers

- [`sub_14FC4`](../disassembly/functions/seg006_7174_sub.asm) populates chunks 1/3/5/7 from `es:[si]` when building entries (lines 146-199).
- [`sub_10D51`](../disassembly/functions/seg006_2F01_sub.asm) scans chunks 1/3/5 to find entries near the player's `(X, Z)` and writes the matched indices to scratch buffer `word_27B4E`.
- [`seg004_1458_sub.asm`](../disassembly/functions/seg004_1458_sub.asm) initializes three entries at once with constants `6`, `7`, `8` in chunk 1.

The 2-byte prefix at `0x04DF` and chunks 2/4/6/8 are still unresolved.

---

## Object Block (0x0EE1 - 0x1F26)

The entire region `0x0EE1..0x1F26` is now resolved as a fixed-stride entity table. The previously "unresolved tail" at `0x1487..0x1F26` is just more parallel fields of the same table.

### Header (0x0EE1 - 0x0EE6)

All three header values are **words**, each used as the iteration count by a different engine subsystem. IDA gives them stable labels because they are dereferenced at fixed dseg offsets.

| Offset   | dseg   | IDA label    | Iterated by | Role |
|----------|--------|--------------|-------------|------|
| `0x0EE1` | `A37F` | `word_2945F` | [`sub_122FD`](../disassembly/functions/seg006_44AD_sub.asm) | Collision-check pass count |
| `0x0EE3` | `A381` | `word_29461` | [`sub_BDEC`](../disassembly/functions/seg004_153C_sub.asm), [`sub_E1DA`](../disassembly/functions/seg006_038A_sub.asm) | AI / behavior pass count |
| `0x0EE5` | `A383` | `word_29463` | [`sub_12C93`](../disassembly/functions/seg006_4E43_sub.asm) | LOD / visibility-cull pass count |

This explains the April 6, 2026 playtests:

- Setting `0x0EE3` to 0 hangs the game because `sub_BDEC` does nothing.
- Setting `0x0EE3` to 1 keeps the player updating but stops traffic AI.
- Lowering `0x0EE5` leaves stale per-frame fields (10-13 below) on un-culled entities, which renders as garbage sprites near the camera.

The old standalone `player_car` byte at `0x0EE7` was wrong. `0x0EE7` is the start of the first entity field below.

### Entity Field Layout (0x0EE7 - 0x1F26)

The entity table is **13 parallel word arrays, 160 entries each**. Each array is `0x140` bytes; total `13 * 0x140 = 0x1040`, which exactly fills `0x0EE7..0x1F26`. Every consumer indexes a single entity with `bx = entity_index * 2` and accesses each field by a fixed displacement off `bx`. The clearest demonstration is [`sub_BDEC`](../disassembly/functions/seg004_153C_sub.asm), which copies fields 1-9 of one entity in order.

| #  | Map Offset | dseg | IDA disp. | Role (from the disassembly) |
|----|-----------|------|-----------|------------------------------|
| 1  | `0x0EE7`  | `A385` | `-5C7Bh` | State/flags word. Low byte = object-type code (`0x12..0x14`, `0x19`, `0x1F`, etc.). High byte tests and sets bits `0x10`, `0x20`, `0x40`, `0x80`, `0x4000`, `0x8000`. |
| 2  | `0x1027`  | `A4C5` | `-5B3Bh` | Z (world depth). |
| 3  | `0x1167`  | `A605` | `-59FBh` | X (world horizontal). |
| 4  | `0x12A7`  | `A745` | `-58BBh` | Y (vertical). |
| 5  | `0x13E7`  | `A885` | `-577Bh` | Rotation/state word. `sub_13132` does `xor ax, 8080h` on it to flip direction. **Word, not byte** — full `0x140` bytes, not `0xA0`. |
| 6  | `0x1527`  | `A9C5` | `-563Bh` | Steering / signed angle (`neg al`). |
| 7  | `0x1667`  | `AB05` | `-54FBh` | Velocity word — added to Z/X/Y each frame in [`sub_12D67`](../disassembly/functions/seg006_4F17_sub.asm); zeroed when out-of-range. |
| 8  | `0x17A7`  | `AC45` | `-53BBh` | Current tile-grid index. Fed into `sub_13770` which does `mov ax, [si-6A83h]` to fetch the tile entry. |
| 9  | `0x18E7`  | `AD85` | `-527Bh` | Tile-derived runtime flags. Top bits `0xFFC0` are tile state; low 6 bits act as a 0-clamped counter (`sub cx, 40h`). |
| 10 | `0x1A27`  | `AEC5` | `-513Bh` | Per-frame screen-X-like value. Cleared to 0 by `sub_12C93` when the entity is too far from the player. |
| 11 | `0x1B67`  | `B005` | `-4FFBh` | Per-frame screen-Y-like value. Same lifecycle as field 10. |
| 12 | `0x1CA7`  | `B145` | `-4EBBh` | Collision/bounding-box base. `sub_122FD` compares the player's mapped position `dx` against `[bx-4EBBh] .. [bx-4EBBh]+[bx-4D7Bh]`. |
| 13 | `0x1DE7`  | `B285` | `-4D7Bh` | Collision/bounding-box extent. Zero = entity excluded from collision; cleared with field 12 on cull. |

### Stored vs Runtime Fields

Fields 1-9 are loaded from the map file and updated by entity behavior. Fields 10-13 are recomputed every frame from the player's position and zeroed for distant entities, so the stored on-disk values for these are not load-bearing (likely zero in the file).

### Current Tooling Interpretation

The current viewer/exporter reads fields 1-5 only (treating field 5 as a 1-byte rotation in a half-sized array). The data still renders plausibly because:

- Only the low byte of field 1 is used (object id), which is correct.
- Coordinate arrays are signed 16-bit, which is correct.
- Field 5's "top two bits as rotation" works because that is one valid interpretation of the low byte of the word, but the field is actually a full word that also encodes direction-flip state (`xor ax, 8080h`).

Coordinates are scaled by `4` in the current 3D reconstruction — that scale is a tooling choice and is not isolated as a clean engine constant.

---

## Tail Table (0x1F27 - 0x2136)

Both sub-regions are color/material remap tables. The 16-byte trailer is **not** padding.

- `0x1F27 - 0x2126`: 256 word entries. Primary remap table — converts a `(seed_high, seed_low)` byte pair into an output `(color_high, color_low)` byte pair.
- `0x2127 - 0x2136`: 16 bytes. Secondary single-byte remap, indexed by `byte & 0x0F`.

### Primary Table (0x1F27 - 0x2126)

#### Consumer 1: `sub_11408` sky / fog gradient

The sky/horizon gradient renderer in [`seg006_35B8_sub.asm`](../disassembly/functions/seg006_35B8_sub.asm) hits this table twice per band:

- **First lookup (lines 99-127, diagonal only).** Input is the sky-base seed `al` from `byte_285AC` or `byte_285AD` (selected by `byte_285B4`, map `0x36`). The code builds `bx = 2 * ((al & 0xF) | ((al & 0xF) << 4))`, so it always lands on a diagonal entry `0x00, 0x11, 0x22, …, 0xFF`. The 16-bit word at that diagonal slot is the *starting* sky pixel-pair; subsequent bands add `0x0101`.
- **Second lookup (lines 155-169, any entry).** Input is the word at `byte_2AC61`-gated `word_285B0` (map `0x32`). The index is `bl = al | ((ah & 0xF) << 4)`, then `bx = 2 * bl`, so this can hit *any* entry. Result is stored in `word_2AA9B` and `word_2AA8E` and used as the fog/horizon color for that band.

This is why pair indices that are not on the diagonal (e.g., pair 2 at `0x1F2B`) still produce visible color changes in playtests — they are reachable through the `word_285B0` seed.

#### Consumer 2: `sub_15153` sprite blitter (race mode `0x13` only)

[`seg006_7303_sub.asm`](../disassembly/functions/seg006_7303_sub.asm) line 140. In the `word_2D628 == 0x13` branch, when neither byte of the input pixel pair has bit `0x10` set, it does `mov cx, [bx-4C3Bh]` with `bx = ((ch << 4) | cl) << 1` to remap the full pair through the table. Outside mode `0x13`, the blitter uses a different runtime buffer at `word_2D8A0` and never touches `0x1F27`.

#### Consumer 3: `sub_8680` in-place rewrites

[`seg002_0FB0_sub.asm`](../disassembly/functions/seg002_0FB0_sub.asm) is the map-loader epilogue. What it does to the table depends on `word_2D628`:

| `word_2D628` | What `sub_8680` does to the table |
|--------------|----|
| `9` or `0xD`        | Overwrites all 256 entries with an identity cube: `table[16*row + col] = word(high=row, low=col)` (lines 53-82). The file's bytes never get used. |
| `0x13`              | Walks all 256 entries once; if `entry > 0x0F0F`, `entry -= 0x0202` (lines 91-104). One-shot darken. Gated by `byte_285B3 == 0` (map `0x35`). |
| Anything else       | Table is left at the file's loaded values. |

#### Tool interpretation

The repo currently reads the first `0x200` bytes as 256 byte pairs without modeling the seed→pair semantics:

```ts
for (let i = 0; i < 256; i++) {
  color0 = dat[offset + 0x1F27 + i * 2 + 0];
  color1 = dat[offset + 0x1F27 + i * 2 + 1];
}
```

See [`src/shared/color.ts`](../src/shared/color.ts). That works as a passive dump, but the index `i` is `(seed_high << 4) | seed_low`, not an arbitrary color slot.

### Secondary Table / Trailer (0x2127 - 0x2136)

A 16-byte byte-indexed remap. In `sub_15153`, the `word_2D628 == 0x13` rendering branch uses `mov ch, [bx-4A3Bh]` with `bx = ch & 0x0F` (and the same for `cl`) whenever the input pixel byte has bit `0x10` set ([`seg006_7303_sub.asm`](../disassembly/functions/seg006_7303_sub.asm) lines 147, 154). So this table is the secondary palette for "marked" sprite pixels in mode `0x13`.

Legacy notes singled out offsets like `0x1F27` and `0x1F4A` as street/lake related. I did not confirm those labels in the disassembly, but playtesting now supports the broader interpretation that this table is a palette/material remap structure.

### Playtest-Backed Tail Pairs

Pacific Coast #1 playtests on April 6, 2026 confirmed that the table is live
and visible in-game:

| Pair Index | Map-Relative Offset | Original Bytes | Test Bytes | Observed Result |
|------------|---------------------|----------------|------------|-----------------|
| `0`        | `0x1F27`            | `00 00`        | `FF FF`    | Street color changed from black to dark grey |
| `2`        | `0x1F2B`            | `66 66`        | `FF FF`    | Some green colors changed to grey |
| `6`        | `0x1F33`            | `34 34`        | `FF FF`    | No obvious visible change in a short drive |
| `17`       | `0x1F49`            | `01 01`        | `FF FF`    | Blue used by ocean and at least one car changed |

This is enough to say the `256 x 2` table is not dead padding: it controls
scene-wide color/material remapping, and individual pairs can affect shared
palette slots used by multiple world elements.

Note that the diagonal entries (pair indices `0`, `17`, `34`, `51`, …, `255` — i.e. `0x00, 0x11, 0x22, …, 0xFF`) feed the sky/horizon base (first `sub_11408` lookup), while non-diagonal entries are reachable through either `word_285B0` (second `sub_11408` lookup) or the mode-`0x13` sprite blitter. Pair `0` and pair `17` in the playtest above are both diagonal entries.

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

All entries below use real dseg offsets. The IDA signed displacement (e.g. `[bx-6A83h]`) is the 16-bit two's complement of these.

| dseg     | IDA disp. | Meaning                                       |
|----------|-----------|-----------------------------------------------|
| `949E`   | `-6B62h`  | Map blob base (load destination of `sub_DBA`) |
| `957D`   | `-6A83h`  | Tile grid (`map[0x00DF]`)                     |
| `A37F`   | `-5C81h`  | `word_2945F` — collision count                |
| `A381`   | `-5C7Fh`  | `word_29461` — AI count                       |
| `A383`   | `-5C7Dh`  | `word_29463` — LOD-cull count                 |
| `AC45`   | `-53BBh`  | Field 8: per-entity current tile index        |
| `AD85`   | `-527Bh`  | Field 9: per-entity tile-derived flags        |
| `B3C5`   | `-4C3Bh`  | 256-entry color/material remap table          |
| `B5C5`   | `-4A3Bh`  | 16-byte secondary remap (race mode `0x13`)    |

The tile descriptor pointer table is at `word_2C18E / word_2C190`. It is outside the map blob (the map only contains tile *indices*; the descriptor pointers live in a separate engine table).

### Important Correction About `0xA0`

The old document used `mov cx, 0A0h` in [`sub_11408`](../disassembly/functions/seg006_35B8_sub.asm) as proof of a 160-object limit.

That was a bad citation. In that routine, `0xA0` is used in `rep stosw` buffer-fill loops, i.e. `160` words per scanline (`320` pixels), not as an object-count field.

---

## Open Questions

1. What do header bytes `0x06..0x18`, `0x46..0xDE` mean? The first chunk has no dseg labels (probably read via byte-LUT pointers); the second chunk includes the unexplained repeated-pair block at `0x80..0xDE`.
2. What are the unknown labeled header fields used for? (`word_28580`, `word_28597/99`, `word_285A1`, `word_285A3/5`, `word_285A7`, `byte_285A9..AB`, `word_285B9..C3` — see Named Header Fields table.)
3. What does the 2-byte prefix at `0x04DF` store?
4. What are chunks 2, 4, 6, 8 of the middle block used for? No direct-displacement reads were found at their natural offsets.
5. What are the exact semantics of entity fields 6 (steering), 8 (current tile index), and 9 (tile-derived flags)?
6. Can the shared-vs-scene-local tile-id split (`0x40` threshold) be proven directly from engine code rather than only from data/layout and tooling?

## Closed Questions

The earlier list contained several questions that the disassembly now answers:

- **Object block consumers / `0x0EE3` and `0x0EE5` meaning** — three separate counts for collision, AI, and LOD passes (`word_2945F`, `word_29461`, `word_29463`).
- **The "unresolved" tail at `0x1487..0x1F26`** — eight more parallel fields of the same 160-entry entity table.
- **Meaning of the `256 x 2` table at `0x1F27`** — color remap with two consumers: the `sub_11408` sky/fog gradient (diagonal entries via `byte_285AC/AD`, any entry via `word_285B0`) and the mode-`0x13` `sub_15153` sprite blitter.
- **The 16-byte trailer at `0x2127`** — secondary remap for "marked" pixels in race mode `0x13`.
- **What drives non-diagonal pair effects in playtests** — the `word_285B0` seed at map `0x32` and the mode-`0x13` sprite path both index arbitrary entries.
- **What part of the header is opaque** — much less than the original spec implied. 29 fields in `map[0x02..0x46]` have named consumers (see Named Header Fields table).

## References

- Forum discussion: http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960
- Current tooling: `src/shared/color.ts`, `src/shared/extract.ts`, `src/shared/mapgen.ts`
- Disassembly:
  - Map loader: `functions/seg002_0FB0_sub.asm`, `functions/seg001_536E_sub.asm` (load to `dseg:949E`)
  - Tile grid: `functions/seg006_6F49_sub.asm`, `functions/seg006_5920_sub.asm`, `functions/seg006_52E2_sub.asm`
  - Object block: `functions/seg004_153C_sub.asm` (`sub_BDEC` field copier), `functions/seg006_4F17_sub.asm` (velocity step), `functions/seg006_4E43_sub.asm` (`sub_12C93` LOD), `functions/seg006_44AD_sub.asm` (`sub_122FD` collision), `functions/seg006_52E2_sub.asm` (`sub_13132` tile-update)
  - Middle block: `functions/seg006_7174_sub.asm` (`sub_14FC4` populate), `functions/seg006_2F01_sub.asm` (`sub_10D51` scan), `functions/seg004_1458_sub.asm` (init)
  - Tail tables: `functions/seg002_0FB0_sub.asm` (`sub_8680` color-table init), `functions/seg006_35B8_sub.asm` (`sub_11408` sky/fog gradient — primary consumer in normal modes), `functions/seg006_7303_sub.asm` (`sub_15153` sprite blit)
  - Day/night sky-seed toggle: `functions/seg006_04A7_sub.asm` (overwrites `byte_285AC..AF` at `seg006:0608`)
  - Palette: `functions/seg000_0CA8_sub.asm`, `functions/seg000_0D3C_sub.asm`
