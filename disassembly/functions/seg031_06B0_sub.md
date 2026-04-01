; sub_19510 checks a far pointer (arg_0); if null returns.
; Otherwise sets bit0 in the byte two bytes before the pointer (es:[bx-2] |= 1).
; Likely marks a heap/asset block as in-use/locked (far-pointer variant of sub_1AA5A).
