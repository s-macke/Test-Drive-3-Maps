seg031:0B76 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0B76
seg031:0B76 ; Attributes: bp-based frame
seg031:0B76
seg031:0B76 sub_199D6       proc far                ; CODE XREF: sub_19A01+7␙P
seg031:0B76
seg031:0B76 arg_0           = word ptr  6
seg031:0B76
seg031:0B76                 push    bp
seg031:0B77                 mov     bp, sp
seg031:0B79                 push    si
seg031:0B7A                 push    di
seg031:0B7B                 push    ds
seg031:0B7C                 pop     es
seg031:0B7D                 assume es:dseg
seg031:0B7D                 mov     dx, [bp+arg_0]
seg031:0B80                 mov     si, 0CB86h
seg031:0B83
seg031:0B83 loc_199E3:                              ; CODE XREF: sub_199D6+20␙j
seg031:0B83                 lodsw
seg031:0B84                 cmp     ax, dx
seg031:0B86                 jz      short loc_199F8
seg031:0B88                 inc     ax
seg031:0B89                 xchg    ax, si
seg031:0B8A                 jz      short loc_199F8
seg031:0B8C                 xchg    ax, di
seg031:0B8D                 xor     ax, ax
seg031:0B8F                 mov     cx, 0FFFFh
seg031:0B92                 repne scasb
seg031:0B94                 mov     si, di
seg031:0B96                 jmp     short loc_199E3
seg031:0B98 ; ---------------------------------------------------------------------------
seg031:0B98
seg031:0B98 loc_199F8:                              ; CODE XREF: sub_199D6+10␘j
seg031:0B98                                         ; sub_199D6+14␘j
seg031:0B98                 xchg    ax, si
seg031:0B99                 pop     di
seg031:0B9A                 pop     si
seg031:0B9B                 mov     sp, bp
seg031:0B9D                 pop     bp
seg031:0B9E                 retf    2
seg031:0B9E sub_199D6       endp
seg031:0B9E
seg031:0BA1
