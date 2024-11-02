import fs from 'node:fs';


// This function converts a color object in which the colors stored as floats to a hex string
// with leading zeros
export function ColorToHex(color) {
    let r = Math.round(color.r * 255);
    let g = Math.round(color.g * 255);
    let b = Math.round(color.b * 255);
    return (r << 16 | g << 8 | b).toString(16).padStart(6, '0');
}

let mtlcontent = "# Wavefront Material Library\n\n"
let colorsStored = new Set([]);

function AddMtl(color) {
    let hex = ColorToHex(color)
    if (colorsStored.has(hex)) {
        return
    }
    colorsStored.add(hex)
    mtlcontent += "newmtl color_#" + hex + "\n"
    mtlcontent += "Kd " + color.r + " " + color.g + " " + color.b + "\n"
    mtlcontent += "\n"
}

export function StoreObj(filename, obj) {
    console.log("Write " + filename)
    if (obj.vertices.length === 0) {
        return
    }
    let content = "# Wavefront OBJ file\n"
    content += "# vertices:" + obj.vertices.length + "\n"
    content += "# lines:" + obj.lines.length + "\n"
    content += "mtllib colors.mtl\n\n"

    for (let i = 0; i < obj.vertices.length; i++) {
        let v = obj.vertices[i];
        content += "v " + v.x*0.01 + " " + v.y*0.01 + " " + v.z*0.01 + "\n";
    }
    for (let i = 0; i < obj.lines.length; i++) {
        let l = obj.lines[i];
        AddMtl(l.color);
        content += "usemtl color_#" + ColorToHex(l.color) + "\n";
        content += "l " + (l.p1+1) + " " + (l.p2+1) + "\n";
    }
    for (let i = 0; i < obj.tris.length; i++) {
        let t = obj.tris[i];
        AddMtl(t.color);
        content += "usemtl color_#" + ColorToHex(t.color) + "\n";
        content += "f " + (t.p1+1) + " " + (t.p2+1) + " " + (t.p3+1) + "\n";
    }

    fs.writeFileSync(filename, content);
    fs.writeFileSync("objs/colors.mtl", mtlcontent)

}