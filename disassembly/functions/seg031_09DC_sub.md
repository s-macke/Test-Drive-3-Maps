; sub_1983C multiplies two 32-bit values: (arg_2:arg_0) * (arg_6:arg_4).
; Fast path when both high words are zero uses 16x16 -> 32 (DX:AX).
; General path accumulates low product and cross terms; high-high term is discarded.
