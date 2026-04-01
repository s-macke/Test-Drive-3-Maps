; sub_CB52 copies 0x300 bytes (256 RGB triples) from dseg:0B6A into CS:000A.
; Calls sub_CA08 to stream the palette to ports 3C8h/3C9h (VGA DAC), in 32-entry chunks.
; Palette buffer at dseg:0B6A holds all 256 entries; sub_CA8 updates entries 16..127 before this flush.
