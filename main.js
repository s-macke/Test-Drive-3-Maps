import * as Scene from './scene.js'
import * as utils from './utils.js'
import * as FlyControls from './FlyControls.js';
import * as extract from './extract.js';
import {GetColorMap} from "./color.js";
import {LoadObjects, maps} from "./objects.js";
import {files} from "./files.js";


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
                    ob = tiles2[tile].obj.clone();
            } else {
                tile -= 0x40;
                if (tile < tiles1.length)
                    ob = tiles1[tile].obj.clone();
            }
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
        let ob = objs[objid&63].obj.clone();

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
        scene.Add(objs[0].obj.clone());
        //scene.Add(objs[0].clone());
        return
    }

    let shift = 4;
    if (objs.length < 8) shift = 0;

    let i = 0, j = 0;
    for (j = 0; j < 8; j++) {
        for (i = 0; i < 8; i++) {
            if (j * 8 + i >= objs.length) return
            let ob = objs[j * 8 + i].obj.clone();
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


