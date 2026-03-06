#!/usr/bin/env tsx
/**
 * Test Drive III Image Viewer / Extractor
 *
 * Extracts VGA images from DAT files using LZW + RLE decompression.
 *
 * Usage: tsx src/tools/imgviewer/imgviewer.ts <dat-file> <offset> <size> <width> [palette-file] [palette-offset] [palette-base] [pixel-base]
 *
 * Example:
 *   npm run imgview -- public/base/DATAB.DAT 0x151 12083 320 public/base/DATAB.DAT 0x0
 *   npm run imgview -- public/base/CSTEL.DAT 0x303 0x1D4A 208 public/base/CSTEL.DAT 0x0 144 128
 */

import fs from 'node:fs/promises';
import path from 'node:path';
import {
    applyPalette,
    applyPaletteLayer,
    applyPixelBase,
    createDefaultPalette,
    decodeTd3Image,
    generatePpm,
    parseNumber,
} from '../../shared/td3-image.js';

async function main(): Promise<void> {
    const args = process.argv.slice(2);

    if (args.length < 4) {
        console.log('Test Drive III Image Extractor');
        console.log('');
        console.log('Usage: tsx src/tools/imgviewer/imgviewer.ts <dat-file> <offset> <size> <width> [palette-file] [palette-offset] [palette-base] [pixel-base]');
        console.log('');
        console.log('Arguments:');
        console.log('  dat-file       Path to DAT file containing the image');
        console.log('  offset         Offset of image data (hex or decimal)');
        console.log('  size           Size of compressed image data');
        console.log('  width          Image width in pixels');
        console.log('  palette-file   Optional: DAT file containing palette (default: same as dat-file)');
        console.log('  palette-offset Optional: Offset of palette data (default: 0x0)');
        console.log('  palette-base   Optional: Starting palette index for 112-color block (default: 144)');
        console.log('  pixel-base     Optional: Value added to each pixel index before palette lookup (default: 0)');
        console.log('');
        console.log('Examples:');
        console.log('  npm run imgview -- public/base/DATAB.DAT 0x151 12083 320');
        console.log('  npm run imgview -- public/base/SCENE01.DAT 0x0 666 320 public/base/SCENE01.DAT 0x12378');
        console.log('  npm run imgview -- public/base/CSTEL.DAT 0x303 0x1D4A 208 public/base/CSTEL.DAT 0x0 144 128');
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
    const paletteBase = args[6] ? parseNumber(args[6]) : 144;
    const pixelBase = args[7] ? parseNumber(args[7]) : 0;

    if (paletteBase < 0 || paletteBase > 144) {
        console.error('Error: palette-base must be between 0 and 144.');
        process.exit(1);
    }

    if (pixelBase < 0 || pixelBase > 255) {
        console.error('Error: pixel-base must be between 0 and 255.');
        process.exit(1);
    }

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
        const decoded = decodeTd3Image(compressedData, width);
        console.log(`After RLE: ${decoded.pixelCount} pixels`);
        const height = decoded.height;
        console.log(`Dimensions: ${width} x ${height}`);

        // Load palette
        console.log(`Loading palette from ${paletteFile} @ 0x${paletteOffset.toString(16)} into indices ${paletteBase}-${paletteBase + 111}`);
        const paletteBuffer = await fs.readFile(paletteFile);
        const paletteData = new Uint8Array(paletteBuffer);
        const palette = createDefaultPalette();
        applyPaletteLayer(palette, paletteData, paletteOffset, paletteBase, 112);

        // Show pixel value distribution
        const pixelCounts = new Map<number, number>();
        for (const p of decoded.indexedPixels) {
            pixelCounts.set(p, (pixelCounts.get(p) ?? 0) + 1);
        }
        const topPixels = [...pixelCounts.entries()].sort((a, b) => b[1] - a[1]).slice(0, 5);
        console.log('Top 5 pixel values:', topPixels.map(([v, c]) => `${v}(${c})`).join(', '));

        // TD3 can bias image pixels into a palette bank before writing them.
        const indexedPixels = applyPixelBase(decoded.indexedPixels, pixelBase);

        // Apply palette
        const rgb = applyPalette(indexedPixels, palette);

        // Generate PPM
        const ppm = generatePpm(rgb, width, height);

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
