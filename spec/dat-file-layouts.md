# DAT File Layouts

File offset tables for Test Drive III data files.

## SCENE01.DAT (Pacific Coast)

| Offset Range          | Size     | Filename | Format  | Description                                          |
|-----------------------|----------|----------|---------|------------------------------------------------------|
| `0x00000 - 0x00299`   | `0x0299` |          | Image   | Title text "PACIFIC - YOSEMITE" 320×33               |
| `0x0029A - 0x0045A`   | `0x01C0` |          | Image   | Icon (same text, different font) 72×40               |
| `0x0045B - 0x1023F`   | `0xFDE4` |          | 3D      | Tiles                                                |
| `0x10240 - 0x12377`   | `0x2137` |          | Map     | First map                                            |
| `0x12378 - 0x124C8`   | `0x0150` |          | Palette | 112-color palette                                    |
| `0x124C9 - 0x14233`   | `0x1D6A` |          | Image   | Unknown (16000 pixels; likely 320×50)                |
| `0x14234 - 0x1548F`   | `0x125B` |          | Image   | Unknown (6080 pixels; likely 320×19)                 |
| `0x15490 - 0x17D66`   | `0x28D6` |          |         | Same unidentified non-image format as `SCENETT1.DAT` |
| `0x17D67 - 0x17D6D`   | `0x0007` |          | Sig     | Developer signature "TJL 90"                         |
| `0x17D6E - 0x17D74`   | `0x0007` |          | Sig     | Developer signature "TJL 90"                         |
| `0x17D75 - 0x18B9E`   | `0x0E29` |          |         | Unknown                                              |
| `0x18B9F - 0x257E9`   | `0xCC4A` |          |         | Unknown (not loaded)                                 |
| `0x18B9F`             | `0x09A0` |          |         | Unknown                                              |
| `0x19540`             | `0x0C8B` |          |         | Unknown                                              |
| `0x1A1CC`             | `0x2137` |          | Map     | Second map                                           |
| `0x1C304 - 0x1C30A`   | `0x0007` |          | Sig     | Developer signature "TJL 90"                         |
| `0x1C30B - 0x1C311`   | `0x0007` |          | Sig     | Developer signature "TJL 90"                         |
| `0x1C312 - 0x1C318`   | `0x0007` |          | Sig     | Developer signature "TJL 90"                         |
| `0x1C319`             | `0x2137` |          | Map     | Third map                                            |
| `0x1E451`             | `0x0150` |          | Palette | 112-color palette                                    |
| `0x1E5A2`             | `0x1C09` |          | Image   | Unknown (16000 pixels; likely 320×50)                |
| `0x201AC`             | `0x13B8` |          | Image   | Unknown (6080 pixels; likely 320×19)                 |
| `0x21565`             | `0x2137` |          | Map     | Fourth map                                           |
| `0x2369D - 0x236A3`   | `0x0007` |          | Sig     | Developer signature "TJL 90"                         |
| `0x236A4 - 0x236AA`   | `0x0007` |          | Sig     | Developer signature "TJL 90"                         |
| `0x236AB - 0x236B1`   | `0x0007` |          | Sig     | Developer signature "TJL 90"                         |
| `0x236B2`             | `0x2137` |          | Map     | Fifth map                                            |
| `0x257EA - 0x2593A`   | `0x0150` |          | Palette | 112-color palette                                    |
| `0x2593B - 0x28591`   | `0x2C56` |          | Image   | Landscape 320×50 (palette unknown)                   |
| `0x28592 - 0x295E4`   | `0x1052` |          | Image   | Landscape 320×19 (palette unknown)                   |

## SCENE02.DAT (Cape Cod)

