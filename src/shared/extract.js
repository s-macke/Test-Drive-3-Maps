import * as THREE from 'three';

"use strict";

// more information about the file structures can be found here:
// http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960

/*
from lst files

SCENE01.dat
0x00000 - 0x00299 (0x0299)   title: when you choose the map (Pacific Yosemite)
0x0029A - 0x0045A (0x01C0)   icon graphic in main menu  (Pacific Yesomite)
0x0045B - 0x1023F (0xFDE4)   tiles
0x10240 - 0x12377 (0x2137)   first map
0x12378 - 0x124C8 (0x150)    title: 112 color palette
0x124C9 - 0x14233 (0x1D6A)   title: ???
0x14234 - 0x1548F (0x125B)   title: ???
0x15490 - 0x17D66 (0x28D6)   ???
0x17D67 - 0x17D74 (0xD)      ???? not loaded
0x17d67 - 0x17d6d (0x6)
0x17d6e - 0x16d74 (0x6)
0x17D75 - 0x18B9E (0x0E29)
0x18B9F - 0x257E9 (0xCC4A)    ??? not loaded
0x18b9f -         (0x9a0)
0x19540 -         (0xc8b)
0x1a1cc -         (0x2137)    second map
0x1c304 - 0x1c309 (0x6)
0x1c30b -         (0x6)
0x1c312 -         (0x6)
0x1c319 -         (0x2137)     third map
0x1e451 -         (0x150)      112 color palette
0x1e5a2 -         (0x1c09)
0x201ac -         (0x13b8)
0x21565 -         (0x2137)      fourth map
0x2369d -         (0x6)
0x236a4 -         (0x6)
0x236ab -         (0x6)
0x236b2 -         (0x2137)      fifth map
0x257EA - 0x2593A (0x150)       112 color palette
0x2593B - 0x28591 (0x2C56)      title: second image I guess
0x28592 - 0x295E4 (0x1052)      title: second image I guess

SCENE02.DAT
0x00000 - 0x002BC (0x02BC)
0x002BD - 0x00487 (0x01CA)
0x00488 - 0x1014C (0xFCC4)
0x1014d -         (0x02137)    first map: 0x1022c
0x12285 -         (0x6)
0x1228c -         (0x6)
0x12293 -         (0x6)
0x1229a -         (0x30b2)
0x1534d -         (0x7dcc)     more objects
0x1d11a -         (0x1e6e)
0x1ef89 -         (0xae0)
0x1fa6a -         (0xda6)
0x20811 -         (0xd7d)
0x2158f -         (0x2137)    second map
0x236c7 -         (0x150)     112 color palette
0x23818 -         (0x2171)
0x2598a -         (0x8e8)
0x26273 -         (0x2137)  third map
0x283ab -         (0x6)
0x283b2 -         (0x6)     fourth map???
0x283b9 -         (0x6)
0x2a4f8 -         (0x150)   112 color palette
0x2a649 -         (0x2318)
0x2c962 -         (0xf19)
0x2d87c -         (0x2137)  fifth map
0x2f9b4 -         (0x150)
0x2fb05 -         (0x27da)
0x322e0 -         (0xf6a)

DATAA.DAT
0x0     -        (0x150)     5. item loaded, 112 color palette
0x151   -        (0x980)     7. item loaded
0xad2   -        (0xe9e)     6. item loaded
0x1971  -        (0x150)     intro, 112 color palette
0x1ac2  -        (0x2ce7)    intro
0x47aa  -        (0x2556)    intro
0x6d01  -        (0x25ac)    intro
0x92ae  -        (0x8c2)     intro title
0x9b71  -        (0x3be5)    intro
0xd757  -        (0x14a7)    intro title
0xebff  -        (0x150)     intro, 112 color palette
0xed50  -        (0x150)     intro credits
0xeea1  -        (0x33d9)    intro credits
0x1227b -        (0x38f7)    intro credits
0x15b73 -        (0x344e)    intro credits
0x18fc2 -        (0x112)     1. item loaded
0x190d5 -        (0x373)     3. item loaded
0x19449 -        (0x12d1)    2. item loaded
0x1a71b -        (0xf3d)
0x1b659 -        (0x1cff)    4. item loaded
0x1d359 -        (0x136c)

DATAB.DAT
0x00000 - 0x00150 (0x150)    COPCOLR.BIN (112 color palette)
0x00151 - 0x03084 (0x2F33)   COPB.LZ police image
0x03085 - 0x05C16 (0x2B91)   COPa.LZ police image too ?
0x05C17 - 0x06F1D (0x1306)   COPSEQ.LZ police light animation
0x06F1E - 0x071E6 (0x02C8)
0x071E7 - 0x07337 (0x150)    KEYCOLR.BIN 112 color palette
0x07338 - 0x08F32 (0x1BFA)   KEYS.LZ images of car keys during password check
0x08F33 - 0x0A4D0 (0x159D)
0x0A4D1 - 0x0B8BC (0x13EB)   background image of menu
0x0B8BD - 0x0EDAC (0x34EF)   loaded when menu is loaded
0x0EDAD - 0x121BE (0x3411)   skill driver option image
0x121BF - 0x15413 (0x3254)   skill driver option image
0x15414 - 0x15514 (0x0100)
0x15515 - 0x1ED2B (0x150)    112 color palette
0x15666 -         (0x31e2)
0x18849 -         (0x3535)
0x1bd7f -         (0x2fac)
0x1ED2C - 0x21602 (0x28D6)  something for the maps, tiles?
0x21603 - 0x2373A (0x2137)  title map
0x2373B - 0x32F19 (0xF7DE)  tiles
0x32F1A - 0x3aD04 (0x7DEA)  objects
0x3AD05 - 0x3cb6c (0x1E67)

DATAC.DAT
0x0      -    (0x150)    112 color palette
0x151    -    (0x150)    112 color palette
0x2a2    -    (0xf7)
0x39a    -    (0xfa)
0x495    -    (0x150)    112 color palette
0x5e6    -    (0x112)

*/

