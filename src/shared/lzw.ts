/**
 * LZW Decoder for Test Drive III image format
 *
 * Based on TD3Extract reference implementation.
 * Decodes LZW compressed data with 9-12 bit variable codes.
 */

// Constants
const RESET_DICTIONARY_MARKER = 0x100;  // 256 - Clear code
const END_OF_STREAM_MARKER = 0x101;     // 257 - End code
const FIRST_CODE = 0x102;               // 258 - First dictionary entry
const MAX_CODE_BIT_LENGTH = 12;

/**
 * Decode LZW compressed data
 * @param data - Compressed input data
 * @returns Decompressed output data
 */
export function lzwDecode(data: Uint8Array): Uint8Array {
    const output: number[] = [];

    // Dictionary: code -> byte sequence
    let dictionary: Map<number, number[]> = new Map();
    let nextCodeId = FIRST_CODE;
    let currentCodeBitLength = 9;

    // Bit reading state
    let bitPosition = 0;

    // Initialize dictionary with single-byte entries (0-255)
    function resetDictionary(): void {
        dictionary = new Map();
        for (let i = 0; i < 256; i++) {
            dictionary.set(i, [i]);
        }
        nextCodeId = FIRST_CODE;
        currentCodeBitLength = 9;
    }

    // Read variable-width code from bit stream
    function readCode(): number | null {
        const bytePos = Math.floor(bitPosition / 8);
        const bitOffset = bitPosition % 8;

        // Need at least 2 bytes, potentially 3 for codes spanning byte boundaries
        if (bytePos + 2 > data.length) {
            return null;
        }

        // Read 24-bit window (handles all code sizes up to 16 bits)
        let value = data[bytePos];
        if (bytePos + 1 < data.length) {
            value |= data[bytePos + 1] << 8;
        }
        if (bytePos + 2 < data.length) {
            value |= data[bytePos + 2] << 16;
        }

        // Extract the code
        value >>= bitOffset;
        value &= (1 << currentCodeBitLength) - 1;

        bitPosition += currentCodeBitLength;
        return value;
    }

    // Check if we need to expand code width
    function checkCodeWidthExpansion(): void {
        if (nextCodeId >= (1 << currentCodeBitLength) && currentCodeBitLength < MAX_CODE_BIT_LENGTH) {
            currentCodeBitLength++;
        }
    }

    // Start with fresh dictionary
    resetDictionary();

    // Read first code
    let code = readCode();
    if (code === null || code === END_OF_STREAM_MARKER) {
        return new Uint8Array(output);
    }

    // Handle clear code at start
    if (code === RESET_DICTIONARY_MARKER) {
        resetDictionary();
        code = readCode();
        if (code === null || code === END_OF_STREAM_MARKER) {
            return new Uint8Array(output);
        }
    }

    // Output first code
    let prevSequence = dictionary.get(code);
    if (!prevSequence) {
        // Invalid first code
        return new Uint8Array(output);
    }
    output.push(...prevSequence);

    // Main decode loop
    while (true) {
        code = readCode();
        if (code === null) {
            break;
        }

        if (code === END_OF_STREAM_MARKER) {
            break;
        }

        if (code === RESET_DICTIONARY_MARKER) {
            resetDictionary();
            code = readCode();
            if (code === null || code === END_OF_STREAM_MARKER) {
                break;
            }
            prevSequence = dictionary.get(code);
            if (!prevSequence) {
                break;
            }
            output.push(...prevSequence);
            continue;
        }

        let currentSequence: number[];

        if (dictionary.has(code)) {
            // Code exists in dictionary
            currentSequence = dictionary.get(code)!;
        } else if (code === nextCodeId) {
            // Special case: code not yet in dictionary
            // This happens when encoder adds entry that decoder hasn't added yet
            currentSequence = [...prevSequence!, prevSequence![0]];
        } else {
            // Invalid code - shouldn't happen with valid data
            console.warn(`Invalid LZW code: ${code}, expected <= ${nextCodeId}`);
            break;
        }

        // Output the sequence
        output.push(...currentSequence);

        // Add new dictionary entry: previous sequence + first byte of current
        if (nextCodeId < 4096) {  // Max dictionary size
            const newEntry = [...prevSequence!, currentSequence[0]];
            dictionary.set(nextCodeId, newEntry);
            nextCodeId++;
            checkCodeWidthExpansion();
        }

        prevSequence = currentSequence;
    }

    return new Uint8Array(output);
}
