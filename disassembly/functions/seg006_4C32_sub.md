; sub_12A82 — per-frame polygon color resolver.
;
; Called from sub_12A39 in the render-prep chain (sub_1118F+23h). Walks the
; active runtime-polygon array once per frame and — for special render modes
; only — overwrites each polygon's 16-bit dither pair (runtime word 4, at
; [poly+8]). Most polygons (render mode < 4) are skipped and keep the dither
; pair populated by the load-time decoder.
;
; Per-polygon loop:
;   mov ax, es:[di+6]    ; word 3 of the 10-byte runtime polygon
;   and ah, 0F8h         ; ah = render-mode in bits 7:3 (the 5-bit field ×8)
;   ...dispatch on ah; ax may be overwritten with a literal dither pair...
;   mov es:[di+8], ax    ; write resolved pixel-pair (runtime word 4)
;   add di, 0Ah          ; advance by 10-byte runtime stride
;   loop loc_12A98
;
; Render-mode dispatch (ah = mode << 3, low→high):
;   ah < 20h    (mode 0-3)   -> return — leaves word 4 untouched
;   20h≤ah<28h  (mode 4)     -> 0E0Eh / 0404h / 0F0Fh by distance-fog flags
;   ah == 28h   (mode 5)     -> distance-fog path (loc_12B7A) using byte_2AA83
;   ah == 38h   (mode 7)     -> 0F0Fh at night, else 0          (sub-pixel headlights)
;   ah == 40h   (mode 8)     -> 0F0Fh or 0 by bit 2 of word_1F1B2
;   ah == 48h   (mode 9)     -> 0404h, or 0C0Ch if [bx-5C7Bh] has bit 15
;   48h<ah<58h  (mode 10)    -> NPC-car cycling: ax = word_2AC9D+3, capped 0Fh, fallback 9 (paint hue cycling)
;   ah == 58h   (mode 11)    -> brake-light state machine (byte_2ACB9 phase, byte_2ACBA pattern)
;                                — emits 0A0Ah / 0E0Eh / 0C0Ch / 0 by phase
;   ah == 60h   (mode 12)    -> 0808h, or 0C0Ch if byte_2ACC2 != 0 AND (word_2AD23^di)&2
;   60h<ah≤68h  (mode 13)    -> pattern-table lookup (dseg+0xD0CC / 0xD9B4 / sprite buffer)
;   ah > 68h                 -> return
;
; --- Pixel-pair encoding ---
;
; The scanline rasterizers (sub_11EA0, sub_15ADD, sub_12A82's downstream)
; consume word_2AA9B as a left/right pixel pair emitted via `rep stosw`:
;   0x0F0F = idx 0x0F twice          (EGA bright white, solid)
;   0x0808 = idx 0x08 twice          (gray, solid)
;   0x0C0C = idx 0x0C twice          (bright red, solid)
;   0x0E0E = idx 0x0E twice          (bright yellow, solid)
;   0x0404 = idx 0x04 twice          (dark red, solid)
;   0x0A0A = idx 0x0A twice          (bright green, solid)
; All hardcoded literals here happen to be `idx,idx` — solid (non-dithered)
; fills. Dither pairs `(a,b)` with a != b appear only for sky/fog (sub_11408)
; and for the load-time decoder of base material colors (not located yet).
;
; --- What word 3 actually encodes ---
;
; The 5-bit field in word 3 (bits 15:11) is a *render mode*, NOT a palette
; index. Empirically from CCERV.POB (Corvette, 112 polys):
;   mode 2  : 108 polys (normal flat-fill — base material color used)
;   mode 13 :   2 polys (line color from this branch's table lookup)
;   mode 9  :   1 poly
;   mode 0  :   1 poly
;
; The polygon's actual base material color (5-bit, 0..31) lives in
; **word 1 top-5 bits** (idx2 >> 11), duplicated in word 2 top-5 bits
; (idx3 >> 11). These two are identical in 112/112 polygons of CCERV.POB and
; 112/112 of CDIAB.POB.
;
; --- Implication for OBJ export / static viewer ---
;
; There is no 32-entry palette-index LUT to copy from the engine. The engine
; resolves material colors at object-load time (decoder TODO) and only
; overrides for the special modes above. Static export tooling must continue
; to use a hand-rolled `ColorIndex[5-bit]` mapping derived empirically.
