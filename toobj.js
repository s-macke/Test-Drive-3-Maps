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

files.scene01 = fs.readFileSync('base/SCENE01.DAT', null).buffer;
files.datab = fs.readFileSync('base/DATAB.DAT', null).buffer;
files.scene02 = fs.readFileSync('base/scene02.dat', null).buffer;
files.datac = fs.readFileSync('base/DATAC.DAT', null).buffer;
files.ccerv = fs.readFileSync('base/CCERV.POB', null).buffer;
files.ccnsx = fs.readFileSync('base/CCNSX.POB', null).buffer;
files.cdiab = fs.readFileSync('base/CDIAB.POB', null).buffer;
files.cmyth = fs.readFileSync('base/CMYTH.POB', null).buffer;
files.cstel = fs.readFileSync('base/CSTEL.POB', null).buffer;
let idx = 0;
let colormap = GetColorMap(files.scene01, mapoffset[idx]);
LoadObjects(colormap);

console.log(maps.tiles1.length)
console.log(maps.tiles2.length)
console.log(maps.tiles3.length)
console.log(maps.objs1.length)
console.log(maps.objs2.length)
console.log(maps.cars.length)

//THREE.Object3D()
//console.log(maps.tiles1[1].children[0].material)
//console.log(maps.tiles1[1].children[0].geometry)
//console.log(maps.tiles1[1].obj.children[0].geometry.getAttribute('color').arrayBuffers)
//    console.log(maps.tiles1[3].children[0].geometry.getAttribute('position'))
//import { OBJExporter } from 'three/addons/exporters/OBJExporter.js';