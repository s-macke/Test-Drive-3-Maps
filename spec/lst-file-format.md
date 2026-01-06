# Test Drive 3 - LST File Format Specification

This document describes the .LST (list) files used in Test Drive III: The Passion (1990).

**Status:** Work in progress - structure is partially understood.

## Overview

LST files are binary resource index files that describe the contents and layout of corresponding .DAT files. Each major .DAT file has an associated .LST file.

## Known LST Files

| LST File    | Corresponding DAT  | Content Type              |
|-------------|--------------------|---------------------------|
| SCENE01.LST | SCENE01.DAT        | Pacific Coast course data |
| SCENE02.LST | SCENE02.DAT        | Cape Cod course data      |
| CCERV.LST   | CCERV.DAT          | Corvette car data         |
| CDIAB.LST   | CDIAB.DAT          | Diablo car data           |
| CMYTH.LST   | CMYTH.DAT          | Mythos car data           |
| CSTEL.LST   | CSTEL.DAT          | Stealth car data          |

## File Structure

### Scene LST Files (SCENE01.LST, SCENE02.LST)

Size: 1638 bytes

```
Offset  Size    Description
------  ----    -----------
0x0000  18      Course name (null-terminated string)
0x0012  varies  Binary header data (offsets? counts?)
0x004F  9       Unknown (observed: "111111111")
0x0058  varies  Route/section names (fixed-width strings)
0x0208  varies  Additional binary data
0x0398  varies  Index tables?
```

#### Embedded Strings

Scene LST files contain readable route names:
- "Scenic Coast", "Highway 101", "Highway 1", "Shortcut"
- "Coast Hills", "Highway 156"
- "Valley Farms", "Highway 33", "Highway 140"
- "Foothills", "Highway 49"
- "Sierra Vista", "Highway 120"
- "Section 6/7/8/9", "Subroute 1/2/3"

### Car LST Files (C*.LST)

Size: 675 bytes

```
Offset  Size    Description
------  ----    -----------
0x0000  18      Car name (null-terminated string)
                e.g., "Chevrolet CERV III"
0x0013  varies  Binary data (offsets into DAT file?)
```

## Binary Data Analysis

The binary sections appear to contain:

1. **16-bit little-endian values** - Likely offsets or sizes
2. **Resource indices** - References to data within the .DAT file
3. **Color/palette data** - Some sections contain values in VGA color range

### Example: CCERV.LST Header

```
Offset  Hex          Interpretation








------  ---          --------------
0x0000  "Chevrolet CERV III\0"  Car name
0x0013  41 16        0x1641 = 5697 (offset?)
0x0015  9f 03        0x039F = 927 (size?)
0x0017  50 04        0x0450 = 1104
0x0019  be 13        0x13BE = 5054
0x001B  48 1e        0x1E48 = 7752
...
```

### Example: SCENE01.LST Header

```
Offset  Hex          Interpretation
------  ---          --------------
0x0000  "Pacific - Yosemite\0"  Course name
0x0013  05 3c        0x3C05 = 15365
0x0015  03 5f        0x5F03 = 24323
0x0017  02 27        0x2702 = 9986
...
```

## Relationship to DAT Files

The LST file likely serves as an index/directory for the corresponding DAT file:
- Provides offsets to locate resources within the DAT
- Contains metadata (names, counts, sizes)
- May define the loading order for resources

## Open Questions

1. What is the exact structure of the binary header?
2. How do the offset values map to DAT file locations?
3. What do the repeated "111111111" bytes signify?
4. How are the route/section indices organized?
5. What is the relationship between LST entries and DAT resources?
6. Why do some cars have LST files but CCNSX.POB does not?

## References

- Implementation: `src/shared/extract.js` (comments reference "lst files")
