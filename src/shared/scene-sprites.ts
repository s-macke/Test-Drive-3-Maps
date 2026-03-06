import { createDefaultPalette, generateIndexedPng, type Td3PaletteLayer } from './td3-image.js';

export interface SceneSpriteBankSpec {
    readonly id: string;
    readonly datFile: string;
    readonly offset: number;
    readonly size: number;
    readonly paletteLayers?: readonly Td3PaletteLayer[];
}

export interface SceneSpriteReference {
    readonly rootIndex: number;
    readonly variantIndex: number;
}

export interface SceneSprite {
    readonly bankId: string;
    readonly datFile: string;
    readonly recordOffset: number;
    readonly width: number;
    readonly height: number;
    readonly sourceRowCount: number;
    readonly rowRuns: readonly number[];
    readonly indexedPixels: Uint8Array;
    readonly references: readonly SceneSpriteReference[];
}

interface BuilderState {
    di: number;
    byte2A9C0: number;
    byte2A9C1: number;
    byte2A9C2: number;
    byte2846C: number;
    byte2846D: number;
    word2A9CB: number;
    word2A9CD: number;
    readonly work: Uint8Array;
}

const ROOT_COUNT = 0x20;
const FANOUT = 0x16;
// The traced builder logic still needs more headroom than the documented runtime arena.
// Use a full 16-bit offline workspace so the extracted sprite records remain readable.
const EXPANDED_BANK_SIZE = 0x10000;

const WORK_OFFSET_2A9F4 = 0x1B;
const WORK_OFFSET_2A9F5 = 0x1C;

const ROOT_FLAGS = Uint8Array.from([
    0x00, 0x30, 0x30, 0x30, 0x51, 0x51, 0x80, 0x80,
    0x80, 0x51, 0x51, 0x51, 0x51, 0x51, 0x51, 0x51,
    0x51, 0x51, 0x78, 0x52, 0x48, 0x2A, 0x98, 0x6A,
    0x60, 0x42, 0x51, 0x51, 0x51, 0x51, 0x51, 0x51,
]);

const CHILD_STATES = Uint8Array.from([
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
    0x08, 0x0A, 0x0C, 0x0E, 0x10, 0x12, 0x14, 0x17,
    0x1A, 0x1D, 0x20, 0x24, 0x28, 0x2C,
]);

const BIT_SEED_TABLE = Uint8Array.from([
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0x7F, 0xFF, 0xFE, 0xFF, 0xFF, 0xF7, 0xFF, 0xFF,
    0xBF, 0xEF, 0x7F, 0xFF, 0xFE, 0xFD, 0xFD, 0xF7, 0xFF, 0xDF,
    0xBD, 0xEF, 0x7F, 0xF7, 0xFE, 0xFD, 0xBD, 0x77, 0xFF, 0xDF,
    0xBD, 0xEF, 0x7B, 0xB7, 0xDE, 0xFD, 0xBD, 0x77, 0xFF, 0xDD,
    0xBD, 0xEB, 0x7B, 0xB7, 0xDE, 0xBD, 0xBD, 0x77, 0xFF, 0xDD,
    0xAD, 0xEB, 0x7A, 0xB7, 0x5E, 0xBD, 0xB5, 0x77, 0x7F, 0xDD,
    0xAD, 0xAB, 0x7A, 0xB5, 0x5E, 0xB5, 0xB5, 0x75, 0x7D, 0xDD,
    0xA5, 0xAB, 0x5A, 0xB5, 0x5A, 0xB5, 0xA5, 0x75, 0x7D, 0x5D,
    0xA5, 0xAA, 0x5A, 0xA5, 0x5A, 0xA5, 0xA5, 0x55, 0x7D, 0x5D,
    0x25, 0xAA, 0x52, 0xA5, 0x4A, 0xA5, 0xA4, 0x55, 0x7D, 0x55,
    0x25, 0x8A, 0x52, 0xA5, 0x4A, 0xA1, 0xA4, 0x55, 0x5D, 0x55,
    0x25, 0x8A, 0x52, 0xA4, 0x4A, 0xA1, 0xA4, 0x55, 0x55, 0x55,
    0x25, 0x8A, 0x12, 0xA4, 0x42, 0xA1, 0xA4, 0x15, 0x55, 0x55,
    0x21, 0x8A, 0x12, 0xA4, 0x42, 0xA1, 0x84, 0x15, 0x55, 0x45,
    0x21, 0x82, 0x12, 0xA4, 0x42, 0x21, 0x84, 0x11, 0x55, 0x45,
    0x21, 0x82, 0x12, 0x24, 0x42, 0x21, 0x84, 0x11, 0x55, 0x44,
    0x01, 0x82, 0x12, 0x24, 0x42, 0x21, 0x80, 0x11, 0x15, 0x44,
    0x01, 0x80, 0x12, 0x24, 0x42, 0x01, 0x80, 0x11, 0x14, 0x44,
    0x01, 0x80, 0x02, 0x24, 0x40, 0x01, 0x80, 0x10, 0x14, 0x44,
    0x01, 0x80, 0x02, 0x20, 0x40, 0x01, 0x80, 0x10, 0x14, 0x04,
    0x00, 0x80, 0x02, 0x20, 0x40, 0x01, 0x00, 0x00, 0x14, 0x04,
    0x00, 0x80, 0x00, 0x20, 0x00, 0x01, 0x00, 0x00, 0x14, 0x00,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
]);

