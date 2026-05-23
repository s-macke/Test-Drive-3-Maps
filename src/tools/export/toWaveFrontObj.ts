import fs from 'node:fs';
import { join } from 'path';
import { ColorRGB } from '../../shared/types';


// This function converts a color object in which the colors stored as floats to a hex string
// with leading zeros
export function ColorToHex(color: ColorRGB): string {
    const r = Math.round(color.r * 255);
    const g = Math.round(color.g * 255);
    const b = Math.round(color.b * 255);
    return (r << 16 | g << 8 | b).toString(16).padStart(6, '0');
}

let mtlcontent = "# Wavefront Material Library\n\n";
const colorsStored = new Set<string>();

function AddMtl(color: ColorRGB, light: boolean): void {
    const hex = ColorToHex(color);
    const key = (light ? "light_" : "") + hex;
    if (colorsStored.has(key)) {
        return;
    }
    colorsStored.add(key);
    mtlcontent += "newmtl " + matName(color, light) + "\n";
    mtlcontent += "Kd " + color.r + " " + color.g + " " + color.b + "\n";
    if (light) {
        // OBJ/MTL has no additive-blend slot; emit emissive + alpha as the
        // closest portable hint. Renderers that honour Ke + d will at least
        // glow these surfaces instead of drawing them as opaque flat fills.
        mtlcontent += "Ke " + color.r + " " + color.g + " " + color.b + "\n";
        mtlcontent += "d 0.5\n";
        mtlcontent += "illum 1\n";
    }
    mtlcontent += "\n";
}

function matName(color: ColorRGB, light: boolean): string {
    return (light ? "light_color_#" : "color_#") + ColorToHex(color);
}

interface MeshLike {
    name: string;
    vertices: { x: number; y: number; z: number }[];
    lines: { p1: number; p2: number; color: ColorRGB; light?: boolean }[];
    tris: { p1: number; p2: number; p3: number; color: ColorRGB; light?: boolean }[];
}

export function StoreObj(filename: string, objs: MeshLike[], objsDir: string): void {
    console.log("Write " + filename);
    let content = "# Wavefront OBJ file\n";
    content += "mtllib colors.mtl\n";
    let doStore = false;
    let nbase = 0;

    for (let j = 0; j < objs.length; j++) {
        const obj = objs[j];
        content += "\no " + obj.name + "\n";

        if (obj.vertices.length === 0) {
            continue;
        }
        doStore = true;

        for (let i = 0; i < obj.vertices.length; i++) {
            const v = obj.vertices[i];
            content += "v " + v.x * 0.001 + " " + v.y * 0.001 + " " + v.z * 0.001 + "\n";
        }
        for (let i = 0; i < obj.lines.length; i++) {
            const l = obj.lines[i];
            const light = !!l.light;
            AddMtl(l.color, light);
            content += "usemtl " + matName(l.color, light) + "\n";
            content += "l " + (l.p1 + 1 + nbase) + " " + (l.p2 + 1 + nbase) + "\n";
        }
        for (let i = 0; i < obj.tris.length; i++) {
            const t = obj.tris[i];
            const light = !!t.light;
            AddMtl(t.color, light);
            content += "usemtl " + matName(t.color, light) + "\n";
            content += "f " + (t.p1 + 1 + nbase) + " " + (t.p2 + 1 + nbase) + " " + (t.p3 + 1 + nbase) + "\n";
        }
        nbase += obj.vertices.length;
    }

    if (doStore) {
        fs.writeFileSync(filename, content);
        fs.writeFileSync(join(objsDir, "colors.mtl"), mtlcontent);
    }
}
