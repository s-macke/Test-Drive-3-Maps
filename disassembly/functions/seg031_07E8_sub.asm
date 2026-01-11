seg031:07E8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:07E8
seg031:07E8 ; Attributes: bp-based frame
seg031:07E8
seg031:07E8 sub_19648       proc far                ; CODE XREF: sub_15BC+F␘P
seg031:07E8                                         ; sub_1606+F␘P ...
seg031:07E8
seg031:07E8 arg_0           = word ptr  6
seg031:07E8
seg031:07E8                 push    bp
seg031:07E9                 mov     bp, sp
seg031:07EB                 mov     dx, di
seg031:07ED                 mov     ax, ds
seg031:07EF                 mov     es, ax
seg031:07F1                 mov     di, [bp+arg_0]
seg031:07F4                 xor     ax, ax
seg031:07F6                 mov     cx, 0FFFFh
seg031:07F9                 repne scasb
seg031:07FB                 not     cx
seg031:07FD                 dec     cx
seg031:07FE                 xchg    ax, cx
seg031:07FF                 mov     di, dx
seg031:0801                 pop     bp
seg031:0802                 retf
seg031:0802 sub_19648       endp
seg031:0802
seg031:0802 ; ---------------------------------------------------------------------------
seg031:0803                 align 2
seg031:0804                 mov     dh, 1
seg031:0806                 jmp     short loc_1966A
seg031:0808
