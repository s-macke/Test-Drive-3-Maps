seg001:0008 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:0008
seg001:0008 ; Attributes: bp-based frame
seg001:0008
seg001:0008 sub_1D48        proc far                ; CODE XREF: sub_0+6D1␘P
seg001:0008                                         ; sub_0:loc_766␘P
seg001:0008
seg001:0008 var_2           = word ptr -2
seg001:0008
seg001:0008                 push    bp
seg001:0009                 mov     bp, sp
seg001:000B                 sub     sp, 2
seg001:000E                 push    si
seg001:000F                 mov     [bp+var_2], 0
seg001:0014
seg001:0014 loc_1D54:                               ; CODE XREF: sub_1D48+28␙j
seg001:0014                 mov     al, 1Bh
seg001:0016                 mul     byte_1FAA4
seg001:001A                 mov     bx, ax
seg001:001C                 mov     si, [bp+var_2]
seg001:001F                 mov     al, [bx+si-1617h]
seg001:0023                 mov     bx, si
seg001:0025                 mov     [bx+9C6h], al
seg001:0029                 inc     [bp+var_2]
seg001:002C                 cmp     [bp+var_2], 19h
seg001:0030                 jl      short loc_1D54
seg001:0032                 pop     si
seg001:0033                 mov     sp, bp
seg001:0035                 pop     bp
seg001:0036                 retf
seg001:0036 sub_1D48        endp
seg001:0036
seg001:0036 ; ---------------------------------------------------------------------------
seg001:0037                 align 2
seg001:0038
