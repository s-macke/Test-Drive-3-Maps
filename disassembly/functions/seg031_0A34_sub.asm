seg031:0A34 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0A34
seg031:0A34 ; Attributes: bp-based frame
seg031:0A34
seg031:0A34 sub_19894       proc far                ; CODE XREF: sub_6A68+445␘P
seg031:0A34
seg031:0A34 arg_0           = word ptr  6
seg031:0A34 arg_2           = word ptr  8
seg031:0A34 arg_4           = word ptr  0Ah
seg031:0A34
seg031:0A34                 push    bp
seg031:0A35                 mov     bp, sp
seg031:0A37                 mov     bx, [bp+arg_0]
seg031:0A3A                 push    [bp+arg_4]
seg031:0A3D                 push    [bp+arg_2]
seg031:0A40                 push    word ptr [bx+2]
seg031:0A43                 push    word ptr [bx]
seg031:0A45                 call    sub_198B8
seg031:0A4A                 mov     bx, [bp+arg_0]
seg031:0A4D                 mov     [bx+2], dx
seg031:0A50                 mov     [bx], ax
seg031:0A52                 mov     sp, bp
seg031:0A54                 pop     bp
seg031:0A55                 retf    6
seg031:0A55 sub_19894       endp
seg031:0A55
seg031:0A58
