seg006:31CE ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:31CE
seg006:31CE
seg006:31CE sub_1101E       proc near               ; CODE XREF: sub_10F0A+14␘p
seg006:31CE                 mov     si, word_2849A
seg006:31D2                 shl     si, 1
seg006:31D4                 jmp     short loc_11076
seg006:31D6 ; ---------------------------------------------------------------------------
seg006:31D6
seg006:31D6 loc_11026:                              ; CODE XREF: sub_1101E+5B␙j
seg006:31D6                 mov     bx, [si-7592h]
seg006:31DA                 mov     ax, [bx-6681h]
seg006:31DE                 test    al, 0C0h
seg006:31E0                 jz      short loc_11052
seg006:31E2                 test    al, 40h
seg006:31E4                 jz      short loc_11042
seg006:31E6                 mov     cx, [bx-6181h]
seg006:31EA                 add     cx, word_285A5
seg006:31EE                 mov     [bx-6181h], cx
seg006:31F2
seg006:31F2 loc_11042:                              ; CODE XREF: sub_1101E+16␘j
seg006:31F2                 test    al, 80h
seg006:31F4                 jz      short loc_11052
seg006:31F6                 mov     cx, [bx-6401h]
seg006:31FA                 add     cx, word_285A3
seg006:31FE                 mov     [bx-6401h], cx
seg006:3202
seg006:3202 loc_11052:                              ; CODE XREF: sub_1101E+12␘j
seg006:3202                                         ; sub_1101E+26␘j
seg006:3202                 mov     cx, ax
seg006:3204                 and     ah, 1Fh
seg006:3207                 jz      short loc_1107C
seg006:3209                 dec     byte ptr [bx-6680h]
seg006:320D                 dec     ah
seg006:320F                 jnz     short loc_11076
seg006:3211                 xchg    ax, bx
seg006:3212                 and     bl, 3Fh
seg006:3215                 shl     bx, 1
seg006:3217                 mov     bx, [bx-6AE3h]
seg006:321B                 and     cx, 0E0C0h
seg006:321F                 or      bx, cx
seg006:3221                 xchg    ax, bx
seg006:3222                 mov     [bx-6681h], ax
seg006:3226
seg006:3226 loc_11076:                              ; CODE XREF: sub_1101E+6␘j
seg006:3226                                         ; sub_1101E+41␘j ...
seg006:3226                 sub     si, 2
seg006:3229                 jns     short loc_11026
seg006:322B                 retn
seg006:322C ; ---------------------------------------------------------------------------
seg006:322C
seg006:322C loc_1107C:                              ; CODE XREF: sub_1101E+39␘j
seg006:322C                 cmp     al, 6
seg006:322E                 jb      short loc_11076
seg006:3230                 cmp     al, 8
seg006:3232                 ja      short loc_11076
seg006:3234                 sub     ah, ah
seg006:3236                 sub     al, 6
seg006:3238                 mov     di, ax
seg006:323A                 mov     al, byte_2849F
seg006:323D                 sub     al, 9
seg006:323F                 js      short loc_11076
seg006:3241                 neg     al
seg006:3243                 add     al, 0Bh
seg006:3245                 mov     dx, ax
seg006:3247                 mov     al, [di-469Eh]
seg006:324B                 cbw
seg006:324C                 add     [bx-6401h], ax
seg006:3250                 mov     al, [di-469Bh]
seg006:3254                 cbw
seg006:3255                 add     [bx-6181h], ax
seg006:3259                 add     di, dx
seg006:325B                 add     di, dx
seg006:325D                 add     di, dx
seg006:325F                 mov     al, [di-4698h]
seg006:3263                 sub     ah, ah
seg006:3265                 add     ax, word_291DF
seg006:3269                 sub     ax, word_284AB
seg006:326D                 mov     [bx-5F01h], ax
seg006:3271                 jmp     short loc_11076
seg006:3271 sub_1101E       endp
seg006:3271
seg006:3273
