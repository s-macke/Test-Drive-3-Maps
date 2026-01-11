seg031:0ABA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0ABA
seg031:0ABA ; Attributes: bp-based frame
seg031:0ABA
seg031:0ABA sub_1991A       proc far                ; CODE XREF: sub_300E+13␘P
seg031:0ABA                                         ; sub_300E+2F␘P ...
seg031:0ABA
seg031:0ABA arg_0           = word ptr  6
seg031:0ABA arg_2           = word ptr  8
seg031:0ABA arg_4           = word ptr  0Ah
seg031:0ABA arg_6           = word ptr  0Ch
seg031:0ABA
seg031:0ABA                 push    bp
seg031:0ABB                 mov     bp, sp
seg031:0ABD                 push    bx
seg031:0ABE                 mov     ax, [bp+arg_6]
seg031:0AC1                 or      ax, ax
seg031:0AC3                 jnz     short loc_1993A
seg031:0AC5                 mov     cx, [bp+arg_4]
seg031:0AC8                 mov     ax, [bp+arg_2]
seg031:0ACB                 xor     dx, dx
seg031:0ACD                 div     cx
seg031:0ACF                 mov     ax, [bp+arg_0]
seg031:0AD2                 div     cx
seg031:0AD4                 mov     ax, dx
seg031:0AD6                 xor     dx, dx
seg031:0AD8                 jmp     short loc_1997F
seg031:0ADA ; ---------------------------------------------------------------------------
seg031:0ADA
seg031:0ADA loc_1993A:                              ; CODE XREF: sub_1991A+9␘j
seg031:0ADA                 mov     cx, ax
seg031:0ADC                 mov     bx, [bp+arg_4]
seg031:0ADF                 mov     dx, [bp+arg_2]
seg031:0AE2                 mov     ax, [bp+arg_0]
seg031:0AE5
seg031:0AE5 loc_19945:                              ; CODE XREF: sub_1991A+35␙j
seg031:0AE5                 shr     cx, 1
seg031:0AE7                 rcr     bx, 1
seg031:0AE9                 shr     dx, 1
seg031:0AEB                 rcr     ax, 1
seg031:0AED                 or      cx, cx
seg031:0AEF                 jnz     short loc_19945
seg031:0AF1                 div     bx
seg031:0AF3                 mov     cx, ax
seg031:0AF5                 mul     [bp+arg_6]
seg031:0AF8                 xchg    ax, cx
seg031:0AF9                 mul     [bp+arg_4]
seg031:0AFC                 add     dx, cx
seg031:0AFE                 jb      short loc_1996C
seg031:0B00                 cmp     dx, [bp+arg_2]
seg031:0B03                 ja      short loc_1996C
seg031:0B05                 jb      short loc_19972
seg031:0B07                 cmp     ax, [bp+arg_0]
seg031:0B0A                 jbe     short loc_19972
seg031:0B0C
seg031:0B0C loc_1996C:                              ; CODE XREF: sub_1991A+44␘j
seg031:0B0C                                         ; sub_1991A+49␘j
seg031:0B0C                 sub     ax, [bp+arg_4]
seg031:0B0F                 sbb     dx, [bp+arg_6]
seg031:0B12
seg031:0B12 loc_19972:                              ; CODE XREF: sub_1991A+4B␘j
seg031:0B12                                         ; sub_1991A+50␘j
seg031:0B12                 sub     ax, [bp+arg_0]
seg031:0B15                 sbb     dx, [bp+arg_2]
seg031:0B18                 neg     dx
seg031:0B1A                 neg     ax
seg031:0B1C                 sbb     dx, 0
seg031:0B1F
seg031:0B1F loc_1997F:                              ; CODE XREF: sub_1991A+1E␘j
seg031:0B1F                 pop     bx
seg031:0B20                 mov     sp, bp
seg031:0B22                 pop     bp
seg031:0B23                 retf    8
seg031:0B23 sub_1991A       endp
seg031:0B23
seg031:0B26