| Offset Range          | Size     | Filename | Format  | Description                              |
|-----------------------|----------|----------|---------|------------------------------------------|
| `0x00000 - 0x002BC`   | `0x02BC` |          | Image   | Title text "CAPE COD - NIAGARA" 320×33   |
| `0x002BD - 0x00487`   | `0x01CA` |          | Image   | Icon (same text, different font) 72×40   |
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
| `0x23818`             | `0x2171` |          | Image   | Unknown (16000 pixels; likely 320×50)    |
| `0x2598A`             | `0x08E8` |          | Image   | Unknown (6080 pixels; likely 320×19)     |
| `0x26273`             | `0x2137` |          | Map     | Third map                                |
| `0x283AB - 0x283B1`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x283B2 - 0x283B8`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x283B9 - 0x283BF`   | `0x0007` |          | Sig     | Developer signature "TJL 90"             |
| `0x283C0`             | `0x2137` |          | Map     | Fourth map                               |
| `0x2A4F8`             | `0x0150` |          | Palette | 112-color palette                        |
| `0x2A649`             | `0x2318` |          | Image   | Unknown (16000 pixels; likely 320×50)    |
| `0x2C962`             | `0x0F19` |          | Image   | Unknown (6080 pixels; likely 320×19)     |
| `0x2D87C`             | `0x2137` |          | Map     | Fifth map                                |
| `0x2F9B4`             | `0x0150` |          | Palette | 112-color palette                        |
| `0x2FB05`             | `0x27DA` |          | Image   | Landscape 320×50 (palette unknown)       |
| `0x322E0`             | `0x0F6A` |          | Image   | Landscape 320×19 (palette unknown)       |

## DATAA.DAT

| Offset    | Size     | Filename     | Format  | Description                                                  |
|-----------|----------|--------------|---------|--------------------------------------------------------------|
| `0x00000` | `0x0150` | ACCOCOLR.BIN | Palette | 5th item loaded, 112-color palette                           |
| `0x00151` | `0x0980` | ACCO.LZ      | Image   | "ACCOLADE PRESENTS" startup screen 320×200 (palette unknown) |
| `0x00AD2` | `0x0E9E` | THEME.MUS    | Music   | 6th item loaded                                              |
| `0x01971` | `0x0150` | TITLCOLR.BIN | Palette | Intro, 112-color palette                                     |
| `0x01AC2` | `0x2CE7` | TITLE1.LZ    | Image   | Building/tunnel 160×100 (palette unknown)                    |
| `0x047AA` | `0x2556` | TITLE2.LZ    | Image   | Building/tunnel 160×100 (palette unknown)                    |
| `0x06D01` | `0x25AC` | TITLELET.LZ  | Image   | Title text "Test Drive III..." 240×69 (palette unknown)      |
| `0x092AE` | `0x08C2` | TITLEL2.LZ   | Image   | Copyright text 256×19 (palette unknown)                      |
| `0x09B71` | `0x3BE5` | TITLEANI.LZ  | Image   | Car animation frames 320×66 (palette unknown)                |
| `0x0D757` | `0x14A7` | TITLECAR.LZ  | Image   | Red car front 128×54                                         |
| `0x0EBFF` | `0x0150` | TITL2COL.BIN | Palette | Intro, 112-color palette                                     |
| `0x0ED50` | `0x0150` | CREDCOLR.BIN | Palette | Intro credits                                                |
| `0x0EEA1` | `0x33D9` | CREDITA.LZ   | Image   | Credits 320×56 (palette unknown)                             |
| `0x1227B` | `0x38F7` | CREDITB.LZ   | Image   | Credits 320×65 (palette unknown)                             |
| `0x15B73` | `0x344E` | CREDITC.LZ   | Image   | Credits 320×65 (palette unknown)                             |
| `0x18FC2` | `0x0112` | COMPASS.LZ   | Image   | Compass strip 152×8                                          |
| `0x190D5` | `0x0373` | CHASE.LZ     | Image   | Camera view arrows 64×248                                    |
| `0x19449` | `0x12D1` | WATER.LZ     | Image   | Unknown (15360 pixels; resolution unresolved)                |
| `0x1A71B` | `0x0F3D` | WATEREGA.LZ  | Image   | Unknown (15360 pixels; resolution unresolved)                |
| `0x1B659` | `0x1CFF` | BROKE.LZ     | Image   | Broken windshield 320×96                                     |
| `0x1D359` | `0x136C` | BROKEGA.LZ   | Image   | Broken windshield (variant) 320×96                           |

## DATAB.DAT

