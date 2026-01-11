seg005:0856 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0856
seg005:0856 ; Attributes: bp-based frame
seg005:0856
seg005:0856 sub_C776        proc far                ; CODE XREF: sub_141E+18E␘P
seg005:0856
seg005:0856 arg_0           = word ptr  6
seg005:0856 arg_2           = word ptr  8
seg005:0856 arg_4           = word ptr  0Ah
seg005:0856
seg005:0856                 push    bp
seg005:0857                 mov     bp, sp
seg005:0859                 mov     ax, 4200h
seg005:085C                 mov     bx, [bp+arg_0]
seg005:085F                 mov     cx, [bp+arg_4]
seg005:0862                 mov     dx, [bp+arg_2]
seg005:0865                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg005:0865                                         ; AL = method: offset from beginning of file
seg005:0867                 mov     ax, 1
seg005:086A                 jnb     short loc_C78E
seg005:086C                 sub     ax, ax
seg005:086E
seg005:086E loc_C78E:                               ; CODE XREF: sub_C776+14␘j
seg005:086E                 pop     bp
seg005:086F                 retf
seg005:086F sub_C776        endp
seg005:086F
seg005:0870
