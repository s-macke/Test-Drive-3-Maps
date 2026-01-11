seg031:0A10 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0A10
seg031:0A10 ; Attributes: bp-based frame
seg031:0A10
seg031:0A10 sub_19870       proc far                ; CODE XREF: sub_94F4+1A␘P
seg031:0A10                                         ; sub_94F4+A0D␘P ...
seg031:0A10
seg031:0A10 arg_0           = word ptr  6
seg031:0A10 arg_2           = word ptr  8
seg031:0A10 arg_4           = word ptr  0Ah
seg031:0A10
seg031:0A10                 push    bp
seg031:0A11                 mov     bp, sp
seg031:0A13                 mov     bx, [bp+arg_0]
seg031:0A16                 push    [bp+arg_4]
seg031:0A19                 push    [bp+arg_2]
seg031:0A1C                 push    word ptr [bx+2]
seg031:0A1F                 push    word ptr [bx]
seg031:0A21                 call    sub_197A0
seg031:0A26                 mov     bx, [bp+arg_0]
seg031:0A29                 mov     [bx+2], dx
seg031:0A2C                 mov     [bx], ax
seg031:0A2E                 mov     sp, bp
seg031:0A30                 pop     bp
seg031:0A31                 retf    6
seg031:0A31 sub_19870       endp
seg031:0A31
seg031:0A34
