; sub_14D99 - Tile position lookup and grid navigation
;
; This function calculates tile positions from player coordinates and
; performs lookups into the tile grid. Used for determining which
; tile the player is currently on and adjacent tiles.
;
; ## Purpose
; - Convert world coordinates to tile grid indices
; - Read tile data from the 32x16 tile grid
; - Track tile transitions for gameplay events
;
; ## Key Operations
;
; ### Tile Grid Access
; ```asm
; mov ax, [bx-6A83h]      ; Read tile entry (2 bytes: ID + rotation|height)
; ```
;
; ### Position Calculations
; ```asm
; add bx, 1000h           ; Offset for grid positioning (4096 world units per tile)
; xchg bl, bh             ; Swap bytes for row/column extraction
; and bx, 0E0h            ; Row mask extraction
; and bx, 0C0h            ; Rotation bits mask (0xC0 = 11000000b)
; ```
;
; ### Tile ID Range Checks
; The function checks for special tile IDs in the 0x70-0x77 range:
; ```asm
; cmp al, 77h             ; Upper bound check
; cmp al, 70h             ; Lower bound check
; cmp al, 73h             ; Mid-range check
; ; These appear to be special road/surface tile types
; ```
;
; ## Data Structure References
; - [bx-6A83h] : Tile grid data access (dseg:6A82)
; - word_28484 : Current player X position
; - word_28486 : Current player Y position
; - word_28488 : Current player heading/direction
; - word_2AD1E : Last processed tile X index
; - word_2AD20 : Last processed tile Y index
;
; ## Related Functions
; - sub_13132 (seg006_52E2_sub) : Main tile processing
; - sub_14D84 : Helper function called for tile updates
;
; ## Map Format Reference
; See map-format.md:
; - Tile grid at offset 0x00DF (32 columns x 16 rows)
; - Tile spacing: 4096 world units (0x1000)
