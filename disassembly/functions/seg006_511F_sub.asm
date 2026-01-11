seg006:511F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:511F
seg006:511F
seg006:511F sub_12F6F       proc near               ; CODE XREF: sub_12D67+1A3␘p
seg006:511F                 mov     ax, [bx-5B3Bh]
seg006:5123                 mov     word_2AD14, ax
seg006:5126                 mov     ax, [bx-59FBh]
seg006:512A                 mov     word_2AD16, ax
seg006:512D                 mov     ax, [bx-58BBh]
seg006:5131                 shr     ax, 1
seg006:5133                 shr     ax, 1
seg006:5135                 shr     ax, 1
seg006:5137                 mov     word_2AD18, ax
seg006:513A                 mov     ax, [bx-577Bh]
seg006:513E                 mov     byte_28456, ah
seg006:5142                 mov     ax, [bx-563Bh]
seg006:5146                 mov     byte_2AD22, ah
seg006:514A                 mov     ax, bx
seg006:514C                 add     ax, 2
seg006:514F                 mov     word_2AD10, ax
seg006:5152                 mov     ax, [bx-5C7Bh]
seg006:5156                 and     ax, 3Fh
seg006:5159                 cmp     al, 3
seg006:515B                 ja      short loc_12FC7
seg006:515D                 cmp     al, 2
seg006:515F                 mov     ax, ds
seg006:5161                 mov     es, ax
seg006:5163                 assume es:dseg
seg006:5163                 mov     si, 0D9B4h
seg006:5166                 ja      short loc_12FDA
seg006:5168                 mov     si, 0D0CCh
seg006:516B                 jz      short loc_12FDA
seg006:516D                 mov     si, word_2C194
seg006:5171                 mov     es, word_2C196
seg006:5175                 assume es:nothing
seg006:5175                 jmp     short loc_12FDA
seg006:5177 ; ---------------------------------------------------------------------------
seg006:5177
seg006:5177 loc_12FC7:                              ; CODE XREF: sub_12F6F+3C␘j
seg006:5177                 mov     es, word_2D83E
seg006:517B                 shl     ax, 1
seg006:517D                 mov     si, ax
seg006:517F                 add     si, word_2D83C
seg006:5183                 mov     si, es:[si]
seg006:5186                 add     si, word_2D83C
seg006:518A
seg006:518A loc_12FDA:                              ; CODE XREF: sub_12F6F+47␘j
seg006:518A                                         ; sub_12F6F+4C␘j ...
seg006:518A                 mov     ch, es:[si]
seg006:518D                 inc     si
seg006:518E                 mov     cl, es:[si]
seg006:5191                 add     si, 7
seg006:5194                 cmp     dx, 200h
seg006:5198                 jbe     short loc_12FFB
seg006:519A                 sub     si, 4
seg006:519D                 mov     ch, es:[si]
seg006:51A0                 inc     si
seg006:51A1                 mov     cl, es:[si]
seg006:51A4                 inc     si
seg006:51A5                 add     si, es:[si]
seg006:51A8                 add     si, 2
seg006:51AB
seg006:51AB loc_12FFB:                              ; CODE XREF: sub_12F6F+79␘j
seg006:51AB                 push    cx
seg006:51AC                 sub     ch, ch
seg006:51AE                 mov     byte_2AD0C, ch
seg006:51B2                 mov     ax, [bx-513Bh]
seg006:51B6                 cmp     ax, word_2AAC4
seg006:51BA                 jnz     short loc_1305C
seg006:51BC                 cmp     cx, [bx-4FFBh]
seg006:51C0                 jnz     short loc_1305C
seg006:51C2                 cmp     byte_2ACAD, ch
seg006:51C6                 jnz     short loc_1305C
seg006:51C8                 mov     byte_28457, 2
seg006:51CD                 call    sub_1528D
seg006:51D0                 mov     si, word_2844A
seg006:51D4                 add     si, 2
seg006:51D7                 mov     cx, [bx-4FFBh]
seg006:51DB                 sub     cx, 2
seg006:51DE                 shl     si, 1
seg006:51E0                 mov     ax, word_2ACAE
seg006:51E3                 shl     ax, 1
seg006:51E5                 shl     ax, 1
seg006:51E7                 mov     dx, word_2ACB0
seg006:51EB                 shl     dx, 1
seg006:51ED                 shl     dx, 1
seg006:51EF                 mov     bp, word_2ACB2
seg006:51F3                 shr     bp, 1
seg006:51F5                 shr     bp, 1
seg006:51F7                 shr     bp, 1
seg006:51F9
seg006:51F9 loc_13049:                              ; CODE XREF: sub_12F6F+E9␙j
seg006:51F9                 add     [si+308Eh], ax
seg006:51FD                 add     [si+3D0Eh], dx
seg006:5201                 add     [si+240Eh], bp
seg006:5205                 add     si, 2
seg006:5208                 loop    loc_13049
seg006:520A                 pop     cx
seg006:520B                 retn
seg006:520C ; ---------------------------------------------------------------------------
seg006:520C
seg006:520C loc_1305C:                              ; CODE XREF: sub_12F6F+9B␘j
seg006:520C                                         ; sub_12F6F+A1␘j ...
seg006:520C                 mov     byte_28457, cl
seg006:5210                 call    sub_1528D
seg006:5213                 pop     cx
seg006:5214                 mov     cl, ch
seg006:5216                 sub     ch, ch
seg006:5218                 retn
seg006:5218 sub_12F6F       endp
seg006:5218
seg006:5219
