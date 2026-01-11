seg031:0BA1 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0BA1
seg031:0BA1 ; Attributes: bp-based frame
seg031:0BA1
seg031:0BA1 sub_19A01       proc far                ; CODE XREF: start+30␘P
seg031:0BA1                                         ; start+B7␘P ...
seg031:0BA1
seg031:0BA1 arg_0           = word ptr  6
seg031:0BA1
seg031:0BA1                 push    bp
seg031:0BA2                 mov     bp, sp
seg031:0BA4                 push    di
seg031:0BA5                 push    [bp+arg_0]
seg031:0BA8                 call    sub_199D6
seg031:0BAD                 or      ax, ax
seg031:0BAF                 jz      short loc_19A25
seg031:0BB1                 xchg    ax, dx
seg031:0BB2                 mov     di, dx
seg031:0BB4                 xor     ax, ax
seg031:0BB6                 mov     cx, 0FFFFh
seg031:0BB9                 repne scasb
seg031:0BBB                 not     cx
seg031:0BBD                 dec     cx
seg031:0BBE                 mov     bx, 2
seg031:0BC1                 mov     ah, 40h
seg031:0BC3                 int     21h             ; DOS - 2+ - WRITE TO FILE WITH HANDLE
seg031:0BC3                                         ; BX = file handle, CX = number of bytes to write, DS:DX -> buffer
seg031:0BC5
seg031:0BC5 loc_19A25:                              ; CODE XREF: sub_19A01+E␘j
seg031:0BC5                 pop     di
seg031:0BC6                 mov     sp, bp
seg031:0BC8                 pop     bp
seg031:0BC9                 retf    2
seg031:0BC9 sub_19A01       endp
seg031:0BC9
seg031:0BCC
