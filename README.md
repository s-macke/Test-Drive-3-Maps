# Test-Drive-3-Maps

Reverse engineered and extracted maps of the DOS Game *Test Drive III: The Passion* by Accolade


# **[Online Viewer](https://simulationcorner.net/td3/td3.html)**

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

## Project Structure

```
src/
├── browser/     # Browser-only modules (Three.js viewer)
├── shared/      # Shared modules (extraction logic)
└── node/        # Node.js CLI tools (OBJ export)
public/
└── base/        # Game data files (required)
objs/            # Exported Wavefront OBJ files
```
