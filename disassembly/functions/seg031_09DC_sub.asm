seg031:09DC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:09DC
seg031:09DC ; Attributes: bp-based frame
seg031:09DC
seg031:09DC sub_1983C       proc far                ; CODE XREF: sub_0+328␘P
seg031:09DC                                         ; sub_0+347␘P ...
seg031:09DC
seg031:09DC arg_0           = word ptr  6
seg031:09DC arg_2           = word ptr  8
seg031:09DC arg_4           = word ptr  0Ah
seg031:09DC arg_6           = word ptr  0Ch
seg031:09DC
seg031:09DC                 push    bp
seg031:09DD                 mov     bp, sp
seg031:09DF                 mov     ax, [bp+arg_2]
seg031:09E2                 mov     bx, [bp+arg_6]
seg031:09E5                 or      bx, ax
seg031:09E7                 mov     bx, [bp+arg_4]
seg031:09EA                 jnz     short loc_19857
seg031:09EC                 mov     ax, [bp+arg_0]
seg031:09EF                 mul     bx
seg031:09F1                 mov     sp, bp
seg031:09F3                 pop     bp
seg031:09F4                 retf    8
seg031:09F7 ; ---------------------------------------------------------------------------
seg031:09F7
seg031:09F7 loc_19857:                              ; CODE XREF: sub_1983C+E␘j
seg031:09F7                 mul     bx
seg031:09F9                 mov     cx, ax
seg031:09FB                 mov     ax, [bp+arg_0]
seg031:09FE                 mul     [bp+arg_6]
seg031:0A01                 add     cx, ax
seg031:0A03                 mov     ax, [bp+arg_0]
seg031:0A06                 mul     bx
seg031:0A08                 add     dx, cx
seg031:0A0A                 mov     sp, bp
seg031:0A0C                 pop     bp
seg031:0A0D                 retf    8
seg031:0A0D sub_1983C       endp
seg031:0A0D
seg031:0A10
