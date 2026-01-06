#!/usr/bin/env tsx
/**
 * LST File Viewer for Test Drive III
 *
 * Parses and displays the contents of .LST files in human-readable format.
 * Supports both Scene LST (1638 bytes) and Car LST (675 bytes) variants.
 *
 * Usage: tsx src/tools/lstviewer/lstviewer.ts <path-to-lst-file>
 */

import fs from 'node:fs/promises';
import path from 'node:path';

// Resource type detection by size
const RESOURCE_TYPES: Record<number, string> = {
    8504: 'MAP',
    337: 'PALETTE',
    7: 'SIGNATURE',    // "TJL 90" + 0xFF developer marker
    64997: 'TILES',      // SCENE01
    64709: 'TILES',      // SCENE02
    32205: 'OBJECTS',    // SCENE02 extra objects
    449: 'ICON',         // SCENE01
    459: 'ICON',         // SCENE02
    666: 'TITLE',
};

// Format detection by size range
function getResourceFormat(size: number): string {
    if (size === 8504) return 'Map';
    if (size === 337) return 'Palette';
    if (size === 7) return 'Binary';
    if (size >= 64000 && size <= 65000) return '3D';
    if (size >= 30000 && size <= 35000) return '3D';
    if (size >= 400 && size <= 700) return 'LZW+RLE';
    // Most other variable-size entries are LZW compressed
    if (size >= 2000 && size <= 12000) return 'LZW?';
    return '?';
}

function getResourceType(size: number): string {
    return RESOURCE_TYPES[size] ?? `DATA(${size})`;
}

function readString(data: Uint8Array, offset: number, maxLen: number): string {
    let str = '';
    for (let i = 0; i < maxLen; i++) {
        const byte = data[offset + i];
        if (byte === 0) break;
        str += String.fromCharCode(byte);
    }
    return str;
}

function readU8(data: Uint8Array, offset: number): number {
    return data[offset];
}

function readU16LE(data: Uint8Array, offset: number): number {
    return data[offset] | (data[offset + 1] << 8);
}

function readU32LE(data: Uint8Array, offset: number): number {
    return data[offset] | (data[offset + 1] << 8) | (data[offset + 2] << 16) | (data[offset + 3] << 24);
}

interface ResourceEntry {
    entrySize: number;
    checksum: number;
    marker: number;
    datOffset: number;
    size: number;
    padding: number;
}

interface SceneLST {
    name: string;
    numMaps: number;
    flags: string;
    unknownFlag: number;
    routeNames: string[];
    routingData: number[];
    uiStrings: string[];
    resources: ResourceEntry[];
}

interface CarLST {
    name: string;
    binaryData: Uint8Array;
}

function parseSceneLST(data: Uint8Array): SceneLST {
    // 0x0000: Name (19 bytes)
    const name = readString(data, 0x0000, 19);

    // 0x0013: Number of maps (1 byte)
    const numMaps = readU8(data, 0x0013);

    // 0x004F: Flags string (8 bytes)
    const flags = readString(data, 0x004F, 8);

    // 0x0057: Unknown flag (1 byte)
    const unknownFlag = readU8(data, 0x0057);

    // 0x0058: Route names (36 entries × 12 chars)
    const routeNames: string[] = [];
    for (let i = 0; i < 36; i++) {
        const routeName = readString(data, 0x0058 + i * 12, 12).trim();
        routeNames.push(routeName);
    }

    // 0x0208: Routing data (12 bytes)
    const routingData: number[] = [];
    for (let i = 0; i < 12; i++) {
        routingData.push(readU8(data, 0x0208 + i));
    }

    // 0x03D6: UI strings (null-terminated, 0xAA delimited)
    const uiStrings: string[] = [];
    let currentStr = '';
    for (let i = 0; i < 250; i++) {
        const byte = data[0x03D6 + i];
        if (byte === 0xAA || byte === 0x00) {
            if (currentStr.length > 0) {
                uiStrings.push(currentStr);
                currentStr = '';
            }
            if (byte === 0x00 && data[0x03D6 + i + 1] === 0x00) {
                break; // End of strings
            }
        } else {
            currentStr += String.fromCharCode(byte);
        }
    }

    // 0x04DE: Resource entries (28 entries × 14 bytes)
    const resources: ResourceEntry[] = [];
    let offset = 0x04DE;
    while (offset + 14 <= data.length) {
        const entrySize = readU16LE(data, offset);
        const checksum = readU16LE(data, offset + 2);
        const marker = readU16LE(data, offset + 4);
        const datOffset = readU32LE(data, offset + 6);
        const size = readU16LE(data, offset + 10);
        const padding = readU16LE(data, offset + 12);

        // Validate entry by marker
        if (marker !== 0x0065 || padding !== 0) {
            break;
        }

        resources.push({ entrySize, checksum, marker, datOffset, size, padding });
        offset += 14;
    }

    return { name, numMaps, flags, unknownFlag, routeNames, routingData, uiStrings, resources };
}

function parseCarLST(data: Uint8Array): CarLST {
    const name = readString(data, 0x0000, 19);
    const binaryData = data.slice(0x0013);
    return { name, binaryData };
}

