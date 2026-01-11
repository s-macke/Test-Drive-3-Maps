seg006:3DE8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:3DE8
seg006:3DE8
seg006:3DE8 sub_11C38       proc near               ; CODE XREF: sub_11408+174␘p
seg006:3DE8                                         ; sub_11B8B:loc_11BD7␘p ...
seg006:3DE8                 mov     dx, ax
seg006:3DEA                 sub     dx, cx
seg006:3DEC                 cmp     dx, 8000h
seg006:3DF0                 jnz     short loc_11C43
seg006:3DF2                 retn
seg006:3DF3 ; ---------------------------------------------------------------------------
seg006:3DF3
seg006:3DF3 loc_11C43:                              ; CODE XREF: sub_11C38+8␘j
seg006:3DF3                 sub     dx, dx
seg006:3DF5                 mov     word_2AAAD, dx
seg006:3DF9                 mov     word_2AAAF, dx
seg006:3DFD                 mov     byte_2AA99, 3
seg006:3E02                 mov     word_2844C, dx
seg006:3E06                 mov     word_2844E, dx
seg006:3E0A                 mov     word_2AAB1, ax
seg006:3E0D                 mov     word_2AAB3, cx
seg006:3E11                 mov     word_2AA9D, dx
seg006:3E15                 mov     word_2AA9F, dx
seg006:3E19                 mov     dx, [bx+560Eh]
seg006:3E1D                 mov     bx, [si+560Eh]
seg006:3E21                 mov     si, ax
seg006:3E23                 mov     bp, cx
seg006:3E25                 cmp     dx, bx
seg006:3E27                 jle     short loc_11C7D
seg006:3E29                 xchg    bp, si
seg006:3E2B                 xchg    bx, dx
seg006:3E2D
seg006:3E2D loc_11C7D:                              ; CODE XREF: sub_11C38+3F␘j
seg006:3E2D                 mov     word_2AA86, dx
seg006:3E31                 mov     ax, word_2AA7B
seg006:3E34                 sub     ax, bx
seg006:3E36                 js      short loc_11C8B
seg006:3E38                 mov     word_2AAAD, ax
seg006:3E3B
seg006:3E3B loc_11C8B:                              ; CODE XREF: sub_11C38+4E␘j
seg006:3E3B                 sub     bx, dx
seg006:3E3D                 inc     bx
seg006:3E3E                 mov     word_2AAAB, bx
seg006:3E42                 dec     bx
seg006:3E43                 jz      short loc_11CAD
seg006:3E45                 mov     ax, bp
seg006:3E47                 sub     ax, si
seg006:3E49                 neg     ax
seg006:3E4B                 cwd
seg006:3E4C                 mov     bp, si
seg006:3E4E                 idiv    bx
seg006:3E50                 cmp     ax, word_2AA9D
seg006:3E54                 jle     short loc_11CAA
seg006:3E56                 xchg    ax, word_2AA9D
seg006:3E5A
seg006:3E5A loc_11CAA:                              ; CODE XREF: sub_11C38+6C␘j
seg006:3E5A                 mov     word_2AA9F, ax
seg006:3E5D
seg006:3E5D loc_11CAD:                              ; CODE XREF: sub_11C38+5B␘j
seg006:3E5D                 call    sub_11EA0
seg006:3E60                 retn
seg006:3E60 sub_11C38       endp
seg006:3E60
seg006:3E61
