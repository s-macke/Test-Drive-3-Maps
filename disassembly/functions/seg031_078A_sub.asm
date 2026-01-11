seg031:078A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:078A
seg031:078A ; Attributes: bp-based frame
seg031:078A
seg031:078A sub_195EA       proc far                ; CODE XREF: sub_0+89␘P
seg031:078A                                         ; sub_0+B8␘P ...
seg031:078A
seg031:078A arg_0           = word ptr  6
seg031:078A arg_2           = word ptr  8
seg031:078A
seg031:078A                 push    bp
seg031:078B                 mov     bp, sp
seg031:078D                 mov     dx, di
seg031:078F                 mov     bx, si
seg031:0791                 mov     si, [bp+arg_2]
seg031:0794                 mov     di, si
seg031:0796                 mov     ax, ds
seg031:0798                 mov     es, ax
seg031:079A                 xor     ax, ax
seg031:079C                 mov     cx, 0FFFFh
seg031:079F                 repne scasb
seg031:07A1                 not     cx
seg031:07A3                 mov     di, [bp+arg_0]
seg031:07A6                 mov     ax, di
seg031:07A8                 test    al, 1
seg031:07AA                 jz      short loc_1960E
seg031:07AC                 movsb
seg031:07AD                 dec     cx
seg031:07AE
seg031:07AE loc_1960E:                              ; CODE XREF: sub_195EA+20␘j
seg031:07AE                 shr     cx, 1
seg031:07B0                 rep movsw
seg031:07B2                 adc     cx, cx
seg031:07B4                 rep movsb
seg031:07B6                 mov     si, bx
seg031:07B8                 mov     di, dx
seg031:07BA                 pop     bp
seg031:07BB                 retf
seg031:07BB sub_195EA       endp
seg031:07BB
seg031:07BC
