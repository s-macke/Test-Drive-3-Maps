# seg006_21C7 - Sine/Cosine Multiply Function

## Summary

Computes sine and cosine of an angle, scaled by a magnitude. Converts polar coordinates to Cartesian offsets using a 128-entry lookup table.

## Function Signature

```c
void sin_cos_multiply(uint16_t angle, uint16_t magnitude);

// Inputs:
//   arg_0 (angle)     - Packed angle value
//   arg_2 (magnitude) - Scale factor / radius

// Outputs (global variables):
//   word_2844C = magnitude * sin(angle)
//   word_2844E = magnitude * cos(angle)
```

## Angle Format

The input angle is transformed to a 9-bit value (0-511 range):
```asm
rol     ax, 1
xchg    al, ah
and     ax, 1FFh
```

- 512 steps = 360 degrees
- 128 steps = 90 degrees (one quadrant)
- Bits 0-6: position within quadrant (0-127)
- Bit 7: second half of quadrant (mirror lookup)
- Bit 8: determines sine sign / partial cosine sign

## Lookup Table

- Location: `cs:0E6Eh` (see [seg006_0E6D_dat.md](seg006_0E6D_dat.md))
- Size: 128 word entries (256 bytes)
- Content: Sine values for 0-90 degrees
- Format: 16-bit fixed-point (value = sin(θ) × 65536)

## Algorithm

### Sine Calculation

1. Extract quadrant index: `bx = angle & 0x7F`
2. If bit 7 set, mirror: `bx = 128 - bx`
3. Lookup: `sin_value = table[bx]`
4. Multiply: `result = sin_value * magnitude` (high word in DX)
5. If bit 8 set, negate result (quadrants 3-4)
6. Store in `word_2844C`

### Cosine Calculation

Uses identity: `cos(θ) = sin(90° - θ)`

1. Compute complementary index: `bx = 128 - bx`
2. Lookup: `cos_value = table[bx]`
3. Multiply: `result = cos_value * magnitude`
4. Negate if in quadrants 2 or 3 (checked via bits 8-9)
5. Store in `word_2844E`

## Quadrant Sign Table

| Angle Range | Quadrant | Sin Sign | Cos Sign |
|-------------|----------|----------|----------|
| 0-127       | 1        | +        | +        |
| 128-255     | 2        | +        | -        |
| 256-383     | 3        | -        | -        |
| 384-511     | 4        | -        | +        |

## Purpose in Test Drive III

Used for 3D rotation calculations - converting angle and distance to X/Y offsets:
- Camera rotation around player car
- Object placement at angles
- Steering/heading vector calculations
- Shadow projection

The fixed-point math (16-bit multiply, result in DX) was standard for fast integer trigonometry on 286/386 CPUs without floating-point units.