/*
map mapping

total size: 0x2137 = 8503 bytes

0x00DF - 0x04DF (0x400) 32*16 map. 2 bytes for tile and rotation

each chunk is now 16*20=320 bytes
0x04E1
0x0621
0x0761
0x08a1
0x09e1
0x0B21
0x0C61
0x0DA1
...
0x0ee1

object info 7 byte header
0x0EE1: number of objects
0x0EE3: number of active objects
0x0EE5: number of objects with level of detail
0x0EE7: player car somehow. Usually 01. Put E4 for X-Wing

...
0x1F21
0x1f27 color of street
0x1F4A color of NPC car in map 1 and of lakes
0x2071

0x12167-0x12168 color of street
0x12189-0x1218a color of NPC car in map 1 and of lakes
*/

let pal = [
    0x00, 0x00, 0x00,
    0x00, 0x00, 0xa0,
    0x00, 0xa0, 0x00,
    0x00, 0xa0, 0xa0,
    0xa0, 0x00, 0x00,
    0xa0, 0x00, 0xa0,
    0xa0, 0x50, 0x00,
    0xa0, 0xa0, 0xa0,
    0x50, 0x50, 0x50,
    0x50, 0x50, 0xf0,
    0x50, 0xf0, 0x50,
    0x50, 0xf0, 0xf0,
    0xf0, 0x50, 0x50,
    0xf0, 0x50, 0xf0,
    0xf0, 0xf0, 0x50,
    0xf0, 0xf0, 0xf0,
    0x08, 0x08, 0x08,
    0x18, 0x18, 0x18,
    0x28, 0x28, 0x28,
    0x38, 0x38, 0x38,
    0x48, 0x44, 0x48,
    0x58, 0x54, 0x58,
    0x68, 0x64, 0x68,
    0x78, 0x74, 0x78,
    0x88, 0x80, 0x88,
    0x98, 0x90, 0x98,
    0xac, 0x9c, 0xac,
    0xbc, 0xac, 0xbc,
    0xcc, 0xb8, 0xcc,
    0xdc, 0xc4, 0xdc,
    0xec, 0xd0, 0xec,
    0xfc, 0xe0, 0xfc,
    0x40, 0x00, 0x00,
    0x5c, 0x00, 0x00,
    0x74, 0x00, 0x00,
    0x90, 0x00, 0x00,
    0xac, 0x00, 0x00,
    0xc4, 0x00, 0x00,
    0xe0, 0x00, 0x00,
    0xfc, 0x00, 0x00,
    0xfc, 0x1c, 0x1c,
    0xfc, 0x38, 0x38,
    0xfc, 0x50, 0x50,
    0xfc, 0x6c, 0x6c,
    0xfc, 0x88, 0x88,
    0xfc, 0xa4, 0xa4,
    0xfc, 0xbc, 0xbc,
    0xfc, 0xd8, 0xd8,
    0x40, 0x20, 0x00,
    0x50, 0x28, 0x00,
    0x64, 0x30, 0x00,
    0x74, 0x38, 0x00,
    0x84, 0x40, 0x00,
    0x98, 0x48, 0x00,
    0xa8, 0x50, 0x00,
    0xbc, 0x58, 0x00,
    0xc0, 0x5c, 0x10,
    0xc4, 0x68, 0x20,
    0xc8, 0x70, 0x30,
    0xd0, 0x78, 0x40,
    0xd4, 0x84, 0x50,
    0xd8, 0x90, 0x64,
    0xdc, 0x9c, 0x78,
    0xe4, 0xac, 0x8c,
    0x00, 0x00, 0x40,
    0x00, 0x00, 0x5c,
    0x00, 0x00, 0x74,
    0x00, 0x00, 0x90,
    0x00, 0x00, 0xac,
    0x00, 0x04, 0xc4,
    0x00, 0x04, 0xe0,
    0x00, 0x04, 0xfc,
    0x1c, 0x20, 0xfc,
    0x38, 0x3c, 0xfc,
    0x50, 0x54, 0xfc,
    0x6c, 0x70, 0xfc,
    0x88, 0x88, 0xfc,
    0xa4, 0xa4, 0xfc,
    0xbc, 0xbc, 0xfc,
    0xd8, 0xd8, 0xfc,
    0x18, 0x28, 0x10,
    0x20, 0x34, 0x10,
    0x28, 0x44, 0x14,
    0x30, 0x50, 0x14,
    0x38, 0x5c, 0x10,
    0x40, 0x6c, 0x0c,
    0x48, 0x78, 0x08,
    0x54, 0x88, 0x00,
    0x68, 0x94, 0x10,
    0x7c, 0xa4, 0x24,
    0x90, 0xb4, 0x38,
    0xa4, 0xc0, 0x50,
    0xbc, 0xd0, 0x6c,
    0xd0, 0xe0, 0x88,
    0xe4, 0xec, 0xac,
    0xf8, 0xfc, 0xd0,
    0x00, 0x18, 0x20,
    0x00, 0x28, 0x2c,
    0x00, 0x3c, 0x3c,
    0x00, 0x48, 0x40,
    0x00, 0x58, 0x44,
    0x00, 0x68, 0x40,
    0x00, 0x74, 0x3c,
    0x00, 0x84, 0x34,
    0x00, 0x90, 0x28,
    0x14, 0xa0, 0x3c,
    0x30, 0xac, 0x4c,
    0x4c, 0xbc, 0x68,
    0x6c, 0xcc, 0x84,
    0x94, 0xdc, 0xa4,
    0xbc, 0xec, 0xc8,
    0xec, 0xfc, 0xf0,
    0x00, 0x14, 0x28,
    0x04, 0x24, 0x40,
    0x08, 0x34, 0x58,
    0x10, 0x44, 0x70,
    0x18, 0x54, 0x88,
    0x24, 0x6c, 0xa0,
    0x30, 0x80, 0xb8,
    0x40, 0x94, 0xd0,
    0x50, 0xa0, 0xd4,
    0x60, 0xa8, 0xd8,
    0x74, 0xb0, 0xe0,
    0x84, 0xbc, 0xe4,
    0x98, 0xc8, 0xec,
    0xac, 0xd0, 0xf0,
    0xc0, 0xdc, 0xf4,
    0xd8, 0xec, 0xfc,
    0x00, 0x00, 0x00,
    0x00, 0x00, 0xa0,
    0x00, 0xa0, 0x00,
    0x00, 0xa0, 0xa0,
    0xa0, 0x00, 0x00,
    0xa0, 0x00, 0xa0,
    0xa0, 0x50, 0x00,
    0xa0, 0xa0, 0xa0,
    0x50, 0x50, 0x50,
    0x50, 0x50, 0xf0,
    0x50, 0xf0, 0x50,
    0x50, 0xf0, 0xf0,
    0xf0, 0x50, 0x50,
    0xf0, 0x50, 0xf0,
    0xf0, 0xf0, 0x50,
    0xf0, 0xf0, 0xf0,
    0x18, 0x14, 0x20,
    0x1c, 0x18, 0x14,
    0x1c, 0x20, 0x1c,
    0x20, 0x1c, 0x28,
    0x24, 0x24, 0x30,
    0x24, 0x2c, 0x38,
    0x28, 0x1c, 0x18,
    0x2c, 0x20, 0x24,
    0x30, 0x10, 0x18,
    0x30, 0x24, 0x30,
    0x30, 0x2c, 0x20,
    0x30, 0x38, 0x38,
    0x30, 0x3c, 0x44,
    0x34, 0x30, 0x2c,
    0x34, 0x30, 0x44,
    0x38, 0x48, 0x50,
    0x40, 0x18, 0x24,
    0x40, 0x3c, 0x44,
    0x40, 0x4c, 0x44,
    0x44, 0x34, 0x34,
    0x44, 0x40, 0x30,
    0x48, 0x58, 0x54,
    0x4c, 0x24, 0x30,
    0x4c, 0x3c, 0x38,
    0x4c, 0x44, 0x44,
    0x4c, 0x48, 0x50,
    0x50, 0x4c, 0x5c,
    0x50, 0x60, 0x60,
    0x54, 0x44, 0x38,
    0x5c, 0x44, 0x50,
    0x5c, 0x5c, 0x68,
    0x5c, 0x68, 0x60,
    0x60, 0x28, 0x34,
    0x60, 0x38, 0x40,
    0x60, 0x44, 0x44,
    0x60, 0x58, 0x4c,
    0x60, 0x6c, 0x6c,
    0x60, 0x70, 0x78,
    0x64, 0x54, 0x5c,
    0x64, 0x60, 0x60,
    0x68, 0x60, 0x70,
    0x68, 0x74, 0x70,
    0x6c, 0x38, 0x3c,
    0x70, 0x48, 0x4c,
    0x70, 0x64, 0x60,
    0x70, 0x70, 0x78,
    0x74, 0x7c, 0x7c,
    0x74, 0x88, 0x80,
    0x78, 0x7c, 0x88,
    0x78, 0x88, 0x8c,
    0x7c, 0x74, 0x70,
    0x80, 0x4c, 0x54,
    0x80, 0x78, 0x7c,
    0x80, 0x84, 0x80,
    0x84, 0x80, 0x8c,
    0x88, 0x6c, 0x78,
    0x88, 0x90, 0x9c,
    0x8c, 0x9c, 0x9c,
    0x90, 0x78, 0x7c,
    0x94, 0x90, 0x94,
    0x98, 0x8c, 0x7c,
    0x98, 0x90, 0x88,
    0x98, 0xa4, 0x9c,
    0x98, 0xac, 0xa4,
    0x9c, 0x7c, 0x80,
    0x9c, 0xb0, 0xb0,
    0xa0, 0x9c, 0x98,
    0xa0, 0xa4, 0xa4,
    0xa4, 0x90, 0x84,
    0xa4, 0xb0, 0xa4,
    0xa8, 0x9c, 0x8c,
    0xac, 0x90, 0x98,
    0xac, 0xb8, 0xc0,
    0xac, 0xc0, 0xb4,
    0xb0, 0xa0, 0xa4,
    0xb4, 0xb4, 0xb0,
    0xb8, 0xb8, 0xbc,
    0xb8, 0xc0, 0xc8,
    0xb8, 0xc4, 0xb8,
    0xbc, 0xcc, 0xcc,
    0xc0, 0xb4, 0xac,
    0xc0, 0xd8, 0xd0,
    0xc4, 0xd4, 0xc4,
    0xc8, 0xc8, 0xc4,
    0xcc, 0xbc, 0xbc,
    0xcc, 0xd8, 0xd8,
    0xd4, 0xcc, 0xd4,
    0xd4, 0xe4, 0xd8,
    0xdc, 0xd4, 0xc8,
    0xdc, 0xd8, 0xd8,
    0xe0, 0xec, 0xe8,
    0xe4, 0xec, 0xd8,
    0xe8, 0xf8, 0xf4,
    0xf0, 0xec, 0xe0,
    0xf4, 0xf0, 0xec,
    0xf4, 0xf4, 0xf8,
    0x00, 0x08, 0x00,
    0x04, 0x00, 0x14,
    0x04, 0x0c, 0x1c,
    0x08, 0x08, 0x08,
    0x0c, 0x10, 0x10,
    0x0c, 0x1c, 0x20,
    0x10, 0x10, 0x20,
    0x14, 0x08, 0x0c,
    0x18, 0x18, 0x28,
    0x20, 0x04, 0x14,
    0x24, 0x1c, 0x20,
    0x24, 0x24, 0x24,
    0x2c, 0x14, 0x24,
    0x30, 0x28, 0x28,
    0x34, 0x20, 0x20,
    0x58, 0x58, 0x58
];


