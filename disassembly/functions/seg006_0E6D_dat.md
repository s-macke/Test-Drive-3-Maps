# seg006_0E6D - Sine Lookup Table

## Summary

16-bit fixed-point sine lookup table used for fast trigonometric calculations without floating-point hardware.

## Location

- Segment: `seg006`
- Offset: `0E6E` (aligned to `0E70`)
- Size: 256 bytes (128 word entries) for the primary quadrant table

## Format

- **Entry size**: 16-bit unsigned word (little-endian)
- **Entry count**: 128 entries for one quadrant (0-90 degrees)
- **Scale**: 65536 (values represent `sin(θ) × 65536`)
- **Angular resolution**: 0.703125 degrees per entry (90° / 128)

## Sample Values

| Index | Offset | Angle (deg) | Raw Value | sin(θ) × 65536 |
|-------|--------|-------------|-----------|----------------|
| 0     | 0E70   | 0.703°      | 0x0324    | 804            |
| 1     | 0E72   | 1.406°      | 0x0648    | 1608           |
| 2     | 0E74   | 2.109°      | 0x096C    | 2412           |
| 3     | 0E76   | 2.813°      | 0x0C90    | 3216           |
| ...   | ...    | ...         | ...       | ...            |
| 64    | 0EF0   | 45.0°       | ~0xB505   | ~46341         |
| ...   | ...    | ...         | ...       | ...            |
| 127   | 0F6E   | 89.297°     | ~0xFFFF   | ~65535         |

## Usage

Referenced by `seg006_21C7_sub.asm` (sin_cos_multiply function):

```asm
add     bx, 0E6Eh        ; table base address
mov     ax, cs:[bx]      ; lookup sine value
mul     [bp+arg_2]       ; scale by magnitude
```

The function handles all four quadrants through:
- **Mirroring**: For angles 45-90°, uses `table[128 - index]`
- **Sign negation**: For quadrants 3-4 (180-360°)

## Mathematical Basis

For index `i` (0-127):
```
table[i] = round(sin(i × 90° / 128) × 65536)
         = round(sin(i × π / 256) × 65536)
```

Cosine is derived using the identity:
```
cos(θ) = sin(90° - θ) = table[128 - i]
```

## Extended Data

The data continues beyond the 128-entry primary table, likely containing:
- Pre-negated values for other quadrants
- Related lookup tables (tangent, reciprocals, etc.)

## See Also

- [seg006_21C7_sub.md](seg006_21C7_sub.md) - Sin/cos multiply function that uses this table