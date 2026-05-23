import fs from 'node:fs';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';
import { LoadRemapTable, LoadTrailerTable, LoadPrimaryLutMode, WeatherMode } from "../../shared/color";
import { LoadObjects, maps } from "../../shared/objects";
import { files, loadFiles } from "../../shared/files";
import { StoreObj } from "./toWaveFrontObj";
import { BuildMap } from "../../shared/mapgen";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const objsDir = join(__dirname, '../../../objs');

// Ensure objs directory exists
if (!fs.existsSync(objsDir)) {
    fs.mkdirSync(objsDir, { recursive: true });
}

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

// Load all game files
await loadFiles();

// Build the standalone tile/object/car catalog with Pacific Coast 1's
// color tables (mostly arbitrary — these come out the same regardless of
// scene for object color values 0..15, and the high-color tweaks are
// scene-specific anyway).
{
    const dat = files.scene01!;
    const off = mapoffset[0];
    LoadObjects(
        LoadRemapTable(dat, off),
        LoadTrailerTable(dat, off),
        LoadPrimaryLutMode(dat, off),
        WeatherMode.Dry,
    );
    for (let i = 0; i < maps.tiles1.length; i++) {
        StoreObj(join(objsDir, `tiles1_${i}.obj`), [maps.tiles1[i]], objsDir);
    }
    for (let i = 0; i < maps.tiles2.length; i++) {
        StoreObj(join(objsDir, `tiles2_${i}.obj`), [maps.tiles2[i]], objsDir);
    }
    for (let i = 0; i < maps.tiles3.length; i++) {
        StoreObj(join(objsDir, `tiles3_${i}.obj`), [maps.tiles3[i]], objsDir);
    }
    for (let i = 0; i < maps.objs1.length; i++) {
        StoreObj(join(objsDir, `objs1_${i}.obj`), [maps.objs1[i]], objsDir);
    }
    for (let i = 0; i < maps.objs2.length; i++) {
        StoreObj(join(objsDir, `objs2_${i}.obj`), [maps.objs2[i]], objsDir);
    }
    for (let i = 0; i < maps.cars.length; i++) {
        StoreObj(join(objsDir, `cars_${i}.obj`), [maps.cars[i]], objsDir);
    }
}

// Courses: rebuild every tile/object/car with the course's own colormap +
// trailer + primary-LUT mode flag, so per-scene road tweaks (Cape Cod's
// gray road etc.) come out right.
function loadCourse(dat: Uint8Array, off: number): void {
    LoadObjects(
        LoadRemapTable(dat, off),
        LoadTrailerTable(dat, off),
        LoadPrimaryLutMode(dat, off),
        WeatherMode.Dry,
    );
}

let map;
for (let idx = 0; idx <= 10; idx++) {
    switch (idx) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            loadCourse(files.scene01!, mapoffset[idx]);
            map = BuildMap(files.scene01!, mapoffset[idx], maps.tiles1, maps.tiles2, maps.objs1);
            StoreObj(join(objsDir, `Pacific_Course_${idx + 1}.obj`), map, objsDir);
            break;

        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
            loadCourse(files.scene02!, mapoffset[idx]);
            map = BuildMap(files.scene02!, mapoffset[idx], maps.tiles3, maps.tiles2, maps.objs2);
            StoreObj(join(objsDir, `Cape_Cod_Course_${idx - 4}.obj`), map, objsDir);
            break;

        case 10:
            loadCourse(files.scene01!, mapoffset[0]);
            map = BuildMap(files.datab!, 0x21603, maps.tiles1, maps.tiles2, maps.objs1);
            StoreObj(join(objsDir, `Unknown_Course_1.obj`), map, objsDir);
            break;
    }
}