function formatSceneLST(lst: SceneLST, filename: string): string {
    const lines: string[] = [];

    lines.push('=== LST File Viewer ===');
    lines.push(`File: ${filename}`);
    lines.push('Type: Scene LST (1638 bytes)');
    lines.push('');

    lines.push('--- Header ---');
    lines.push(`Name: ${lst.name}`);
    lines.push(`Maps: ${lst.numMaps}`);
    lines.push(`Flags: "${lst.flags}"`);
    lines.push(`Unknown flag: 0x${lst.unknownFlag.toString(16).padStart(2, '0')}`);
    lines.push('');

    lines.push('--- Route Names (36 entries × 12 chars) ---');
    for (let map = 0; map < 5; map++) {
        lines.push(`Map ${map + 1}:`);
        for (let route = 0; route < 4; route++) {
            const idx = map * 4 + route;
            lines.push(`  [${idx.toString().padStart(2)}] ${lst.routeNames[idx]}`);
        }
    }
    lines.push('Sections 6-9 (placeholders):');
    for (let section = 0; section < 4; section++) {
        const baseIdx = 20 + section * 4;
        lines.push(`  Section ${section + 6}: ${lst.routeNames.slice(baseIdx, baseIdx + 4).join(', ')}`);
    }
    lines.push('');

    lines.push('--- Routing Data (12 bytes) ---');
    lines.push(`Values: [${lst.routingData.join(', ')}]`);
    lines.push('');

    lines.push('--- UI Strings ---');
    for (let i = 0; i < lst.uiStrings.length; i++) {
        lines.push(`  [${i.toString().padStart(2)}] ${lst.uiStrings[i]}`);
    }
    lines.push('');

    lines.push('--- Resource Table (28 entries × 14 bytes) ---');
    lines.push('Idx  DAT Offset   Size     Type         Format    EntrySize  Checksum');
    lines.push('---  ----------  ------   -----------  --------  ---------  --------');
    for (let i = 0; i < lst.resources.length; i++) {
        const r = lst.resources[i];
        const offsetHex = '0x' + r.datOffset.toString(16).toUpperCase().padStart(8, '0');
        const type = getResourceType(r.size).padEnd(11);
        const format = getResourceFormat(r.size).padEnd(8);
        lines.push(
            `${i.toString().padStart(3)}  ${offsetHex}  ${r.size.toString().padStart(6)}   ${type}  ${format}  ${r.entrySize.toString().padStart(9)}  ${r.checksum.toString().padStart(8)}`
        );
    }

    return lines.join('\n');
}

function formatCarLST(lst: CarLST, filename: string): string {
    const lines: string[] = [];

    lines.push('=== LST File Viewer ===');
    lines.push(`File: ${filename}`);
    lines.push('Type: Car LST (675 bytes)');
    lines.push('');

    lines.push('--- Header ---');
    lines.push(`Name: ${lst.name}`);
    lines.push('');

    lines.push('--- Binary Data (656 bytes) ---');
    lines.push('First 32 values as 16-bit little-endian:');
    lines.push('Offset  Hex     Dec');
    lines.push('------  ------  -----');
    for (let i = 0; i < 32 && i * 2 < lst.binaryData.length; i++) {
        const value = readU16LE(lst.binaryData, i * 2);
        const offset = 0x0013 + i * 2;
        lines.push(
            `0x${offset.toString(16).padStart(4, '0')}  0x${value.toString(16).toUpperCase().padStart(4, '0')}  ${value.toString().padStart(5)}`
        );
    }
    lines.push('');

    lines.push('--- Hex Dump (first 128 bytes of binary data) ---');
    const hexLines: string[] = [];
    for (let i = 0; i < Math.min(128, lst.binaryData.length); i += 16) {
        const hex: string[] = [];
        const ascii: string[] = [];
        for (let j = 0; j < 16 && i + j < lst.binaryData.length; j++) {
            const byte = lst.binaryData[i + j];
            hex.push(byte.toString(16).toUpperCase().padStart(2, '0'));
            ascii.push(byte >= 32 && byte < 127 ? String.fromCharCode(byte) : '.');
        }
        const offset = 0x0013 + i;
        hexLines.push(
            `${offset.toString(16).toUpperCase().padStart(4, '0')}  ${hex.join(' ').padEnd(48)}  ${ascii.join('')}`
        );
    }
    lines.push(...hexLines);

    return lines.join('\n');
}

async function main(): Promise<void> {
    const args = process.argv.slice(2);

    if (args.length === 0) {
        console.log('Usage: tsx src/tools/lstviewer/lstviewer.ts <path-to-lst-file>');
        console.log('');
        console.log('Examples:');
        console.log('  tsx src/tools/lstviewer/lstviewer.ts public/base/SCENE01.LST');
        console.log('  tsx src/tools/lstviewer/lstviewer.ts public/base/CCERV.LST');
        process.exit(1);
    }

    const filePath = args[0];
    const filename = path.basename(filePath);

    try {
        const buffer = await fs.readFile(filePath);
        const data = new Uint8Array(buffer);

        // Detect variant by size
        if (data.length === 1638) {
            // Scene LST
            const lst = parseSceneLST(data);
            console.log(formatSceneLST(lst, filename));
        } else if (data.length === 675) {
            // Car LST
            const lst = parseCarLST(data);
            console.log(formatCarLST(lst, filename));
        } else {
            console.error(`Unknown LST variant: ${data.length} bytes`);
            console.error('Expected: 1638 (Scene) or 675 (Car)');
            process.exit(1);
        }
    } catch (err) {
        if (err instanceof Error) {
            console.error(`Error reading file: ${err.message}`);
        } else {
            console.error('Error reading file');
        }
        process.exit(1);
    }
}

main();