| Offset Range          | Size     | Filename     | Format  | Description                                                     |
|-----------------------|----------|--------------|---------|-----------------------------------------------------------------|
| `0x00000 - 0x00150`   | `0x0150` | COPCOLR.BIN  | Palette | 112-color palette                                               |
| `0x00151 - 0x03084`   | `0x2F33` | COPA.LZ      | Image   | Police image 320×100 (palette unknown)                          |
| `0x03085 - 0x05C16`   | `0x2B91` | COPB.LZ      | Image   | Police image (bottom) 320×58 (palette unknown)                  |
| `0x05C17 - 0x06F1D`   | `0x1306` | COPSEQ.LZ    | Image   | Police light animation 128×90 (palette unknown)                 |
| `0x06F1E - 0x071E6`   | `0x02C8` | MASTERQ.BIN  |         | Unknown                                                         |
| `0x071E7 - 0x07337`   | `0x0150` | KEYCOLR.BIN  | Palette | 112-color palette                                               |
| `0x07338 - 0x08F32`   | `0x1BFA` | KEYS.LZ      | Image   | Car keys 192×144                                                |
| `0x08F33 - 0x0A4D0`   | `0x159D` | NEWWAVE.MUS  | Music   | Music resource                                                  |
| `0x0A4D1 - 0x0B8BC`   | `0x13EB` | SELECT.LZ    | Image   | Menu background 320×200                                         |
| `0x0B8BD - 0x0EDAC`   | `0x34EF` | DIFFLEVA.LZ  | Image   | Menu detail 320×56 (palette unknown)                            |
| `0x0EDAD - 0x121BE`   | `0x3411` | DIFFLEVB.LZ  | Image   | Skill driver option 320×65 (palette unknown)                    |
| `0x121BF - 0x15413`   | `0x3254` | DIFFLEVC.LZ  | Image   | Car bottom 320×65 (palette unknown)                             |
| `0x15414 - 0x15514`   | `0x0100` | SSBJ.LZ      | Image   | Unknown (decompresses to 1120 pixels; width unresolved)         |
| `0x15515 - 0x15664`   | `0x0150` | TOPCOLR.BIN  | Palette | 112-color palette                                               |
| `0x15666`             | `0x31E2` | TOPSCORA.LZ  | Image   | 320×67 (palette unknown)                                        |
| `0x18849`             | `0x3535` | TOPSCORB.LZ  | Image   | Car top 320×66 (palette unknown)                                |
| `0x1BD7F`             | `0x2FAC` | TOPSCORC.LZ  | Image   | Car bottom 320×67 (palette unknown)                             |
| `0x1ED2C - 0x21602`   | `0x28D6` | SCENETT1.DAT |         | Same unidentified non-image format as `SCENE01` `0x15490` chunk |
| `0x21603 - 0x2373A`   | `0x2137` | SCENETTA.DAT | Map     | Title map                                                       |
| `0x2373B - 0x32F19`   | `0xF7DE` | SCENETTT.BIN | 3D      | Tiles                                                           |
| `0x32F1A - 0x3AD04`   | `0x7DEA` | SCENETT0.BIN | 3D      | Objects                                                         |
| `0x3AD05 - 0x3CB6C`   | `0x1E67` | SCENETTP.BIN |         | Unknown                                                         |

## DATAC.DAT

| Offset    | Size     | Filename     | Format  | Description                                    |
|-----------|----------|--------------|---------|------------------------------------------------|
| `0x00000` | `0x0150` | SELCOLR.BIN  | Palette | 112-color palette (for MPH HUD text)           |
| `0x00151` | `0x0150` | DIFFCOLR.BIN | Palette | 112-color palette (for KPH HUD text)           |
| `0x002A2` | `0x00F7` | DETAIL1.LZ   | Image   | HUD text "TIME MPH POINTS" 184×5 (black + red) |
| `0x0039A` | `0x00FA` | DETAIL2.LZ   | Image   | HUD text "TIME KPH POINTS" 184×5 (black + red) |
| `0x00495` | `0x0150` | OTWCOL.BIN   | Palette | 112-color palette (for compass)                |
| `0x005E6` | `0x0112` | COMPASS.LZ   | Image   | Compass strip 152×8                            |

## CCERV.DAT

