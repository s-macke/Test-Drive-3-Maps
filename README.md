# Test-Drive-3-Maps

Reverse engineered and extracted maps of the DOS Game *Test Drive III: The Passion* by Accolade


# **[Online Viewer](https://s-macke.github.io/Test-Drive-3-Maps/)**

Wavefront Object files are available in the objs directory.

## Development

### Prerequisites
- Node.js 18+

### Installation
```bash
npm install
```

### Running the Browser Viewer
```bash
npm run dev
```
Opens the viewer at http://localhost:5173

### Building for Production
```bash
npm run build
```
Output is in the `dist/` directory.

### Exporting OBJ Files
```bash
npm run export
```
Exports all maps and objects to the `objs/` directory.

### CLI Tools
```bash
# View LST file contents
npm run lstview -- public/base/SCENE01.LST

# Extract VGA image from DAT file
npm run imgview -- public/base/DATAB.DAT 0x151 12083 320
```

## Project Structure

```
src/
├── browser/     # Browser-only modules (Three.js viewer)
├── shared/      # Shared modules (extraction logic, LZW/RLE decoders)
└── tools/       # Node.js CLI tools
    ├── export/      # OBJ exporter
    ├── lstviewer/   # LST file viewer
    └── imgviewer/   # VGA image extractor
public/
└── base/        # Game data files (required)
objs/            # Exported Wavefront OBJ files
images/          # Extracted VGA images (PPM format)
spec/            # File format specifications
```

## File Format Specifications

The `spec/` directory contains reverse-engineered documentation for Test Drive III file formats:

| File | Description |
|------|-------------|
| [3d-object-format.md](spec/3d-object-format.md) | 3D polygon/vertex format used in tiles and objects |
| [dat-file-layouts.md](spec/dat-file-layouts.md) | DAT file offset tables and resource layouts |
| [lst-file-format.md](spec/lst-file-format.md) | LST resource index files (scene and car variants) |
| [vga-image-format.md](spec/vga-image-format.md) | VGA image compression (LZW + RLE pipeline) |
