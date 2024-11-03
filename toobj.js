import * as Scene from './scene.js'
import * as utils from './utils.js'
import * as FlyControls from './FlyControls.js';
import * as extract from './extract.js';

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

import fs from 'node:fs';
import {GetColorMap} from "./color.js";
import {LoadObjects, maps} from "./objects.js";
import {files} from "./files.js";
import * as THREE from "./three.module.js";
import {StoreObj} from "./toWaveFrontObj.js";
import {BuildMap} from "./mapgen.js";

files.scene01 = fs.readFileSync('base/SCENE01.DAT', null);
files.datab = fs.readFileSync('base/DATAB.DAT', null);
files.scene02 = fs.readFileSync('base/scene02.dat', null);
files.datac = fs.readFileSync('base/DATAC.DAT', null);
files.ccerv = fs.readFileSync('base/CCERV.POB', null);
files.ccnsx = fs.readFileSync('base/CCNSX.POB', null);
files.cdiab = fs.readFileSync('base/CDIAB.POB', null);
files.cmyth = fs.readFileSync('base/CMYTH.POB', null);
files.cstel = fs.readFileSync('base/CSTEL.POB', null);

let idx = 0;
let colormap = GetColorMap(files.scene01, mapoffset[idx]);
LoadObjects(colormap);
/*
console.log(maps.tiles1.length)
console.log(maps.tiles2.length)
console.log(maps.tiles3.length)
console.log(maps.objs1.length)
console.log(maps.objs2.length)
console.log(maps.cars.length)
*/
for (let i = 0; i < maps.tiles1.length; i++) {
    StoreObj(`objs/tiles1_${i}.obj`, [maps.tiles1[i]]);
}
for (let i = 0; i < maps.tiles2.length; i++) {
    StoreObj(`objs/tiles2_${i}.obj`, [maps.tiles2[i]]);
}
for (let i = 0; i < maps.tiles3.length; i++) {
    StoreObj(`objs/tiles3_${i}.obj`, [maps.tiles3[i]]);
}
for (let i = 0; i < maps.objs1.length; i++) {
    StoreObj(`objs/objs1_${i}.obj`, [maps.objs1[i]]);
}
for (let i = 0; i < maps.objs2.length; i++) {
    StoreObj(`objs/objs2_${i}.obj`, [maps.objs2[i]]);
}
for (let i = 0; i < maps.cars.length; i++) {
    StoreObj(`objs/cars_${i}.obj`, [maps.cars[i]]);
}

let map = []
for(let idx = 0; idx <= 10; idx++) {
    switch (idx) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            map = BuildMap(files.scene01, mapoffset[idx], maps.tiles1, maps.tiles2, maps.objs1);
            StoreObj(`objs/Pacific_Course_` + (idx+1) + ".obj", map);
            break;

        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
            map = BuildMap(files.scene02, mapoffset[idx], maps.tiles3, maps.tiles2, maps.objs2);
            StoreObj(`objs/Cape_Cod_Course_` + (idx-4) + ".obj", map);
            break;

        case 10:
            map = BuildMap(files.datab, 0x21603, maps.tiles1, maps.tiles2, maps.objs1);
            StoreObj(`objs/Unknown_Course_1.obj`, map);
            break;
    }
}
//StoreObj(`objs/map1.obj`, [maps.tiles1[0]]);

//THREE.Object3D()
//console.log(maps.tiles1[1].children[0].material)
//console.log(maps.tiles1[1].children[0].geometry)
//console.log(maps.tiles1[1].obj.children[0].geometry.getAttribute('color').arrayBuffers)
//console.log(maps.tiles1[3].children[0].geometry.getAttribute('position'))
//import { OBJExporter } from 'three/addons/exporters/OBJExporter.js';