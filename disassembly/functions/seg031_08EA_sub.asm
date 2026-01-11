seg031:08EA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:08EA
seg031:08EA ; Attributes: bp-based frame
seg031:08EA
seg031:08EA sub_1974A       proc far                ; CODE XREF: sub_0+79␘P
seg031:08EA
seg031:08EA arg_0           = dword ptr  6
seg031:08EA
seg031:08EA                 push    bp
seg031:08EB                 mov     bp, sp
seg031:08ED                 les     dx, [bp+arg_0]
seg031:08F0                 assume es:nothing
seg031:08F0                 mov     word ptr dword_2B470+2, es
seg031:08F4                 mov     word ptr dword_2B470, dx
seg031:08F8                 push    ds
seg031:08F9                 mov     ax, cs
seg031:08FB                 mov     ds, ax
seg031:08FD                 assume ds:seg031
seg031:08FD                 mov     dx, 90Dh
seg031:0900                 mov     al, 24h ; '$'
seg031:0902                 mov     ah, 25h
seg031:0904                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg031:0904                                         ; AL = interrupt number
seg031:0904                                         ; DS:DX = new vector to be used for specified interrupt
seg031:0906                 pop     ds
seg031:0907                 assume ds:dseg
seg031:0907                 xor     ax, ax
seg031:0909                 mov     sp, bp
seg031:090B                 pop     bp
seg031:090C                 retf
seg031:090C sub_1974A       endp
seg031:090C
seg031:090D ; ---------------------------------------------------------------------------
seg031:090D                 push    es
seg031:090E                 push    ds
seg031:090F                 push    bp
seg031:0910                 push    di
seg031:0911                 push    si
seg031:0912                 push    dx
seg031:0913                 push    cx
seg031:0914                 push    bx
seg031:0915                 push    ax
seg031:0916                 mov     bx, seg dseg
seg031:0919                 mov     ds, bx
seg031:091B                 mov     word_2B474, sp
seg031:091F                 push    bp
seg031:0920                 push    si
seg031:0921                 push    di
seg031:0922                 push    ax
seg031:0923                 call    dword_2B470
seg031:0927 ; START OF FUNCTION CHUNK FOR sub_19797
seg031:0927
seg031:0927 loc_19787:                              ; CODE XREF: sub_19797+6␙j
seg031:0927                 mov     sp, word_2B474
seg031:092B                 add     sp, 2
seg031:092E                 pop     bx
seg031:092F                 pop     cx
seg031:0930                 pop     dx
seg031:0931                 pop     si
seg031:0932                 pop     di
seg031:0933                 pop     bp
seg031:0934                 pop     ds
seg031:0935                 pop     es
seg031:0936                 iret
seg031:0936 ; END OF FUNCTION CHUNK FOR sub_19797
seg031:0937
