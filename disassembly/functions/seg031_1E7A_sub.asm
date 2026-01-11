seg031:1E7A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1E7A
seg031:1E7A ; Attributes: bp-based frame
seg031:1E7A
seg031:1E7A sub_1ACDA       proc far                ; CODE XREF: sub_190A2+8A␘P
seg031:1E7A
seg031:1E7A arg_0           = word ptr  6
seg031:1E7A arg_2           = word ptr  8
seg031:1E7A
seg031:1E7A                 push    bp
seg031:1E7B                 mov     bp, sp
seg031:1E7D                 mov     dx, di
seg031:1E7F                 mov     bx, si
seg031:1E81                 mov     ax, ds
seg031:1E83                 mov     es, ax
seg031:1E85                 assume es:dseg
seg031:1E85                 mov     di, [bp+arg_0]
seg031:1E88                 xor     ax, ax
seg031:1E8A                 mov     cx, 0FFFFh
seg031:1E8D                 repne scasb
seg031:1E8F                 lea     si, [di-1]
seg031:1E92                 mov     di, [bp+arg_2]
seg031:1E95                 mov     cx, 0FFFFh
seg031:1E98                 repne scasb
seg031:1E9A                 not     cx
seg031:1E9C                 sub     di, cx
seg031:1E9E                 xchg    di, si
seg031:1EA0                 mov     ax, [bp+arg_0]
seg031:1EA3                 test    si, 1
seg031:1EA7                 jz      short loc_1AD0B
seg031:1EA9                 movsb
seg031:1EAA                 dec     cx
seg031:1EAB
seg031:1EAB loc_1AD0B:                              ; CODE XREF: sub_1ACDA+2D␘j
seg031:1EAB                 shr     cx, 1
seg031:1EAD                 rep movsw
seg031:1EAF                 adc     cx, cx
seg031:1EB1                 rep movsb
seg031:1EB3                 mov     si, bx
seg031:1EB5                 mov     di, dx
seg031:1EB7                 pop     bp
seg031:1EB8                 retf
seg031:1EB8 sub_1ACDA       endp
seg031:1EB8
seg031:1EB8 ; ---------------------------------------------------------------------------
seg031:1EB9                 align 2
seg031:1EBA
