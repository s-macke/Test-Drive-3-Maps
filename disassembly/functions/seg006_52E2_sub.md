; sub_13132 - Main tile/map processing function for map navigation and collision
;
; This is the primary function that processes tile grid data during gameplay.
; It handles tile entry parsing, rotation extraction, height calculation,
; and tile set selection based on tile IDs.
;
; ## Tile Entry Format
; Each tile in the 32x16 grid is stored as 2 bytes:
;   Byte 0: Tile ID (0x00-0xFF)
;   Byte 1: [7:6] Rotation | [5:0] Height
;
; ## Key Operations
;
; ### Rotation Extraction (bits 7:6)
; ```asm
; and al, 0C0h            ; 0xC0 = 11000000b
; ; Result: 0x00=0deg, 0x40=90deg, 0x80=180deg, 0xC0=270deg CW
; ```
;
; ### Height/Index Extraction (bits 5:0)
; ```asm
; and cx, 3Fh             ; 0x3F = 00111111b - lower 6 bits
; ```
;
; ### Tile Set Selection
; ```asm
; cmp ah, 40h             ; Threshold at 0x40 (64)
; ; ID < 0x40: tiles2 (scene-specific from SCENE0x.DAT)
; ; ID >= 0x40: tiles1 (shared from DATAB.DAT), subtract 0x40 for index
; ```
;
; ### Grid Position Calculations
; ```asm
; and ax, 1Fh             ; Column mask: 0-31 (5 bits)
; and ax, 1E0h            ; Row mask: 0x1E0 = 480 (bits 5-8 for 16 rows)
; ```
;
; ## Data Structure References
; - [bx-6A83h] / [di-6A82h] : Tile grid data (dseg:6A82)
; - [bx-53BBh] : Current tile position index
; - [bx-527Bh] : Tile state/rotation storage
;
; ## Related Functions
; - sub_14D99 (seg006_6F49_sub) : Tile position lookup
; - sub_11408 (seg006_35B8_sub) : Rendering buffer setup
;
; ## Map Format Reference
; See map-format.md for tile grid structure (offset 0x00DF, 1024 bytes)
