#!/usr/bin/env tsx
/**
 * Test Drive III Image Viewer / Extractor
 *
 * Extracts VGA images from DAT files using LZW + RLE decompression.
 *
 * Usage: tsx src/tools/imgviewer/imgviewer.ts <dat-file> <offset> <size> <width> [palette-file] [palette-offset]
 *
 * Example:
 *   npm run imgview -- public/base/DATAB.DAT 0x151 12083 320 public/base/DATAB.DAT 0x0
 */

import fs from 'node:fs/promises';
import path from 'node:path';
import { lzwDecode } from '../../shared/lzw.js';
import { rleUnpack } from '../../shared/rle.js';

// Default VGA palette (first 16 colors)
const DEFAULT_PALETTE: number[] = [
    0x00, 0x00, 0x00,  // 0: Black
    0x00, 0x00, 0xA0,  // 1: Blue
    0x00, 0xA0, 0x00,  // 2: Green
    0x00, 0xA0, 0xA0,  // 3: Cyan
    0xA0, 0x00, 0x00,  // 4: Red
    0xA0, 0x00, 0xA0,  // 5: Magenta
    0xA0, 0x50, 0x00,  // 6: Brown
    0xA0, 0xA0, 0xA0,  // 7: Light Gray
    0x50, 0x50, 0x50,  // 8: Dark Gray
    0x50, 0x50, 0xF0,  // 9: Light Blue
    0x50, 0xF0, 0x50,  // 10: Light Green
    0x50, 0xF0, 0xF0,  // 11: Light Cyan
    0xF0, 0x50, 0x50,  // 12: Light Red
    0xF0, 0x50, 0xF0,  // 13: Light Magenta
    0xF0, 0xF0, 0x50,  // 14: Yellow
    0xF0, 0xF0, 0xF0,  // 15: White
];

// Fill rest of default palette with grays
for (let i = 16; i < 256; i++) {
    const gray = Math.floor((i - 16) * 255 / 240);
    DEFAULT_PALETTE.push(gray, gray, gray);
}

/**
 * Load palette from DAT file
 * TD3 palettes are 112 colors, 6-bit VGA values (multiply by 4)
 */
function loadPalette(data: Uint8Array, offset: number): number[] {
    const palette = [...DEFAULT_PALETTE];  // Start with default

    // Load 112 colors at palette indices 144-255
    for (let i = 0; i < 112; i++) {
        const r = data[offset + i * 3 + 0] * 4;
        const g = data[offset + i * 3 + 1] * 4;
        const b = data[offset + i * 3 + 2] * 4;
        const idx = (i + 144) * 3;
        palette[idx] = Math.min(255, r);
        palette[idx + 1] = Math.min(255, g);
        palette[idx + 2] = Math.min(255, b);
    }

    return palette;
}

/**
 * Convert indexed pixels to RGB using palette
 */
function applyPalette(pixels: Uint8Array, palette: number[]): Uint8Array {
    const rgb = new Uint8Array(pixels.length * 3);

    for (let i = 0; i < pixels.length; i++) {
        const idx = pixels[i] * 3;
        rgb[i * 3 + 0] = palette[idx] ?? 0;
        rgb[i * 3 + 1] = palette[idx + 1] ?? 0;
        rgb[i * 3 + 2] = palette[idx + 2] ?? 0;
    }

    return rgb;
}

/**
 * Generate PPM image (simple, no dependencies)
 */
function generatePPM(rgb: Uint8Array, width: number, height: number, flipVertical: boolean = true): Uint8Array {
    const header = `P6\n${width} ${height}\n255\n`;
    const headerBytes = new TextEncoder().encode(header);

    const output = new Uint8Array(headerBytes.length + rgb.length);
    output.set(headerBytes, 0);

    if (flipVertical) {
        // TD3 images are stored bottom-to-top
        const rowSize = width * 3;
        for (let y = 0; y < height; y++) {
            const srcRow = (height - 1 - y) * rowSize;
            const dstRow = headerBytes.length + y * rowSize;
            output.set(rgb.subarray(srcRow, srcRow + rowSize), dstRow);
        }
    } else {
        output.set(rgb, headerBytes.length);
    }

    return output;
}

/**
 * Parse hex or decimal number from string
 */
function parseNumber(str: string): number {
    if (str.toLowerCase().startsWith('0x')) {
        return parseInt(str, 16);
    }
    return parseInt(str, 10);
}

