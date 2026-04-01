; sub_164C returns a hash pair for a string (arg_0).
; DX = sub_15BC(arg_0, 0x101) rolling hash; AX = sub_1606(arg_0) index*byte sum.
; Used by sub_141E to match table keys (key_low=AX, key_high=DX).
; Note: the 0x10F value pushed before sub_1606 is unused there.