export const sceneSpriteBanks: readonly SceneSpriteBankSpec[] = [
    {
        id: 'SCENE01',
        datFile: 'SCENE01.DAT',
        offset: 0x15490,
        size: 0x28D6,
    },
    {
        id: 'SCENE02',
        datFile: 'SCENE02.DAT',
        offset: 0x1229A,
        size: 0x30B2,
    },
    {
        id: 'SCENETT1',
        datFile: 'DATAB.DAT',
        offset: 0x1ED2C,
        size: 0x28D6,
    },
] as const;

function readWord(buffer: Uint8Array, offset: number): number {
    if (offset < 0 || offset + 1 >= buffer.length) {
        throw new Error(`Word read out of range at 0x${offset.toString(16)}`);
    }
    return buffer[offset] | (buffer[offset + 1] << 8);
}

function writeWord(buffer: Uint8Array, offset: number, value: number): void {
    if (offset < 0 || offset + 1 >= buffer.length) {
        throw new Error(`Word write out of range at 0x${offset.toString(16)}`);
    }
    buffer[offset] = value & 0xFF;
    buffer[offset + 1] = (value >> 8) & 0xFF;
}

function rotateLeft(byte: number): [number, number] {
    const carry = (byte >> 7) & 1;
    return [((byte << 1) & 0xFF) | carry, carry];
}

function rotateWorkByte(state: BuilderState, offset: number): number {
    if (offset < 0 || offset >= state.work.length) {
        throw new Error(`Bitstream rotation exceeded work buffer at ${offset}.`);
    }
    const [rotated, carry] = rotateLeft(state.work[offset]);
    state.work[offset] = rotated;
    return carry;
}

function initializeBitState(state: BuilderState): void {
    state.work.fill(0);

    let shape = state.byte2A9C0;
    if (shape >= 0x18) {
        shape -= 0x18;
        state.byte2A9C1++;
        if (shape >= 0x18) {
            shape -= 0x18;
            state.byte2A9C1++;
        }
    }

    let tableOffset = 0;
    if (shape < 0x18) {
        tableOffset = (0x17 - shape) * 10;
    }

    const word0 = readWord(BIT_SEED_TABLE, tableOffset + 0);
    const word1 = readWord(BIT_SEED_TABLE, tableOffset + 2);
    const word2 = readWord(BIT_SEED_TABLE, tableOffset + 4);
    const word3 = readWord(BIT_SEED_TABLE, tableOffset + 6);

    writeWord(state.work, 0x00, word0);
    writeWord(state.work, 0x07, word0);
    state.work[0x08] = (word0 >> 8) & 0xFF;
    writeWord(state.work, 0x0E, word0);
    state.work[0x0F] = (word0 >> 8) & 0xFF;
    writeWord(state.work, 0x15, word0);
    state.work[0x16] = (word0 >> 8) & 0xFF;

    writeWord(state.work, 0x02, word1);
    writeWord(state.work, 0x09, word1);
    writeWord(state.work, 0x10, word1);
    writeWord(state.work, 0x17, word1);

    writeWord(state.work, 0x04, word2);
    writeWord(state.work, 0x0B, word2);
    writeWord(state.work, 0x12, word2);
    state.work[0x19] = word2 & 0xFF;

    state.work[0x06] = word3 & 0xFF;
    state.work[0x0D] = word3 & 0xFF;
    state.work[0x14] = word3 & 0xFF;

    if (shape >= 0x18) {
        shape -= 0x18;
        state.byte2A9C1 = 3;
        tableOffset = shape < 0x18 ? (0x17 - shape) * 10 + 6 : 6;
    }

    const seedWord = readWord(BIT_SEED_TABLE, tableOffset + 6);
    state.work[WORK_OFFSET_2A9F4] = (seedWord >> 8) & 0xFF;
    writeWord(state.work, WORK_OFFSET_2A9F5, readWord(BIT_SEED_TABLE, tableOffset + 8));
}

