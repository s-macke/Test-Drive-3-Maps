; sub_CA8 loads a 0x150-byte block (112 RGB triples) into the palette buffer at dseg:0B9A + 3*byte_280DC.
; dseg:0B9A is offset +0x30 from dseg:0B6A, so this fills DAC entries 16..127 (leaving 0..15 intact).
; Tries sub_141E first (table lookup + seek) to get a handle/size; otherwise opens arg_0 via sub_C790.
; On open failure it calls sub_84C (fatal error path). On success it may call sub_C7A2 to get file size.
; If the table entry provides word_2DB58, this routine stores (word_2DB58-1) in var_2 but does not use it.
; Reads via sub_C7C8, closes via sub_C7E1, and optionally calls sub_CB52 when word_2D628==0x13 and word_1F166!=5.
; sub_CB52 copies the full 0x300-byte palette from dseg:0B6A to CS:000A and sub_CA08 writes it to VGA DAC.
