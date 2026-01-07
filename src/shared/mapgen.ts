import * as extract from "./extract";
import * as THREE from 'three';
import { Mesh } from './types';

interface ClonedMesh {
    name: string;
    vertices: THREE.Vector3[];
    lines: Mesh['lines'];
    tris: Mesh['tris'];
}

function CloneMesh(obj: Mesh, xt: number, yt: number, zt: number, rot: number): ClonedMesh {
    const obj2: ClonedMesh = {
        name: obj.name,
        vertices: [],
        lines: obj.lines,
        tris: obj.tris
    };
    for (let i = 0; i < obj.vertices.length; i++) {
        const p = obj.vertices[i];
        const xp = p.x * Math.cos(rot) - p.y * Math.sin(rot);
        const yp = p.x * Math.sin(rot) + p.y * Math.cos(rot);
        const zp = p.z;
        obj2.vertices.push(new THREE.Vector3(xp + xt, yp + yt, zp + zt));
    }
    return obj2;
}

export function BuildMap(dat: Uint8Array, offset: number, tiles1: Mesh[], tiles2: Mesh[], objs: Mesh[]): ClonedMesh[] {
    const map: ClonedMesh[] = [];
    let i = 0, j = 0;
    const mapoffset = offset + 0xDF;
    for (j = 0; j < 16; j++) {
        for (i = 0; i < 32; i++) {
            let tile = dat[mapoffset + (i + j * 32) * 2 + 0];
            const rot = dat[mapoffset + (i + j * 32) * 2 + 1] >> 6;
            const height = dat[mapoffset + (i + j * 32) * 2 + 1] & 0x3F;
            let ob: Mesh | null = null;
            if (tile < 0x40) {
                if (tile < tiles2.length)
                    ob = tiles2[tile];
            } else {
                tile -= 0x40;
                if (tile < tiles1.length)
                    ob = tiles1[tile];
            }
            if (ob == null) {
                console.log("No object found " + tile + " " + tiles2.length + " " + tiles1.length);
                continue;
            }
            const obt = CloneMesh(
                ob,
                (2048 + 2048) * (i - 16),
                -(2048 + 2048) * (j - 8),
                height * 256,
                -Math.PI / 2 * (rot));
            obt.name += "_map_" + i + "_" + j;
            map.push(obt);
        }
    }

    const ofs = offset + 0x0EE1;
    const nobjects = dat[ofs + 0];
    for (i = 0; i < nobjects; i++) {
        const objid = dat[ofs + 6 + i * 2 + 0];
        const zp = extract.Read16(dat, ofs + 6 + 320 * 1 + i * 2);
        const xp = extract.Read16(dat, ofs + 6 + 320 * 2 + i * 2);
        const yp = extract.Read16(dat, ofs + 6 + 320 * 3 + i * 2);
        const ob = objs[objid & 63];

        const rot = dat[ofs + 6 + 320 * 4 + i] >> 6;

        const obt = CloneMesh(
            ob,
            (2048 + 2048) * (-15.5) + zp * 4,
            (2048 + 2048) * (-7.5) + xp * 4,
            -1999. * 4 + yp * 4,
            -Math.PI / 2 * (rot));
        obt.name += "_obj_" + i;
        map.push(obt);
    }
    return map;
}
