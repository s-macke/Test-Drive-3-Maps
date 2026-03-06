import zlib from 'node:zlib';
import { lzwDecode } from './lzw.js';
import { rleUnpack } from './rle.js';

export interface Td3DecodedImage {
    readonly indexedPixels: Uint8Array;
    readonly pixelCount: number;
    readonly width: number;
    readonly height: number;
}

export interface Td3PaletteLayer {
    readonly datFile: string;
    readonly offset: number;
    readonly baseIndex: number;
    readonly colorCount: number;
    readonly label: string;
}

const DEFAULT_PALETTE: number[] = [
    0x00, 0x00, 0x00,
    0x00, 0x00, 0xA0,
    0x00, 0xA0, 0x00,
    0x00, 0xA0, 0xA0,
    0xA0, 0x00, 0x00,
    0xA0, 0x00, 0xA0,
    0xA0, 0x50, 0x00,
    0xA0, 0xA0, 0xA0,
    0x50, 0x50, 0x50,
    0x50, 0x50, 0xF0,
    0x50, 0xF0, 0x50,
    0x50, 0xF0, 0xF0,
    0xF0, 0x50, 0x50,
    0xF0, 0x50, 0xF0,
    0xF0, 0xF0, 0x50,
    0xF0, 0xF0, 0xF0,
];

for (let i = 16; i < 256; i++) {
    const gray = Math.floor((i - 16) * 255 / 240);
    DEFAULT_PALETTE.push(gray, gray, gray);
}

const CRC32_TABLE = buildCrc32Table();

function buildCrc32Table(): Uint32Array {
    const table = new Uint32Array(256);
    for (let i = 0; i < 256; i++) {
        let value = i;
        for (let bit = 0; bit < 8; bit++) {
            value = (value & 1) !== 0 ? 0xEDB88320 ^ (value >>> 1) : value >>> 1;
        }
        table[i] = value >>> 0;
    }
    return table;
}

function crc32(buffers: Uint8Array[]): number {
    let value = 0xFFFFFFFF;
    for (const buffer of buffers) {
        for (const byte of buffer) {
            value = CRC32_TABLE[(value ^ byte) & 0xFF] ^ (value >>> 8);
        }
    }
    return (value ^ 0xFFFFFFFF) >>> 0;
}

function makeChunk(type: string, data: Uint8Array): Uint8Array {
    const typeBytes = new TextEncoder().encode(type);
    const output = new Uint8Array(12 + data.length);
    const view = new DataView(output.buffer);

    view.setUint32(0, data.length);
    output.set(typeBytes, 4);
    output.set(data, 8);
    view.setUint32(8 + data.length, crc32([typeBytes, data]));
    return output;
}

export function parseNumber(str: string): number {
    if (str.toLowerCase().startsWith('0x')) {
        return parseInt(str, 16);
    }
    return parseInt(str, 10);
}

export function decodeTd3Image(compressedData: Uint8Array, width: number): Td3DecodedImage {
    const lzwDecoded = lzwDecode(compressedData);
    const pixels = rleUnpack(lzwDecoded);
    const height = Math.floor(pixels.length / width);

    if (width <= 0 || height <= 0 || pixels.length % width !== 0) {
        throw new Error(`Image does not divide cleanly into width ${width} (${pixels.length} pixels).`);
    }

    return {
        indexedPixels: pixels,
        pixelCount: pixels.length,
        width,
        height,
    };
}

export function createDefaultPalette(): number[] {
    return [...DEFAULT_PALETTE];
}

export function applyPaletteLayer(
    palette: number[],
    data: Uint8Array,
    offset: number,
    baseIndex: number,
    colorCount: number,
): void {
    for (let i = 0; i < colorCount; i++) {
        const colorOffset = offset + i * 3;
        const paletteOffset = (baseIndex + i) * 3;
        palette[paletteOffset + 0] = Math.min(255, data[colorOffset + 0] * 4);
        palette[paletteOffset + 1] = Math.min(255, data[colorOffset + 1] * 4);
        palette[paletteOffset + 2] = Math.min(255, data[colorOffset + 2] * 4);
    }
}

