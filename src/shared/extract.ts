import * as THREE from 'three';
import { Mesh } from './types';
import { PixelPair } from './color';
import { paletteColor } from './palette';

// 32-entry polygon-color LUT used by the engine's polygon shader. Each 5-bit
// `color0` / `color1` field from a polygon descriptor (`idx2 >> 11`,
// `idx3 >> 11`) maps through this table to a VGA palette index; the two
// resulting bytes are then drawn as a left/right dither pair (we average them
// in RGB space for flat-shaded mesh output).
//
// NOTE: This table is currently a hand-rolled empirical approximation — its
// bytes do not appear verbatim in any DAT/EXE we searched. The real engine
// LUT (32 bytes) hasn't been located yet. The 256-entry remap table at
// `map[0x1F27]` is a *different* lookup used by the sprite blitter
// (`sub_15153`) and sky/fog gradient (`sub_11408`), not by polygons.
// TODO: locate the real polygon-color LUT in the disassembly and replace
// this hand-rolled table.
const ColorIndex: readonly number[] = [
    0, 1, 2, 3, 4, 5, 6, 7,
    0, 9, 10, 11, 12, 13, 14, 15,  // index 8 → 0 (street)
    19, 15, 107, 13, 38, 5, 55, 27,
    21, 75, 109, 13, 43, 13, 94, 29,
];

// more information about the file structures can be found here:
// http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960

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

export function Read16(dat: Uint8Array, address: number): number {
    return dat[address] | (dat[address + 1] << 8);
}

function cylinderMesh(pointX: THREE.Vector3, pointY: THREE.Vector3, radius: number): THREE.CylinderGeometry {
    const direction = new THREE.Vector3().subVectors(pointY, pointX);
    const orientation = new THREE.Matrix4();

    orientation.lookAt(pointX, pointY, new THREE.Object3D().up);

    orientation.multiply(new THREE.Matrix4().set(
        1, 0, 0, 0,
        0, 0, 1, 0,
        0, -1, 0, 0,
        0, 0, 0, 1));
    const edgeGeometry = new THREE.CylinderGeometry(radius, radius, direction.length(), 3, 1, true);
    // faceVertexUvs is deprecated in newer Three.js, geometry handles UVs internally
    edgeGeometry.applyMatrix4(orientation);
    edgeGeometry.translate((pointY.x + pointX.x) / 2, (pointY.y + pointX.y) / 2, (pointY.z + pointX.z) / 2);
    return edgeGeometry;
}

export function BuildObject(name: string, buf: Uint8Array, _colormap: PixelPair[], offset: number, isobj: boolean): Mesh {
    console.log("BuildObject " + name);
    const geom = new THREE.BufferGeometry();

    const mesh: Mesh = {
        name: name,
        vertices: [],
        lines: [],
        tris: [],
        obj: new THREE.Object3D()
    };

    const npoly = buf[offset + 0];
    const npoints = buf[offset + 1];
    const nsprites = buf[offset + 2];

    const positionstemp: THREE.Vector3[] = [];
    const positions: number[] = [];
    const colors: number[] = [];

    offset += isobj ? 8 : 4;

    const min = new THREE.Vector3(100000, 100000, 100000);
    const max = new THREE.Vector3(-100000, -100000, -100000);

    for (let i = 0; i < npoints; i++) {
        let zp = Read16(buf, offset + i * 2 + npoints * 0);
        let xp = Read16(buf, offset + i * 2 + npoints * 2);
        let yp = Read16(buf, offset + i * 2 + npoints * 4);

        xp = (xp << 16) >> 16;
        yp = (yp << 16) >> 16;
        zp = (zp << 16) >> 16;
        const v = new THREE.Vector3(xp, yp, zp);
        mesh.vertices.push(v);
        positionstemp.push(v);
        if (v.x < min.x) min.x = v.x;
        if (v.y < min.y) min.y = v.y;
        if (v.z < min.z) min.z = v.z;
        if (v.x > max.x) max.x = v.x;
        if (v.y > max.y) max.y = v.y;
        if (v.z > max.z) max.z = v.z;
    }
    offset += npoints * 3 * 2;

    const sizeobj = new THREE.Vector3(max.x - min.x, max.y - min.y, max.z - min.z);
    const size = Math.max(sizeobj.x, sizeobj.y, sizeobj.z);

    for (let i = 0; i < npoly; i++) {
        let idx1 = Read16(buf, offset + 0 + i * 8);
        let idx2 = Read16(buf, offset + 2 + i * 8);
        let idx3 = Read16(buf, offset + 4 + i * 8);
        let idx4 = Read16(buf, offset + 6 + i * 8);

        const type = idx1 >> 13;
        const color0 = idx2 >> 11;
        const color1 = idx3 >> 11;

        // Resolve each 5-bit polygon color through the 32-entry polygon LUT to
        // a VGA palette index, look that up in pal[], then average the two
        // RGBs as the flat-fill polygon color (since Three.js does flat
        // shading and we can't dither per-pixel).
        const c0 = paletteColor(ColorIndex[color0]);
        const c1 = paletteColor(ColorIndex[color1]);
        const c  = c0.average(c1);

        idx1 = idx1 & 0x7FF;
        idx2 = idx2 & 0x7FF;
        idx3 = idx3 & 0x7FF;
        idx4 = idx4 & 0x7FF;

        switch (type) {
            case 0x00:
            case 0x01: { // e. g. wheels
                console.log("type 0/1:", idx1, idx2, idx3, idx4);
                if (idx1 >= npoints) continue;
            }
                break;

            // lines
            case 0x02:
            case 0x03:
                if (idx1 >= npoints) continue;
                if (idx2 >= npoints) continue;
            {
                const line = cylinderMesh(positionstemp[idx1], positionstemp[idx2], size * 0.002);
                mesh.lines.push({
                    p1: idx1,
                    p2: idx2,
                    color: c
                });

                const array = line.toNonIndexed().attributes["position"].array as Float32Array;
                for (let j = 0; j < array.length / 3; j++) {
                    positions.push(array[j * 3 + 0], array[j * 3 + 1], array[j * 3 + 2]);
                    colors.push(c.r, c.g, c.b);
                }
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
                colors.push(c.r, c.g, c.b);
                colors.push(c.r, c.g, c.b);
                colors.push(c.r, c.g, c.b);
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

    // sprites (commented out in original)
    offset += nsprites * 4 * 2;

    geom.setAttribute('position', new THREE.Float32BufferAttribute(positions, 3));
    geom.setAttribute('color', new THREE.Float32BufferAttribute(colors, 3));
    geom.computeVertexNormals();
    const material = new THREE.MeshLambertMaterial({ color: 0xffffff, vertexColors: true });
    material.side = THREE.DoubleSide;
    mesh.obj!.add(new THREE.Mesh(geom, material));
    return mesh;
}

export function BuildObjectList(name: string, buf: Uint8Array, colormap: PixelPair[], offset: number, n: number, isobj: (number | null)[]): Mesh[] {
    const objs: Mesh[] = [];
    for (let i = 0; i < n; i++) {
        let idx = i;
        let objectoffset = Read16(buf, offset + i * 2);
        if (objectoffset <= 0x10) {
            idx--;
            objectoffset = Read16(buf, offset + (i - 1) * 2);
        }
        if (isobj[idx] == null) {
            objs.push({
                name: name + "_" + i,
                vertices: [],
                lines: [],
                tris: [],
                obj: new THREE.Object3D()
            });
        } else {
            const n = name + "_" + i;
            objs.push(BuildObject(n, buf, colormap, offset + objectoffset, !!isobj[i]));
        }
    }
    return objs;
}
