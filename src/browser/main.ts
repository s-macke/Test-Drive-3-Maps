import * as THREE from 'three';
import { Scene } from './scene';
import { FlyControls } from './FlyControls';
import * as extract from '@shared/extract';
import { GetColorMap } from "@shared/color";
import { LoadObjects, maps } from "@shared/objects";
import { files, loadFiles } from "@shared/files";
import { Mesh, ColorMapEntry } from '@shared/types';


const scene = new Scene();

const controls = new FlyControls(scene.camera);
controls.movementSpeed = 50;
controls.domElement = scene.renderer.domElement;
controls.rollSpeed = Math.PI / 12;
controls.autoForward = false;
controls.dragToLook = false;

const mapoffset: number[] = [
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

function BuildMap(dat: Uint8Array, offset: number, tiles1: Mesh[], tiles2: Mesh[], objs: Mesh[]): void {
    let i = 0, j = 0;
    const mapoffsetLocal = offset + 0xDF;
    for (j = 0; j < 16; j++) {
        for (i = 0; i < 32; i++) {
            let tile = dat[mapoffsetLocal + (i + j * 32) * 2 + 0];
            const rot = dat[mapoffsetLocal + (i + j * 32) * 2 + 1] >> 6;
            const height = dat[mapoffsetLocal + (i + j * 32) * 2 + 1] & 0x3F;
            let ob: THREE.Object3D | null = null;
            if (tile < 0x40) {
                if (tile < tiles2.length)
                    ob = tiles2[tile].obj!.clone();
            } else {
                tile -= 0x40;
                if (tile < tiles1.length)
                    ob = tiles1[tile].obj!.clone();
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

    const ofs = offset + 0x0EE1;
    const nobjects = dat[ofs + 0];
    for (i = 0; i < nobjects; i++) {
        const objid = dat[ofs + 6 + i * 2 + 0];
        const zp = extract.Read16(dat, ofs + 6 + 320 * 1 + i * 2);
        const xp = extract.Read16(dat, ofs + 6 + 320 * 2 + i * 2);
        const yp = extract.Read16(dat, ofs + 6 + 320 * 3 + i * 2);
        const ob = objs[objid & 63].obj!.clone();

        const rot = dat[ofs + 6 + 320 * 4 + i] >> 6;

        ob.rotation.z += -Math.PI / 2 * (rot);

        ob.position.x += (2048 + 2048) * (-15.5);
        ob.position.y += (2048 + 2048) * (-7.5);
        ob.position.z += -1999. * 4;

        ob.position.y += xp * 4;
        ob.position.z += yp * 4;
        ob.position.x += zp * 4;
        scene.Add(ob);
    }

    scene.scene.scale.set(0.01, 0.01, 0.01);
}

function BuildObjects(objs: Mesh[], scale: number, distance: number): void {
    if (objs.length === 1) {
        objs[0].obj!.scale.set(scale, scale, scale);
        scene.Add(objs[0].obj!.clone());
        return;
    }

    let shift = 4;
    if (objs.length < 8) shift = 0;

    let i = 0, j = 0;
    for (j = 0; j < 8; j++) {
        for (i = 0; i < 8; i++) {
            if (j * 8 + i >= objs.length) return;
            const ob = objs[j * 8 + i].obj!.clone();
            ob.scale.set(scale, scale, scale);
            ob.position.x += (i - shift) * distance;
            ob.position.y -= (j - shift) * distance;
            ob.position.z += 0;
            scene.Add(ob);
        }
    }
    scene.scene.scale.set(0.01, 0.01, 0.01);
}

function animate(): void {
    requestAnimationFrame(animate);
    const delta = scene.clock.getDelta();
    controls.update(delta);
    scene.Render();
}

function LoadMap(idx: number): void {
    let colormap: ColorMapEntry[];
    scene.RemoveAllMeshes();

    switch (idx) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            colormap = GetColorMap(files.scene01!, mapoffset[idx]);
            LoadObjects(colormap);
            BuildMap(files.scene01!, mapoffset[idx], maps.tiles1, maps.tiles2, maps.objs1);
            break;

        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
            colormap = GetColorMap(files.scene02!, mapoffset[idx]);
            LoadObjects(colormap);
            BuildMap(files.scene02!, mapoffset[idx], maps.tiles3, maps.tiles2, maps.objs2);
            break;

        case 10:
            colormap = GetColorMap(files.scene01!, mapoffset[0]);
            LoadObjects(colormap);
            BuildMap(files.datab!, 0x21603, maps.tiles1, maps.tiles2, maps.objs1);
            break;

        case 11:
            colormap = GetColorMap(files.scene01!, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.tiles1, 1, 5000);
            break;

        case 12:
            colormap = GetColorMap(files.scene01!, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.tiles2, 1, 5000);
            break;

        case 13:
            colormap = GetColorMap(files.scene01!, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.tiles3, 1, 5000);
            break;

        case 14:
            colormap = GetColorMap(files.scene01!, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.objs1, 3, 5000);
            break;

        case 15:
            colormap = GetColorMap(files.scene01!, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.objs2, 3, 5000);
            break;

        case 16:
            colormap = GetColorMap(files.scene01!, mapoffset[0]);
            LoadObjects(colormap);
            BuildObjects(maps.cars, 20, 10000);
            break;
    }
}

const selector = document.getElementById("selector") as HTMLSelectElement;
selector.addEventListener('change', function (this: HTMLSelectElement) {
    LoadMap(this.selectedIndex);
});

selector.addEventListener('keydown', function (e: KeyboardEvent) {
    if (e) {
        if (e.preventDefault)
            e.preventDefault();
    }
});

const mousenav = document.getElementById("mousenav") as HTMLInputElement;
mousenav.addEventListener('change', function (this: HTMLInputElement) {
    controls.ChangeMouseStatus(this.checked);
});

loadFiles().then(() => {
    LoadMap((document.getElementById("selector") as HTMLSelectElement).selectedIndex);
    scene.Render();
    animate();
}).catch(() => {
    alert("Cannot download files");
});
