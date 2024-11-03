import * as extract from "./extract.js";
import {files} from "./files.js";

let maps = {
    tiles1: [],
    tiles2: [],
    tiles3: [],
    objs1: [],
    objs2: [],
    cars: []
}


function LoadObjects(colormap) {
    //LoadPalette(maps.datab, 0x0);
    //LoadPalette(maps.datab, 0x71e7);
    //LoadPalette(maps.datab, 0x15515);
    //LoadPalette(maps.datac, 0x0);
    //LoadPalette(maps.datac, 0x151);
    //LoadPalette(maps.datac, 0x495);
    //LoadPalette(maps.scene01, 0x12378);
    //LoadPalette(maps.scene01, 0x1e451);
    //LoadPalette(maps.scene01, 0x257EA);
    let isobj = [
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    ];
    maps.tiles1 = extract.BuildObjectList("tiles1",files.scene01, colormap, 0x0045B, 59, isobj);
    maps.tiles2 = extract.BuildObjectList("tiles2",files.datab,   colormap, 0x2373B, 64, isobj);
    maps.tiles3 = extract.BuildObjectList("tiles3",files.scene02, colormap, 0x00488, 64, isobj);

    isobj = [
        0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,
        0,    1,    1,    1,    1, null,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,
        0, null, null, null, null,    1,    0,    0,
        0,    0,    0,    0,    0,    0,    1,    1,
        1,    0,    0,    1,    1,    1,    0,    1,
        1,    1,    0,    0,    0,    0,    0,    0,
    ];

    maps.objs1 = extract.BuildObjectList("objs1",files.datab, colormap, 0x32F1A, 64, isobj);
    //maps.objs4 = extract.BuildObjectList(maps.datab,  colormap, 0x1ED2C, 64);
    isobj = [
        null, null, null, null, null, 0,    0,    0,
        0,    0,    0,    0,    0,    1,    null, null,
        0,    1,    1,    1,    1,    null,  0,    0,
        0,    0,    0,    0,    0,    1, null,    0,
        0,    null, null, null, 1,    1,    null, 1,
        0,    0,    0,    0,    null, null, 1,    1,
        1,    0,    1,    0,    0,    null, 0,    1,
        1,    1,    0,    0,    0,    0,    0,    0,
    ];

    maps.objs2 = extract.BuildObjectList("objs2",files.scene02, colormap, 0x1534D, 64, isobj);

    maps.cars = [
        extract.BuildObject("car1", files.cmyth, colormap, 0, true),
        extract.BuildObject("car2", files.cdiab, colormap, 0, true),
        extract.BuildObject("car3", files.ccerv, colormap, 0, true),
        extract.BuildObject("car4", files.cstel, colormap, 0, true),
        extract.BuildObject("car5", files.ccnsx, colormap, 0, true)
    ];

    // datab  0x32F1A
    //  0 false sign
    //  1 false speed sign
    //  2 false speed sign
    //  3 false speed sign
    //  4 false sign
    //  5 false ampel
    //  6 false stop sign
    //  7 false stop sign

    //  8 false speed sign
    //  9 false sign
    // 10 false sign
    // 11 false sign
    // 12 false sign
    // 13 false sign
    // 14 false sign
    // 15 false leuchtturm

    // 16 false train sign
    // 17 true polizei
    // 18 true lockomotive
    // 19 true wagon
    // 20 true wagon
    // 21 nothing
    // 22 false sign
    // 23 false sign

    // 24 false sign
    // 25 false sign
    // 26 false sign
    // 27 false strommast
    // 28 false sign
    // 29 false ship
    // 30 false ship
    // 31 false sign

    // 32 false sign
    // 33 nothing
    // 34 nothing
    // 35 nothing
    // 36 nothing
    // 37 true ???
    // 38 false rambok?
    // 39 false ???

    // 40 false baustelle?
    // 41 false baustelle?
    // 42 false sign
    // 43 false human
    // 44 false fence
    // 45 false fence
    // 46 true car
    // 47 true car

    // 48 true police car
    // 49 false sign
    // 50 false sign
    // 51 true scheune
    // 52 true building
    // 53 true building
    // 54 false building
    // 55 true car

    // 56 true vogel?
    // 57 true vogel?
    // 58 false cow
    // 59 false object?
    // 60 false sign
    // 61 false sign
    // 62 false sign
    // 63 false sign

    // ------------

    // scene02  0x1534D
    // 0 nothing
    // 1 nothing
    // 2 nothing
    // 3 nothing
    // 4 nothing
    // 5 false ampel
    // 6 false stop sign
    // 7 false stop sign

    // 8 false speed sign
    // 9 false sign
    // 10 false sign
    // 11 false sign
    // 12 false sign
    // 13 true plane
    // 14
    // 15

    // 16 false schranke
    // 17 true police
    // 18 true lokomotive
    // 19 true wagon
    // 20 true wagon
    // 21 nothing
    // 22 false sign
    // 23 false sign

    // 24 false sign
    // 25 false sign
    // 26 false sign
    // 27 false Strommast
    // 28 false sign
    // 29 true ship
    // 30 nothing
    // 31 false sign

    // 32 false sign
    // 33 nothing
    // 34 nothing
    // 35 nothing
    // 36 X-Wing
    // 37 true car
    // 38 nothing
    // 39 true horse

    // 40 false construction site
    // 41 false construction
    // 42
    // 43 false church
    // 44 nothing
    // 45 nothing
    // 46 true bus
    // 47 true car

    // 48 true police car
    // 49 false baloon
    // 50 true building
    // 51 false building
    // 52 false building
    // 53 nothing
    // 54 false building
    // 55 true building

    // 56 maybe true bird?
    // 57 false vogel?
    // 58 false cow
    // 59 false object?
    // 60 false sign
    // 61 false sign
    // 62 false sign
    // 63 false sign
    /*
        let offset = 0x32F1A; // datab
        //let offset = 0x1534D; // scene02
        let objectoffset = extract.Read16(files.datab, offset + 41 * 2);
        maps.cars = [extract.BuildObject(files.datab, colormap, offset + objectoffset, false)];
    */
}

export { LoadObjects, maps };