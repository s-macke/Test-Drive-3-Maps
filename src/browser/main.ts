import * as THREE from 'three';
import { Scene } from './scene';
import { FlyControls } from 'three/addons/controls/FlyControls.js';
import * as extract from '@shared/extract';
import { LoadRemapTable, LoadTrailerTable, LoadPrimaryLutMode, WeatherMode } from "@shared/color";
import { LoadObjects, maps } from "@shared/objects";
import { files, loadFiles } from "@shared/files";
import { Mesh } from '@shared/types';


const scene = new Scene();

const controls = new FlyControls(scene.camera, scene.renderer.domElement);
controls.movementSpeed = 50;
controls.rollSpeed = Math.PI / 12;
controls.autoForward = false;
controls.dragToLook = true; // mouse only rotates the camera while a button is held

// dragToLook handles rotation-on-drag, but the stock control does not move the
// camera on button press in that mode. Drive forward/back ourselves: left button
// moves forward, right button moves back, while still steering by dragging.
let mouseMove = 0; // -1 back, 0 idle, +1 forward
scene.renderer.domElement.addEventListener('pointerdown', (e: PointerEvent) => {
    if (e.button === 0) mouseMove = 1;
    else if (e.button === 2) mouseMove = -1;
});
const stopMouseMove = () => { mouseMove = 0; };
scene.renderer.domElement.addEventListener('pointerup', stopMouseMove);
scene.renderer.domElement.addEventListener('pointercancel', stopMouseMove);

// Starting camera view, selectable via the `?view=` URL parameter:
//   (default)   top   - top-down overview, high above the map looking straight down
//   ?view=fly         - ground-level fly start, at the centre of the map slightly
//                       above the ground, looking horizontally across the scene
// The map spans a 32x16 tile grid centred near world (-2048, 2048); scaled by 0.01
// (see BuildMap) that is (-20.48, 20.48) in camera space, with +z pointing up.
function applyStartView(): void {
    const view = new URLSearchParams(window.location.search).get('view');
    if (view === 'fly') {
        scene.camera.position.set(-20.48, 20.48, 40);
        // Default camera looks down -z; rotating +90deg about x aims it along +y
        // (horizontal) with +z as the up vector.
        scene.camera.rotation.set(Math.PI / 2, 0, 0);
    } else {
        scene.camera.position.set(0, 0, 500);
        scene.camera.rotation.set(0, 0, 0);
    }
}
applyStartView();

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
            let obMesh: Mesh | null = null;
            if (tile < 0x40) {
                if (tile < tiles2.length)
                    obMesh = tiles2[tile];
            } else {
                tile -= 0x40;
                if (tile < tiles1.length)
                    obMesh = tiles1[tile];
            }
            if (obMesh == null || obMesh.vertices.length === 0) {
                console.log("No object found or empty geometry for tile " + tile + ", falling back to tile 0");
                if (tiles2.length > 0)
                    obMesh = tiles2[0];
            }
            let ob: THREE.Object3D | null = null;
            if (obMesh != null && obMesh.obj != null) {
                ob = obMesh.obj.clone();
            }
            if (ob == null) {
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

        const rot = dat[ofs + 6 + 320 * 4 + i * 2 + 1] >> 6;

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
    if (mouseMove !== 0) {
        scene.camera.translateZ(-mouseMove * controls.movementSpeed * delta);
    }
    scene.Render();
}

// Fixed weather for the viewer. Edit this to render a course under rain or
// snow.
//   Rain: wets the road (LUT[8] → black) on map[0x35]==1 maps (Pacific 2/3,
//         Cape Cod 1/4/5). On map[0x35]==0 maps the road is already black.
//   Snow: covers terrain (LUT[2,3,10] → white) on map[0x35]==1 maps; gray
//         on map[0x35]==0 maps.
const WEATHER: WeatherMode = WeatherMode.Dry;

function loadFromMap(dat: Uint8Array, off: number): void {
    LoadObjects(
        LoadRemapTable(dat, off),
        LoadTrailerTable(dat, off),
        LoadPrimaryLutMode(dat, off),
        WEATHER,
    );
}

function LoadMap(idx: number): void {
    scene.RemoveAllMeshes();

    switch (idx) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            loadFromMap(files.scene01!, mapoffset[idx]);
            BuildMap(files.scene01!, mapoffset[idx], maps.tiles1, maps.tiles2, maps.objs1);
            break;

        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
            loadFromMap(files.scene02!, mapoffset[idx]);
            BuildMap(files.scene02!, mapoffset[idx], maps.tiles3, maps.tiles2, maps.objs2);
            break;

        case 10:
            loadFromMap(files.scene01!, mapoffset[0]);
            BuildMap(files.datab!, 0x21603, maps.tiles1, maps.tiles2, maps.objs1);
            break;

        case 11:
            loadFromMap(files.scene01!, mapoffset[0]);
            BuildObjects(maps.tiles1, 1, 5000);
            break;

        case 12:
            loadFromMap(files.scene01!, mapoffset[0]);
            BuildObjects(maps.tiles2, 1, 5000);
            break;

        case 13:
            loadFromMap(files.scene01!, mapoffset[0]);
            BuildObjects(maps.tiles3, 1, 5000);
            break;

        case 14:
            loadFromMap(files.scene01!, mapoffset[0]);
            BuildObjects(maps.objs1, 3, 5000);
            break;

        case 15:
            loadFromMap(files.scene01!, mapoffset[0]);
            BuildObjects(maps.objs2, 3, 5000);
            break;

        case 16:
            loadFromMap(files.scene01!, mapoffset[0]);
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

loadFiles().then(() => {
    LoadMap((document.getElementById("selector") as HTMLSelectElement).selectedIndex);
    scene.Render();
    animate();
}).catch(() => {
    alert("Cannot download files");
});
