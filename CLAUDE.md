# Test Drive 3 Maps - Reverse Engineering Project

Reverse engineering project for extracting and visualizing maps and 3D objects from **Test Drive III: The Passion** (1990 DOS game by Accolade).

## Overview

This project parses the binary data files from Test Drive 3 to extract:
- Race track maps (Pacific Coast and Cape Cod courses)
- 3D tile geometry (terrain, roads, scenery)
- 3D objects (signs, vehicles, buildings, trains, etc.)
- Player cars (Corvette, Diablo, NSX, Stealth, Mythos)

Includes a Three.js-based online viewer and exports to Wavefront OBJ format.

## Project Structure

```
Test-Drive-3-Maps/
├── src/
│   ├── browser/        # Browser-only modules
│   │   ├── main.js     # Browser entry point
│   │   ├── scene.js    # Three.js scene setup
│   │   └── FlyControls.js # Camera controls
│   ├── shared/         # Browser + Node shared modules (TypeScript)
│   │   ├── extract.js  # Binary parser for TD3 formats
│   │   ├── color.ts    # Color mapping extraction
│   │   ├── files.ts    # File loading and storage (universal)
│   │   ├── lzw.ts      # LZW decompression for VGA images
│   │   ├── rle.ts      # RLE unpacking for VGA images
│   │   ├── objects.js  # Object loading/categorization
│   │   └── mapgen.js   # Map assembly logic
│   └── tools/          # CLI tools (Node.js)
│       ├── export/     # OBJ exporter tool
│       │   ├── toobj.js          # CLI export script
│       │   └── toWaveFrontObj.js # OBJ/MTL writer
│       ├── imgviewer/  # VGA image extractor tool
│       │   └── imgviewer.ts      # CLI tool to extract images from DAT files
│       └── lstviewer/  # LST file viewer tool
│           └── lstviewer.ts      # CLI viewer for LST files
├── public/
│   └── base/           # Game data files (DAT/POB)
├── objs/               # Exported Wavefront OBJ files
├── spec/               # File format specifications
│   ├── 3d-object-format.md
│   ├── lst-file-format.md
│   └── vga-image-format.md
├── index.html          # Vite entry point
├── vite.config.js      # Vite configuration
├── tsconfig.json       # TypeScript configuration
└── package.json
```

## Game Data Files (public/base/)

Original game data files required for extraction:

| File          | Description                                                                              |
|---------------|------------------------------------------------------------------------------------------|
| `SCENE01.DAT` | Pacific Coast course data (5 maps, tiles, palettes)                                      |
| `SCENE01.LST` | Resource index for SCENE01.DAT (scene variant, 1638 bytes)                               |
| `SCENE02.DAT` | Cape Cod course data (5 maps, tiles, objects)                                            |
| `SCENE02.LST` | Resource index for SCENE02.DAT (scene variant, 1638 bytes)                               |
| `DATAB.DAT`   | Shared tiles, objects, menu graphics                                                     |
| `DATAC.DAT`   | Color palettes                                                                           |
| `C*.DAT`      | Car data files (CCERV, CCNSX, CDIAB, CMYTH, CSTEL)                                       |
| `C*.LST`      | Car resource index files (car variant, 675 bytes each)                                   |
| `C*.POB`      | Player car models (CCERV=Corvette, CCNSX=NSX, CDIAB=Diablo, CMYTH=Mythos, CSTEL=Stealth) |

### LST Files

LST files are binary resource indices that provide offsets and sizes for resources within corresponding DAT files. Two variants exist:

| LST File    | DAT File    | Variant | Content                   |
|-------------|-------------|---------|---------------------------|
| SCENE01.LST | SCENE01.DAT | Scene   | Pacific Coast course data |
| SCENE02.LST | SCENE02.DAT | Scene   | Cape Cod course data      |
| CCERV.LST   | CCERV.DAT   | Car     | Corvette CERV III         |
| CCNSX.LST   | CCNSX.DAT   | Car     | Acura NSX                 |
| CDIAB.LST   | CDIAB.DAT   | Car     | Lamborghini Diablo        |
| CMYTH.LST   | CMYTH.DAT   | Car     | Pininfarina Mythos        |
| CSTEL.LST   | CSTEL.DAT   | Car     | Stealth R/T Turbo         |

