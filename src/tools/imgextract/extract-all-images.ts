#!/usr/bin/env tsx

import fs from 'node:fs/promises';
import path from 'node:path';
import {
    applyPixelBase,
    buildPalette,
    createDefaultPalette,
    decodeTd3Image,
    generateIndexedPng,
    sanitizeFileComponent,
} from '../../shared/td3-image.js';
import { td3ImageManifest, type Td3ImageManifestEntry } from './manifest.js';

function replaceWithPng(filename: string): string {
    return `${filename}.png`;
}

function buildOutputPath(entry: Td3ImageManifestEntry, width: number, height: number): string {
    const datDir = sanitizeFileComponent(path.basename(entry.datFile, path.extname(entry.datFile)));
    if (entry.filename) {
        return path.join('images', datDir, sanitizeFileComponent(replaceWithPng(entry.filename)));
    }

    const hexOffset = entry.offset.toString(16).toLowerCase();
    const fallback = `${datDir}_0x${hexOffset}_${width}x${height}.png`;
    return path.join('images', datDir, sanitizeFileComponent(fallback));
}

async function readDatFiles(manifest: readonly Td3ImageManifestEntry[]): Promise<Map<string, Uint8Array>> {
    const datFiles = new Set<string>();
    for (const entry of manifest) {
        datFiles.add(entry.datFile);
        for (const layer of entry.paletteLayers) {
            datFiles.add(layer.datFile);
        }
    }

    const loaded = new Map<string, Uint8Array>();
    for (const datFile of datFiles) {
        const absolutePath = path.join(process.cwd(), 'public', 'base', datFile);
        const buffer = await fs.readFile(absolutePath);
        loaded.set(datFile, new Uint8Array(buffer));
    }
    return loaded;
}

async function exportEntry(
    entry: Td3ImageManifestEntry,
    fileData: ReadonlyMap<string, Uint8Array>,
): Promise<'exported' | 'skipped' | 'failed'> {
    if (entry.status === 'skipped') {
        return 'skipped';
    }

    if (!entry.width) {
        return 'failed';
    }

    try {
        const source = fileData.get(entry.datFile);
        if (!source) {
            throw new Error(`Missing source file ${entry.datFile}`);
        }

        const compressed = source.slice(entry.offset, entry.offset + entry.size);
        const decoded = decodeTd3Image(compressed, entry.width);

        if (entry.height !== undefined && entry.height !== decoded.height) {
            throw new Error(`Expected ${entry.height}px high but decoded ${decoded.height}px.`);
        }

        const palette = entry.paletteLayers.length > 0
            ? buildPalette(fileData, entry.paletteLayers)
            : createDefaultPalette();
        const indexedPixels = applyPixelBase(decoded.indexedPixels, entry.pixelBase);
        const png = generateIndexedPng(indexedPixels, palette, decoded.width, decoded.height);

        const relativeOutputPath = buildOutputPath(entry, decoded.width, decoded.height);
        const absoluteOutputPath = path.join(process.cwd(), relativeOutputPath);
        await fs.mkdir(path.dirname(absoluteOutputPath), { recursive: true });
        await fs.writeFile(absoluteOutputPath, png);

        return 'exported';
    } catch (error) {
        const message = error instanceof Error ? error.message : 'Unknown export error';
        console.error(`Failed ${entry.id}: ${message}`);
        return 'failed';
    }
}

async function main(): Promise<void> {
    const fileData = await readDatFiles(td3ImageManifest);
    let exported = 0;
    let skipped = 0;
    let failed = 0;

    for (const image of td3ImageManifest) {
        const result = await exportEntry(image, fileData);
        if (result === 'exported') {
            exported++;
        } else if (result === 'skipped') {
            skipped++;
        } else {
            failed++;
        }
    }

    console.log(`Exported ${exported} images.`);
    console.log(`Skipped ${skipped} manifest rows.`);
    console.log(`Failed ${failed} rows.`);
}

main().catch((error) => {
    const message = error instanceof Error ? error.message : 'Unknown error';
    console.error(message);
    process.exit(1);
});
