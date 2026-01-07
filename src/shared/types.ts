import * as THREE from 'three';

// Color types
export interface ColorRGB {
    r: number;  // 0-1 float
    g: number;  // 0-1 float
    b: number;  // 0-1 float
}

// 3D geometry types
export interface Line {
    p1: number;  // vertex index
    p2: number;  // vertex index
    color: ColorRGB;
}

export interface Triangle {
    p1: number;  // vertex index
    p2: number;  // vertex index
    p3: number;  // vertex index
    color: ColorRGB;
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

// Color map entry from color.ts
export interface ColorMapEntry {
    color0: number;
    color1: number;
}

// FlyControls types
export interface MoveState {
    up: number;
    down: number;
    left: number;
    right: number;
    forward: number;
    back: number;
    pitchUp: number;
    pitchDown: number;
    yawLeft: number;
    yawRight: number;
    rollLeft: number;
    rollRight: number;
}

export interface ContainerDimensions {
    size: [number, number];
    offset: [number, number];
}
