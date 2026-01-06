# Test Drive 3 - LST File Format Specification

This document describes the .LST (list) files used in Test Drive III: The Passion (1990).

**Status:** Partially decoded - scene LST resource table understood, car LST structure still under investigation.

## Overview

LST files are binary resource index files that describe the contents and layout of corresponding .DAT files. They serve as a directory/manifest for locating resources within the associated DAT file.

**Important:** LST is a generic format that varies significantly based on the type of data in the corresponding DAT file. There are at least two distinct variants:

1. **Scene LST files** (SCENE01.LST, SCENE02.LST) - Index course/map data
2. **Car LST files** (C*.LST) - Index car model and configuration data

These variants share only the basic concept (name + resource offsets) but have very different internal structures.

## Known LST Files

| LST File    | Corresponding DAT | Size (bytes) | Variant | Content Type              |
|-------------|-------------------|--------------|---------|---------------------------|
| SCENE01.LST | SCENE01.DAT       | 1638         | Scene   | Pacific Coast course data |
| SCENE02.LST | SCENE02.DAT       | 1638         | Scene   | Cape Cod course data      |
| CCERV.LST   | CCERV.DAT         | 675          | Car     | Corvette CERV III         |
| CCNSX.LST   | CCNSX.DAT         | 675          | Car     | Acura NSX                 |
| CDIAB.LST   | CDIAB.DAT         | 675          | Car     | Lamborghini Diablo        |
| CMYTH.LST   | CMYTH.DAT         | 675          | Car     | Pininfarina Mythos        |
| CSTEL.LST   | CSTEL.DAT         | 675          | Car     | Stealth R/T Turbo         |

## Common Elements

All LST files share:
- **Offset 0x0000**: Null-terminated name string (up to 18 characters + null)
- **Offset 0x0013+**: Variant-specific binary data

Everything after the name differs based on the LST variant.

---

## Scene LST Files (SCENE01.LST, SCENE02.LST)

Size: 1638 bytes (0x666)

### Complete Structure

```
Offset    Size      Description
------    ----      -----------
0x0000    19        Course name (null-terminated string, 18 chars + null)
0x0013    1         Number of maps (always 5)
0x0014    59        Map configuration header (see below)
0x004F    8         Flags string "11111111" (ASCII)
0x0057    1         Unknown flag (0x00 or 0x01)
0x0058    432       Route names (36 entries × 12 chars each)
0x0208    12        Routing data (12 bytes, values 0-3)
0x0214    388       Unknown data table (NOT color mapping)
0x0398    48        Index table (24 × 16-bit values)
0x03C8    14        Unknown
0x03D6    250       Car names / UI strings (null-terminated, 0xAA delimited)
0x04D0    14        Resource table header (first entry)
0x04DE    392       Resource table entries (28 entries × 14 bytes)
```

### Map Configuration Header (0x0014 - 0x004E)

59 bytes containing map-related data. Structure partially understood:
- Contains 16-bit values
- Values include map identifiers ('1' through '5' as ASCII 0x31-0x35)
- Remainder is padding (zeros)

### Route Names (0x0058 - 0x0207)

36 fixed-width strings, 12 characters each:
- Entries 0-19: 5 maps × 4 route names (main route + 3 alternatives)
- Entries 20-35: 4 sections × 4 subroutes (unused/placeholders)

Example from SCENE01.LST:
```
[0]  "Scenic Coast"     [4]  "Coast Hills"      [8]  "Valley Farms"
[1]  "Highway 101"      [5]  "Highway 156"      [9]  "Highway 33"
[2]  "Highway 1"        [6]  "Highway 1"        [10] "Highway 140"
[3]  "Shortcut"         [7]  "Shortcut"         [11] "Shortcut"
```

### Routing Data (0x0208 - 0x0213)

12 bytes defining default route selections:
- Both SCENE01 and SCENE02 have: `[0, 2, 1, 3, 0, 1, 3, 1, 2, 0, 1, 3]`
- Values 0-3 reference the 4 route options per map

### Unknown Data Table (0x0214 - 0x0397)