let ColorIndex = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,

    0, // street
    9,
    10,
    11,
    12,
    13,
    14,
    15,

    19,
    15,
    107,
    13,
    38,
    5,
    55,
    27,

    21,
    75,
    109,
    13,
    43,
    13,
    94,
    29
]

/*
let Colors = [
    0, 0, 0,
    0, 0, 162,
    0, 162, 0,
    0, 162, 162,
    162, 0, 0,
    0, 255, 255,
    162, 81, 0,
    81, 81, 81,

    0, 0, 0,
    81, 81, 243,
    81, 243, 81,
    0, 255, 255,
    243, 81, 81,
    0, 255, 255,
    243, 243, 81,
    243, 243, 243,

    40, 40, 40,
    243, 243, 243,
    77, 190, 105,
    255, 0, 255,
    227, 0, 0,
    0, 255, 255,
    190, 89, 0,
    190, 174, 190,

    89, 85, 89,
    109, 113, 255,
    150, 223, 166,
    255, 0, 255,
    255, 109, 109,
    255, 0, 255,
    231, 239, 174,
    223, 199, 223
];
*/

function Read16(dat, address) {
    return dat[address] | (dat[address + 1] << 8)
}

function cylinderMesh(pointX, pointY, radius) {
    let direction = new THREE.Vector3().subVectors(pointY, pointX);
    let orientation = new THREE.Matrix4();

    orientation.lookAt(pointX, pointY, new THREE.Object3D().up);

    orientation.multiply(new THREE.Matrix4().set(
        1, 0, 0, 0,
        0, 0, 1, 0,
        0, -1, 0, 0,
        0, 0, 0, 1));
    let edgeGeometry = new THREE.CylinderGeometry(radius, radius, direction.length(), 3, 1, true);
    //alert(JSON.stringify(edgeGeometry.faceVertexUvs));
    edgeGeometry.faceVertexUvs = [[]];
    edgeGeometry.applyMatrix4(orientation)
    edgeGeometry.translate((pointY.x + pointX.x) / 2, (pointY.y + pointX.y) / 2, (pointY.z + pointX.z) / 2)
    return edgeGeometry;
}

