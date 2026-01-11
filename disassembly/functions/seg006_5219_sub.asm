seg006:5219 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:5219
seg006:5219
seg006:5219 sub_13069       proc near               ; CODE XREF: sub_12C93:loc_12D16␘p
seg006:5219                 push    bx
seg006:521A                 mov     ax, [bx-5C7Bh]
seg006:521E                 and     ax, 3Fh
seg006:5221                 shl     ax, 1
seg006:5223                 mov     si, ax
seg006:5225                 add     si, word_2D83C
seg006:5229                 mov     si, es:[si]
seg006:522C                 add     si, word_2D83C
seg006:5230                 mov     ch, es:[si]
seg006:5233                 inc     si
seg006:5234                 mov     cl, es:[si]
seg006:5237                 add     si, 7
seg006:523A                 cmp     dx, 200h
seg006:523E                 jbe     short loc_130A1
seg006:5240                 sub     si, 4
seg006:5243                 mov     ch, es:[si]
seg006:5246                 inc     si
seg006:5247                 mov     cl, es:[si]
seg006:524A                 inc     si
seg006:524B                 add     si, es:[si]
seg006:524E                 add     si, 2
seg006:5251
seg006:5251 loc_130A1:                              ; CODE XREF: sub_13069+25␘j
seg006:5251                 push    cx
seg006:5252                 sub     ch, ch
seg006:5254                 mov     ax, [bx-513Bh]
seg006:5258                 cmp     ax, word_2AAC4
seg006:525C                 jnz     short loc_130BE
seg006:525E                 mov     ax, [bx-4EBBh]
seg006:5262                 cmp     ax, word_2AAC2
seg006:5266                 jnz     short loc_130BE
seg006:5268                 cmp     cx, [bx-4FFBh]
seg006:526C                 jz      short loc_1311F
seg006:526E
seg006:526E loc_130BE:                              ; CODE XREF: sub_13069+43␘j
seg006:526E                                         ; sub_13069+4D␘j
seg006:526E                 mov     byte_2AD0C, ch
seg006:5272                 mov     ax, [bx-5B3Bh]
seg006:5276                 mov     word_2AD14, ax
seg006:5279                 mov     ax, [bx-59FBh]
seg006:527D                 mov     word_2AD16, ax
seg006:5280                 mov     ax, [bx-58BBh]
seg006:5284                 shr     ax, 1
seg006:5286                 shr     ax, 1
seg006:5288                 shr     ax, 1
seg006:528A                 mov     word_2AD18, ax
seg006:528D                 mov     ax, [bx-577Bh]
seg006:5291                 mov     byte_28456, ah
seg006:5295                 mov     ax, [bx-563Bh]
seg006:5299                 mov     byte_2AD22, ah
seg006:529D                 mov     ax, bx
seg006:529F                 add     ax, 2
seg006:52A2                 mov     word_2AD10, ax
seg006:52A5                 mov     byte_28457, cl
seg006:52A9                 call    sub_1528D
seg006:52AC                 pop     cx
seg006:52AD                 mov     cl, ch
seg006:52AF                 sub     ch, ch
seg006:52B1                 mov     al, byte_2AD0C
seg006:52B4                 or      al, al
seg006:52B6                 jnz     short loc_13113
seg006:52B8                 mov     word_2AD0E, 0
seg006:52BE                 call    sub_15153
seg006:52C1                 pop     bx
seg006:52C2                 retn
seg006:52C3 ; ---------------------------------------------------------------------------
seg006:52C3
seg006:52C3 loc_13113:                              ; CODE XREF: sub_13069+9D␘j
seg006:52C3                 sub     dx, dx
seg006:52C5                 mov     [bx-4EBBh], dx
seg006:52C9                 mov     [bx-4D7Bh], dx
seg006:52CD                 pop     bx
seg006:52CE                 retn
seg006:52CF ; ---------------------------------------------------------------------------
seg006:52CF
seg006:52CF loc_1311F:                              ; CODE XREF: sub_13069+53␘j
seg006:52CF                 pop     cx
seg006:52D0                 mov     ax, [bx-4FFBh]
seg006:52D4                 add     word_2AAC4, ax
seg006:52D8                 mov     ax, [bx-4D7Bh]
seg006:52DC                 add     word_2AAC2, ax
seg006:52E0                 pop     bx
seg006:52E1                 retn
seg006:52E1 sub_13069       endp
seg006:52E1
seg006:52E2
