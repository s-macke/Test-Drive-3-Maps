import * as Scene from './scene.js'
import * as utils from './utils.js'
import * as FlyControls from './FlyControls.js';
import * as extract from './extract.js';
import {LoadPalette} from "./extract.js";

let maps = {
    buf1: [],
    buf2: [],
    buf3: [],
    tiles1: [],
    tiles2: [],
    tiles3: [],
    objs1: [],
    objs2: [],
    cars: []
}

let files = {
    scene01: null, // SCENE01.DAT
    datab: null,   // DATAB.DAT
    scene02: null, // scene02.DAT
    datac: null,   // DATAC.DAT
    ccerv: null, // CCERV.POB
    ccnsx: null, // CCNSX.POB
    cdiab: null, // CDIAB.POB
    cmyth: null, // CMYTH.POB
    cstel: null, // CSTEL.POB
}


let scene = new Scene.Scene();
//scene.Add(scene.BuildTestMesh());

let controls = new FlyControls.FlyControls(scene.camera);
controls.movementSpeed = 50;
controls.domElement = scene.renderer.domElement;
controls.rollSpeed = Math.PI / 12;
controls.autoForward = false;
controls.dragToLook = false;

let mapoffset =
    [
        0x10240,
        0x1a1cc,
        0x1c319,
        0x21565,
        0x236b2,

        0x1014d,
        0x2158f,
        0x26273,
        0x283c0,
        0x2d87c,
    ];

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
    maps.tiles1 = extract.BuildObjectList(files.scene01, colormap, 0x0045B, 59, isobj);
    maps.tiles2 = extract.BuildObjectList(files.datab,   colormap, 0x2373B, 64, isobj);
    maps.tiles3 = extract.BuildObjectList(files.scene02, colormap, 0x00488, 64, isobj);

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


    maps.objs1 = extract.BuildObjectList(files.datab, colormap, 0x32F1A, 64, isobj);
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

    maps.objs2 = extract.BuildObjectList(files.scene02, colormap, 0x1534D, 64, isobj);

    maps.cars = [
        extract.BuildObject(files.cmyth, colormap, 0, true),
        extract.BuildObject(files.cdiab, colormap, 0, true),
        extract.BuildObject(files.ccerv, colormap, 0, true),
        extract.BuildObject(files.cstel, colormap, 0, true),
        extract.BuildObject(files.ccnsx, colormap, 0, true)
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

function BuildMap(dat, offset, tiles1, tiles2, objs) {
    let i = 0, j = 0;
    let mapoffset = offset + 0xDF;
    for (j = 0; j < 16; j++) {
        for (i = 0; i < 32; i++) {
            //let ofs = mapoffset[idx];
            //let ofs  = 0x10240 + 0xDF;
            //let ofs = 0x18B9F + 0x170C;
            //let ofs = 0x18B9F + 0x3859;
            //let ofs = 0x21644;
            //let ofs = 0x23791;

            let tile = dat[mapoffset + (i + j * 32) * 2 + 0];
            let rot = dat[mapoffset + (i + j * 32) * 2 + 1] >> 6;
            let height = dat[mapoffset + (i + j * 32) * 2 + 1] & 0x3F;
            let ob = null;
            if (tile < 0x40) {
                if (tile < tiles2.length)
                    ob = tiles2[tile].clone();
            } else {
                tile -= 0x40;
                if (tile < tiles1.length)
                    ob = tiles1[tile].clone();
            }
            //ob = objs2[58-37].clone();
            if (ob == null) {
                console.log("No object found " + tile + " " + tiles2.length + " " + tiles1.length);
                continue;
            }
            ob.rotation.z += -Math.PI / 2 * (rot);
            ob.position.x += (2048 + 2048) * (i - 16);
            ob.position.y += -(2048 + 2048) * (j - 8);
            ob.position.z += height * 256;

            scene.Add(ob);
        }
    }

    let ofs = offset + 0x0EE1;
    let nobjects = dat[ofs + 0];
    let nmovingobjects = dat[ofs + 2];
    let nlodobjects = dat[ofs + 4];
    for (i = 0; i < nobjects; i++)
    {
        let objid = dat[ofs + 6 + i * 2 + 0];
        let objbehavior = dat[ofs + 6 + i * 2 + 1];
        let zp = extract.Read16(dat, ofs + 6 + 320 * 1 + i * 2);
        let xp = extract.Read16(dat, ofs + 6 + 320 * 2 + i * 2);
        let yp = extract.Read16(dat, ofs + 6 + 320 * 3 + i * 2);
        let ob = objs[objid&63].clone();

        //xp = (xp << 16) >> 16;
        //yp = (yp << 16) >> 16;
        //zp = (zp << 16) >> 16;
        let rot = dat[ofs + 6 + 320 * 4 + i] >> 6;

        ob.rotation.z += -Math.PI / 2 * (rot);

        //ob.scale.set(100, 100, 100);

        ob.position.x += (2048 + 2048) * (-15.5);
        ob.position.y += (2048 + 2048) * (-7.5);
        ob.position.z += -1999.*4;

        ob.position.y += xp*4;
        ob.position.z += yp*4;
        ob.position.x += zp*4;
        scene.Add(ob);
    }

    //scene.scene.position.set(0.0, -0, 0);
    scene.scene.scale.set(0.01, 0.01, 0.01);


}

function BuildObjects(objs, scale, distance) {
    if (objs.length === 1) {
        objs[0].scale.set(scale, scale, scale);
        scene.Add(objs[0].clone());
        //scene.Add(objs[0].clone());
        return
    }

    let shift = 4;
    if (objs.length < 8) shift = 0;

    let i = 0, j = 0;
    for (j = 0; j < 8; j++) {
        for (i = 0; i < 8; i++) {
            if (j * 8 + i >= objs.length) return
            let ob = objs[j * 8 + i].clone();
            ob.scale.set(scale, scale, scale);
            ob.position.x += (i - shift) * distance;
            ob.position.y -= (j - shift) * distance;
            ob.position.z += 0;
            scene.Add(ob);
        }
    }
    scene.scene.scale.set(0.01, 0.01, 0.01)
}

function animate() {
    requestAnimationFrame(animate);
    let delta = scene.clock.getDelta();
    controls.update(delta);
    scene.Render();
}

function LoadMap(idx) {
    let colormap;
    scene.RemoveAllMeshes();

    switch (idx) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            colormap = GetColorMap(files.scene01, mapoffset[idx]);
            LoadObjects(colormap);
            BuildMap(files.scene01, mapoffset[idx], maps.tiles1, maps.tiles2, maps.objs1);
            break;

        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
            colormap = GetColorMap(files.scene02, mapoffset[idx]);
            LoadObjects(colormap);
            BuildMap(files.scene02, mapoffset[idx], maps.tiles3, maps.tiles2, maps.objs2);
            break;

        case 10:
            colormap = GetColorMap(files.scene01, mapoffset[0]);
            LoadObjects(colormap);

            BuildMap(files.datab, 0x21603, maps.tiles1, maps.tiles2, maps.objs1);
            break;

        case 11:
            colormap = GetColorMap(files.scene01, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.tiles1, 1, 5000);
            break;

        case 12:
            colormap = GetColorMap(files.scene01, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.tiles2, 1, 5000);
            break;

        case 13:
            colormap = GetColorMap(files.scene01, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.tiles3, 1, 5000);
            break;

        case 14:
            colormap = GetColorMap(files.scene01, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.objs1, 3, 5000);
            break;

        case 15:
            colormap = GetColorMap(files.scene01, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.objs2, 3, 5000);
            break;

        case 16:
            colormap = GetColorMap(files.scene01, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.cars, 20, 10000);
            break;
    }
}

