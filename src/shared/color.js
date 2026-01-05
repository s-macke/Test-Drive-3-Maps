
function GetColorMap(dat, offset) {
    let i = 0;
    let coloroffset = offset + 0x1F27;
    let colormap = [];
    for (i = 0; i < 256; i++) {
        colormap.push(
            {
                color0: dat[coloroffset + i * 2 + 0],
                color1: dat[coloroffset + i * 2 + 1]
            }
        );
    }
    //alert(JSON.stringify(colormap));
    return colormap;
}

export { GetColorMap };