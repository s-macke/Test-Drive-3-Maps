import * as extract from "./extract.js";
import * as THREE from "./three.module.js";

function CloneMesh(obj, xt, yt, zt, rot) {
    let obj2 = {
        name: obj.name,
        vertices: [],
        lines: obj.lines,
        tris: obj.tris
    }
    for (let i=0; i<obj.vertices.length; i++) {
        let p = obj.vertices[i]
        let xp = p.x * Math.cos(rot) - p.y * Math.sin(rot)
        let yp = p.x * Math.sin(rot) + p.y * Math.cos(rot)
        let zp = p.z
        obj2.vertices.push(new THREE.Vector3(xp + xt, yp + yt, zp + zt))
    }
    return obj2
}

export function BuildMap(dat, offset, tiles1, tiles2, objs) {
    let map = []
    let i = 0, j = 0;
    let mapoffset = offset + 0xDF;
    for (j = 0; j < 16; j++) {
        for (i = 0; i < 32; i++) {
            let tile = dat[mapoffset + (i + j * 32) * 2 + 0];
            let rot = dat[mapoffset + (i + j * 32) * 2 + 1] >> 6;
            let height = dat[mapoffset + (i + j * 32) * 2 + 1] & 0x3F;
            let ob = null;
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
            /*
            ob.rotation.z += -Math.PI / 2 * (rot);
            ob.position.x += (2048 + 2048) * (i - 16);
            ob.position.y += -(2048 + 2048) * (j - 8);
            ob.position.z += height * 256;
            */
            //map.push(ob)
            let obt = CloneMesh(
                ob,
                (2048 + 2048) * (i - 16),
                -(2048 + 2048) * (j - 8),
                height * 256,
                -Math.PI / 2 * (rot))
            obt.name += "_map_" + i + "_" + j
            map.push(obt)
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
        let ob = objs[objid&63]

        //xp = (xp << 16) >> 16;
        //yp = (yp << 16) >> 16;
        //zp = (zp << 16) >> 16;
        let rot = dat[ofs + 6 + 320 * 4 + i] >> 6;

/*
        ob.rotation.z += -Math.PI / 2 * (rot);
        ob.position.x += (2048 + 2048) * (-15.5);
        ob.position.y += (2048 + 2048) * (-7.5);
        ob.position.z += -1999.*4;
        ob.position.x += zp*4;
        ob.position.y += xp*4;
        ob.position.z += yp*4;
        map.push(ob)
 */
        let obt = CloneMesh(
            ob,
            (2048 + 2048) * (-15.5) + zp*4,
            (2048 + 2048) * (-7.5) + xp*4,
            -1999.*4 + yp*4,
            -Math.PI / 2 * (rot))
        obt.name += "_obj_" + i
        map.push(obt)
    }
    return map
}
