; sub_15BC computes a 16-bit rolling hash over a string.
; hash = (hash * arg_2 + byte[i]) mod 0x10000, processed from end to start.
; Uses sub_19648 to get string length; returns AX=hash, DX=0.
