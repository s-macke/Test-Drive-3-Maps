// Paired-pixel lookup table loader.
//
// Every map carries a 256-entry table at `map_base + 0x1F27`. Each entry is a
// 2-byte (leftPixel, rightPixel) VGA palette-index pair that the original
// engine writes directly to the framebuffer. The table is consumed by two
// distinct render paths with OPPOSITE video-mode dispatches:
//
//   - sub_15153 (polygon-load decoder): uses this table in VGA mode 13h
//     (word_2D628 == 0x13) and bypasses it (nibble-mask only) in EGA modes.
//   - sub_11408 (sky/horizon gradient): the opposite — in VGA mode 13h it
//     uses the per-map sky-base bytes (byte_285AE day / byte_285AF night) as
//     raw palette indices and `rep stosw`es them as a solid band, completely
//     skipping the map[0x1F27] table. In EGA modes it routes the same byte
//     through the table's diagonal to produce a dithered band that
//     approximates the same hue inside the 16-color EGA palette.
//
// TD3 ships running VGA mode 13h, so the production paths are: polygons →
// this table, sky → raw palette index from the map header.
//
// The table is indexed by `idx = ((highSeed & 0xF) << 4) | (lowSeed & 0xF)`,
// where the seeds come from the pre-grid header (EGA-mode sky/fog only) or
// the LUT'd polygon color fields. Diagonal entries (where the two seeds
// match) are what the polygon decoder hits when on-disk word 1 color ==
// word 2 color (e.g., cars); off-diagonal entries hold dither pairs or
// hand-curated single-color substitutes and are reached by tile polygons
// (where word 1 and word 2 color differ) and by the EGA-mode sky-fog seed.
//
// See spec/map-format.md (Tail Table section) for the full disassembly trace.

import { ColorRGB } from './types';
import { paletteColor } from './palette';

/**
 * The four LUT variants the engine generates from the (word_2AC5F,
 * word_2AC61) weather flags via `sub_102E8` (seg006:2498). Identification
 * comes from `sub_123A8` (the per-frame particle blitter):
 *
 *   - word_2AC5F → gray particles (`al=7`) + road-blackening LUT override.
 *     Visually this is rain (gray streaks, wet asphalt).
 *   - word_2AC61 → white particles (`al=0xF`) + terrain-whitening LUT
 *     override. Visually this is snow (white flakes, snow covers grass).
 *
 *   - Dry:         word_2AC5F = 0, word_2AC61 = 0
 *   - Rain:        word_2AC5F != 0, word_2AC61 = 0
 *   - Snow:        word_2AC5F = 0,  word_2AC61 != 0
 *   - RainAndSnow: both != 0
 *
 * Combined with the per-map `byte_285B3` flag (map[0x35]) this yields the
 * full 4×2 = 8 LUT states the engine actually produces. See
 * `primaryLUT` in `extract.ts` for the decoded LUT for each combination.
 */
export enum WeatherMode {
    Dry,
    Rain,
    Snow,
    RainAndSnow,
}

const REMAP_OFFSET = 0x1F27;
const REMAP_ENTRY_COUNT = 256;

// 16-byte secondary trailer at map[0x2127]. Used by the polygon decoder
// (sub_15153 in TD3.EXE, VGA mode 13h path) when the primary LUT outputs a
// value with bit 4 set (i.e., 5-bit material colors 16..31): the final
// pixel byte is `trailer[c & 0xF]` instead of a diagonal entry of the
// 0x1F27 paired-pixel table.
const TRAILER_OFFSET = 0x2127;
const TRAILER_LENGTH = 16;

// Pre-grid header offsets of the seeds that key into the table.
const SKY_BASE_DAY_OFFSET = 0x2E;   // byte_285AC
const SKY_BASE_NIGHT_OFFSET = 0x2F; // byte_285AD
const SKY_FOG_SEED_OFFSET = 0x32;   // word_285B0 (little-endian)
const PRIMARY_LUT_MODE_OFFSET = 0x35; // byte_285B3 — controls LUT[7]/LUT[8] road tweaks

/**
 * One entry of the paired-pixel lookup table: two VGA palette indices the
 * engine writes side-by-side to the framebuffer.
 */
export class PixelPair {
    constructor(
        public leftPixel: number,
        public rightPixel: number,
    ) {}

    /**
     * Resolve to a single `ColorRGB` by looking each of the two palette
     * indices up independently and averaging the RGB results. This gives the
     * visual midpoint between the two dither colors, which is what a flat-
     * shaded polygon needs. Note this is NOT the same as `paletteColor(
     * averageIndex())` — the VGA palette is non-linear, so averaging indices
     * and then resolving produces a third, unrelated palette entry.
     */
    toColor(): ColorRGB {
        return paletteColor(this.leftPixel).average(paletteColor(this.rightPixel));
        //return paletteColor(this.leftPixel);
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
 * Load the 16-byte secondary trailer table from a map blob.
 *
 * @param dat - Full DAT file bytes.
 * @param offset - Map base offset within `dat`.
 */
export function LoadTrailerTable(dat: Uint8Array, offset: number): number[] {
    const base = offset + TRAILER_OFFSET;
    const table: number[] = new Array(TRAILER_LENGTH);
    for (let i = 0; i < TRAILER_LENGTH; i++) {
        table[i] = dat[base + i];
    }
    return table;
}

/**
 * Read the per-map primary-LUT mode flag (byte_285B3 in TD3.EXE, at
 * map[0x35]).
 *
 * The engine's primary LUT generator (sub_102E8) consults this byte to
 * decide whether to override `LUT[7]` and `LUT[8]` (the "road shoulder"
 * and "road surface" color slots). When it is zero, the engine takes the
 * "dry / no fog" subpath which collapses `LUT[8] -> 0` (black road) and
 * `LUT[7] -> 8` (gray shoulder). When it is non-zero, neither override
 * fires and both colors stay at their identity values (`LUT[7] = 7`,
 * `LUT[8] = 8` = palette idx 8 = gray).
 *
 * Empirically per-scene:
 *   - Pacific maps 1, 4, 5: flag = 0 -> black road
 *   - Pacific maps 2, 3:    flag = 1 -> gray road
 *   - Cape Cod maps 1, 4, 5: flag = 1 -> gray road
 *   - Cape Cod maps 2, 3:    flag = 0 -> black road
 */
export function LoadPrimaryLutMode(dat: Uint8Array, offset: number): number {
    return dat[offset + PRIMARY_LUT_MODE_OFFSET];
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
 * the table. Mirrors the lookup-index packing used by `sub_15153` in the
 * VGA mode 13h path (word_2D628 == 0x13).
 */
export function lookupPair(
    table: PixelPair[],
    highSeed: number,
    lowSeed: number,
): PixelPair {
    const idx = (lowSeed | ((highSeed & 0xF) << 4)) & 0xFF;
    return table[idx];
}