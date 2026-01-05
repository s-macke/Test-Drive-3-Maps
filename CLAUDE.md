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
│   │   ├── FlyControls.js # Camera controls
│   │   └── utils.js    # Browser utilities (XHR)
│   ├── shared/         # Browser + Node shared modules
│   │   ├── extract.js  # Binary parser for TD3 formats
│   │   ├── color.js    # Color mapping extraction
│   │   ├── files.js    # File buffer storage
│   │   ├── objects.js  # Object loading/categorization
│   │   └── mapgen.js   # Map assembly logic
│   └── node/           # Node.js-only modules
│       ├── toobj.js    # CLI export script
│       └── toWaveFrontObj.js # OBJ/MTL writer
├── public/
│   └── base/           # Game data files (DAT/POB)
├── objs/               # Exported Wavefront OBJ files
├── index.html          # Vite entry point
├── vite.config.js      # Vite configuration
└── package.json
```

## Game Data Files (public/base/)

Original game data files required for extraction:

| File | Description |
|------|-------------|
| `SCENE01.DAT` | Pacific Coast course data (5 maps, tiles, palettes) |
| `scene02.dat` | Cape Cod course data (5 maps, tiles, objects) |
| `DATAB.DAT` | Shared tiles, objects, menu graphics |
| `DATAC.DAT` | Color palettes |
| `C*.POB` | Player car models (CCERV=Corvette, CCNSX=NSX, CDIAB=Diablo, CMYTH=Mythos, CSTEL=Stealth) |

## Source Files

### Browser (src/browser/)
| File | Description |
|------|-------------|
| `main.js` | Browser entry point. Loads data files, builds maps, handles UI. |
| `scene.js` | Three.js scene setup (camera, lights, renderer). |
| `FlyControls.js` | Camera fly-through controls. |
| `utils.js` | XHR-based binary file loading. |

### Shared (src/shared/)
| File | Description |
|------|-------------|
| `extract.js` | Binary parser for TD3 file formats. Decodes vertices, polygons. |
| `objects.js` | Loads and categorizes game objects: tiles1/2/3, objs1/2, cars. |
| `color.js` | Extracts color mapping tables from map data. |
| `files.js` | File buffer storage for loaded game data. |
| `mapgen.js` | Map assembly - positions tiles and objects in world space. |

### Node.js (src/node/)
| File | Description |
|------|-------------|
| `toobj.js` | CLI script to batch export all maps/objects to OBJ. |
| `toWaveFrontObj.js` | Wavefront OBJ/MTL file writer. |

### Output (objs/)
Exported Wavefront OBJ files:
- `Pacific_Course_1-5.obj` - Pacific Coast race tracks
- `Cape_Cod_Course_1-5.obj` - Cape Cod race tracks
- `tiles1_*.obj`, `tiles2_*.obj`, `tiles3_*.obj` - Terrain/road tiles
- `objs1_*.obj`, `objs2_*.obj` - Scene objects (signs, buildings, etc.)
- `cars_*.obj` - Player vehicles
- `colors.mtl` - Shared material library

## File Format Notes

From `extract.js` documentation:

### Map Structure (0x2137 bytes)
- `0x00DF-0x04DF`: 32x16 tile grid (2 bytes per tile: ID + rotation/height)
- `0x0EE1`: Object placement header (count, active, LOD, player car)
- `0x1F27`: Color mapping table

### Object Format
- 4-byte header: polygon count, point count, sprite count, null
- Vertex data: Z, X, Y coordinates (16-bit signed)
- Polygon data: type (point/line/tri/quad), vertex indices, colors

## Usage

**Online Viewer**: https://simulationcorner.net/td3/td3.html

**Local Development**:
```bash
# Install dependencies
npm install

# Run development server
npm run dev

# Build for production
npm run build

# Export OBJ files (Node.js)
npm run export
```

## References

- File structure documentation: http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960
