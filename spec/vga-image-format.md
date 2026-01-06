# Test Drive 3 - VGA Image Format Specification

This document describes the compressed image format used in Test Drive III: The Passion (1990) for storing VGA graphics.

**Status:** Decoded - Based on TD3Extract reference implementation

## Overview

Images in Test Drive III use a two-stage compression pipeline:
1. **LZW Compression** (outer layer)
2. **RLE Encoding** (inner layer)

The decompression process is: `Compressed Data → LZW Decode → RLE Unpack → Raw Pixels`

**Important:** Image dimensions (width) are **not stored** in the image data. Widths are hardcoded in TD3.EXE based on file type. Height is calculated as `total_pixels / width`.

---

## Compression Stage 1: LZW

Lempel-Ziv-Welch compression with the following parameters:

### Constants
| Name | Value | Description |
|------|-------|-------------|
| CLEAR_CODE | 0x100 (256) | Reset dictionary |
| END_CODE | 0x101 (257) | End of stream |
| FIRST_CODE | 0x102 (258) | First dictionary entry |
| MAX_BITS | 12 | Maximum code bit width |

### Initial State
- Dictionary entries 0-255 initialized with single-byte values
- Next available code: 258 (0x102)
- Initial code bit width: 9 bits

### Code Width Expansion
Code width increases when dictionary size reaches these thresholds:

| Dictionary Size | Code Width |
|-----------------|------------|
| 0-511 (0x1FF) | 9 bits |
| 512-1023 (0x3FF) | 10 bits |
| 1024-2047 (0x7FF) | 11 bits |
| 2048-4095 (0xFFF) | 12 bits |

### Bit Reading
Codes are packed in little-endian bit order:
- Read from current byte position
- Extract `code_width` bits
- Handle byte boundaries using 24-bit window

### Algorithm
```
1. Initialize dictionary with single-byte entries (0-255)
2. Read first code → output string
3. Loop:
   a. Read next code
   b. If CLEAR_CODE: reset dictionary, goto step 2
   c. If END_CODE: terminate
   d. If code in dictionary: output string
   e. If code == next_code: output prev_string + first_byte(prev_string)
   f. Add new entry: prev_string + first_byte(current_string)
   g. Expand code width if needed
```

---

## Compression Stage 2: RLE (Run Length Encoding)

After LZW decompression, data is RLE encoded in pairs of bytes.

### Format
```
[pixel_value][length_byte]
```

### Decoding Rules
1. Read pixel value byte
2. Read length byte
3. If `(length & 1) == 1`: Output single pixel
4. Right-shift length (`length >> 1`)
5. Output `length` pairs of identical pixels

### Example
```
Input:  0x42 0x05
        pixel=0x42, length=0x05 (binary: 00000101)

Decode: LSB=1, so output 1 pixel: 0x42
        Shift: 0x05 >> 1 = 0x02
        Output 2 pairs: 0x42 0x42 0x42 0x42

Total:  5 pixels of value 0x42
```

---

## Image Dimensions

### Known Widths by File Type

| Width (px) | File Extensions | Purpose |
|------------|-----------------|---------|
| 320 | .TOP, .BOT | Dashboard/HUD, full-width graphics |
| 208 | .FL1.LZ, .FL2.LZ, .ICN | Statistics display, car selection |
| 168 | *L.BOT, *R.BOT | Steering wheel (rotated views) |
| 112 | .BIC, .SID | Car selection UI elements |
| 72 | .ETC, .SIC | Gear selector, menu icons |

### Calculating Height
```
height = floor(total_pixels / width)
```

---

## Palette Format

### Structure
- 112 colors per palette
- 3 bytes per color (RGB)
- Total size: 336 bytes (0x150)

### Color Values
- Stored as 6-bit VGA values (0-63)
- Convert to 8-bit: `value * 4`

### Palette Locations
Multiple palettes exist in the data files:
- DATAB.DAT: 0x00000, 0x071E7, 0x15515
- DATAA.DAT: 0x00000, 0x01971, 0xEBFF
- DATAC.DAT: 0x00000, 0x00151, 0x00495

### Extended Palette System
- Base 16 colors (standard VGA)
- Additional 112 colors from palette file (indices 144-255)
- Color files: `*COL.BIN`, `*SC.BIN`, `*SIC.BIN`

---

## Known Image Resources

### SCENE01.DAT (Pacific Coast)
| Offset | Size | Description |
|--------|------|-------------|
| 0x00000 | 666 | Title screen |
| 0x0029A | 449 | Menu icon |
| 0x12378 | 337 | 112-color palette |

### DATAB.DAT
| Offset | Size | Description |
|--------|------|-------------|
| 0x00000 | 336 | 112-color palette |
| 0x00151 | 12083 | Police image 1 |
| 0x03085 | 11153 | Police image 2 |
| 0x05C17 | 4870 | Police light animation |
| 0x071E7 | 336 | Palette 2 |
| 0x07338 | 7162 | Car key images |
| 0x0A4D1 | 5099 | Menu background |
| 0x0EDAD | 13329 | Skill selection image 1 |
| 0x121BF | 12884 | Skill selection image 2 |

### DATAA.DAT
| Offset | Size | Description |
|--------|------|-------------|
| 0x01971 | 336 | Intro palette |
| 0x01AC2 | 11495 | Intro image 1 |
| 0x047AA | 9558 | Intro image 2 |
| 0x06D01 | 9644 | Intro image 3 |
| 0x092AE | 2242 | Intro title |
| 0x09B71 | 15333 | Intro image 4 |
| 0x0EBFF | 336 | Credits palette |

---

## Implementation Notes

### Decompression Pipeline
```typescript
function decompress(data: Uint8Array): Uint8Array {
    const lzwDecoded = lzwDecode(data);
    const pixels = rleUnpack(lzwDecoded);
    return pixels;
}
```

### Image Reconstruction
```typescript
function toImage(pixels: Uint8Array, width: number, palette: Uint8Array): ImageData {
    const height = Math.floor(pixels.length / width);
    // Note: Images are stored bottom-to-top (vertical flip required)
    // Apply palette to convert indexed pixels to RGB
}
```

---

## References

- [TD3Extract](https://github.com/yuv422/TD3Extract/) - Reference C++ implementation
- [erysdren docs](https://erysdren.me/docs/test-drive-3/) - Format documentation
- [DOS Game Club forum](https://www.dosgameclub.com/forums/topic/test-drive-3-the-passion-reverse-engineering/)
- Implementation: `src/tools/imgviewer/imgviewer.ts`
