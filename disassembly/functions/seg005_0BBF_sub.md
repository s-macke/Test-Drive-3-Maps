; sub_CADF builds a 0x180-byte RGB table (128 colors * 3) at CS:000Ah.
; Source bytes at CS:0B6Ah scaled by DL (0..0F) then used by sub_CA45.
; Outer loop runs DL from 0Fh down to 0, updating DAC each pass.
