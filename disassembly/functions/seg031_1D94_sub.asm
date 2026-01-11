seg031:1D94 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1D94
seg031:1D94
seg031:1D94 sub_1ABF4       proc near               ; CODE XREF: sub_1AA6C+12␘p
seg031:1D94                                         ; sub_1ABD2+2␘p
seg031:1D94                 push    bx
seg031:1D95                 push    ax
seg031:1D96                 xor     dx, dx
seg031:1D98                 push    ds
seg031:1D99                 push    dx
seg031:1D9A                 push    dx
seg031:1D9B                 push    ax
seg031:1D9C                 mov     ax, 1
seg031:1D9F                 push    ax
seg031:1DA0                 push    es
seg031:1DA1                 pop     ds
seg031:1DA2                 call    sub_1AC16
seg031:1DA7                 add     sp, 8
seg031:1DAA                 cmp     dx, 0FFFFh
seg031:1DAD                 pop     ds
seg031:1DAE                 pop     dx
seg031:1DAF                 pop     bx
seg031:1DB0                 jz      short locret_1AC14
seg031:1DB2                 or      dx, dx
seg031:1DB4
seg031:1DB4 locret_1AC14:                           ; CODE XREF: sub_1ABF4+1C␘j
seg031:1DB4                 retn
seg031:1DB4 sub_1ABF4       endp
seg031:1DB4
seg031:1DB4 ; ---------------------------------------------------------------------------
seg031:1DB5                 align 2
seg031:1DB6
