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

console.log(maps.tiles1.length)
console.log(maps.tiles2.length)
console.log(maps.tiles3.length)
console.log(maps.objs1.length)
console.log(maps.objs2.length)
console.log(maps.cars.length)

for (let i = 0; i < maps.tiles1.length; i++) {
    StoreObj(`objs/tiles1_${i}.obj`, maps.tiles1[i]);
}
for (let i = 0; i < maps.tiles2.length; i++) {
    StoreObj(`objs/tiles2_${i}.obj`, maps.tiles2[i]);
}
for (let i = 0; i < maps.tiles3.length; i++) {
    StoreObj(`objs/tiles3_${i}.obj`, maps.tiles3[i]);
}
for (let i = 0; i < maps.objs1.length; i++) {
    StoreObj(`objs/objs1_${i}.obj`, maps.objs1[i]);
}
for (let i = 0; i < maps.objs2.length; i++) {
    StoreObj(`objs/objs2_${i}.obj`, maps.objs2[i]);
}
for (let i = 0; i < maps.cars.length; i++) {
    StoreObj(`objs/cars_${i}.obj`, maps.cars[i]);
}


//THREE.Object3D()
//console.log(maps.tiles1[1].children[0].material)
//console.log(maps.tiles1[1].children[0].geometry)
//console.log(maps.tiles1[1].obj.children[0].geometry.getAttribute('color').arrayBuffers)
//console.log(maps.tiles1[3].children[0].geometry.getAttribute('position'))
//import { OBJExporter } from 'three/addons/exporters/OBJExporter.js';