export function buildPalette(
    fileData: ReadonlyMap<string, Uint8Array>,
    layers: readonly Td3PaletteLayer[],
): number[] {
    const palette = createDefaultPalette();
    for (const layer of layers) {
        const data = fileData.get(layer.datFile);
        if (!data) {
            throw new Error(`Missing palette source file: ${layer.datFile}`);
        }
        applyPaletteLayer(palette, data, layer.offset, layer.baseIndex, layer.colorCount);
    }
    return palette;
}

export function applyPixelBase(pixels: Uint8Array, pixelBase: number): Uint8Array {
    if (pixelBase === 0) {
        return pixels;
    }

    const adjusted = new Uint8Array(pixels.length);
    for (let i = 0; i < pixels.length; i++) {
        adjusted[i] = (pixels[i] + pixelBase) & 0xFF;
    }
    return adjusted;
}

export function applyPalette(pixels: Uint8Array, palette: readonly number[]): Uint8Array {
    const rgb = new Uint8Array(pixels.length * 3);

    for (let i = 0; i < pixels.length; i++) {
        const paletteOffset = pixels[i] * 3;
        rgb[i * 3 + 0] = palette[paletteOffset] ?? 0;
        rgb[i * 3 + 1] = palette[paletteOffset + 1] ?? 0;
        rgb[i * 3 + 2] = palette[paletteOffset + 2] ?? 0;
    }

    return rgb;
}

export function generatePpm(rgb: Uint8Array, width: number, height: number, flipVertical: boolean = true): Uint8Array {
    const header = `P6\n${width} ${height}\n255\n`;
    const headerBytes = new TextEncoder().encode(header);
    const output = new Uint8Array(headerBytes.length + rgb.length);
    output.set(headerBytes, 0);

    if (flipVertical) {
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

export function generateIndexedPng(
    indexedPixels: Uint8Array,
    palette: readonly number[],
    width: number,
    height: number,
    flipVertical: boolean = true,
): Uint8Array {
    if (palette.length < 256 * 3) {
        throw new Error(`Palette must contain 256 RGB entries, got ${palette.length / 3}.`);
    }

    if (indexedPixels.length !== width * height) {
        throw new Error(`Indexed pixel data does not match ${width}x${height}.`);
    }

    const scanlineWidth = width + 1;
    const raw = new Uint8Array(scanlineWidth * height);

    for (let y = 0; y < height; y++) {
        const dstRow = y * scanlineWidth;
        const srcY = flipVertical ? height - 1 - y : y;
        const srcRow = srcY * width;
        raw[dstRow] = 0;
        raw.set(indexedPixels.subarray(srcRow, srcRow + width), dstRow + 1);
    }

    const ihdr = new Uint8Array(13);
    const ihdrView = new DataView(ihdr.buffer);
    ihdrView.setUint32(0, width);
    ihdrView.setUint32(4, height);
    ihdr[8] = 8;
    ihdr[9] = 3;
    ihdr[10] = 0;
    ihdr[11] = 0;
    ihdr[12] = 0;

    const paletteBytes = Uint8Array.from(palette.slice(0, 256 * 3));
    const compressed = zlib.deflateSync(raw);
    const signature = Uint8Array.from([137, 80, 78, 71, 13, 10, 26, 10]);
    const png = [
        signature,
        makeChunk('IHDR', ihdr),
        makeChunk('PLTE', paletteBytes),
        makeChunk('IDAT', compressed),
        makeChunk('IEND', new Uint8Array(0)),
    ];

    const totalSize = png.reduce((sum, part) => sum + part.length, 0);
    const output = new Uint8Array(totalSize);
    let offset = 0;
    for (const part of png) {
        output.set(part, offset);
        offset += part.length;
    }
    return output;
}

export function sanitizeFileComponent(name: string): string {
    return name.replace(/[^A-Za-z0-9._-]+/g, '_');
}
