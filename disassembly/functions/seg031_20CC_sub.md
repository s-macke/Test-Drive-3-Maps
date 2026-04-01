; sub_1AF2C opens/creates files using int 21h AH=3Dh/3Ch and manages attributes with AH=43h.
; Uses AH=44h to detect device handles and AH=40h/3Fh/42h for truncation, append, and ^Z text-mode logic.
; On success returns the handle in AX and sets per-handle flags in [bx-3C9Eh].
