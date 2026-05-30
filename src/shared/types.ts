import * as THREE from 'three';

// Color types
export class ColorRGB {
    constructor(
        public r: number,  // 0-1 float
        public g: number,  // 0-1 float
        public b: number,  // 0-1 float
    ) {}

    /** Element-wise average with another color. */
    average(other: ColorRGB): ColorRGB {
        return new ColorRGB(
            (this.r + other.r) * 0.5,
            (this.g + other.g) * 0.5,
            (this.b + other.b) * 0.5,
        );
    }
}

// 3D geometry types
export interface Line {
    p1: number;  // vertex index
    p2: number;  // vertex index
    color: ColorRGB;
    light?: boolean;  // render-mode 0: OR-blended onto framebuffer (lightens hue ramp)
}

export interface Triangle {
    p1: number;  // vertex index
    p2: number;  // vertex index
    p3: number;  // vertex index
    color: ColorRGB;
    light?: boolean;  // render-mode 0: OR-blended onto framebuffer (lightens hue ramp)
}

export interface Mesh {
    name: string;
    vertices: THREE.Vector3[];
    lines: Line[];
    tris: Triangle[];
    obj?: THREE.Object3D;
}

// Maps collection
export interface MapsCollection {
    tiles1: Mesh[];
    tiles2: Mesh[];
    tiles3: Mesh[];
    objs1: Mesh[];
    objs2: Mesh[];
    cars: Mesh[];
}