function OnLoaded(buffers) {
    files.scene01 = new Uint8Array(buffers[0]); // SCENE01.DAT
    files.datab = new Uint8Array(buffers[1]); // DATAB.DAT
    files.scene02 = new Uint8Array(buffers[2]); // scene02.DAT
    files.datac = new Uint8Array(buffers[3]); // DATAC.DAT
    files.ccerv = new Uint8Array(buffers[4]); // CCERV.POB
    files.ccnsx = new Uint8Array(buffers[5]); // CCNSX.POB
    files.cdiab = new Uint8Array(buffers[6]); // CDIAB.POB
    files.cmyth = new Uint8Array(buffers[7]); // CMYTH.POB
    files.cstel = new Uint8Array(buffers[8]); // CSTEL.POB

    LoadMap(document.getElementById("selector").selectedIndex);
    scene.Render();
    animate();
}

document.getElementById("selector").addEventListener('change', function () {
    LoadMap(this.selectedIndex)
});

document.getElementById("selector").addEventListener('keydown', function (e) {
    if(e)
    {
        if(e.preventDefault)
            e.preventDefault();
        else
            e.returnValue = false;
    }
});


document.getElementById("mousenav").addEventListener('change', function () {
    controls.ChangeMouseStatus(this.checked)
});

utils.DownloadAllAsync([
        "base/SCENE01.DAT",
        "base/DATAB.DAT",
        "base/scene02.dat",
        "base/DATAC.DAT",
        "base/CCERV.POB",
        "base/CCNSX.POB",
        "base/CDIAB.POB",
        "base/CMYTH.POB",
        "base/CSTEL.POB"
    ],
    OnLoaded,
    function () {
        alert("Cannot download files");
    });


