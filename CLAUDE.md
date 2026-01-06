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
│   │   ├── objects.js  # Object loading/categorization
│   │   └── mapgen.js   # Map assembly logic
│   └── node/           # Node.js-only modules
│       ├── toobj.js    # CLI export script
│       └── toWaveFrontObj.js # OBJ/MTL writer
├── public/
│   └── base/           # Game data files (DAT/POB)
├── objs/               # Exported Wavefront OBJ files
├── spec/               # File format specifications
│   ├── 3d-object-format.md
│   └── lst-file-format.md
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
| `SCENE01.LST` | Resource index for SCENE01.DAT                                                           |
| `scene02.dat` | Cape Cod course data (5 maps, tiles, objects)                                            |
| `SCENE02.LST` | Resource index for SCENE02.DAT                                                           |
| `DATAB.DAT`   | Shared tiles, objects, menu graphics                                                     |
| `DATAC.DAT`   | Color palettes                                                                           |
| `C*.DAT`      | Car data files (with corresponding C*.LST index files)                                   |
| `C*.POB`      | Player car models (CCERV=Corvette, CCNSX=NSX, CDIAB=Diablo, CMYTH=Mythos, CSTEL=Stealth) |

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
| `mapgen.js`  | Map assembly - positions tiles and objects in world space.                     |

### Node.js (src/node/)
| File                | Description                                         |
|---------------------|-----------------------------------------------------|
| `toobj.js`          | CLI script to batch export all maps/objects to OBJ. |
| `toWaveFrontObj.js` | Wavefront OBJ/MTL file writer.                      |

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
```

## References

- File structure documentation: http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960
