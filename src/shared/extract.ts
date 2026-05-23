import * as THREE from 'three';
import { ColorRGB, Mesh } from './types';
import { PixelPair, WeatherMode } from './color';
import { paletteColor } from './palette';

// Engine polygon-color resolution path, derived from sub_15153 (load-time
// polygon decoder, seg006:7303) and sub_102E8 (primary LUT generator,
// seg006:2498) in TD3.EXE. See disassembly/notes/polygon-color-pipeline.md.
//
// Stage 1 — primary LUT: 32-byte table at `word_2D8A0`, rebuilt at runtime
// by sub_102E8 from the per-scene mode flag (`byte_285B3` = map[0x35]) and
// the two weather flags. Per the particle blitter in sub_123A8:
//   - word_2AC5F → gray particles, road-blackening LUT  →  Rain
//   - word_2AC61 → white particles, terrain-whitening LUT  →  Snow
//
// Full 8-state truth table (per `(lutMode, weather)` combination):
//
//   lutMode == 0 (Pacific 1/4/5, Cape Cod 2/3):
//     LUT[7] = 8           (shoulder bumped to gray)
//     LUT[8] = 0           (road collapses to black; no further effect
//                           from Rain since it's already 0)
//     When Snow is active:
//       LUT[2] = LUT[3] = LUT[10] = 7   (gray-snow terrain)
//
//   lutMode != 0 (Pacific 2/3, Cape Cod 1/4/5):
//     LUT[7] = 7 always.
//     LUT[8] = 8 (gray road) UNLESS Rain active → 0 (wet asphalt).
//     LUT[2] = LUT[3] = LUT[10] = c (identity) UNLESS Snow active → 0xF
//                                                                  (white).
//
// All other entries are identity in every state.
function primaryLUT(c: number, lutMode: number, weather: WeatherMode): number {
    const rain = weather === WeatherMode.Rain || weather === WeatherMode.RainAndSnow;
    const snow = weather === WeatherMode.Snow || weather === WeatherMode.RainAndSnow;

    if (c === 7) return lutMode === 0 ? 8 : 7;

    if (c === 8) {
        if (lutMode === 0) return 0;          // road always black on B3==0 maps
        return rain ? 0 : 8;                  // B3!=0: rain wets road to black, else gray
    }

    if (c === 2 || c === 3 || c === 10) {
        if (!snow) return c;
        return lutMode === 0 ? 7 : 0x0F;      // snow covers terrain: gray on B3==0, white on B3!=0
    }

    return c & 0x1F;
}

// Stage 2 — VGA mode 13h pair resolution (sub_15153 takes the
// word_2D628 == 0x13 branch). The engine combines both on-disk color
// fields into a single 8-bit index `bx = (LUT[w2]<<4) | LUT[w1]` and
// performs ONE lookup of a 16-bit pixel pair from map[0x1F27].
//
// For polygons where w1_color == w2_color (e.g., cars), this lands on a
// diagonal entry. For tile polygons where they differ, the combined
// index hits off-diagonal entries, which can be true dither pairs OR
// hand-curated single-color substitutes (e.g., (low=2, high=3) →
// palette[104] on Pacific 1, not a mix of palette[2] and palette[3]).
//
// Secondary path (one or both LUT outputs >= 16): the engine replaces
// each ≥16 byte with `trailer[byte & 0xF]` from map[0x2127] and leaves
// the <16 byte at its raw LUT value. There is no combined-pair lookup
// in this path.
//
// The EGA fallback path (word_2D628 != 0x13) is intentionally not modeled
// here — it would be `paletteColor(LUT[c] & 0x0F)`, i.e., a flat 16-color
// EGA palette with no map remapping. TD3 ships running VGA mode 13h.
function resolvePolygonColor(
    color0: number,  // on-disk word 1 top-5 = LUT input for "left" pixel
    color1: number,  // on-disk word 2 top-5 = LUT input for "right" pixel
    colormap: PixelPair[],
    trailer: number[],
    lutMode: number, // byte_285B3 = map[0x35], drives LUT[7]/LUT[8] road tweaks
    weather: WeatherMode,
): ColorRGB {
    const n1 = primaryLUT(color0, lutMode, weather);
    const n2 = primaryLUT(color1, lutMode, weather);

    let leftByte: number;
    let rightByte: number;

    if (n1 < 16 && n2 < 16) {
        const pair = colormap[(n2 << 4) | n1];
        leftByte = pair.leftPixel;
        rightByte = pair.rightPixel;
    } else {
        leftByte  = n1 < 16 ? n1 : trailer[n1 & 0x0F];
        rightByte = n2 < 16 ? n2 : trailer[n2 & 0x0F];
    }

    return paletteColor(leftByte).average(paletteColor(rightByte));
}

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

export function BuildObject(name: string, buf: Uint8Array, colormap: PixelPair[], trailer: number[], lutMode: number, weather: WeatherMode, offset: number, isobj: boolean): Mesh {
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

        // Combined VGA-mode-13h pair lookup: one index `(LUT[w2]<<4)|LUT[w1]`
        // → 16-bit dither pair → RGB-averaged for flat-shaded output. For
        // cars (w1==w2 everywhere) this lands on a diagonal; for tiles, the
        // off-diagonal entries carry hand-curated dither substitutes.
        const c = resolvePolygonColor(color0, color1, colormap, trailer, lutMode, weather);

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

export function BuildObjectList(name: string, buf: Uint8Array, colormap: PixelPair[], trailer: number[], lutMode: number, weather: WeatherMode, offset: number, n: number, isobj: (number | null)[]): Mesh[] {
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
            objs.push(BuildObject(n, buf, colormap, trailer, lutMode, weather, offset + objectoffset, !!isobj[i]));
        }
    }
    return objs;
}