async function main(): Promise<void> {
    const args = process.argv.slice(2);

    if (args.length < 4) {
        console.log('Test Drive III Image Extractor');
        console.log('');
        console.log('Usage: tsx src/tools/imgviewer/imgviewer.ts <dat-file> <offset> <size> <width> [palette-file] [palette-offset]');
        console.log('');
        console.log('Arguments:');
        console.log('  dat-file       Path to DAT file containing the image');
        console.log('  offset         Offset of image data (hex or decimal)');
        console.log('  size           Size of compressed image data');
        console.log('  width          Image width in pixels');
        console.log('  palette-file   Optional: DAT file containing palette (default: same as dat-file)');
        console.log('  palette-offset Optional: Offset of palette data (default: 0x0)');
        console.log('');
        console.log('Examples:');
        console.log('  npm run imgview -- public/base/DATAB.DAT 0x151 12083 320');
        console.log('  npm run imgview -- public/base/SCENE01.DAT 0x0 666 320 public/base/SCENE01.DAT 0x12378');
        console.log('');
        console.log('Known image widths:');
        console.log('  320 - Dashboard/HUD graphics (.TOP, .BOT)');
        console.log('  208 - Statistics, car selection (.ICN, .FL*.LZ)');
        console.log('  168 - Steering wheel');
        console.log('  112 - Car selection UI (.BIC, .SID)');
        console.log('   72 - Gear selector, menu icon (.ETC, .SIC)');
        process.exit(1);
    }

    const datFile = args[0];
    const offset = parseNumber(args[1]);
    const size = parseNumber(args[2]);
    const width = parseNumber(args[3]);
    const paletteFile = args[4] ?? datFile;
    const paletteOffset = args[5] ? parseNumber(args[5]) : 0;

    console.log(`Reading image from ${datFile} @ 0x${offset.toString(16)} (${size} bytes)`);
    console.log(`Width: ${width} pixels`);

    try {
        // Read DAT file
        const datBuffer = await fs.readFile(datFile);
        const datData = new Uint8Array(datBuffer);

        // Extract compressed image data
        const compressedData = datData.slice(offset, offset + size);
        console.log(`Compressed data: ${compressedData.length} bytes`);
        console.log(`First 16 bytes: ${Array.from(compressedData.slice(0, 16)).map(b => b.toString(16).padStart(2, '0')).join(' ')}`);

        // Step 1: LZW decompress
        console.log('LZW decompressing...');
        const lzwDecoded = lzwDecode(compressedData);
        console.log(`After LZW: ${lzwDecoded.length} bytes`);

        // Step 2: RLE unpack
        console.log('RLE unpacking...');
        const pixels = rleUnpack(lzwDecoded);
        console.log(`After RLE: ${pixels.length} pixels`);

        // Calculate height
        const height = Math.floor(pixels.length / width);
        console.log(`Dimensions: ${width} x ${height}`);

        if (height === 0) {
            console.error('Error: Calculated height is 0. Check width parameter or compression.');
            process.exit(1);
        }

        // Load palette
        console.log(`Loading palette from ${paletteFile} @ 0x${paletteOffset.toString(16)}`);
        const paletteBuffer = await fs.readFile(paletteFile);
        const paletteData = new Uint8Array(paletteBuffer);
        const palette = loadPalette(paletteData, paletteOffset);

        // Show pixel value distribution
        const pixelCounts = new Map<number, number>();
        for (const p of pixels) {
            pixelCounts.set(p, (pixelCounts.get(p) ?? 0) + 1);
        }
        const topPixels = [...pixelCounts.entries()].sort((a, b) => b[1] - a[1]).slice(0, 5);
        console.log('Top 5 pixel values:', topPixels.map(([v, c]) => `${v}(${c})`).join(', '));

        // Apply palette
        const rgb = applyPalette(pixels.slice(0, width * height), palette);

        // Generate PPM
        const ppm = generatePPM(rgb, width, height);

        // Output filename
        const baseName = path.basename(datFile, path.extname(datFile));
        const outputDir = path.join(path.dirname(datFile), '..', '..', 'images');
        await fs.mkdir(outputDir, { recursive: true });

        const outputFile = path.join(outputDir, `${baseName}_0x${offset.toString(16)}_${width}x${height}.ppm`);
        await fs.writeFile(outputFile, ppm);

        console.log(`Saved: ${outputFile}`);

    } catch (err) {
        if (err instanceof Error) {
            console.error(`Error: ${err.message}`);
        } else {
            console.error('Unknown error');
        }
        process.exit(1);
    }
}

main();
