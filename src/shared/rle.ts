/**
 * RLE (Run Length Encoding) Unpacker for Test Drive III image format
 *
 * Based on TD3Extract reference implementation.
 * Decodes RLE compressed pixel data after LZW decompression.
 *
 * Format: Paired bytes [pixel_value][length_byte]
 * - If length LSB is set: output single pixel
 * - Right-shift length and output that many pairs of identical pixels
 *
 * Example: pixel=0x42, length=5 (binary: 101)
 *   - LSB=1: output 1 pixel (0x42)
 *   - 5 >> 1 = 2: output 2 pairs (4 pixels of 0x42)
 *   - Total: 5 pixels
 */

/**
 * Unpack RLE encoded data to raw pixels
 * @param data - RLE encoded input (after LZW decompression)
 * @returns Raw pixel data (palette indices)
 */
export function rleUnpack(data: Uint8Array): Uint8Array {
    const output: number[] = [];

    // Process paired bytes
    for (let i = 0; i + 1 < data.length; i += 2) {
        const pixelValue = data[i];
        let lengthByte = data[i + 1];

        // If LSB is set, output single pixel
        if (lengthByte & 1) {
            output.push(pixelValue);
        }

        // Right-shift and output pairs
        lengthByte >>= 1;
        for (let j = 0; j < lengthByte; j++) {
            output.push(pixelValue);
            output.push(pixelValue);
        }
    }

    return new Uint8Array(output);
}

/**
 * Pack raw pixels into RLE encoded format
 * @param pixels - Raw pixel data
 * @returns RLE encoded data
 */
export function rlePack(pixels: Uint8Array): Uint8Array {
    const output: number[] = [];
    let i = 0;

    while (i < pixels.length) {
        const pixel = pixels[i];
        let count = 1;

        // Count consecutive identical pixels (max 510 due to byte limit)
        while (i + count < pixels.length && pixels[i + count] === pixel && count < 510) {
            count++;
        }

        // Encode: length = (pairs << 1) | (has_single ? 1 : 0)
        const hasSingle = count % 2 === 1;
        const pairs = Math.floor(count / 2);

        // Length byte: pairs in upper bits, single flag in LSB
        const lengthByte = (pairs << 1) | (hasSingle ? 1 : 0);

        output.push(pixel);
        output.push(lengthByte);

        i += count;
    }

    return new Uint8Array(output);
}
