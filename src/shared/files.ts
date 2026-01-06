export interface GameFiles {
    scene01: Uint8Array | null;
    datab: Uint8Array | null;
    scene02: Uint8Array | null;
    datac: Uint8Array | null;
    ccerv: Uint8Array | null;
    ccnsx: Uint8Array | null;
    cdiab: Uint8Array | null;
    cmyth: Uint8Array | null;
    cstel: Uint8Array | null;
}

export const files: GameFiles = {
    scene01: null,
    datab: null,
    scene02: null,
    datac: null,
    ccerv: null,
    ccnsx: null,
    cdiab: null,
    cmyth: null,
    cstel: null,
};

const FILE_PATHS = {
    scene01: 'SCENE01.DAT',
    datab: 'DATAB.DAT',
    scene02: 'SCENE02.dat',
    datac: 'DATAC.DAT',
    ccerv: 'CCERV.POB',
    ccnsx: 'CCNSX.POB',
    cdiab: 'CDIAB.POB',
    cmyth: 'CMYTH.POB',
    cstel: 'CSTEL.POB',
} as const;

type FileKey = keyof typeof FILE_PATHS;

const isNode = typeof process !== 'undefined'
    && process.versions != null
    && process.versions.node != null;

async function loadFileBrowser(url: string): Promise<Uint8Array> {
    const response = await fetch(url);
    if (!response.ok) {
        throw new Error(`Failed to load ${url}: ${response.status}`);
    }
    const buffer = await response.arrayBuffer();
    return new Uint8Array(buffer);
}

async function loadFileNode(filePath: string): Promise<Uint8Array> {
    const fs = await import('node:fs/promises');
    const buffer = await fs.readFile(filePath);
    return new Uint8Array(buffer);
}

export async function loadFiles(basePath?: string): Promise<GameFiles> {
    let resolvedBasePath: string;

    if (isNode) {
        if (basePath) {
            resolvedBasePath = basePath;
        } else {
            const { fileURLToPath } = await import('node:url');
            const { dirname, join } = await import('node:path');
            const currentFile = fileURLToPath(import.meta.url);
            const currentDir = dirname(currentFile);
            resolvedBasePath = join(currentDir, '../../public/base');
        }
    } else {
        resolvedBasePath = basePath ?? 'base';
    }

    const loadFile = isNode ? loadFileNode : loadFileBrowser;
    const separator = isNode ? (await import('node:path')).sep : '/';

    const entries = Object.entries(FILE_PATHS) as [FileKey, string][];

    const results = await Promise.all(
        entries.map(async ([key, filename]) => {
            const fullPath = `${resolvedBasePath}${separator}${filename}`;
            const data = await loadFile(fullPath);
            return [key, data] as const;
        })
    );

    for (const [key, data] of results) {
        files[key] = data;
    }

    return files;
}
