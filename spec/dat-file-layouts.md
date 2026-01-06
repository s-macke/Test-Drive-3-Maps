# DAT File Layouts

File offset tables for Test Drive III data files.

## SCENE01.DAT (Pacific Coast)

| Offset Range          | Size     | Filename | Format  | Description                              |
|-----------------------|----------|----------|---------|------------------------------------------|
| `0x00000 - 0x00299`   | `0x0299` |          | LZW+RLE | Title graphic (Pacific Yosemite)         |
| `0x0029A - 0x0045A`   | `0x01C0` |          | LZW+RLE | Icon graphic in main menu                |
| `0x0045B - 0x1023F`   | `0xFDE4` |          | 3D      | Tiles                                    |
| `0x10240 - 0x12377`   | `0x2137` |          | Map     | First map                                |
| `0x12378 - 0x124C8`   | `0x0150` |          | Palette | 112-color palette                        |
| `0x124C9 - 0x14233`   | `0x1D6A` |          | LZW     | Unknown                                  |
| `0x14234 - 0x1548F`   | `0x125B` |          | LZW     | Unknown                                  |
| `0x15490 - 0x17D66`   | `0x28D6` |          |         | Unknown                                  |
| `0x17D67 - 0x17D6D`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x17D6E - 0x17D74`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x17D75 - 0x18B9E`   | `0x0E29` |          |         | Unknown                                  |
| `0x18B9F - 0x257E9`   | `0xCC4A` |          |         | Unknown (not loaded)                     |
| `0x18B9F`             | `0x09A0` |          |         | Unknown                                  |
| `0x19540`             | `0x0C8B` |          |         | Unknown                                  |
| `0x1A1CC`             | `0x2137` |          | Map     | Second map                               |
| `0x1C304 - 0x1C30A`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x1C30B - 0x1C311`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x1C312 - 0x1C318`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x1C319`             | `0x2137` |          | Map     | Third map                                |
| `0x1E451`             | `0x0150` |          | Palette | 112-color palette                        |
| `0x1E5A2`             | `0x1C09` |          | LZW     | Unknown                                  |
| `0x201AC`             | `0x13B8` |          | LZW     | Unknown                                  |
| `0x21565`             | `0x2137` |          | Map     | Fourth map                               |
| `0x2369D - 0x236A3`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x236A4 - 0x236AA`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x236AB - 0x236B1`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x236B2`             | `0x2137` |          | Map     | Fifth map                                |
| `0x257EA - 0x2593A`   | `0x0150` |          | Palette | 112-color palette                        |
| `0x2593B - 0x28591`   | `0x2C56` |          | LZW+RLE | Second image                             |
| `0x28592 - 0x295E4`   | `0x1052` |          | LZW+RLE | Second image (continued)                 |

## SCENE02.DAT (Cape Cod)

| Offset Range          | Size     | Filename | Format  | Description                              |
|-----------------------|----------|----------|---------|------------------------------------------|
| `0x00000 - 0x002BC`   | `0x02BC` |          | LZW+RLE | Title graphic                            |
| `0x002BD - 0x00487`   | `0x01CA` |          | LZW+RLE | Icon graphic                             |
| `0x00488 - 0x1014C`   | `0xFCC4` |          | 3D      | Tiles                                    |
| `0x1014D`             | `0x2137` |          | Map     | First map (at 0x1022C)                   |
| `0x12285 - 0x1228B`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x1228C - 0x12292`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x12293 - 0x12299`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x1229A`             | `0x30B2` |          |         | Unknown                                  |
| `0x1534D`             | `0x7DCC` |          | 3D      | More objects                             |
| `0x1D11A`             | `0x1E6E` |          |         | Unknown                                  |
| `0x1EF89`             | `0x0AE0` |          |         | Unknown                                  |
| `0x1FA6A`             | `0x0DA6` |          |         | Unknown                                  |
| `0x20811`             | `0x0D7D` |          |         | Unknown                                  |
| `0x2158F`             | `0x2137` |          | Map     | Second map                               |
| `0x236C7`             | `0x0150` |          | Palette | 112-color palette                        |
| `0x23818`             | `0x2171` |          | LZW     | Unknown                                  |
| `0x2598A`             | `0x08E8` |          | LZW     | Unknown                                  |
| `0x26273`             | `0x2137` |          | Map     | Third map                                |
| `0x283AB - 0x283B1`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x283B2 - 0x283B8`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x283B9 - 0x283BF`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x283C0`             | `0x2137` |          | Map     | Fourth map                               |
| `0x2A4F8`             | `0x0150` |          | Palette | 112-color palette                        |
| `0x2A649`             | `0x2318` |          | LZW     | Unknown                                  |
| `0x2C962`             | `0x0F19` |          | LZW     | Unknown                                  |
| `0x2D87C`             | `0x2137` |          | Map     | Fifth map                                |
| `0x2F9B4`             | `0x0150` |          | Palette | 112-color palette                        |
| `0x2FB05`             | `0x27DA` |          | LZW     | Unknown                                  |
| `0x322E0`             | `0x0F6A` |          | LZW     | Unknown                                  |

## DATAA.DAT