See [`spec/lst-file-format.md`](spec/lst-file-format.md) for detailed format documentation.

## Source Files

### Browser (src/browser/)
| File             | Description                                                     |
|------------------|-----------------------------------------------------------------|
| `main.js`        | Browser entry point. Loads data files, builds maps, handles UI. |
| `scene.js`       | Three.js scene setup (camera, lights, renderer).                |
| `FlyControls.js` | Camera fly-through controls.                                    |

### Shared (src/shared/)
| File         | Description                                                                    |
|--------------|--------------------------------------------------------------------------------|
| `extract.js` | Binary parser for TD3 file formats. Decodes vertices, polygons.                |
| `objects.js` | Loads and categorizes game objects: tiles1/2/3, objs1/2, cars.                 |
| `color.ts`   | Extracts color mapping tables from map data.                                   |
| `files.ts`   | Universal file loader (browser/Node) and storage. Exports `loadFiles()` async. |
| `lzw.ts`     | LZW decompression for VGA images (9-12 bit variable codes).                    |
| `rle.ts`     | RLE unpacking for VGA images (pixel+length pairs).                             |
| `mapgen.js`  | Map assembly - positions tiles and objects in world space.                     |

### Tools (src/tools/)

#### Export Tool (src/tools/export/)
| File                | Description                                         |
|---------------------|-----------------------------------------------------|
| `toobj.js`          | CLI script to batch export all maps/objects to OBJ. |
| `toWaveFrontObj.js` | Wavefront OBJ/MTL file writer.                      |

#### LST Viewer (src/tools/lstviewer/)
| File            | Description                                              |
|-----------------|----------------------------------------------------------|
| `lstviewer.ts`  | CLI tool to view LST file contents in readable format.   |

#### Image Viewer (src/tools/imgviewer/)
| File            | Description                                              |
|-----------------|----------------------------------------------------------|
| `imgviewer.ts`  | CLI tool to extract VGA images from DAT files (LZW+RLE). |

### Output (objs/)
Exported Wavefront OBJ files:
- `Pacific_Course_1-5.obj` - Pacific Coast race tracks
- `Cape_Cod_Course_1-5.obj` - Cape Cod race tracks
- `tiles1_*.obj`, `tiles2_*.obj`, `tiles3_*.obj` - Terrain/road tiles
- `objs1_*.obj`, `objs2_*.obj` - Scene objects (signs, buildings, etc.)
- `cars_*.obj` - Player vehicles
- `colors.mtl` - Shared material library

## File Format Notes

See specifications in `spec/`:
- [`3d-object-format.md`](spec/3d-object-format.md) - 3D object/polygon format
- [`lst-file-format.md`](spec/lst-file-format.md) - LST resource index files
- [`vga-image-format.md`](spec/vga-image-format.md) - VGA image compression (LZW+RLE)

### Map Structure (0x2137 bytes)
- `0x00DF-0x04DF`: 32x16 tile grid (2 bytes per tile: ID + rotation/height)
- `0x0EE1`: Object placement header (count, active, LOD, player car)
- `0x1F27`: Color mapping table

### Object Format (summary)
- 4 or 8 byte header (tiles vs objects)
- Vertex data: 3 arrays of 16-bit signed coordinates
- Polygon data: type, vertex indices, colors (8 bytes each)

## Usage

**Online Viewer**: https://simulationcorner.net/td3/td3.html

**Local Development**:
```bash
# Install dependencies
npm install

# Run development server
npm run dev

# Build for production (includes type checking)
npm run build

# Type check only
npm run typecheck

# Export OBJ files (Node.js)
npm run export

# View LST file contents
npm run lstview -- public/base/SCENE01.LST

# Extract VGA image from DAT file
npm run imgview -- public/base/DATAB.DAT 0x151 12083 320
```
