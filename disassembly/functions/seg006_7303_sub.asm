seg006:7303 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7303
seg006:7303
seg006:7303 sub_15153       proc near               ; CODE XREF: sub_12D67+1D9␘p
seg006:7303                                         ; sub_13069+A5␘p ...
seg006:7303                 push    dx
seg006:7304                 sub     cx, word_2AD0E
seg006:7308                 mov     bp, word_2844A
seg006:730C                 mov     ax, word_2AAC2
seg006:730F                 cmp     ax, 640h
seg006:7312                 jb      short loc_1517B
seg006:7314                 mov     bx, word_2AD10
seg006:7318                 sub     bx, 2
seg006:731B                 js      short loc_15179
seg006:731D                 mov     word ptr [bx-4EBBh], 0
seg006:7323                 mov     word ptr [bx-4D7Bh], 0
seg006:7329
seg006:7329 loc_15179:                              ; CODE XREF: sub_15153+18␘j
seg006:7329                 pop     dx
seg006:732A                 retn
seg006:732B ; ---------------------------------------------------------------------------
seg006:732B
seg006:732B loc_1517B:                              ; CODE XREF: sub_15153+F␘j
seg006:732B                 mov     di, ax
seg006:732D                 shl     di, 1
seg006:732F                 mov     bx, di
seg006:7331                 shl     di, 1
seg006:7333                 shl     di, 1
seg006:7335                 add     di, bx
seg006:7337                 add     ax, cx
seg006:7339                 cmp     ax, 640h
seg006:733C                 jb      short loc_15196
seg006:733E                 sub     ax, 640h
seg006:7341                 sub     cx, ax
seg006:7343                 mov     ax, 640h
seg006:7346
seg006:7346 loc_15196:                              ; CODE XREF: sub_15153+39␘j
seg006:7346                 xchg    ax, word_2AAC2
seg006:734A                 mov     bx, word_2AD10
seg006:734E                 sub     bx, 2
seg006:7351                 js      short loc_151CE
seg006:7353                 mov     [bx-4EBBh], ax
seg006:7357                 mov     [bx-4D7Bh], cx
seg006:735B                 cmp     word ptr [bx-5C7Bh], 10h
seg006:7360                 jnz     short loc_151C3
seg006:7362                 cmp     word_2ACBE, 0FFFFh
seg006:7367                 jnz     short loc_151BF
seg006:7369                 mov     word_2ACBE, bx
seg006:736D                 jmp     short loc_151C3
seg006:736F ; ---------------------------------------------------------------------------
seg006:736F
seg006:736F loc_151BF:                              ; CODE XREF: sub_15153+64␘j
seg006:736F                 mov     word_2ACC0, bx
seg006:7373
seg006:7373 loc_151C3:                              ; CODE XREF: sub_15153+5D␘j
seg006:7373                                         ; sub_15153+6A␘j
seg006:7373                 cmp     word ptr [bx-5C7Bh], 0Fh
seg006:7378                 jnz     short loc_151CE
seg006:737A                 mov     word_2ACBC, bx
seg006:737E
seg006:737E loc_151CE:                              ; CODE XREF: sub_15153+4E␘j
seg006:737E                                         ; sub_15153+75␘j
seg006:737E                 add     di, word_2D8A8
seg006:7382                 mov     bx, ds
seg006:7384                 mov     dx, word_2D8A0
seg006:7388                 push    ds
seg006:7389                 mov     ds, word_2D8AA
seg006:738D
seg006:738D loc_151DD:                              ; CODE XREF: sub_15153+FE␙j
seg006:738D                 push    cx
seg006:738E                 mov     ax, es:[si]
seg006:7391                 add     ax, bp
seg006:7393                 mov     [di], ax
seg006:7395                 add     si, 2
seg006:7398                 add     di, 2
seg006:739B                 mov     ax, es:[si]
seg006:739E                 add     ax, bp
seg006:73A0                 mov     cl, ah
seg006:73A2                 and     cl, 0F8h
seg006:73A5                 xor     ah, cl
seg006:73A7                 mov     [di], ax
seg006:73A9                 add     si, 2
seg006:73AC                 add     di, 2
seg006:73AF                 mov     ax, es:[si]
seg006:73B2                 add     ax, bp
seg006:73B4                 mov     ch, ah
seg006:73B6                 and     ch, 0F8h
seg006:73B9                 xor     ah, ch
seg006:73BB                 mov     [di], ax
seg006:73BD                 add     si, 2
seg006:73C0                 add     di, 2
seg006:73C3                 mov     ax, es:[si]
seg006:73C6                 add     ax, bp
seg006:73C8                 mov     [di], ax
seg006:73CA                 add     si, 2
seg006:73CD                 add     di, 2
seg006:73D0                 push    bx
seg006:73D1                 shr     cx, 1
seg006:73D3                 shr     cx, 1
seg006:73D5                 shr     cx, 1
seg006:73D7                 mov     bl, cl
seg006:73D9                 sub     bh, bh
seg006:73DB                 add     bx, dx
seg006:73DD                 mov     cl, [bx]
seg006:73DF                 mov     bl, ch
seg006:73E1                 sub     bh, bh
seg006:73E3                 add     bx, dx
seg006:73E5                 mov     ch, [bx]
seg006:73E7                 sub     bh, bh
seg006:73E9                 pop     ds
seg006:73EA                 cmp     word_2D628, 13h
seg006:73EF                 jz      short loc_15256
seg006:73F1                 and     cx, 0F0Fh
seg006:73F5
seg006:73F5 loc_15245:                              ; CODE XREF: sub_15153+11F␙j
seg006:73F5                                         ; sub_15153+12D␙j ...
seg006:73F5                 mov     bx, ds
seg006:73F7                 mov     ds, word_2D8AA
seg006:73FB                 mov     [di], cx
seg006:73FD                 add     di, 2
seg006:7400                 pop     cx
seg006:7401                 loop    loc_151DD
seg006:7403                 pop     ds
seg006:7404                 pop     dx
seg006:7405                 retn
seg006:7406 ; ---------------------------------------------------------------------------
seg006:7406
seg006:7406 loc_15256:                              ; CODE XREF: sub_15153+EC␘j
seg006:7406                 test    ch, 10h
seg006:7409                 jnz     short loc_15274
seg006:740B                 test    cl, 10h
seg006:740E                 jnz     short loc_15282
seg006:7410                 shl     ch, 1
seg006:7412                 shl     ch, 1
seg006:7414                 shl     ch, 1
seg006:7416                 shl     ch, 1
seg006:7418                 mov     bl, ch
seg006:741A                 or      bl, cl
seg006:741C                 shl     bx, 1
seg006:741E                 mov     cx, [bx-4C3Bh]
seg006:7422                 jmp     short loc_15245
seg006:7424 ; ---------------------------------------------------------------------------
seg006:7424
seg006:7424 loc_15274:                              ; CODE XREF: sub_15153+106␘j
seg006:7424                 mov     bl, ch
seg006:7426                 and     bx, 0Fh
seg006:7429                 mov     ch, [bx-4A3Bh]
seg006:742D                 test    cl, 10h
seg006:7430                 jz      short loc_15245
seg006:7432
seg006:7432 loc_15282:                              ; CODE XREF: sub_15153+10B␘j
seg006:7432                 mov     bl, cl
seg006:7434                 and     bx, 0Fh
seg006:7437                 mov     cl, [bx-4A3Bh]
seg006:743B                 jmp     short loc_15245
seg006:743B sub_15153       endp
seg006:743B
seg006:743D