| Offset    | Size     | Filename      | Format  | Description                              |
|-----------|----------|---------------|---------|------------------------------------------|
| `0x00000` | `0x0150` |               | Palette | 5th item loaded, 112-color palette       |
| `0x00151` | `0x0980` |               | LZW     | 7th item loaded                          |
| `0x00AD2` | `0x0E9E` |               |         | 6th item loaded                          |
| `0x01971` | `0x0150` | TITLCOLR.BIN? | Palette | Intro, 112-color palette                 |
| `0x01AC2` | `0x2CE7` | TITLE1.LZ?    | LZW+RLE | Intro                                    |
| `0x047AA` | `0x2556` | TITLE2.LZ?    | LZW+RLE | Intro                                    |
| `0x06D01` | `0x25AC` | TITLEANI.LZ?  | LZW+RLE | Intro                                    |
| `0x092AE` | `0x08C2` | TITLELET.LZ?  | LZW+RLE | Intro title                              |
| `0x09B71` | `0x3BE5` | TITLECAR.LZ?  | LZW+RLE | Intro                                    |
| `0x0D757` | `0x14A7` | TITLEL2.LZ?   | LZW+RLE | Intro title                              |
| `0x0EBFF` | `0x0150` | TITL2COL.BIN? | Palette | Intro, 112-color palette                 |
| `0x0ED50` | `0x0150` | CREDCOLR.BIN? | Palette | Intro credits                            |
| `0x0EEA1` | `0x33D9` | CREDITA.LZ?   | LZW+RLE | Intro credits                            |
| `0x1227B` | `0x38F7` | CREDITB.LZ?   | LZW+RLE | Intro credits                            |
| `0x15B73` | `0x344E` | CREDITC.LZ?   | LZW+RLE | Intro credits                            |
| `0x18FC2` | `0x0112` |               | LZW     | 1st item loaded                          |
| `0x190D5` | `0x0373` |               | LZW     | 3rd item loaded                          |
| `0x19449` | `0x12D1` |               | LZW     | 2nd item loaded                          |
| `0x1A71B` | `0x0F3D` |               | LZW     | Unknown                                  |
| `0x1B659` | `0x1CFF` |               | LZW     | 4th item loaded                          |
| `0x1D359` | `0x136C` |               | LZW     | Unknown                                  |

## DATAB.DAT

| Offset Range          | Size     | Filename      | Format  | Description                              |
|-----------------------|----------|---------------|---------|------------------------------------------|
| `0x00000 - 0x00150`   | `0x0150` | COPCOLR.BIN   | Palette | 112-color palette                        |
| `0x00151 - 0x03084`   | `0x2F33` | COPB.LZ       | LZW+RLE | Police image                             |
| `0x03085 - 0x05C16`   | `0x2B91` | COPA.LZ       | LZW+RLE | Police image                             |
| `0x05C17 - 0x06F1D`   | `0x1306` | COPSEQ.LZ     | LZW+RLE | Police light animation                   |
| `0x06F1E - 0x071E6`   | `0x02C8` |               |         | Unknown                                  |
| `0x071E7 - 0x07337`   | `0x0150` | KEYCOLR.BIN   | Palette | 112-color palette                        |
| `0x07338 - 0x08F32`   | `0x1BFA` | KEYS.LZ       | LZW+RLE | Car keys during password check           |
| `0x08F33 - 0x0A4D0`   | `0x159D` |               |         | Unknown                                  |
| `0x0A4D1 - 0x0B8BC`   | `0x13EB` | SELECT.LZ?    | LZW+RLE | Background image of menu                 |
| `0x0B8BD - 0x0EDAC`   | `0x34EF` | DETAIL1.LZ?   | LZW+RLE | Loaded when menu is loaded               |
| `0x0EDAD - 0x121BE`   | `0x3411` | DIFFLEVA.LZ?  | LZW+RLE | Skill driver option image                |
| `0x121BF - 0x15413`   | `0x3254` | DIFFLEVB.LZ?  | LZW+RLE | Skill driver option image                |
| `0x15414 - 0x15514`   | `0x0100` |               | LZW     | Unknown                                  |
| `0x15515 - 0x15664`   | `0x0150` | DIFFCOLR.BIN? | Palette | 112-color palette                        |
| `0x15666`             | `0x31E2` | DIFFLEVC.LZ?  | LZW     | Unknown                                  |
| `0x18849`             | `0x3535` | DETAIL2.LZ?   | LZW     | Unknown                                  |
| `0x1BD7F`             | `0x2FAC` | SSBJ.LZ?      | LZW     | Unknown                                  |
| `0x1ED2C - 0x21602`   | `0x28D6` |               |         | Something for maps/tiles                 |
| `0x21603 - 0x2373A`   | `0x2137` |               | Map     | Title map                                |
| `0x2373B - 0x32F19`   | `0xF7DE` |               | 3D      | Tiles                                    |
| `0x32F1A - 0x3AD04`   | `0x7DEA` |               | 3D      | Objects                                  |
| `0x3AD05 - 0x3CB6C`   | `0x1E67` |               |         | Unknown                                  |

## DATAC.DAT

| Offset    | Size     | Filename     | Format  | Description                                    |
|-----------|----------|--------------|---------|------------------------------------------------|
| `0x00000` | `0x0150` | SELCOLR.BIN? | Palette | 112-color palette (for MPH HUD text)           |
| `0x00151` | `0x0150` | OTWCOL.BIN?  | Palette | 112-color palette (for KPH HUD text)           |
| `0x002A2` | `0x00F7` |              | LZW+RLE | HUD text "TIME MPH POINTS" 184×5 (black + red) |
| `0x0039A` | `0x00FA` |              | LZW+RLE | HUD text "TIME KPH POINTS" 184×5 (black + red) |
| `0x00495` | `0x0150` |              | Palette | 112-color palette (for compass)                |
| `0x005E6` | `0x0112` | COMPASS.LZ?  | LZW+RLE | Compass strip 152×8                            |