function shiftSeedBits(state: BuilderState): number {
    const oldF4 = state.work[WORK_OFFSET_2A9F4];
    const oldF5 = readWord(state.work, WORK_OFFSET_2A9F5);
    const carry = oldF5 >> 15;

    state.work[WORK_OFFSET_2A9F4] = ((oldF4 << 1) & 0xFF) | carry;
    writeWord(state.work, WORK_OFFSET_2A9F5, ((oldF5 << 1) & 0xFFFF) | (oldF4 >> 7));
    return carry;
}

function emitSingleWidthRow(
    source: Uint8Array,
    output: Uint8Array,
    state: BuilderState,
    sourcePixelOffset: number,
    rowByte: number,
): void {
    const centerWidth = rowByte & 0x3F;
    let pixelOffset = sourcePixelOffset;
    let maskOffset = 0;
    let bitCounter = 8;
    const sideWidth = (state.byte2846C - centerWidth) >> 1;

    for (let i = 0; i < sideWidth; i++) {
        if (rotateWorkByte(state, maskOffset) !== 0) {
            output[state.di++] = 0;
        }
        bitCounter--;
        if (bitCounter === 0) {
            bitCounter = 8;
            maskOffset++;
        }
    }

    for (let i = 0; i < centerWidth; i++) {
        const carry = rotateWorkByte(state, maskOffset);
        const pixel = source[pixelOffset++];
        if (carry !== 0) {
            output[state.di++] = pixel;
        }
        bitCounter--;
        if (bitCounter === 0) {
            bitCounter = 8;
            maskOffset++;
        }
    }

    for (let i = 0; i < sideWidth; i++) {
        if (rotateWorkByte(state, maskOffset) !== 0) {
            output[state.di++] = 0;
        }
        bitCounter--;
        if (bitCounter === 0) {
            bitCounter = 8;
            maskOffset++;
        }
    }

    for (let i = 0; i < bitCounter; i++) {
        rotateWorkByte(state, maskOffset);
    }
}

function emitDoubleWidthRow(
    source: Uint8Array,
    output: Uint8Array,
    state: BuilderState,
    sourcePixelOffset: number,
    rowByte: number,
): void {
    const centerWidth = rowByte & 0x3F;
    let pixelOffset = sourcePixelOffset;
    let maskOffset = 0;
    let bitCounter = 8;
    const sideWidth = (state.byte2846C - centerWidth) >> 1;

    for (let i = 0; i < sideWidth; i++) {
        const carry = rotateWorkByte(state, maskOffset);
        output[state.di++] = 0;
        if (carry !== 0) {
            output[state.di++] = 0;
        }
        bitCounter--;
        if (bitCounter === 0) {
            bitCounter = 8;
            maskOffset++;
        }
    }

    for (let i = 0; i < centerWidth; i++) {
        const carry = rotateWorkByte(state, maskOffset);
        const pixel = source[pixelOffset++];
        output[state.di++] = pixel;
        if (carry !== 0) {
            output[state.di++] = pixel;
        }
        bitCounter--;
        if (bitCounter === 0) {
            bitCounter = 8;
            maskOffset++;
        }
    }

    for (let i = 0; i < sideWidth; i++) {
        const carry = rotateWorkByte(state, maskOffset);
        output[state.di++] = 0;
        if (carry !== 0) {
            output[state.di++] = 0;
        }
        bitCounter--;
        if (bitCounter === 0) {
            bitCounter = 8;
            maskOffset++;
        }
    }

    for (let i = 0; i < bitCounter; i++) {
        rotateWorkByte(state, maskOffset);
    }
}

