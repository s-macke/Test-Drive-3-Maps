seg005:08C1 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:08C1
seg005:08C1 ; Attributes: bp-based frame
seg005:08C1
seg005:08C1 sub_C7E1        proc far                ; CODE XREF: sub_CA8+74␘P
seg005:08C1                                         ; sub_D3C+74␘P ...
seg005:08C1
seg005:08C1 arg_0           = word ptr  6
seg005:08C1
seg005:08C1                 push    bp
seg005:08C2                 mov     bp, sp
seg005:08C4                 mov     bx, [bp+arg_0]
seg005:08C7                 mov     ah, 3Eh
seg005:08C9                 int     21h             ; DOS - 2+ - CLOSE A FILE WITH HANDLE
seg005:08C9                                         ; BX = file handle
seg005:08CB                 pop     bp
seg005:08CC                 retf
seg005:08CC sub_C7E1        endp
seg005:08CC
seg005:08CD
