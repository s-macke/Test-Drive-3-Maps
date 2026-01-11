seg031:07BC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:07BC
seg031:07BC ; Attributes: bp-based frame
seg031:07BC
seg031:07BC sub_1961C       proc far                ; CODE XREF: sub_27D0+39E␘P
seg031:07BC                                         ; sub_4534+47␘P
seg031:07BC
seg031:07BC arg_0           = word ptr  6
seg031:07BC arg_2           = word ptr  8
seg031:07BC
seg031:07BC                 push    bp
seg031:07BD                 mov     bp, sp
seg031:07BF                 mov     dx, di
seg031:07C1                 mov     bx, si
seg031:07C3                 mov     ax, ds
seg031:07C5                 mov     es, ax
seg031:07C7                 mov     si, [bp+arg_0]
seg031:07CA                 mov     di, [bp+arg_2]
seg031:07CD                 xor     ax, ax
seg031:07CF                 mov     cx, 0FFFFh
seg031:07D2                 repne scasb
seg031:07D4                 not     cx
seg031:07D6                 sub     di, cx
seg031:07D8                 repe cmpsb
seg031:07DA                 jz      short loc_19641
seg031:07DC                 sbb     ax, ax
seg031:07DE                 sbb     ax, 0FFFFh
seg031:07E1
seg031:07E1 loc_19641:                              ; CODE XREF: sub_1961C+1E␘j
seg031:07E1                 mov     si, bx
seg031:07E3                 mov     di, dx
seg031:07E5                 pop     bp
seg031:07E6                 retf
seg031:07E6 sub_1961C       endp
seg031:07E6
seg031:07E6 ; ---------------------------------------------------------------------------
seg031:07E7                 align 2
seg031:07E8