388 bytes of structured data with unknown purpose:
- Most values have low nibble = 0xC (e.g., 0x6C, 0x7C, 0x8C...)
- High nibble ranges 0x6-0xF (10 distinct values)
- Special marker values: 0x00, 0x01, 0x02, 0x03, 0x0B, 0x3B, 0x7B, 0xAB
- Purpose unknown - possibly terrain types, route segments, or checkpoint data

**Note:** Actual color mapping is stored in the DAT file within each map structure at offset `map_base + 0x1F27`, not in the LST file.

### Index Table (0x0398 - 0x03C7)

24 16-bit little-endian values organized as 4 rows × 6 columns:
- May reference offsets into the unknown data table
- Values appear to be packed indices

### UI Strings (0x03D6 - 0x04CF)

250 bytes containing null-terminated strings delimited by 0xAA bytes:
- 24 strings total per scene
- First ~12 entries: Car/vehicle names
- Remaining entries: UI labels (stats, actions, units)

Content differs completely between scenes:

**SCENE01 (Pacific):**
```
Mythos, CERV III, Diablo, Viper, 959, F40, Ferrari, Jaguar,
Lamborghini, Porsche, Mercedes, Maserati, RPM, Turbo, Wheelbase,
Suspension, Top Speed, Weight, Horsepower, Torque, Steering, Chassis, MPH, Test Drive
```

**SCENE02 (Cape Cod):**
```
Lotus, NSX, Vector, Corvette, 962, BMW, Countach, Stealth,
300ZX, Caspita, Alfa Romeo, Carrera, Brakes, Wipers, Fenders,
Carburetor, Lights, Tires, Rearview, Signal, Shifter, KPH, Yield, Exhaust
```

### Resource Table (0x04D0 - 0x0665)

Contains DAT file resource directory.

#### Header Entry (0x04D0 - 0x04DD)

14 bytes, special format:
```c
struct ResourceHeader {
    uint16_t unknown1;      // e.g., 2758
    uint16_t unknown2;      // e.g., 54487
    uint16_t marker;        // Always 0x0065 (101 = 'e')
    uint32_t offset;        // Always 0x00000000 (first resource)
    uint16_t size;          // Size of first resource (e.g., 666 = title)
    uint16_t padding;       // Always 0
};
```

#### Resource Entries (0x04DE onwards)

28 entries, each 14 bytes:
```c
struct ResourceEntry {
    uint16_t entry_size;    // Related to resource processing
    uint16_t checksum;      // Possibly CRC or computed value
    uint16_t marker;        // Always 0x0065 (101 = 'e')
    uint32_t dat_offset;    // Absolute offset into DAT file
    uint16_t size;          // Size of resource in bytes
    uint16_t padding;       // Always 0
};
```

#### Known Resource Types (by size)

| Size   | Type           | Format  | Description                    |
|--------|----------------|---------|--------------------------------|
| 8504   | MAP            | Map     | Course map data (0x2137 bytes) |
| 337    | PALETTE        | Palette | 112-color palette (0x151)      |
| 7      | SIGNATURE      | Binary  | Developer signature "TJL 90" + 0xFF (appears 3× per map) |
| ~65000 | TILES          | 3D      | Terrain tile graphics (64997 for SCENE01, 64709 for SCENE02) |
| 449-459| ICON           | LZW+RLE | Menu icon graphic              |
| ~666   | TITLE          | LZW+RLE | Title screen data (not in resource table) |
| ~7500  | LZW_DATA       | LZW     | Compressed data (purpose varies) |
| ~5000  | LZW_DATA       | LZW     | Compressed data (purpose varies) |
| ~10000 | UNKNOWN        | ?       | Unknown format (not LZW)       |
| ~2500  | UNKNOWN        | ?       | Unknown format (first code > 256) |
| ~3500  | UNKNOWN        | ?       | Unknown format                 |

**Note:** Title graphic at offset 0x000 is NOT included in the resource table. It is loaded separately, likely via a hardcoded offset.

#### Resource Table Pattern

The resource table follows a consistent structure for scene files:

```
[0]  ICON (LZW+RLE)      - Menu icon graphic
[1]  TILES (3D)          - Terrain tile data
[2]  MAP                 - Course 1
[3]  PALETTE             - 112-color palette
[4-5] LZW data           - Additional compressed data
[6]  Unknown data
[7-8] SIGNATURE ×2       - "TJL 90" developer markers
[9-11] Various data
[12] MAP                 - Course 2
[13-15] SIGNATURE ×3     - "TJL 90" developer markers
[16] MAP                 - Course 3
[17] PALETTE
[18-19] LZW data
[20] MAP                 - Course 4
[21-23] SIGNATURE ×3
[24] MAP                 - Course 5
[25] PALETTE
[26-27] LZW data (images)
```

**Note:** The title graphic at DAT offset 0x000 is NOT in the resource table - it is loaded via hardcoded offset.

Example resource table for SCENE01.LST:
```
Idx  DAT Offset   Size    Type        Format
---  ----------  ------   ---------   -------
 0   0x00029A      449    ICON        LZW+RLE
 1   0x00045B    64997    TILES       3D
 2   0x010240     8504    MAP         Map
 3   0x012378      337    PALETTE     Palette
 4   0x0124C9     7531    LZW_DATA    LZW
 5   0x014234     4700    LZW_DATA    LZW
 ...
 7   0x017D67        7    SIGNATURE   "TJL 90"
 8   0x017D6E        7    SIGNATURE   "TJL 90"
...
12   0x01A1CC     8504    MAP         Map (Course 2)
13   0x01C304        7    SIGNATURE   "TJL 90"
14   0x01C30B        7    SIGNATURE   "TJL 90"
15   0x01C312        7    SIGNATURE   "TJL 90"
16   0x01C319     8504    MAP         Map (Course 3)
...
24   0x0236B2     8504    MAP         Map (Course 5)
```

---

## Car LST Files (C*.LST)

Size: 675 bytes

Car LST files index resources in the corresponding C*.DAT files, which contain car 3D models and related data.

### Structure

```
Offset    Size      Description
------    ----      -----------
0x0000    19        Car name (null-terminated, e.g., "Chevrolet CERV III")
0x0013    656       Binary data (offsets, sizes, configuration)
```

### Binary Data (0x0013 onwards)

The structure after the name is **not fully understood**. It contains 16-bit values that likely include:
- Offsets into the corresponding C*.DAT file
- Resource sizes
- Possibly car configuration/physics parameters

Example values from CCERV.LST:
```
Offset  Value   Notes
------  -----   -----
0x0013  5697    (0x1641)
0x0015   927    (0x039F)
0x0017  1104    (0x0450)
0x0019  5054    (0x13BE)
0x001B  7752    (0x1E48)
...
```

### Key Differences from Scene LST

- **No 14-byte resource entries** with the 0x65 marker
- **No route names** or course-specific sections
- **Different size** (675 bytes vs 1638 bytes)
- Structure is more compact and less understood

---

## Implementation Notes

### Reading the Resource Table

```python
def read_scene_resource_table(lst_data):
    """Parse resource table from scene LST file."""
    resources = []

    # Skip to resource table
    offset = 0x4D0

    # Read header entry
    header_size = struct.unpack_from('<H', lst_data, offset + 10)[0]

    # Read regular entries starting at 0x4DE
    offset = 0x4DE
    while offset + 14 <= len(lst_data):
        entry_size = struct.unpack_from('<H', lst_data, offset)[0]
        checksum = struct.unpack_from('<H', lst_data, offset + 2)[0]
        marker = struct.unpack_from('<H', lst_data, offset + 4)[0]
        dat_offset = struct.unpack_from('<I', lst_data, offset + 6)[0]
        size = struct.unpack_from('<H', lst_data, offset + 10)[0]
        padding = struct.unpack_from('<H', lst_data, offset + 12)[0]

        # Validate entry
        if marker != 0x65 or padding != 0:
            break

        resources.append({
            'offset': dat_offset,
            'size': size,
            'checksum': checksum
        })

        offset += 14

    return resources
```

### Marker Byte

The marker value 0x65 (101 decimal) in resource entries is the ASCII code for 'e', possibly standing for "entry" or used as a validation signature.

---

## References

- LST viewer tool: `src/tools/lstviewer/lstviewer.ts` (run: `npm run lstview -- <file>`)
- Implementation: `src/shared/extract.js`
- Forum discussion: http://www.accursedfarms.com/forums/viewtopic.php?f=63&t=5960
