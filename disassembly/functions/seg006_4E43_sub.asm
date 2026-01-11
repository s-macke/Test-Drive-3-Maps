seg006:4E43 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4E43
seg006:4E43
seg006:4E43 sub_12C93       proc near               ; CODE XREF: sub_12A2C␘p
seg006:4E43                 mov     es, word_2D83E
seg006:4E47                 mov     ax, word_2AAC8
seg006:4E4A                 mov     word_2AAC4, ax
seg006:4E4D                 mov     ax, word_2AAC6
seg006:4E50                 xchg    ax, word_2AAC2
seg006:4E54                 push    ax
seg006:4E55                 cmp     byte_1FAA3, 0
seg006:4E5A                 jnz     short loc_12D1E
seg006:4E5C                 mov     bx, word_29463
seg006:4E60                 shl     bx, 1
seg006:4E62                 jmp     short loc_12D19
seg006:4E62 ; ---------------------------------------------------------------------------
seg006:4E64                 db 90h
seg006:4E65 ; ---------------------------------------------------------------------------
seg006:4E65
seg006:4E65 loc_12CB5:                              ; CODE XREF: sub_12C93+89␙j
seg006:4E65                 or      bx, bx
seg006:4E67                 jnz     short loc_12CBF
seg006:4E69                 cmp     byte_28477, bl
seg006:4E6D                 jz      short loc_12D19
seg006:4E6F
seg006:4E6F loc_12CBF:                              ; CODE XREF: sub_12C93+24␘j
seg006:4E6F                 mov     cx, [bx-5C7Bh]
seg006:4E73                 test    ch, 10h
seg006:4E76                 jz      short loc_12D19
seg006:4E78                 test    ch, 20h
seg006:4E7B                 jnz     short loc_12D19
seg006:4E7D                 mov     ax, [bx-5B3Bh]
seg006:4E81                 sub     ax, word_28486
seg006:4E85                 shl     ax, 1
seg006:4E87                 sar     ax, 1
seg006:4E89                 add     ax, word_2A6C8
seg006:4E8D                 cmp     ax, word_2A6CA
seg006:4E91                 ja      short loc_12D53
seg006:4E93                 sub     ax, word_2A6C8
seg006:4E97                 jns     short loc_12CEB
seg006:4E99                 neg     ax
seg006:4E9B
seg006:4E9B loc_12CEB:                              ; CODE XREF: sub_12C93+54␘j
seg006:4E9B                 mov     dx, ax
seg006:4E9D                 mov     ax, [bx-59FBh]
seg006:4EA1                 sub     ax, word_28488
seg006:4EA5                 shl     ax, 1
seg006:4EA7                 shl     ax, 1
seg006:4EA9                 sar     ax, 1
seg006:4EAB                 sar     ax, 1
seg006:4EAD                 add     ax, word_2A6C8
seg006:4EB1                 cmp     ax, word_2A6CA
seg006:4EB5                 ja      short loc_12D53
seg006:4EB7                 sub     ax, word_2A6C8
seg006:4EBB                 jns     short loc_12D0F
seg006:4EBD                 neg     ax
seg006:4EBF
seg006:4EBF loc_12D0F:                              ; CODE XREF: sub_12C93+78␘j
seg006:4EBF                 add     dx, ax
seg006:4EC1                 cmp     ch, 1Fh
seg006:4EC4                 jz      short loc_12D2D
seg006:4EC6
seg006:4EC6 loc_12D16:                              ; CODE XREF: sub_12C93+BE␙j
seg006:4EC6                 call    sub_13069
seg006:4EC9
seg006:4EC9 loc_12D19:                              ; CODE XREF: sub_12C93+1F␘j
seg006:4EC9                                         ; sub_12C93+2A␘j ...
seg006:4EC9                 sub     bx, 2
seg006:4ECC                 jns     short loc_12CB5
seg006:4ECE
seg006:4ECE loc_12D1E:                              ; CODE XREF: sub_12C93+17␘j
seg006:4ECE                 pop     ax
seg006:4ECF                 xchg    ax, word_2AAC2
seg006:4ED3                 mov     word_2AACA, ax
seg006:4ED6                 mov     ax, word_2AAC4
seg006:4ED9                 mov     word_2AACC, ax
seg006:4EDC                 retn
seg006:4EDD ; ---------------------------------------------------------------------------
seg006:4EDD
seg006:4EDD loc_12D2D:                              ; CODE XREF: sub_12C93+81␘j
seg006:4EDD                 cmp     byte ptr word_2AC5F, 6
seg006:4EE2                 jb      short loc_12D53
seg006:4EE4                 sub     cx, cx
seg006:4EE6                 mov     ch, bl
seg006:4EE8                 shl     ch, 1
seg006:4EEA                 add     cx, word_1F1B2
seg006:4EEE                 and     cx, 5D9h
seg006:4EF2                 jnz     short loc_12D53
seg006:4EF4                 mov     byte_2AA90, 2
seg006:4EF9                 mov     ax, 9
seg006:4EFC                 call    sub_D045
seg006:4F01                 jmp     short loc_12D16
seg006:4F03 ; ---------------------------------------------------------------------------
seg006:4F03
seg006:4F03 loc_12D53:                              ; CODE XREF: sub_12C93+4E␘j
seg006:4F03                                         ; sub_12C93+72␘j ...
seg006:4F03                 sub     dx, dx
seg006:4F05                 mov     [bx-513Bh], dx
seg006:4F09                 mov     [bx-4FFBh], dx
seg006:4F0D                 mov     [bx-4EBBh], dx
seg006:4F11                 mov     [bx-4D7Bh], dx
seg006:4F15                 jmp     short loc_12D19
seg006:4F15 sub_12C93       endp
seg006:4F15
seg006:4F17