| Offset    | Size      | Filename     | Format  | Description                                  |
|-----------|-----------|--------------|---------|----------------------------------------------|
| `0x00000` | `0x00151` | CCERVSC.BIN  | Palette | 112-color palette for stats/selection images |
| `0x00151` | `0x00151` | CCERVCOL.BIN | Palette | 112-color palette for cockpit/detail images  |
| `0x002A2` | `0x00061` | CCERVSIC.BIN | Palette | 32-color subpalette for `CCERV.SIC`          |
| `0x00303` | `0x01B92` | CCERV.ICN    | Image   | 208×83                                       |
| `0x01E95` | `0x00491` | CCERV.SIC    | Image   | 72×40                                        |
| `0x02326` | `0x014C9` | CCERV.BIC    | Image   | 112×83                                       |
| `0x037EF` | `0x02296` | CCERV.SID    | Image   | 112×117                                      |
| `0x05A85` | `0x0059D` | CCERV.ETC    | Image   | 56×72                                        |
| `0x06022` | `0x0054E` | CCERV.TOP    | Image   | 320×16                                       |
| `0x06570` | `0x015AE` | CCERV1.BOT   | Image   | 320×44                                       |
| `0x07B1E` | `0x027B7` | CCERV2.BOT   | Image   | 320×44                                       |
| `0x0A2D5` | `0x015CC` | CCERVL.BOT   | Image   | 168×48                                       |
| `0x0B8A1` | `0x016C4` | CCERVR.BOT   | Image   | 168×48                                       |
| `0x0CF65` | `0x00862` | CCERVFL1.LZ  | Image   | 208×117                                      |
| `0x0D7C7` | `0x00A8E` | CCERVFL2.LZ  | Image   | 208×200                                      |

## CCNSX.DAT

| Offset    | Size      | Filename     | Format  | Description                                  |
|-----------|-----------|--------------|---------|----------------------------------------------|
| `0x00000` | `0x00151` | CCNSXSC.BIN  | Palette | 112-color palette for stats/selection images |
| `0x00151` | `0x00151` | CCNSXCOL.BIN | Palette | 112-color palette for cockpit/detail images  |
| `0x002A2` | `0x00061` | CCNSXSIC.BIN | Palette | 32-color subpalette for `CCNSX.SIC`          |
| `0x00303` | `0x01E9F` | CCNSX.ICN    | Image   | 208×83                                       |
| `0x021A2` | `0x00446` | CCNSX.SIC    | Image   | 72×40                                        |
| `0x025E8` | `0x0142A` | CCNSX.BIC    | Image   | 112×83                                       |
| `0x03A12` | `0x01508` | CCNSX.SID    | Image   | 112×116                                      |
| `0x04F1A` | `0x00545` | CCNSX.ETC    | Image   | 56×72                                        |
| `0x0545F` | `0x00654` | CCNSX.TOP    | Image   | 320×16                                       |
| `0x05AB3` | `0x01DC5` | CCNSX1.BOT   | Image   | 320×44                                       |
| `0x07878` | `0x02088` | CCNSX2.BOT   | Image   | 320×44                                       |
| `0x09900` | `0x01305` | CCNSXL.BOT   | Image   | 168×48                                       |
| `0x0AC05` | `0x01317` | CCNSXR.BOT   | Image   | 168×48                                       |
| `0x0BF1C` | `0x007E9` | CCNSXFL1.LZ  | Image   | 208×117                                      |
| `0x0C705` | `0x008D6` | CCNSXFL2.LZ  | Image   | 208×200                                      |

## CDIAB.DAT

| Offset    | Size      | Filename     | Format  | Description                                   |
|-----------|-----------|--------------|---------|-----------------------------------------------|
| `0x00000` | `0x00151` | CDIABSC.BIN  | Palette | 112-color palette for stats/selection images  |
| `0x00151` | `0x00151` | CDIABCOL.BIN | Palette | 112-color palette for cockpit/detail images   |
| `0x002A2` | `0x00061` | CDIABSIC.BIN | Palette | 32-color subpalette for `CDIAB.SIC`           |
| `0x00303` | `0x02533` | CDIAB.ICN    | Image   | 208×83                                        |
| `0x02836` | `0x00363` | CDIAB.SIC    | Image   | 72×40                                         |
| `0x02B99` | `0x00CF0` | CDIAB.BIC    | Image   | 112×83                                        |
| `0x03889` | `0x01BE6` | CDIAB.SID    | Image   | 112×116                                       |
| `0x0546F` | `0x00433` | CDIAB.ETC    | Image   | 56×72                                         |
| `0x058A2` | `0x00474` | CDIAB.TOP    | Image   | 320×16                                        |
| `0x05D16` | `0x01292` | CDIAB1.BOT   | Image   | 320×44                                        |
| `0x06FA8` | `0x019EE` | CDIAB2.BOT   | Image   | 320×44                                        |
| `0x08996` | `0x0107F` | CDIABL.BOT   | Image   | 168×48                                        |
| `0x09A15` | `0x01103` | CDIABR.BOT   | Image   | 168×48                                        |
| `0x0AB18` | `0x00855` | CDIABFL1.LZ  | Image   | 208×117                                       |
| `0x0B36D` | `0x008DF` | CDIABFL2.LZ  | Image   | 208×200                                       |