function BuildObject(name, buf, colormap, offset, isobj) {
    console.log("BuildObject " + name);
    let geom = new THREE.BufferGeometry();
    //console.log("BuildObject", buf, colormap, offset, isobj);

    let mesh = {
        name: name,
        vertices: [],
        lines: [],
        tris: [],
        obj: new THREE.Object3D()
    }

    let npoly = buf[offset + 0];
    let npoints = buf[offset + 1];
    let nsprites = buf[offset + 2];
    let nnull = buf[offset + 3];

    const positionstemp = [];
    const positions = [];
    const colors = [];
    //alert(npoly);
    //alert(npoints);
    //alert(nsprites);
    //alert(nnull);

    offset += isobj ? 8 : 4;
    //offset += nsprites===0 ? 8 : 4;

    let min = new THREE.Vector3(100000, 100000, 100000);
    let max = new THREE.Vector3(-100000, -100000, -100000);

    for (let i = 0; i < npoints; i++) {
        let zp = Read16(buf, offset + i * 2 + npoints * 0);
        let xp = Read16(buf, offset + i * 2 + npoints * 2);
        let yp = Read16(buf, offset + i * 2 + npoints * 4);

        xp = (xp << 16) >> 16;
        yp = (yp << 16) >> 16;
        zp = (zp << 16) >> 16;
        let v = new THREE.Vector3(xp, yp, zp);
        mesh.vertices.push(v);
        //let v = new THREE.Vector3(xp / 1., yp / 1., zp / 1.);
        positionstemp.push(v)
        if (v.x < min.x) min.x = v.x;
        if (v.y < min.y) min.y = v.y;
        if (v.z < min.z) min.z = v.z;
        if (v.x > max.x) max.x = v.x;
        if (v.y > max.y) max.y = v.y;
        if (v.z > max.z) max.z = v.z;
        /*
                let boxGeometry = new THREE.SphereGeometry(1);
                boxGeometry.faceVertexUvs = [[]];
                let array = boxGeometry.toNonIndexed().attributes["position"].array;
                for (let j = 0; j < array.length / 3; j++) {
                    positions.push(array[j * 3 + 0] + v.x, array[j * 3 + 1] + v.y, array[j * 3 + 2] + v.z)
                    colors.push(1., 1., 1.)
                }
         */
    }
    offset += npoints * 3 * 2;

    let sizeobj = new THREE.Vector3(max.x - min.x, max.y - min.y, max.z - min.z);
    let size = Math.max(sizeobj.x, sizeobj.y, sizeobj.z);

    for (let i = 0; i < npoly; i++) {
        let idx1 = Read16(buf, offset + 0 + i * 8);
        let idx2 = Read16(buf, offset + 2 + i * 8);
        let idx3 = Read16(buf, offset + 4 + i * 8);
        let idx4 = Read16(buf, offset + 6 + i * 8);

        let type = idx1 >> 13;
        //let color0 = (idx4 & 0xF800)>>11;
        //let color1 = (idx4 & 0xF800)>>11;
        let color0 = idx2 >> 11;
        let color1 = idx3 >> 11;
        //alert(type);
        /*
        let special1 = idx4 >> 11;
        switch(special1)
        {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                break;
                
            case 14: // water
            case 15: // landscape
            case 16: // road
            case 17: // maybe shore (coast)
            case 18: // rails
                break;

            case 20:             
            case 21: 
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            
            break;
            default:
            alert(special1);
        }
        */

        //let color0idx = colormap[color0].color0;
        //let color1idx = colormap[color1].color1;
        let color0idx = ColorIndex[color0];
        let color1idx = ColorIndex[color1];
        //let color0idx = color0;
        //let color1idx = color1;
        let c0 =
            {
                r: pal[color0idx * 3 + 0] / 256.,
                g: pal[color0idx * 3 + 1] / 256.,
                b: pal[color0idx * 3 + 2] / 256.
            }
        let c1 =
            {
                r: pal[color1idx * 3 + 0] / 256.,
                g: pal[color1idx * 3 + 1] / 256.,
                b: pal[color1idx * 3 + 2] / 256.
            }
        let c =
            {
                r: (c0.r + c1.r) * 0.5,
                g: (c0.g + c1.g) * 0.5,
                b: (c0.b + c1.b) * 0.5
            }

        idx1 = idx1 & 0x7FF;
        idx2 = idx2 & 0x7FF;
        idx3 = idx3 & 0x7FF;
        idx4 = idx4 & 0x7FF;

        switch (type) {
            case 0x00:
            case 0x01: { // e. g. wheels
                console.log("type 0/1:", idx1, idx2, idx3, idx4);
                if (idx1 >= npoints) continue;
/*
                let boxGeometry = new THREE.SphereGeometry(10, 4, 4);
                boxGeometry.faceVertexUvs = [[]];
                let array = boxGeometry.toNonIndexed().attributes["position"].array;
                let v = positionstemp[idx1];
                for (let j = 0; j < array.length / 3; j++) {
                    positions.push(array[j * 3 + 0] + v.x, array[j * 3 + 1] + v.y, array[j * 3 + 2] + v.z)
                    colors.push(c0.r, c0.g, c0.b)
                }
*/
            }
                break;

            // lines
            case 0x02:
            case 0x03:
                if (idx1 >= npoints) continue;
                if (idx2 >= npoints) continue;
                let line = cylinderMesh(positionstemp[idx1], positionstemp[idx2], size * 0.002);
                mesh.lines.push({
                    p1: idx1,
                    p2: idx2,
                    color: c
                });

                let array = line.toNonIndexed().attributes["position"].array;
                for (let j = 0; j < array.length / 3; j++) {
                    positions.push(array[j * 3 + 0], array[j * 3 + 1], array[j * 3 + 2])
                    colors.push(c.r, c.g, c.b)
                }
                break;

            // triangles
            case 0x4:
            case 0x5:
                if (idx1 >= npoints) continue;
                if (idx2 >= npoints) continue;
                if (idx3 >= npoints) continue;
                positions.push(positionstemp[idx1].x, positionstemp[idx1].y, positionstemp[idx1].z);
                positions.push(positionstemp[idx2].x, positionstemp[idx2].y, positionstemp[idx2].z);
                positions.push(positionstemp[idx3].x, positionstemp[idx3].y, positionstemp[idx3].z);
                colors.push(c.r, c.g, c.b)
                colors.push(c.r, c.g, c.b)
                colors.push(c.r, c.g, c.b)
                mesh.tris.push({
                    p1: idx1,
                    p2: idx2,
                    p3: idx3,
                    color: c
                });
                break;

            // quad
            case 0x6:
            case 0x7:
                if (idx1 >= npoints) continue;
                if (idx2 >= npoints) continue;
                if (idx3 >= npoints) continue;
                if (idx4 >= npoints) continue;
                positions.push(positionstemp[idx1].x, positionstemp[idx1].y, positionstemp[idx1].z);
                positions.push(positionstemp[idx2].x, positionstemp[idx2].y, positionstemp[idx2].z);
                positions.push(positionstemp[idx3].x, positionstemp[idx3].y, positionstemp[idx3].z);
                colors.push(c.r, c.g, c.b);
                colors.push(c.r, c.g, c.b);
                colors.push(c.r, c.g, c.b);
                mesh.tris.push({
                    p1: idx1,
                    p2: idx2,
                    p3: idx3,
                    color: c
                });

                positions.push(positionstemp[idx3].x, positionstemp[idx3].y, positionstemp[idx3].z);
                positions.push(positionstemp[idx4].x, positionstemp[idx4].y, positionstemp[idx4].z);
                positions.push(positionstemp[idx1].x, positionstemp[idx1].y, positionstemp[idx1].z);
                colors.push(c.r, c.g, c.b);
                colors.push(c.r, c.g, c.b);
                colors.push(c.r, c.g, c.b);
                mesh.tris.push({
                    p1: idx3,
                    p2: idx4,
                    p3: idx1,
                    color: c
                });
                break;

            default:
                alert(type);
                break;
        }
    }
    offset += npoly * 4 * 2;

    // sprites
    /*
        for(let i=0; i<nsprites; i++)
        {
            let zp = buf[offset + i*8 + 0] | (buf[offset + i*8 + 1] << 8);
            let xp = buf[offset + i*8 + 2] | (buf[offset + i*8 + 3] << 8);
            let yp = buf[offset + i*8 + 4] | (buf[offset + i*8 + 5] << 8);
            xp = (xp << 16) >> 16;
            yp = (yp << 16) >> 16;
            zp = (zp << 16) >> 16;
            let v = new THREE.Vector3(xp, yp, zp);

            let idx4 = buf[offset + 6 + i*8 + 0] | (buf[offset + 6 + i*8 + 1] << 8);
            //alert(idx4);
            //if (idx4 === 2) continue;

            let boxGeometry = new THREE.SphereGeometry(5);
            boxGeometry.faceVertexUvs = [[]];
            let array = boxGeometry.toNonIndexed().attributes["position"].array;
            for (let j = 0; j < array.length / 3; j++) {
                positions.push(array[j * 3 + 0] + v.x, array[j * 3 + 1] + v.y, array[j * 3 + 2] + v.z)
                colors.push(1., 1., 1.)
            }

            //geom.mergeMesh(box);
            //alert(idx4);
        }
*/
    offset += nsprites * 4 * 2;

    geom.setAttribute('position', new THREE.Float32BufferAttribute(positions, 3))
    geom.setAttribute('color', new THREE.Float32BufferAttribute(colors, 3));
    geom.computeVertexNormals();
    let material = new THREE.MeshLambertMaterial({color: 0xffffff, vertexColors: true});
    material.side = THREE.DoubleSide;
    mesh.obj.add(new THREE.Mesh(geom, material));
    return mesh;
}

function LoadPalette(buf, offset) {
    for (let i = 0; i < 112; i++) {
        pal[i * 3 + 0 + 144 * 3] = buf[i * 3 + 0 + offset] * 4;
        pal[i * 3 + 1 + 144 * 3] = buf[i * 3 + 1 + offset] * 4;
        pal[i * 3 + 2 + 144 * 3] = buf[i * 3 + 2 + offset] * 4;
    }
}

function BuildObjectList(name, buf, colormap, offset, n, isobj) {
    let objs = [];
    for (let i = 0; i < n; i++) {
        let idx = i;
        let objectoffset = Read16(buf, offset + i * 2)
        if (objectoffset <= 0x10) {
            idx--;
            objectoffset = Read16(buf, offset + (i - 1) * 2)
        }
        if (isobj[idx] == null) {
            objs.push({
                vertices: [],
                obj: new THREE.Object3D()
            });
        } else {
            let n = name + "_" + i;
            objs.push(BuildObject(n, buf, colormap, offset + objectoffset, !!isobj[i]));
        }
    }
    return objs;
}

export {BuildObjectList, BuildObject, LoadPalette, Read16}





