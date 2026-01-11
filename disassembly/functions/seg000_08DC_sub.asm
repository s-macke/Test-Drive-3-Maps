seg000:08DC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:08DC
seg000:08DC ; Attributes: bp-based frame
seg000:08DC
seg000:08DC sub_8DC         proc far                ; CODE XREF: sub_0+56␘p
seg000:08DC
seg000:08DC var_6           = word ptr -6
seg000:08DC var_2           = word ptr -2
seg000:08DC
seg000:08DC                 push    bp
seg000:08DD                 mov     bp, sp
seg000:08DF                 sub     sp, 6
seg000:08E2                 call    sub_16A07
seg000:08E7                 mov     word_2DB52, ax
seg000:08EA                 call    sub_168A2
seg000:08EF                 mov     word_2DA66, ax
seg000:08F2                 mov     bx, ax
seg000:08F4                 mov     al, [bx+0EEh]
seg000:08F8                 sub     ah, ah
seg000:08FA                 mov     word_2D8A4, ax
seg000:08FD                 push    word_2DB52
seg000:0901                 call    sub_18ABD
seg000:0906                 add     sp, 2
seg000:0909                 mov     ax, 20Dh
seg000:090C                 push    ax
seg000:090D                 mov     ax, 210h
seg000:0910                 push    ax
seg000:0911                 call    sub_1916A
seg000:0916                 add     sp, 4
seg000:0919                 mov     word_2D896, ax
seg000:091C                 or      ax, ax
seg000:091E                 jz      short loc_98A
seg000:0920                 push    ax
seg000:0921                 mov     ax, 1
seg000:0924                 push    ax
seg000:0925                 mov     ax, 2
seg000:0928                 push    ax
seg000:0929                 mov     ax, 0E7C4h
seg000:092C                 push    ax
seg000:092D                 call    sub_19196
seg000:0932                 add     sp, 8
seg000:0935                 mov     [bp+var_2], ax
seg000:0938                 mov     bx, word_2D8A4
seg000:093C                 mov     al, [bx+0EAh]
seg000:0940                 sub     ah, ah
seg000:0942                 mov     word_2D628, ax
seg000:0945                 push    word_2D896
seg000:0949                 mov     ax, 1
seg000:094C                 push    ax
seg000:094D                 mov     ax, 2
seg000:0950                 push    ax
seg000:0951                 mov     ax, 96h ; 'û'
seg000:0954                 push    ax
seg000:0955                 call    sub_19196
seg000:095A                 add     sp, 8
seg000:095D                 mov     [bp+var_2], ax
seg000:0960                 push    word_2D896
seg000:0964                 mov     ax, 1
seg000:0967                 push    ax
seg000:0968                 mov     ax, 2
seg000:096B                 push    ax
seg000:096C                 mov     ax, 98h ; 'ÿ'
seg000:096F                 push    ax
seg000:0970                 call    sub_19196
seg000:0975                 add     sp, 8
seg000:0978                 mov     [bp+var_2], ax
seg000:097B                 push    word_2D896
seg000:097F                 call    sub_190A2
seg000:0984                 add     sp, 2
seg000:0987                 jmp     loc_BAF
seg000:098A ; ---------------------------------------------------------------------------
seg000:098A
seg000:098A loc_98A:                                ; CODE XREF: sub_8DC+42␘j
seg000:098A                 mov     ax, 218h
seg000:098D                 push    ax
seg000:098E                 call    sub_194CE
seg000:0993                 add     sp, 2
seg000:0996                 mov     ax, 250h
seg000:0999                 push    ax
seg000:099A                 call    sub_194CE
seg000:099F                 add     sp, 2
seg000:09A2                 mov     ax, 275h
seg000:09A5                 push    ax
seg000:09A6                 call    sub_194CE
seg000:09AB                 add     sp, 2
seg000:09AE                 mov     ax, 294h
seg000:09B1                 push    ax
seg000:09B2                 call    sub_194CE
seg000:09B7                 add     sp, 2
seg000:09BA                 mov     ax, 2B5h
seg000:09BD                 push    ax
seg000:09BE                 call    sub_194CE
seg000:09C3                 add     sp, 2
seg000:09C6                 mov     ax, 2C6h
seg000:09C9                 push    ax
seg000:09CA                 call    sub_194CE
seg000:09CF                 add     sp, 2
seg000:09D2                 jmp     short loc_9E7
seg000:09D4 ; ---------------------------------------------------------------------------
seg000:09D4
seg000:09D4 loc_9D4:                                ; CODE XREF: sub_8DC+122␙j
seg000:09D4                 cmp     ax, 31h ; '1'
seg000:09D7                 jl      short loc_9E7
seg000:09D9                 cmp     ax, 34h ; '4'
seg000:09DC                 jg      short loc_9E7
seg000:09DE                 mov     ax, [bp+var_2]
seg000:09E1                 sub     ax, 31h ; '1'
seg000:09E4                 mov     word_2D8A4, ax
seg000:09E7
seg000:09E7 loc_9E7:                                ; CODE XREF: sub_8DC+F6␘j
seg000:09E7                                         ; sub_8DC+FB␘j ...
seg000:09E7                 mov     ax, word_2D8A4
seg000:09EA                 inc     ax
seg000:09EB                 push    ax
seg000:09EC                 push    cs
seg000:09ED                 call    near ptr sub_C34
seg000:09F0                 add     sp, 2
seg000:09F3                 call    sub_19668
seg000:09F8                 mov     [bp+var_2], ax
seg000:09FB                 cmp     ax, 0Dh
seg000:09FE                 jnz     short loc_9D4
seg000:0A00                 cmp     word_2D8A4, 3
seg000:0A05                 jnz     short loc_A0B
seg000:0A07                 push    cs
seg000:0A08                 call    near ptr sub_7BC
seg000:0A0B
seg000:0A0B loc_A0B:                                ; CODE XREF: sub_8DC+129␘j
seg000:0A0B                 mov     ax, word_2D8A4
seg000:0A0E                 mov     word_2D628, ax
seg000:0A11                 cmp     ax, 2
seg000:0A14                 jnz     short loc_A1E
seg000:0A16                 mov     [bp+var_6], 1
seg000:0A1B                 jmp     short loc_A23
seg000:0A1B ; ---------------------------------------------------------------------------
seg000:0A1D                 align 2
seg000:0A1E
seg000:0A1E loc_A1E:                                ; CODE XREF: sub_8DC+138␘j
seg000:0A1E                 mov     [bp+var_6], 0
seg000:0A23
seg000:0A23 loc_A23:                                ; CODE XREF: sub_8DC+13F␘j
seg000:0A23                 mov     ax, 2E5h
seg000:0A26                 push    ax
seg000:0A27                 call    sub_194CE
seg000:0A2C                 add     sp, 2
seg000:0A2F                 mov     ax, 31Bh
seg000:0A32                 push    ax
seg000:0A33                 call    sub_194CE
seg000:0A38                 add     sp, 2
seg000:0A3B                 mov     ax, 336h
seg000:0A3E                 push    ax
seg000:0A3F                 call    sub_194CE
seg000:0A44                 add     sp, 2
seg000:0A47                 mov     ax, 348h
seg000:0A4A                 push    ax
seg000:0A4B                 call    sub_194CE
seg000:0A50                 add     sp, 2
seg000:0A53                 mov     ax, 369h
seg000:0A56                 push    ax
seg000:0A57                 call    sub_194CE
seg000:0A5C                 add     sp, 2
seg000:0A5F                 mov     ax, 38Bh
seg000:0A62                 push    ax
seg000:0A63                 call    sub_194CE
seg000:0A68                 add     sp, 2
seg000:0A6B                 mov     ax, 3A7h
seg000:0A6E                 push    ax
seg000:0A6F                 call    sub_194CE
seg000:0A74                 add     sp, 2
seg000:0A77                 mov     ax, [bp+var_6]
seg000:0A7A                 mov     word_2D8A4, ax
seg000:0A7D                 jmp     short loc_A96
seg000:0A7D ; ---------------------------------------------------------------------------
seg000:0A7F                 align 2
seg000:0A80
seg000:0A80 loc_A80:                                ; CODE XREF: sub_8DC+1CE␙j
seg000:0A80                 cmp     ax, 31h ; '1'
seg000:0A83                 jl      short loc_A93
seg000:0A85                 cmp     ax, 35h ; '5'
seg000:0A88                 jg      short loc_A93
seg000:0A8A                 mov     ax, [bp+var_2]
seg000:0A8D                 sub     ax, 31h ; '1'
seg000:0A90                 mov     word_2D8A4, ax
seg000:0A93
seg000:0A93 loc_A93:                                ; CODE XREF: sub_8DC+1A7␘j
seg000:0A93                                         ; sub_8DC+1AC␘j
seg000:0A93                 mov     ax, word_2D8A4
seg000:0A96
seg000:0A96 loc_A96:                                ; CODE XREF: sub_8DC+1A1␘j
seg000:0A96                 inc     ax
seg000:0A97                 push    ax
seg000:0A98                 push    cs
seg000:0A99                 call    near ptr sub_C58
seg000:0A9C                 add     sp, 2
seg000:0A9F                 call    sub_19668
seg000:0AA4                 mov     [bp+var_2], ax
seg000:0AA7                 cmp     ax, 0Dh
seg000:0AAA                 jnz     short loc_A80
seg000:0AAC                 mov     ax, word_2D8A4
seg000:0AAF                 mov     word_1F176, ax
seg000:0AB2                 mov     ax, 3C7h
seg000:0AB5                 push    ax
seg000:0AB6                 call    sub_194CE
seg000:0ABB                 add     sp, 2
seg000:0ABE                 cmp     word_1F176, 3
seg000:0AC3                 jnz     short loc_AD7
seg000:0AC5                 mov     word_1F178, 1
seg000:0ACB                 mov     ax, 3CAh
seg000:0ACE                 push    ax
seg000:0ACF                 call    sub_194CE
seg000:0AD4                 add     sp, 2
seg000:0AD7
seg000:0AD7 loc_AD7:                                ; CODE XREF: sub_8DC+1E7␘j
seg000:0AD7                 mov     ax, 3FFh
seg000:0ADA                 push    ax
seg000:0ADB                 call    sub_194CE
seg000:0AE0                 add     sp, 2
seg000:0AE3                 mov     word_2D8A4, 0
seg000:0AE9                 sub     ax, ax
seg000:0AEB                 push    ax
seg000:0AEC
seg000:0AEC loc_AEC:                                ; CODE XREF: sub_8DC+244␙j
seg000:0AEC                 push    cs
seg000:0AED                 call    near ptr sub_C7C
seg000:0AF0                 add     sp, 2
seg000:0AF3                 call    sub_19668
seg000:0AF8                 mov     [bp+var_2], ax
seg000:0AFB                 cmp     ax, 0Dh
seg000:0AFE                 jz      short loc_B2A
seg000:0B00                 cmp     ax, 4Eh ; 'N'
seg000:0B03                 jz      short loc_B16
seg000:0B05                 cmp     ax, 59h ; 'Y'
seg000:0B08                 jz      short loc_B22
seg000:0B0A                 cmp     ax, 6Eh ; 'n'
seg000:0B0D                 jz      short loc_B16
seg000:0B0F                 cmp     ax, 79h ; 'y'
seg000:0B12                 jz      short loc_B22
seg000:0B14                 jmp     short loc_B1C
seg000:0B16 ; ---------------------------------------------------------------------------
seg000:0B16
seg000:0B16 loc_B16:                                ; CODE XREF: sub_8DC+227␘j
seg000:0B16                                         ; sub_8DC+231␘j
seg000:0B16                 mov     word_2D8A4, 0
seg000:0B1C
seg000:0B1C loc_B1C:                                ; CODE XREF: sub_8DC+238␘j
seg000:0B1C                                         ; sub_8DC+24C␙j
seg000:0B1C                 push    word_2D8A4
seg000:0B20                 jmp     short loc_AEC
seg000:0B22 ; ---------------------------------------------------------------------------
seg000:0B22
seg000:0B22 loc_B22:                                ; CODE XREF: sub_8DC+22C␘j
seg000:0B22                                         ; sub_8DC+236␘j
seg000:0B22                 mov     word_2D8A4, 1
seg000:0B28                 jmp     short loc_B1C
seg000:0B2A ; ---------------------------------------------------------------------------
seg000:0B2A
seg000:0B2A loc_B2A:                                ; CODE XREF: sub_8DC+222␘j
seg000:0B2A                 cmp     word_2D8A4, 0
seg000:0B2F                 jz      short loc_BA2
seg000:0B31                 mov     ax, 42Ch
seg000:0B34                 push    ax
seg000:0B35                 mov     ax, 430h
seg000:0B38                 push    ax
seg000:0B39                 call    sub_1916A
seg000:0B3E                 add     sp, 4
seg000:0B41                 mov     word_2D896, ax
seg000:0B44                 or      ax, ax
seg000:0B46                 jz      short loc_BA2
seg000:0B48                 push    ax
seg000:0B49                 mov     ax, 1
seg000:0B4C                 push    ax
seg000:0B4D                 mov     ax, 2
seg000:0B50                 push    ax
seg000:0B51                 mov     ax, 0E548h
seg000:0B54                 push    ax
seg000:0B55                 call    sub_19388
seg000:0B5A                 add     sp, 8
seg000:0B5D                 mov     [bp+var_2], ax
seg000:0B60                 push    word_2D896
seg000:0B64                 mov     ax, 1
seg000:0B67                 push    ax
seg000:0B68                 mov     ax, 2
seg000:0B6B                 push    ax
seg000:0B6C                 mov     ax, 96h ; 'û'
seg000:0B6F                 push    ax
seg000:0B70                 call    sub_19388
seg000:0B75                 add     sp, 8
seg000:0B78                 mov     [bp+var_2], ax
seg000:0B7B                 push    word_2D896
seg000:0B7F                 mov     ax, 1
seg000:0B82                 push    ax
seg000:0B83                 mov     ax, 2
seg000:0B86                 push    ax
seg000:0B87                 mov     ax, 98h ; 'ÿ'
seg000:0B8A                 push    ax
seg000:0B8B                 call    sub_19388
seg000:0B90                 add     sp, 8
seg000:0B93                 mov     [bp+var_2], ax
seg000:0B96                 push    word_2D896
seg000:0B9A                 call    sub_190A2
seg000:0B9F                 add     sp, 2
seg000:0BA2
seg000:0BA2 loc_BA2:                                ; CODE XREF: sub_8DC+253␘j
seg000:0BA2                                         ; sub_8DC+26A␘j
seg000:0BA2                 mov     bx, word_2D628
seg000:0BA6                 mov     al, [bx+0EAh]
seg000:0BAA                 sub     ah, ah
seg000:0BAC                 mov     word_2D628, ax
seg000:0BAF
seg000:0BAF loc_BAF:                                ; CODE XREF: sub_8DC+AB␘j
seg000:0BAF                 cmp     word_1F176, 3
seg000:0BB4                 jnz     short loc_BC1
seg000:0BB6                 mov     byte ptr word_1F16F, 1
seg000:0BBB                 mov     word_1F176, 81h ; 'ü'
seg000:0BC1
seg000:0BC1 loc_BC1:                                ; CODE XREF: sub_8DC+2D8␘j
seg000:0BC1                 mov     byte ptr word_1F16F+1, 0
seg000:0BC6                 push    word_2D628
seg000:0BCA                 call    sub_18ABD
seg000:0BCF                 add     sp, 2
seg000:0BD2                 sub     ax, ax
seg000:0BD4                 push    ax
seg000:0BD5                 call    sub_16C1C
seg000:0BDA                 add     sp, 2
seg000:0BDD                 mov     ax, 1
seg000:0BE0                 push    ax
seg000:0BE1                 call    far ptr sub_16D40
seg000:0BE6                 add     sp, 2
seg000:0BE9                 mov     word_2D8A4, ax
seg000:0BEC                 cmp     ax, 8
seg000:0BEF                 jnz     short loc_BFC
seg000:0BF1                 mov     ax, 1
seg000:0BF4                 push    ax
seg000:0BF5                 push    cs
seg000:0BF6                 call    near ptr sub_84C
seg000:0BF9                 add     sp, 2
seg000:0BFC
seg000:0BFC loc_BFC:                                ; CODE XREF: sub_8DC+313␘j
seg000:0BFC                 mov     ax, 1
seg000:0BFF                 push    ax
seg000:0C00                 call    far ptr sub_16B44
seg000:0C05                 add     sp, 2
seg000:0C08                 mov     ax, 1
seg000:0C0B                 push    ax
seg000:0C0C                 call    far ptr sub_16BB0
seg000:0C11                 add     sp, 2
seg000:0C14                 call    sub_16A03
seg000:0C19                 mov     word_280BA, ax
seg000:0C1C                 sub     ax, ax
seg000:0C1E                 push    ax
seg000:0C1F                 call    far ptr sub_16BB0
seg000:0C24                 add     sp, 2
seg000:0C27                 call    sub_16A03
seg000:0C2C                 mov     word_280B8, ax
seg000:0C2F                 mov     sp, bp
seg000:0C31                 pop     bp
seg000:0C32                 retf
seg000:0C32 sub_8DC         endp
seg000:0C32
seg000:0C32 ; ---------------------------------------------------------------------------
seg000:0C33                 align 2
seg000:0C34
