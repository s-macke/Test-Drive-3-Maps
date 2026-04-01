; sub_1901B closes any open handles flagged in [bx-3C9Eh] using int 21h AH=3Eh.
; Iterates handles starting at BX=5, then exits via int 21h AH=4Ch with AL=arg_2.
