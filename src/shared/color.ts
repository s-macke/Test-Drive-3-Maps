// Paired-pixel lookup table loader.
//
// Every map carries a 256-entry table at `map_base + 0x1F27`. Each entry is a
// 2-byte (leftPixel, rightPixel) VGA palette-index pair that the original
// engine writes directly to the framebuffer:
//
//   - sub_11408 (sky/horizon gradient): emits the pair via `rep stosw`.
//   - sub_15153 (sprite blitter, race mode 0x13 only): emits one pair per
//     2 sprite pixels via `mov [di], cx`.
//
// The table is indexed by `idx = ((highSeed & 0xF) << 4) | (lowSeed & 0xF)`,
// where the seeds come from either the pre-grid header (sky/fog) or sprite
// source bytes (mode 0x13). Diagonal entries (where the two seeds match) are
// the only ones the sky-base lookup can hit; off-diagonal entries hold dither
// pairs that visually average two adjacent palette indices.
//
// See spec/map-format.md (Tail Table section) for the full disassembly trace.

import { ColorRGB } from './types';
import { paletteColor } from './palette';

const REMAP_OFFSET = 0x1F27;
const REMAP_ENTRY_COUNT = 256;

// Pre-grid header offsets of the seeds that key into the table.
const SKY_BASE_DAY_OFFSET = 0x2E;   // byte_285AC
const SKY_BASE_NIGHT_OFFSET = 0x2F; // byte_285AD
const SKY_FOG_SEED_OFFSET = 0x32;   // word_285B0 (little-endian)

/**
 * One entry of the paired-pixel lookup table: two VGA palette indices the
 * engine writes side-by-side to the framebuffer.
 */
export class PixelPair {
    constructor(
        public leftPixel: number,
        public rightPixel: number,
    ) {}

    /** Average the two palette indices, rounding down. */
    averageIndex(): number {
        return (this.leftPixel + this.rightPixel) >> 1;
    }

    /**
     * Resolve to a single `ColorRGB` by looking each of the two palette
     * indices up independently and averaging the RGB results. This gives the
     * visual midpoint between the two dither colors, which is what a flat-
     * shaded polygon needs. Note this is NOT the same as `paletteColor(
     * averageIndex())` — the VGA palette is non-linear, so averaging indices
     * and then resolving produces a third, unrelated palette entry.
     */
    toColor(): ColorRGB {
        //return paletteColor(this.leftPixel).average(paletteColor(this.rightPixel));
        return paletteColor(this.leftPixel);
    }
}

/**
 * Sky/fog color seeds extracted from the pre-grid header. These are the
 * inputs that get packed into table indices by `sub_11408`.
 */
export interface HeaderSeeds {
    /** byte_285AC at map[0x2E]. Drives the sky-base lookup during day. */
    skyBaseDay: number;
    /** byte_285AD at map[0x2F]. Drives the sky-base lookup during night. */
    skyBaseNight: number;
    /** word_285B0 at map[0x32..0x33]. Drives the fog/horizon-color lookup. */
    skyFogSeed: number;
}

/**
 * Load the 256-entry paired-pixel table from a map blob.
 *
 * @param dat - Full DAT file bytes.
 * @param offset - Map base offset within `dat`.
 */
export function LoadRemapTable(dat: Uint8Array, offset: number): PixelPair[] {
    const base = offset + REMAP_OFFSET;
    const table: PixelPair[] = new Array(REMAP_ENTRY_COUNT);
    for (let i = 0; i < REMAP_ENTRY_COUNT; i++) {
        table[i] = new PixelPair(
            dat[base + i * 2],
            dat[base + i * 2 + 1],
        );
    }
    return table;
}

/**
 * Read the pre-grid header seeds that index into the remap table.
 */
export function LoadHeaderSeeds(dat: Uint8Array, offset: number): HeaderSeeds {
    return {
        skyBaseDay: dat[offset + SKY_BASE_DAY_OFFSET],
        skyBaseNight: dat[offset + SKY_BASE_NIGHT_OFFSET],
        skyFogSeed:
            dat[offset + SKY_FOG_SEED_OFFSET] |
            (dat[offset + SKY_FOG_SEED_OFFSET + 1] << 8),
    };
}

/**
 * Diagonal index used by `sub_11408`'s first lookup. The engine replicates
 * the seed's low nibble into both nibbles of the index, so the result always
 * lands on `0x00, 0x11, 0x22, ..., 0xFF`.
 */
export function indexForSkyBase(seedByte: number): number {
    const n = seedByte & 0xF;
    return (n << 4) | n;
}

/**
 * (Possibly off-diagonal) index used by `sub_11408`'s second lookup. The
 * engine reads `ax = word_285B0` and computes `bl = al | ((ah & 0xF) << 4)`.
 * `al`'s high nibble can also affect the index if it is set.
 */
export function indexForSkyFog(seedWord: number): number {
    const al = seedWord & 0xFF;
    const ah = (seedWord >> 8) & 0xFF;
    return (al | ((ah & 0xF) << 4)) & 0xFF;
}

/**
 * Resolve a `(highSeed, lowSeed)` byte pair to its emitted pixel pair through
 * the table. Mirrors the sprite-blit packing used by `sub_15153` in race mode
 * 0x13.
 */
export function lookupPair(
    table: PixelPair[],
    highSeed: number,
    lowSeed: number,
): PixelPair {
    const idx = (lowSeed | ((highSeed & 0xF) << 4)) & 0xFF;
    return table[idx];
}