## CMYTH.DAT

| Offset    | Size      | Filename     | Format   | Description                                   |
|-----------|-----------|--------------|----------|-----------------------------------------------|
| `0x00000` | `0x00151` | CMYTHSC.BIN  | Palette  | 112-color palette for stats/selection images  |
| `0x00151` | `0x00151` | CMYTHCOL.BIN | Palette  | 112-color palette for cockpit/detail images   |
| `0x002A2` | `0x00061` | CMYTHSIC.BIN | Palette  | 32-color subpalette for `CMYTH.SIC`           |
| `0x00303` | `0x02472` | CMYTH.ICN    | Image    | 208×83                                        |
| `0x02775` | `0x00463` | CMYTH.SIC    | Image    | 72×47                                         |
| `0x02BD8` | `0x01800` | CMYTH.BIC    | Image    | 112×83                                        |
| `0x043D8` | `0x02008` | CMYTH.SID    | Image    | 112×116                                       |
| `0x063E0` | `0x004B0` | CMYTH.ETC    | Image    | 56×72                                         |
| `0x06890` | `0x00536` | CMYTH.TOP    | Image    | 320×16                                        |
| `0x06DC6` | `0x01EC1` | CMYTH1.BOT   | Image    | 320×44                                        |
| `0x08C87` | `0x023B8` | CMYTH2.BOT   | Image    | 320×44                                        |
| `0x0B03F` | `0x014EB` | CMYTHL.BOT   | Image    | 168×48                                        |
| `0x0C52A` | `0x014C0` | CMYTHR.BOT   | Image    | 168×48                                        |
| `0x0D9EA` | `0x00815` | CMYTHFL1.LZ  | Image    | 208×117                                       |
| `0x0E1FF` | `0x008AE` | CMYTHFL2.LZ  | Image    | 208×200                                       |

## CSTEL.DAT

| Offset    | Size      | Filename     | Format    | Description                                   |
|-----------|-----------|--------------|-----------|-----------------------------------------------|
| `0x00000` | `0x00151` | CSTELSC.BIN  | Palette   | 112-color palette for stats/selection images  |
| `0x00151` | `0x00151` | CSTELCOL.BIN | Palette   | 112-color palette for cockpit/detail images   |
| `0x002A2` | `0x00061` | CSTELSIC.BIN | Palette   | 32-color subpalette for `CSTEL.SIC`           |
| `0x00303` | `0x01D4A` | CSTEL.ICN    | Image     | 208×83                                        |
| `0x0204D` | `0x004E5` | CSTEL.SIC    | Image     | 72×40                                         |
| `0x02532` | `0x0124D` | CSTEL.BIC    | Image     | 112×83                                        |
| `0x0377F` | `0x014C7` | CSTEL.SID    | Image     | 112×116                                       |
| `0x04C46` | `0x00567` | CSTEL.ETC    | Image     | 56×72                                         |
| `0x051AD` | `0x004F9` | CSTEL.TOP    | Image     | 320×16                                        |
| `0x056A6` | `0x01C30` | CSTEL1.BOT   | Image     | 320×44                                        |
| `0x072D6` | `0x021F3` | CSTEL2.BOT   | Image     | 320×44                                        |
| `0x094C9` | `0x012A1` | CSTELL.BOT   | Image     | 168×48                                        |
| `0x0A76A` | `0x012D1` | CSTELR.BOT   | Image     | 168×48                                        |
| `0x0BA3B` | `0x008DA` | CSTELFL1.LZ  | Image     | 208×117                                       |
| `0x0C315` | `0x0083A` | CSTELFL2.LZ  | Image     | 208×200                                       |
