; sub_1A9D8 flushes buffered bytes to a handle using int 21h AH=40h.
; Updates the byte count and propagates DOS errors; also used for direct writes in the sub_1A930 chunk.
