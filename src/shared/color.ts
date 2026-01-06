export interface ColorMapEntry {
    color0: number;
    color1: number;
}

export function GetColorMap(dat: Uint8Array, offset: number): ColorMapEntry[] {
    const coloroffset = offset + 0x1F27;
    const colormap: ColorMapEntry[] = [];
    for (let i = 0; i < 256; i++) {
        colormap.push({
            color0: dat[coloroffset + i * 2 + 0],
            color1: dat[coloroffset + i * 2 + 1]
        });
    }
    return colormap;
}