function buildMode0Leaf(
    source: Uint8Array,
    output: Uint8Array,
    state: BuilderState,
    rowByteOffset: number,
    rowPointerOffset: number,
): void {
    let rowWidth = 0;
    let outputHeight = 0;

    while (true) {
        const carry = shiftSeedBits(state);
        if (carry !== 0) {
            outputHeight++;
            const sourcePixelOffset = readWord(source, rowPointerOffset);
            const rowStart = state.di;
            output[state.word2A9CB] = 1;
            emitSingleWidthRow(source, output, state, sourcePixelOffset, source[rowByteOffset]);
            state.word2A9CB++;
            rowWidth = state.di - rowStart;
        }

        rowByteOffset += 2;
        rowPointerOffset += 2;
        state.byte2846D--;
        if (state.byte2846D === 0 || state.di + rowWidth >= EXPANDED_BANK_SIZE) {
            break;
        }
    }

    output[state.word2A9CD] = rowWidth & 0xFF;
    output[state.word2A9CD + 1] = outputHeight & 0xFF;
}

function buildScaledLeaf(
    source: Uint8Array,
    output: Uint8Array,
    state: BuilderState,
    rowByteOffset: number,
    rowPointerOffset: number,
): void {
    let rowWidth = 0;
    let outputHeight = 0;

    while (true) {
        const rowStart = state.di;
        outputHeight = (outputHeight + state.byte2A9C1) & 0xFF;
        const sourcePixelOffset = readWord(source, rowPointerOffset);
        emitDoubleWidthRow(source, output, state, sourcePixelOffset, source[rowByteOffset]);
        rowWidth = state.di - rowStart;
        output[state.word2A9CB] = state.byte2A9C1;

        const carry = shiftSeedBits(state);
        if (carry !== 0) {
            outputHeight = (outputHeight + 1) & 0xFF;
            output[state.word2A9CB] = (output[state.word2A9CB] + 1) & 0xFF;
        }

        state.word2A9CB++;
        rowByteOffset += 2;
        rowPointerOffset += 2;
        state.byte2846D--;
        if (state.byte2846D === 0 || state.di + rowWidth >= EXPANDED_BANK_SIZE) {
            break;
        }
    }

    output[state.word2A9CD] = rowWidth & 0xFF;
    output[state.word2A9CD + 1] = outputHeight & 0xFF;
}

function buildLeafRecord(source: Uint8Array, output: Uint8Array, state: BuilderState): void {
    initializeBitState(state);

    const descriptorOffset = state.byte2A9C2 * 8;
    const sizeWord = readWord(source, descriptorOffset);
    state.byte2846C = sizeWord & 0xFF;
    state.byte2846D = sizeWord >> 8;

    output[state.di++] = state.byte2846D;
    state.word2A9CD = state.di;
    state.di += 2;
    state.word2A9CB = state.di;
    state.di += state.byte2846D;

    const rowPointerOffset = readWord(source, descriptorOffset + 2);
    const rowByteOffset = readWord(source, descriptorOffset + 4);

    if (state.byte2A9C1 === 0) {
        buildMode0Leaf(source, output, state, rowByteOffset, rowPointerOffset);
    } else {
        buildScaledLeaf(source, output, state, rowByteOffset, rowPointerOffset);
    }
}

function buildExpandedBank(source: Uint8Array): Uint8Array {
    const output = new Uint8Array(EXPANDED_BANK_SIZE);
    const state: BuilderState = {
        di: 0x40,
        byte2A9C0: 0,
        byte2A9C1: 0,
        byte2A9C2: 0,
        byte2846C: 0,
        byte2846D: 0,
        word2A9CB: 0,
        word2A9CD: 0,
        work: new Uint8Array(0x1E),
    };

    for (let rootIndex = 0; rootIndex < ROOT_COUNT; rootIndex++) {
        writeWord(output, rootIndex * 2, state.di);
        if (rootIndex === 0) {
            continue;
        }

        state.byte2A9C2 = rootIndex;
        const rootType = ROOT_FLAGS[rootIndex] & 0x07;

        if (rootType !== 0) {
            if (rootType >= 2) {
                continue;
            }

            const tableOffset = state.di;
            state.di += FANOUT * 2;
            state.byte2A9C1 = 0;
            state.byte2A9C0 = 0x17;
            for (let variantIndex = 0; variantIndex < FANOUT; variantIndex++) {
                writeWord(output, tableOffset + variantIndex * 2, state.di);
            }
            buildLeafRecord(source, output, state);
            if (state.word2A9CD + 1 >= output.length) {
                return output;
            }
            continue;
        }

        const tableOffset = state.di;
        state.di += FANOUT * 2;
        let previousHeader = 0xFFFF;
        for (let variantIndex = 0; variantIndex < FANOUT; variantIndex++) {
            const pointerOffset = tableOffset + variantIndex * 2;
            writeWord(output, pointerOffset, state.di);
            state.byte2A9C0 = CHILD_STATES[variantIndex];
            state.byte2A9C1 = 0;
            buildLeafRecord(source, output, state);
            if (state.word2A9CD + 1 >= output.length) {
                return output;
            }

            const currentHeader = readWord(output, state.word2A9CD);
            if (currentHeader === previousHeader) {
                writeWord(output, pointerOffset, readWord(output, pointerOffset - 2));
            } else {
                previousHeader = currentHeader;
            }
        }
    }

    return output;
}

