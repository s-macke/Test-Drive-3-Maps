seg032:0185 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0185
seg032:0185
seg032:0185 sub_1B325       proc near               ; CODE XREF: seg032:001A␘p
seg032:0185                                         ; seg032:loc_1B1F4␘p ...
seg032:0185                 mov     bx, word_2BDAF
seg032:0189                 sub     bx, word_2BDAB
seg032:018D                 cmp     word_2BDA7, 0
seg032:0192                 jge     short loc_1B33C
seg032:0194                 mov     word_2BDA7, 0
seg032:019A                 jmp     short loc_1B35E
seg032:019C ; ---------------------------------------------------------------------------
seg032:019C
seg032:019C loc_1B33C:                              ; CODE XREF: sub_1B325+D␘j
seg032:019C                 cmp     word_2BDA7, bx
seg032:01A0                 jle     short loc_1B35E
seg032:01A2                 cmp     byte_2BDB2, 0
seg032:01A7                 jz      short loc_1B355
seg032:01A9                 mov     word_2BDA7, 0
seg032:01AF                 inc     word_2BDA5
seg032:01B3                 jmp     short loc_1B35E
seg032:01B5 ; ---------------------------------------------------------------------------
seg032:01B5
seg032:01B5 loc_1B355:                              ; CODE XREF: sub_1B325+22␘j
seg032:01B5                 mov     word_2BDA7, bx
seg032:01B9                 mov     byte_2BDB1, 1
seg032:01BE
seg032:01BE loc_1B35E:                              ; CODE XREF: sub_1B325+15␘j
seg032:01BE                                         ; sub_1B325+1B␘j ...
seg032:01BE                 mov     bx, word_2BDAD
seg032:01C2                 sub     bx, word_2BDA9
seg032:01C6                 cmp     word_2BDA5, 0
seg032:01CB                 jge     short loc_1B375
seg032:01CD                 mov     word_2BDA5, 0
seg032:01D3                 jmp     short loc_1B3A3
seg032:01D5 ; ---------------------------------------------------------------------------
seg032:01D5
seg032:01D5 loc_1B375:                              ; CODE XREF: sub_1B325+46␘j
seg032:01D5                 cmp     word_2BDA5, bx
seg032:01D9                 jle     short loc_1B3A3
seg032:01DB                 mov     word_2BDA5, bx
seg032:01DF                 mov     bh, 0
seg032:01E1                 cmp     byte_2B5CC, 0
seg032:01E6                 jnz     short loc_1B38C
seg032:01E8                 mov     bh, byte_2BD69
seg032:01EC
seg032:01EC loc_1B38C:                              ; CODE XREF: sub_1B325+61␘j
seg032:01EC                 mov     ah, 6
seg032:01EE                 mov     al, 1
seg032:01F0                 mov     ch, byte ptr word_2BDA9
seg032:01F4                 mov     cl, byte ptr word_2BDAB
seg032:01F8                 mov     dh, byte ptr word_2BDAD
seg032:01FC                 mov     dl, byte ptr word_2BDAF
seg032:0200                 call    sub_1B681
seg032:0203
seg032:0203 loc_1B3A3:                              ; CODE XREF: sub_1B325+4E␘j
seg032:0203                                         ; sub_1B325+54␘j
seg032:0203                 call    sub_1B4CF
seg032:0206                 mov     al, byte_2BDB1
seg032:0209                 cbw
seg032:020A                 retn
seg032:020A sub_1B325       endp
seg032:020A
seg032:020A ; ---------------------------------------------------------------------------
seg032:020B                 align 2
seg032:020C                 db 4 dup(0FFh), 0, 2Ah, 2 dup(0), 2Ah, 3 dup(0), 2Ah, 15h
seg032:020C                 db 2 dup(0), 4 dup(0FFh), 0, 2 dup(2Ah), 0, 2Ah, 0, 2Ah
seg032:020C                 db 0, 3 dup(2Ah), 0, 4 dup(0FFh), 15h, 3Fh, 15h, 0, 3Fh
seg032:020C                 db 2 dup(15h), 0, 2 dup(3Fh), 15h, 0, 4 dup(0FFh), 15h
seg032:020C                 db 2 dup(3Fh), 0, 3Fh, 15h, 3Fh, 0, 3 dup(3Fh), 0
seg032:024C
