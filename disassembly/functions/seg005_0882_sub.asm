seg005:0882 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0882
seg005:0882 ; Attributes: bp-based frame
seg005:0882
seg005:0882 sub_C7A2        proc far                ; CODE XREF: sub_CA8+3B␘P
seg005:0882                                         ; sub_D3C+3B␘P ...
seg005:0882
seg005:0882 var_2           = word ptr -2
seg005:0882 arg_0           = word ptr  6
seg005:0882
seg005:0882                 push    bp
seg005:0883                 mov     bp, sp
seg005:0885                 sub     sp, 2
seg005:0888                 mov     ax, 4202h
seg005:088B                 mov     bx, [bp+arg_0]
seg005:088E                 mov     cx, 0
seg005:0891                 mov     dx, 0
seg005:0894                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg005:0894                                         ; AL = method: offset from end of file
seg005:0896                 mov     [bp+var_2], ax
seg005:0899                 mov     ax, 4200h
seg005:089C                 mov     dx, 0
seg005:089F                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg005:089F                                         ; AL = method: offset from beginning of file
seg005:08A1                 mov     ax, [bp+var_2]
seg005:08A4                 mov     sp, bp
seg005:08A6                 pop     bp
seg005:08A7                 retf
seg005:08A7 sub_C7A2        endp
seg005:08A7
seg005:08A8