function expandSpriteRecord(expandedBank: Uint8Array, recordOffset: number): Pick<SceneSprite, 'width' | 'height' | 'sourceRowCount' | 'rowRuns' | 'indexedPixels'> | null {
    if (recordOffset < 0 || recordOffset + 3 >= expandedBank.length) {
        return null;
    }

    const sourceRowCount = expandedBank[recordOffset];
    const width = expandedBank[recordOffset + 1];
    const height = expandedBank[recordOffset + 2];

    if (sourceRowCount === 0 || width === 0 || height === 0) {
        return null;
    }

    const rowRunOffset = recordOffset + 3;
    const pixelOffset = rowRunOffset + sourceRowCount;
    const pixelDataLength = sourceRowCount * width;
    const pixelEnd = pixelOffset + pixelDataLength;

    if (pixelEnd > expandedBank.length) {
        return null;
    }

    const rowRuns = Array.from(expandedBank.slice(rowRunOffset, rowRunOffset + sourceRowCount));
    const expandedHeight = rowRuns.reduce((sum, value) => sum + value, 0);
    if (expandedHeight !== height) {
        return null;
    }

    const indexedPixels = new Uint8Array(width * height);
    let destinationRow = 0;

    for (let sourceRow = 0; sourceRow < sourceRowCount; sourceRow++) {
        const runLength = rowRuns[sourceRow];
        const rowPixels = expandedBank.slice(pixelOffset + sourceRow * width, pixelOffset + (sourceRow + 1) * width);
        for (let repeat = 0; repeat < runLength; repeat++) {
            indexedPixels.set(rowPixels, destinationRow * width);
            destinationRow++;
        }
    }

    return {
        width,
        height,
        sourceRowCount,
        rowRuns,
        indexedPixels,
    };
}

export function extractSceneSprites(bank: SceneSpriteBankSpec, fileData: Uint8Array): SceneSprite[] {
    const source = fileData.slice(bank.offset, bank.offset + bank.size);
    const expandedBank = buildExpandedBank(source);
    const references = new Map<number, SceneSpriteReference[]>();

    for (let rootIndex = 1; rootIndex < ROOT_COUNT; rootIndex++) {
        if ((ROOT_FLAGS[rootIndex] & 0x07) >= 2) {
            continue;
        }
        const variantTableOffset = readWord(expandedBank, rootIndex * 2);
        if (variantTableOffset < 0 || variantTableOffset + FANOUT * 2 > expandedBank.length) {
            continue;
        }
        for (let variantIndex = 0; variantIndex < FANOUT; variantIndex++) {
            const recordOffset = readWord(expandedBank, variantTableOffset + variantIndex * 2);
            const reference = { rootIndex, variantIndex };
            const existing = references.get(recordOffset);
            if (existing) {
                existing.push(reference);
            } else {
                references.set(recordOffset, [reference]);
            }
        }
    }

    const sprites: SceneSprite[] = [];
    for (const [recordOffset, spriteReferences] of references.entries()) {
        const decoded = expandSpriteRecord(expandedBank, recordOffset);
        if (!decoded) {
            continue;
        }

        sprites.push({
            bankId: bank.id,
            datFile: bank.datFile,
            recordOffset,
            width: decoded.width,
            height: decoded.height,
            sourceRowCount: decoded.sourceRowCount,
            rowRuns: decoded.rowRuns,
            indexedPixels: decoded.indexedPixels,
            references: spriteReferences,
        });
    }

    sprites.sort((left, right) => left.recordOffset - right.recordOffset);
    return sprites;
}

export function renderSceneSpritePng(sprite: SceneSprite, palette: readonly number[] = createDefaultPalette()): Uint8Array {
    return generateIndexedPng(sprite.indexedPixels, palette, sprite.width, sprite.height, false, 0);
}
