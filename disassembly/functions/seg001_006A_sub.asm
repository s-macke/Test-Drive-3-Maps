seg001:006A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:006A
seg001:006A ; Attributes: bp-based frame
seg001:006A
seg001:006A sub_1DAA        proc far                ; CODE XREF: sub_0+158␘P
seg001:006A
seg001:006A var_E           = word ptr -0Eh
seg001:006A var_C           = word ptr -0Ch
seg001:006A var_A           = word ptr -0Ah
seg001:006A var_8           = word ptr -8
seg001:006A var_6           = word ptr -6
seg001:006A var_4           = word ptr -4
seg001:006A var_2           = word ptr -2
seg001:006A
seg001:006A                 push    bp
seg001:006B                 mov     bp, sp
seg001:006D                 sub     sp, 0Eh
seg001:0070                 mov     byte_280DC, 80h ; 'Ç'
seg001:0075                 mov     ax, 0E8Ah
seg001:0078                 push    ax
seg001:0079                 mov     ax, 0A9Ch
seg001:007C                 push    ax
seg001:007D                 call    sub_195EA
seg001:0082                 add     sp, 4
seg001:0085                 mov     ax, 0A9Ah
seg001:0088                 push    ax
seg001:0089                 call    sub_CA8
seg001:008E                 add     sp, 2
seg001:0091                 mov     byte_1F17F, 0
seg001:0096                 mov     byte_1F16C, 0
seg001:009B                 sub     al, al
seg001:009D                 mov     byte_2A6B6, al
seg001:00A0                 sub     ah, ah
seg001:00A2                 push    ax
seg001:00A3                 push    cs
seg001:00A4                 call    near ptr sub_3A5C
seg001:00A7                 add     sp, 2
seg001:00AA                 sub     ax, ax
seg001:00AC                 mov     word_1FBE2, ax
seg001:00AF                 mov     word_1FBDE, ax
seg001:00B2                 mov     ax, 0E97h
seg001:00B5                 push    ax
seg001:00B6                 mov     ax, 0A9Ch
seg001:00B9                 push    ax
seg001:00BA                 call    sub_195EA
seg001:00BF                 add     sp, 4
seg001:00C2                 push    word_2BF4E
seg001:00C6                 push    word_2BF4C
seg001:00CA                 mov     ax, 0A9Ah
seg001:00CD                 push    ax
seg001:00CE                 call    sub_E26
seg001:00D3                 add     sp, 6
seg001:00D6                 mov     ax, 240Ch
seg001:00D9                 push    ds
seg001:00DA                 push    ax
seg001:00DB                 push    word_2BF4E
seg001:00DF                 push    word_2BF4C
seg001:00E3                 call    sub_A8EF
seg001:00E8                 add     sp, 8
seg001:00EB                 mov     ax, 1
seg001:00EE                 mov     word_1F17A, ax
seg001:00F1                 push    ax
seg001:00F2                 call    far ptr sub_16BB0
seg001:00F7                 add     sp, 2
seg001:00FA                 sub     ax, ax
seg001:00FC                 push    ax
seg001:00FD                 mov     ax, 0C7h ; '¦'
seg001:0100                 push    ax
seg001:0101                 sub     ax, ax
seg001:0103                 push    ax
seg001:0104                 mov     ax, 140h
seg001:0107                 push    ax
seg001:0108                 mov     ax, 0A77h
seg001:010B                 push    ax
seg001:010C                 mov     ax, 240Ch
seg001:010F                 push    ax
seg001:0110                 push    cs
seg001:0111                 call    near ptr sub_7696
seg001:0114                 add     sp, 0Ch
seg001:0117                 cmp     word_2D628, 13h
seg001:011C                 jnz     short loc_1E74
seg001:011E                 mov     [bp+var_E], 80h ; 'Ç'
seg001:0123                 mov     [bp+var_2], 91h ; 'æ'
seg001:0128                 mov     [bp+var_4], 92h ; 'Æ'
seg001:012D                 mov     [bp+var_8], 94h ; 'ö'
seg001:0132                 jmp     short loc_1E88
seg001:0134 ; ---------------------------------------------------------------------------
seg001:0134
seg001:0134 loc_1E74:                               ; CODE XREF: sub_1DAA+B2␘j
seg001:0134                 mov     [bp+var_E], 0
seg001:0139                 mov     [bp+var_2], 4
seg001:013E                 mov     [bp+var_4], 0Ch
seg001:0143                 mov     [bp+var_8], 4
seg001:0148
seg001:0148 loc_1E88:                               ; CODE XREF: sub_1DAA+C8␘j
seg001:0148                 push    cs
seg001:0149                 call    near ptr sub_391C
seg001:014C                 cmp     byte_1F16C, 0
seg001:0151                 jz      short loc_1E9A
seg001:0153
seg001:0153 loc_1E93:                               ; CODE XREF: sub_1DAA+249␙j
seg001:0153                                         ; sub_1DAA+26E␙j ...
seg001:0153                 sub     ax, ax
seg001:0155                 mov     sp, bp
seg001:0157                 pop     bp
seg001:0158                 retf
seg001:0158 ; ---------------------------------------------------------------------------
seg001:0159                 align 2
seg001:015A
seg001:015A loc_1E9A:                               ; CODE XREF: sub_1DAA+E7␘j
seg001:015A                 push    [bp+var_E]
seg001:015D                 call    far ptr sub_16A93
seg001:0162                 add     sp, 2
seg001:0165                 mov     ax, 41h ; 'A'
seg001:0168                 push    ax
seg001:0169                 sub     ax, ax
seg001:016B                 push    ax
seg001:016C                 call    sub_16A1A
seg001:0171                 add     sp, 4
seg001:0174                 mov     ax, 5
seg001:0177                 push    ax
seg001:0178                 mov     ax, 1
seg001:017B                 push    ax
seg001:017C                 mov     ax, 0E998h
seg001:017F                 push    ax
seg001:0180                 call    far ptr sub_18596
seg001:0185                 add     sp, 6
seg001:0188                 push    [bp+var_2]
seg001:018B                 call    far ptr sub_16A93
seg001:0190                 add     sp, 2
seg001:0193                 mov     ax, 5
seg001:0196                 push    ax
seg001:0197                 mov     ax, 2
seg001:019A                 push    ax
seg001:019B                 mov     ax, 0E9A2h
seg001:019E                 push    ax
seg001:019F                 call    far ptr sub_18596
seg001:01A4                 add     sp, 6
seg001:01A7                 push    [bp+var_4]
seg001:01AA                 call    far ptr sub_16A93
seg001:01AF                 add     sp, 2
seg001:01B2                 mov     ax, 5
seg001:01B5                 push    ax
seg001:01B6                 mov     ax, 2
seg001:01B9                 push    ax
seg001:01BA                 mov     ax, 0E9ACh
seg001:01BD                 push    ax
seg001:01BE                 call    far ptr sub_18596
seg001:01C3                 add     sp, 6
seg001:01C6                 push    [bp+var_8]
seg001:01C9                 call    far ptr sub_16A93
seg001:01CE                 add     sp, 2
seg001:01D1                 mov     ax, 5
seg001:01D4                 push    ax
seg001:01D5                 mov     ax, 2
seg001:01D8                 push    ax
seg001:01D9                 mov     ax, 0E9B6h
seg001:01DC                 push    ax
seg001:01DD                 call    far ptr sub_18596
seg001:01E2                 add     sp, 6
seg001:01E5                 mov     word_1F180, 0
seg001:01EB                 mov     [bp+var_6], 0
seg001:01F0                 jmp     loc_1FD3
seg001:01F0 ; ---------------------------------------------------------------------------
seg001:01F3                 align 2
seg001:01F4
seg001:01F4 loc_1F34:                               ; CODE XREF: sub_1DAA+198␙j
seg001:01F4                 call    sub_E9E
seg001:01F9                 mov     [bp+var_A], ax
seg001:01FC
seg001:01FC loc_1F3C:                               ; CODE XREF: sub_1DAA:loc_1FF6␙j
seg001:01FC                 mov     ax, word_1F180
seg001:01FF                 cmp     [bp+var_C], ax
seg001:0202                 jz      short loc_1F34
seg001:0204                 mov     ax, 41h ; 'A'
seg001:0207                 push    ax
seg001:0208                 push    [bp+var_6]
seg001:020B                 call    sub_16A1A
seg001:0210                 add     sp, 4
seg001:0213                 push    [bp+var_8]
seg001:0216                 call    far ptr sub_16A93
seg001:021B                 add     sp, 2
seg001:021E                 mov     ax, 5
seg001:0221                 push    ax
seg001:0222                 mov     ax, 2
seg001:0225                 push    ax
seg001:0226                 mov     ax, 0E9B6h
seg001:0229                 push    ax
seg001:022A                 call    far ptr sub_1805D
seg001:022F                 add     sp, 6
seg001:0232                 push    [bp+var_4]
seg001:0235                 call    far ptr sub_16A93
seg001:023A                 add     sp, 2
seg001:023D                 mov     ax, 5
seg001:0240                 push    ax
seg001:0241                 mov     ax, 2
seg001:0244                 push    ax
seg001:0245                 mov     ax, 0E9ACh
seg001:0248                 push    ax
seg001:0249                 call    far ptr sub_1805D
seg001:024E                 add     sp, 6
seg001:0251                 push    [bp+var_2]
seg001:0254                 call    far ptr sub_16A93
seg001:0259                 add     sp, 2
seg001:025C                 mov     ax, 5
seg001:025F                 push    ax
seg001:0260                 mov     ax, 2
seg001:0263                 push    ax
seg001:0264                 mov     ax, 0E9A2h
seg001:0267                 push    ax
seg001:0268                 call    far ptr sub_1805D
seg001:026D                 add     sp, 6
seg001:0270                 push    [bp+var_E]
seg001:0273                 call    far ptr sub_16A93
seg001:0278                 add     sp, 2
seg001:027B                 mov     ax, 5
seg001:027E                 push    ax
seg001:027F                 mov     ax, 1
seg001:0282                 push    ax
seg001:0283                 mov     ax, 0E998h
seg001:0286                 push    ax
seg001:0287                 call    far ptr sub_1805D
seg001:028C                 add     sp, 6
seg001:028F                 add     [bp+var_6], 2
seg001:0293
seg001:0293 loc_1FD3:                               ; CODE XREF: sub_1DAA+186␘j
seg001:0293                 cmp     [bp+var_6], 121h
seg001:0298                 jge     short loc_1FFA
seg001:029A                 mov     ax, word_1F180
seg001:029D                 mov     [bp+var_C], ax
seg001:02A0                 lea     ax, [bp+var_A]
seg001:02A3                 push    ax
seg001:02A4                 call    sub_EC6
seg001:02A9                 add     sp, 2
seg001:02AC                 cmp     byte_1F16C, 0
seg001:02B1                 jz      short loc_1FF6
seg001:02B3                 jmp     loc_1E93
seg001:02B6 ; ---------------------------------------------------------------------------
seg001:02B6
seg001:02B6 loc_1FF6:                               ; CODE XREF: sub_1DAA+247␘j
seg001:02B6                 jmp     loc_1F3C
seg001:02B6 ; ---------------------------------------------------------------------------
seg001:02B9                 align 2
seg001:02BA
seg001:02BA loc_1FFA:                               ; CODE XREF: sub_1DAA+22E␘j
seg001:02BA                 cmp     word_2D628, 13h
seg001:02BF                 jnz     short loc_2006
seg001:02C1                 mov     ax, 2Ch ; ','
seg001:02C4                 jmp     short loc_2009
seg001:02C6 ; ---------------------------------------------------------------------------
seg001:02C6
seg001:02C6 loc_2006:                               ; CODE XREF: sub_1DAA+255␘j
seg001:02C6                 mov     ax, 3
seg001:02C9
seg001:02C9 loc_2009:                               ; CODE XREF: sub_1DAA+25A␘j
seg001:02C9                 push    ax
seg001:02CA                 push    cs
seg001:02CB                 call    near ptr sub_38C8
seg001:02CE                 add     sp, 2
seg001:02D1                 cmp     byte_1F16C, 0
seg001:02D6                 jz      short loc_201B
seg001:02D8                 jmp     loc_1E93
seg001:02DB ; ---------------------------------------------------------------------------
seg001:02DB
seg001:02DB loc_201B:                               ; CODE XREF: sub_1DAA+26C␘j
seg001:02DB                 mov     byte_280DC, 0
seg001:02E0                 mov     ax, 0E9Fh
seg001:02E3                 push    ax
seg001:02E4                 mov     ax, 0A9Ch
seg001:02E7                 push    ax
seg001:02E8                 call    sub_195EA
seg001:02ED                 add     sp, 4
seg001:02F0                 mov     ax, 0A9Ah
seg001:02F3                 push    ax
seg001:02F4                 call    sub_CA8
seg001:02F9                 add     sp, 2
seg001:02FC                 mov     ax, 1
seg001:02FF                 mov     word_1F17A, ax
seg001:0302                 push    ax
seg001:0303                 call    far ptr sub_16BB0
seg001:0308                 add     sp, 2
seg001:030B                 mov     ax, 0EACh
seg001:030E                 push    ax
seg001:030F                 mov     ax, 0A9Ch
seg001:0312                 push    ax
seg001:0313                 call    sub_195EA
seg001:0318                 add     sp, 4
seg001:031B                 push    word_2BF4E
seg001:031F                 push    word_2BF4C
seg001:0323                 mov     ax, 0A9Ah
seg001:0326                 push    ax
seg001:0327                 call    sub_E26
seg001:032C                 add     sp, 6
seg001:032F                 mov     ax, 240Ch
seg001:0332                 push    ds
seg001:0333                 push    ax
seg001:0334                 push    word_2BF4E
seg001:0338                 push    word_2BF4C
seg001:033C                 call    sub_A8EF
seg001:0341                 add     sp, 8
seg001:0344                 sub     ax, ax
seg001:0346                 push    ax
seg001:0347                 mov     ax, 0C7h ; '¦'
seg001:034A                 push    ax
seg001:034B                 sub     ax, ax
seg001:034D                 push    ax
seg001:034E                 mov     ax, 0A0h ; 'á'
seg001:0351                 push    ax
seg001:0352                 mov     ax, 2464h
seg001:0355                 push    ax
seg001:0356                 mov     ax, 240Ch
seg001:0359                 push    ax
seg001:035A                 push    cs
seg001:035B                 call    near ptr sub_7696
seg001:035E                 add     sp, 0Ch
seg001:0361                 mov     ax, 0EB6h
seg001:0364                 push    ax
seg001:0365                 mov     ax, 0A9Ch
seg001:0368                 push    ax
seg001:0369                 call    sub_195EA
seg001:036E                 add     sp, 4
seg001:0371                 push    word_2BF4E
seg001:0375                 push    word_2BF4C
seg001:0379                 mov     ax, 0A9Ah
seg001:037C                 push    ax
seg001:037D                 call    sub_E26
seg001:0382                 add     sp, 6
seg001:0385                 mov     ax, 240Ch
seg001:0388                 push    ds
seg001:0389                 push    ax
seg001:038A                 push    word_2BF4E
seg001:038E                 push    word_2BF4C
seg001:0392                 call    sub_A8EF
seg001:0397                 add     sp, 8
seg001:039A                 mov     ax, 1
seg001:039D                 push    ax
seg001:039E                 mov     ax, 63h ; 'c'
seg001:03A1                 push    ax
seg001:03A2                 sub     ax, ax
seg001:03A4                 push    ax
seg001:03A5                 mov     ax, 0A0h ; 'á'
seg001:03A8                 push    ax
seg001:03A9                 mov     ax, 2715h
seg001:03AC                 push    ax
seg001:03AD                 mov     ax, 240Ch
seg001:03B0                 push    ax
seg001:03B1                 push    cs
seg001:03B2                 call    near ptr sub_7696
seg001:03B5                 add     sp, 0Ch
seg001:03B8                 call    sub_D4EF
seg001:03BD                 push    cs
seg001:03BE                 call    near ptr sub_391C
seg001:03C1                 cmp     byte_1F16C, 0
seg001:03C6                 jz      short loc_210B
seg001:03C8                 jmp     loc_1E93
seg001:03CB ; ---------------------------------------------------------------------------
seg001:03CB
seg001:03CB loc_210B:                               ; CODE XREF: sub_1DAA+35C␘j
seg001:03CB                 mov     ax, 1
seg001:03CE                 mov     word_1F17A, ax
seg001:03D1                 push    ax
seg001:03D2                 call    far ptr sub_16BB0
seg001:03D7                 add     sp, 2
seg001:03DA                 mov     byte_280DC, 80h ; 'Ç'
seg001:03DF                 mov     ax, 0EC0h
seg001:03E2                 push    ax
seg001:03E3                 mov     ax, 0A9Ch
seg001:03E6                 push    ax
seg001:03E7                 call    sub_195EA
seg001:03EC                 add     sp, 4
seg001:03EF                 mov     ax, 0A9Ah
seg001:03F2                 push    ax
seg001:03F3                 call    sub_CA8
seg001:03F8                 add     sp, 2
seg001:03FB                 mov     byte_280DC, 0
seg001:0400                 cmp     word_2D628, 13h
seg001:0405                 jnz     short loc_219D
seg001:0407                 mov     ax, 0ECDh
seg001:040A                 push    ax
seg001:040B                 mov     ax, 0A9Ch
seg001:040E                 push    ax
seg001:040F                 call    sub_195EA
seg001:0414                 add     sp, 4
seg001:0417                 push    word_2BF4E
seg001:041B                 push    word_2BF4C
seg001:041F                 mov     ax, 0A9Ah
seg001:0422                 push    ax
seg001:0423                 call    sub_E26
seg001:0428                 add     sp, 6
seg001:042B                 mov     ax, 240Ch
seg001:042E                 push    ds
seg001:042F                 push    ax
seg001:0430                 push    word_2BF4E
seg001:0434                 push    word_2BF4C
seg001:0438                 call    sub_A8EF
seg001:043D                 add     sp, 8
seg001:0440                 sub     ax, ax
seg001:0442                 push    ax
seg001:0443                 mov     ax, 0C7h ; '¦'
seg001:0446                 push    ax
seg001:0447                 sub     ax, ax
seg001:0449                 push    ax
seg001:044A                 mov     ax, 140h
seg001:044D                 push    ax
seg001:044E                 mov     ax, 2DE3h
seg001:0451                 push    ax
seg001:0452                 mov     ax, 240Ch
seg001:0455                 push    ax
seg001:0456                 push    cs
seg001:0457                 call    near ptr sub_7696
seg001:045A                 add     sp, 0Ch
seg001:045D
seg001:045D loc_219D:                               ; CODE XREF: sub_1DAA+39B␘j
seg001:045D                 mov     ax, 0ED9h
seg001:0460                 push    ax
seg001:0461                 mov     ax, 0A9Ch
seg001:0464                 push    ax
seg001:0465                 call    sub_195EA
seg001:046A                 add     sp, 4
seg001:046D                 push    word_2BF4E
seg001:0471                 push    word_2BF4C
seg001:0475                 mov     ax, 0A9Ah
seg001:0478                 push    ax
seg001:0479                 call    sub_E26
seg001:047E                 add     sp, 6
seg001:0481                 mov     ax, 240Ch
seg001:0484                 push    ds
seg001:0485                 push    ax
seg001:0486                 push    word_2BF4E
seg001:048A                 push    word_2BF4C
seg001:048E                 call    sub_A8EF
seg001:0493                 add     sp, 8
seg001:0496                 cmp     word_2D628, 13h
seg001:049B                 jz      short loc_21E0
seg001:049D                 jmp     loc_240C
seg001:04A0 ; ---------------------------------------------------------------------------
seg001:04A0
seg001:04A0 loc_21E0:                               ; CODE XREF: sub_1DAA+431␘j
seg001:04A0                 sub     ax, ax
seg001:04A2                 push    ax
seg001:04A3                 mov     ax, 1
seg001:04A6                 push    ax
seg001:04A7                 mov     ax, 86h ; 'å'
seg001:04AA                 push    ax
seg001:04AB                 mov     ax, 94h ; 'ö'
seg001:04AE                 push    ax
seg001:04AF                 mov     ax, 91h ; 'æ'
seg001:04B2                 push    ax
seg001:04B3                 mov     ax, 89h ; 'ë'
seg001:04B6                 push    ax
seg001:04B7                 mov     ax, 69h ; 'i'
seg001:04BA                 push    ax
seg001:04BB                 mov     ax, 53h ; 'S'
seg001:04BE                 push    ax
seg001:04BF                 call    far ptr sub_17BE5
seg001:04C4                 add     sp, 10h
seg001:04C7                 mov     ax, 2
seg001:04CA                 push    ax
seg001:04CB                 call    sub_16A5D
seg001:04D0                 add     sp, 2
seg001:04D3                 sub     ax, ax
seg001:04D5                 push    ax
seg001:04D6                 mov     ax, 1
seg001:04D9                 push    ax
seg001:04DA                 mov     ax, 87h ; 'ç'
seg001:04DD                 push    ax
seg001:04DE                 mov     ax, 93h ; 'ô'
seg001:04E1                 push    ax
seg001:04E2                 mov     ax, 91h ; 'æ'
seg001:04E5                 push    ax
seg001:04E6                 mov     ax, 88h ; 'ê'
seg001:04E9                 push    ax
seg001:04EA                 mov     ax, 52h ; 'R'
seg001:04ED                 push    ax
seg001:04EE                 mov     ax, 3Ah ; ':'
seg001:04F1                 push    ax
seg001:04F2                 call    far ptr sub_17BE5
seg001:04F7                 add     sp, 10h
seg001:04FA                 mov     ax, 2
seg001:04FD                 push    ax
seg001:04FE                 call    sub_16A5D
seg001:0503                 add     sp, 2
seg001:0506                 sub     ax, ax
seg001:0508                 push    ax
seg001:0509                 mov     ax, 1
seg001:050C                 push    ax
seg001:050D                 mov     ax, 87h ; 'ç'
seg001:0510                 push    ax
seg001:0511                 mov     ax, 92h ; 'Æ'
seg001:0514                 push    ax
seg001:0515                 mov     ax, 91h ; 'æ'
seg001:0518                 push    ax
seg001:0519                 mov     ax, 87h ; 'ç'
seg001:051C                 push    ax
seg001:051D                 mov     ax, 39h ; '9'
seg001:0520                 push    ax
seg001:0521                 mov     ax, 1Eh
seg001:0524                 push    ax
seg001:0525                 call    far ptr sub_17BE5
seg001:052A                 add     sp, 10h
seg001:052D                 mov     ax, 2
seg001:0530                 push    ax
seg001:0531                 call    sub_16A5D
seg001:0536                 add     sp, 2
seg001:0539                 sub     ax, ax
seg001:053B                 push    ax
seg001:053C                 mov     ax, 1
seg001:053F                 push    ax
seg001:0540                 mov     ax, 88h ; 'ê'
seg001:0543                 push    ax
seg001:0544                 mov     ax, 91h ; 'æ'
seg001:0547                 push    ax
seg001:0548                 push    ax
seg001:0549                 mov     ax, 86h ; 'å'
seg001:054C                 push    ax
seg001:054D                 mov     ax, 1Dh
seg001:0550                 push    ax
seg001:0551                 sub     ax, ax
seg001:0553                 push    ax
seg001:0554                 call    far ptr sub_17BE5
seg001:0559                 add     sp, 10h
seg001:055C                 mov     ax, 2
seg001:055F                 push    ax
seg001:0560                 call    sub_16A5D
seg001:0565                 add     sp, 2
seg001:0568                 sub     ax, ax
seg001:056A                 push    ax
seg001:056B                 mov     ax, 1
seg001:056E                 push    ax
seg001:056F                 mov     ax, 8Ah ; 'è'
seg001:0572                 push    ax
seg001:0573                 mov     ax, 8Fh ; 'Å'
seg001:0576                 push    ax
seg001:0577                 mov     ax, 0A5h ; 'Ñ'
seg001:057A                 push    ax
seg001:057B                 mov     ax, 98h ; 'ÿ'
seg001:057E                 push    ax
seg001:057F                 mov     ax, 0FFh
seg001:0582                 push    ax
seg001:0583                 mov     ax, 0DFh ; '¯'
seg001:0586                 push    ax
seg001:0587                 call    far ptr sub_17BE5
seg001:058C                 add     sp, 10h
seg001:058F                 mov     ax, 2
seg001:0592                 push    ax
seg001:0593                 call    sub_16A5D
seg001:0598                 add     sp, 2
seg001:059B                 sub     ax, ax
seg001:059D                 push    ax
seg001:059E                 mov     ax, 1
seg001:05A1                 push    ax
seg001:05A2                 mov     ax, 8Bh ; 'ï'
seg001:05A5                 push    ax
seg001:05A6                 mov     ax, 8Eh ; 'Ä'
seg001:05A9                 push    ax
seg001:05AA                 mov     ax, 9Ch ; '£'
seg001:05AD                 push    ax
seg001:05AE                 mov     ax, 8Dh ; 'ì'
seg001:05B1                 push    ax
seg001:05B2                 mov     ax, 0D3h ; '+'
seg001:05B5                 push    ax
seg001:05B6                 mov     ax, 0B0h ; '¦'
seg001:05B9                 push    ax
seg001:05BA                 call    far ptr sub_17BE5
seg001:05BF                 add     sp, 10h
seg001:05C2                 mov     ax, 2
seg001:05C5                 push    ax
seg001:05C6                 call    sub_16A5D
seg001:05CB                 add     sp, 2
seg001:05CE                 sub     ax, ax
seg001:05D0                 push    ax
seg001:05D1                 mov     ax, 1
seg001:05D4                 push    ax
seg001:05D5                 mov     ax, 91h ; 'æ'
seg001:05D8                 push    ax
seg001:05D9                 mov     ax, 87h ; 'ç'
seg001:05DC                 push    ax
seg001:05DD                 mov     ax, 9Ch ; '£'
seg001:05E0                 push    ax
seg001:05E1                 mov     ax, 86h ; 'å'
seg001:05E4                 push    ax
seg001:05E5                 mov     ax, 0AFh ; '»'
seg001:05E8                 push    ax
seg001:05E9                 mov     ax, 7Eh ; '~'
seg001:05EC                 push    ax
seg001:05ED                 call    far ptr sub_17BE5
seg001:05F2                 add     sp, 10h
seg001:05F5                 mov     ax, 2
seg001:05F8                 push    ax
seg001:05F9                 call    sub_16A5D
seg001:05FE                 add     sp, 2
seg001:0601                 sub     ax, ax
seg001:0603                 push    ax
seg001:0604                 mov     ax, 1
seg001:0607                 push    ax
seg001:0608                 mov     ax, 94h ; 'ö'
seg001:060B                 push    ax
seg001:060C                 mov     ax, 80h ; 'Ç'
seg001:060F                 push    ax
seg001:0610                 mov     ax, 0A5h ; 'Ñ'
seg001:0613                 push    ax
seg001:0614                 mov     ax, 8Ah ; 'è'
seg001:0617                 push    ax
seg001:0618                 mov     ax, 13Fh
seg001:061B                 push    ax
seg001:061C                 mov     ax, 101h
seg001:061F                 push    ax
seg001:0620                 call    far ptr sub_17BE5
seg001:0625                 add     sp, 10h
seg001:0628                 mov     ax, 2
seg001:062B                 push    ax
seg001:062C                 call    sub_16A5D
seg001:0631                 add     sp, 2
seg001:0634                 sub     ax, ax
seg001:0636                 push    ax
seg001:0637                 mov     ax, 1
seg001:063A                 push    ax
seg001:063B                 mov     ax, 98h ; 'ÿ'
seg001:063E                 push    ax
seg001:063F                 mov     ax, 78h ; 'x'
seg001:0642                 push    ax
seg001:0643                 mov     ax, 0C7h ; '¦'
seg001:0646                 push    ax
seg001:0647                 mov     ax, 0A6h ; 'ª'
seg001:064A                 push    ax
seg001:064B                 mov     ax, 12Dh
seg001:064E                 push    ax
seg001:064F                 mov     ax, 0DFh ; '¯'
seg001:0652                 push    ax
seg001:0653                 call    far ptr sub_17BE5
seg001:0658                 add     sp, 10h
seg001:065B                 mov     ax, 2
seg001:065E                 push    ax
seg001:065F                 call    sub_16A5D
seg001:0664                 add     sp, 2
seg001:0667                 sub     ax, ax
seg001:0669                 push    ax
seg001:066A                 mov     ax, 1
seg001:066D                 push    ax
seg001:066E                 mov     ax, 9Eh ; 'P'
seg001:0671                 push    ax
seg001:0672                 mov     ax, 6Fh ; 'o'
seg001:0675                 push    ax
seg001:0676                 mov     ax, 0C7h ; '¦'
seg001:0679                 push    ax
seg001:067A                 mov     ax, 9Dh ; '¥'
seg001:067D                 push    ax
seg001:067E                 mov     ax, 0DEh ; '¦'
seg001:0681                 push    ax
seg001:0682                 mov     ax, 7Eh ; '~'
seg001:0685                 push    ax
seg001:0686                 call    far ptr sub_17BE5
seg001:068B                 add     sp, 10h
seg001:068E                 mov     ax, 2
seg001:0691                 push    ax
seg001:0692                 call    sub_16A5D
seg001:0697                 add     sp, 2
seg001:069A                 sub     ax, ax
seg001:069C                 push    ax
seg001:069D                 mov     ax, 1
seg001:06A0                 push    ax
seg001:06A1                 mov     ax, 0A5h ; 'Ñ'
seg001:06A4                 push    ax
seg001:06A5                 mov     ax, 61h ; 'a'
seg001:06A8                 push    ax
seg001:06A9                 mov     ax, 0C7h ; '¦'
seg001:06AC                 push    ax
seg001:06AD                 mov     ax, 92h ; 'Æ'
seg001:06B0                 push    ax
seg001:06B1                 mov     ax, 7Dh ; '}'
seg001:06B4                 push    ax
seg001:06B5                 sub     ax, ax
seg001:06B7                 push    ax
seg001:06B8                 call    far ptr sub_17BE5
seg001:06BD                 add     sp, 10h
seg001:06C0                 mov     ax, 2
seg001:06C3                 push    ax
seg001:06C4                 call    sub_16A5D
seg001:06C9                 add     sp, 2
seg001:06CC
seg001:06CC loc_240C:                               ; CODE XREF: sub_1DAA+433␘j
seg001:06CC                 sub     ax, ax
seg001:06CE                 push    ax
seg001:06CF                 mov     ax, 52h ; 'R'
seg001:06D2                 push    ax
seg001:06D3                 mov     ax, 30h ; '0'
seg001:06D6                 push    ax
seg001:06D7                 mov     ax, 0F0h ; '='
seg001:06DA                 push    ax
seg001:06DB                 mov     ax, 1FD1h
seg001:06DE                 push    ax
seg001:06DF                 mov     ax, 240Ch
seg001:06E2                 push    ax
seg001:06E3                 push    cs
seg001:06E4                 call    near ptr sub_7696
seg001:06E7                 add     sp, 0Ch
seg001:06EA                 sub     ax, ax
seg001:06EC                 push    ax
seg001:06ED                 mov     ax, 1
seg001:06F0                 push    ax
seg001:06F1                 mov     ax, 52h ; 'R'
seg001:06F4                 push    ax
seg001:06F5                 mov     ax, 30h ; '0'
seg001:06F8                 push    ax
seg001:06F9                 mov     ax, 52h ; 'R'
seg001:06FC                 push    ax
seg001:06FD                 mov     ax, 0Eh
seg001:0700                 push    ax
seg001:0701                 mov     ax, 11Fh
seg001:0704                 push    ax
seg001:0705                 mov     ax, 30h ; '0'
seg001:0708                 push    ax
seg001:0709                 call    far ptr sub_17BE5
seg001:070E                 add     sp, 10h
seg001:0711                 mov     ax, 0EE5h
seg001:0714                 push    ax
seg001:0715                 mov     ax, 0A9Ch
seg001:0718                 push    ax
seg001:0719                 call    sub_195EA
seg001:071E                 add     sp, 4
seg001:0721                 push    word_2BF4E
seg001:0725                 push    word_2BF4C
seg001:0729                 mov     ax, 0A9Ah
seg001:072C                 push    ax
seg001:072D                 call    sub_E26
seg001:0732                 add     sp, 6
seg001:0735                 mov     ax, 240Ch
seg001:0738                 push    ds
seg001:0739                 push    ax
seg001:073A                 push    word_2BF4E
seg001:073E                 push    word_2BF4C
seg001:0742                 call    sub_A8EF
seg001:0747                 add     sp, 8
seg001:074A                 sub     ax, ax
seg001:074C                 push    ax
seg001:074D                 mov     ax, 0C6h ; '¦'
seg001:0750                 push    ax
seg001:0751                 mov     ax, 20h ; ' '
seg001:0754                 push    ax
seg001:0755                 mov     ax, 100h
seg001:0758                 push    ax
seg001:0759                 mov     ax, 0B12h
seg001:075C                 push    ax
seg001:075D                 mov     ax, 240Ch
seg001:0760                 push    ax
seg001:0761                 push    cs
seg001:0762                 call    near ptr sub_7696
seg001:0765                 add     sp, 0Ch
seg001:0768                 sub     ax, ax
seg001:076A                 push    ax
seg001:076B                 mov     ax, 1
seg001:076E                 push    ax
seg001:076F                 mov     ax, 0C6h ; '¦'
seg001:0772                 push    ax
seg001:0773                 mov     ax, 20h ; ' '
seg001:0776                 push    ax
seg001:0777                 mov     ax, 0C6h ; '¦'
seg001:077A                 push    ax
seg001:077B                 mov     ax, 0B4h ; '¦'
seg001:077E                 push    ax
seg001:077F                 mov     ax, 11Fh
seg001:0782                 push    ax
seg001:0783                 mov     ax, 20h ; ' '
seg001:0786                 push    ax
seg001:0787                 call    far ptr sub_17BE5
seg001:078C                 add     sp, 10h
seg001:078F                 mov     ax, 0EF0h
seg001:0792                 push    ax
seg001:0793                 mov     ax, 0A9Ch
seg001:0796                 push    ax
seg001:0797                 call    sub_195EA
seg001:079C                 add     sp, 4
seg001:079F                 push    word_2BF4E
seg001:07A3                 push    word_2BF4C
seg001:07A7                 mov     ax, 0A9Ah
seg001:07AA                 push    ax
seg001:07AB                 call    sub_E26
seg001:07B0                 add     sp, 6
seg001:07B3                 mov     ax, 240Ch
seg001:07B6                 push    ds
seg001:07B7                 push    ax
seg001:07B8                 push    word_2BF4E
seg001:07BC                 push    word_2BF4C
seg001:07C0                 call    sub_A8EF
seg001:07C5                 add     sp, 8
seg001:07C8                 cmp     word_2D628, 13h
seg001:07CD                 jnz     short loc_2524
seg001:07CF                 mov     ax, 28h ; '('
seg001:07D2                 push    ax
seg001:07D3                 push    cs
seg001:07D4                 call    near ptr sub_38C8
seg001:07D7                 add     sp, 2
seg001:07DA                 cmp     byte_1F16C, 0
seg001:07DF                 jz      short loc_2524
seg001:07E1                 jmp     loc_1E93
seg001:07E4 ; ---------------------------------------------------------------------------
seg001:07E4
seg001:07E4 loc_2524:                               ; CODE XREF: sub_1DAA+763␘j
seg001:07E4                                         ; sub_1DAA+775␘j
seg001:07E4                 sub     ax, ax
seg001:07E6                 push    ax
seg001:07E7                 mov     ax, 0A5h ; 'Ñ'
seg001:07EA                 push    ax
seg001:07EB                 mov     ax, 60h ; '`'
seg001:07EE                 push    ax
seg001:07EF                 mov     ax, 80h ; 'Ç'
seg001:07F2                 push    ax
seg001:07F3                 mov     ax, 0F5Eh
seg001:07F6                 push    ax
seg001:07F7                 mov     ax, 240Ch
seg001:07FA                 push    ax
seg001:07FB                 push    cs
seg001:07FC                 call    near ptr sub_7696
seg001:07FF                 add     sp, 0Ch
seg001:0802                 sub     ax, ax
seg001:0804                 push    ax
seg001:0805                 mov     ax, 1
seg001:0808                 push    ax
seg001:0809                 mov     ax, 0A5h ; 'Ñ'
seg001:080C                 push    ax
seg001:080D                 mov     ax, 60h ; '`'
seg001:0810                 push    ax
seg001:0811                 mov     ax, 0A5h ; 'Ñ'
seg001:0814                 push    ax
seg001:0815                 mov     ax, 70h ; 'p'
seg001:0818                 push    ax
seg001:0819                 mov     ax, 0DFh ; '¯'
seg001:081C                 push    ax
seg001:081D                 mov     ax, 60h ; '`'
seg001:0820                 push    ax
seg001:0821                 call    far ptr sub_17BE5
seg001:0826                 add     sp, 10h
seg001:0829                 push    cs
seg001:082A                 call    near ptr sub_39BA
seg001:082D                 sub     ax, ax
seg001:082F                 mov     word_1F17A, ax
seg001:0832                 push    ax
seg001:0833                 call    far ptr sub_16BB0
seg001:0838                 add     sp, 2
seg001:083B                 push    cs
seg001:083C                 call    near ptr sub_39C8
seg001:083F                 push    cs
seg001:0840                 call    near ptr sub_3982
seg001:0843                 mov     byte_280DC, 80h ; 'Ç'
seg001:0848                 cmp     word_2D628, 13h
seg001:084D                 jnz     short loc_2594
seg001:084F                 mov     ax, 28h ; '('
seg001:0852                 jmp     short loc_2597
seg001:0854 ; ---------------------------------------------------------------------------
seg001:0854
seg001:0854 loc_2594:                               ; CODE XREF: sub_1DAA+7E3␘j
seg001:0854                 mov     ax, 3
seg001:0857
seg001:0857 loc_2597:                               ; CODE XREF: sub_1DAA+7E8␘j
seg001:0857                 push    ax
seg001:0858                 push    cs
seg001:0859                 call    near ptr sub_38C8
seg001:085C                 add     sp, 2
seg001:085F                 cmp     byte_1F16C, 0
seg001:0864                 jz      short loc_25A9
seg001:0866                 jmp     loc_1E93
seg001:0869 ; ---------------------------------------------------------------------------
seg001:0869
seg001:0869 loc_25A9:                               ; CODE XREF: sub_1DAA+7FA␘j
seg001:0869                 cmp     word_2D628, 13h
seg001:086E                 jnz     short loc_25E7
seg001:0870                 push    cs
seg001:0871                 call    near ptr sub_3990
seg001:0874                 sub     ax, ax
seg001:0876                 mov     word_1F17A, ax
seg001:0879                 push    ax
seg001:087A                 call    far ptr sub_16BB0
seg001:087F                 add     sp, 2
seg001:0882                 sub     ax, ax
seg001:0884                 push    ax
seg001:0885                 call    far ptr sub_16A93
seg001:088A                 add     sp, 2
seg001:088D                 mov     ax, 0C7h ; '¦'
seg001:0890                 push    ax
seg001:0891                 sub     ax, ax
seg001:0893                 push    ax
seg001:0894                 mov     ax, 13Fh
seg001:0897                 push    ax
seg001:0898                 sub     ax, ax
seg001:089A                 push    ax
seg001:089B                 call    far ptr sub_172BD
seg001:08A0                 add     sp, 8
seg001:08A3                 push    cs
seg001:08A4                 call    near ptr sub_3982
seg001:08A7
seg001:08A7 loc_25E7:                               ; CODE XREF: sub_1DAA+804␘j
seg001:08A7                 mov     byte_1F17F, 0
seg001:08AC                 mov     ax, 1
seg001:08AF                 mov     word_1F17A, ax
seg001:08B2                 push    ax
seg001:08B3                 call    far ptr sub_16BB0
seg001:08B8                 add     sp, 2
seg001:08BB                 xor     byte_280DC, 80h
seg001:08C0                 mov     ax, 0EFCh
seg001:08C3                 push    ax
seg001:08C4                 mov     ax, 0A9Ch
seg001:08C7                 push    ax
seg001:08C8                 call    sub_195EA
seg001:08CD                 add     sp, 4
seg001:08D0                 mov     ax, 0A9Ah
seg001:08D3                 push    ax
seg001:08D4                 call    sub_CA8
seg001:08D9                 add     sp, 2
seg001:08DC                 mov     ax, 0F09h
seg001:08DF                 push    ax
seg001:08E0                 mov     ax, 0A9Ch
seg001:08E3                 push    ax
seg001:08E4                 call    sub_195EA
seg001:08E9                 add     sp, 4
seg001:08EC                 push    word_2BF4E
seg001:08F0                 push    word_2BF4C
seg001:08F4                 mov     ax, 0A9Ah
seg001:08F7                 push    ax
seg001:08F8                 call    sub_E26
seg001:08FD                 add     sp, 6
seg001:0900                 mov     ax, 240Ch
seg001:0903                 push    ds
seg001:0904                 push    ax
seg001:0905                 push    word_2BF4E
seg001:0909                 push    word_2BF4C
seg001:090D                 call    sub_A8EF
seg001:0912                 add     sp, 8
seg001:0915                 sub     ax, ax
seg001:0917                 push    ax
seg001:0918                 mov     ax, 0C7h ; '¦'
seg001:091B                 push    ax
seg001:091C                 sub     ax, ax
seg001:091E                 push    ax
seg001:091F                 mov     ax, 140h
seg001:0922                 push    ax
seg001:0923                 mov     ax, 2E71h
seg001:0926                 push    ax
seg001:0927                 mov     ax, 240Ch
seg001:092A                 push    ax
seg001:092B                 push    cs
seg001:092C                 call    near ptr sub_7696
seg001:092F                 add     sp, 0Ch
seg001:0932                 mov     ax, 0F14h
seg001:0935                 push    ax
seg001:0936                 mov     ax, 0A9Ch
seg001:0939                 push    ax
seg001:093A                 call    sub_195EA
seg001:093F                 add     sp, 4
seg001:0942                 push    word_2BF4E
seg001:0946                 push    word_2BF4C
seg001:094A                 mov     ax, 0A9Ah
seg001:094D                 push    ax
seg001:094E                 call    sub_E26
seg001:0953                 add     sp, 6
seg001:0956                 mov     ax, 240Ch
seg001:0959                 push    ds
seg001:095A                 push    ax
seg001:095B                 push    word_2BF4E
seg001:095F                 push    word_2BF4C
seg001:0963                 call    sub_A8EF
seg001:0968                 add     sp, 8
seg001:096B                 mov     ax, 1
seg001:096E                 push    ax
seg001:096F                 mov     ax, 86h ; 'å'
seg001:0972                 push    ax
seg001:0973                 sub     ax, ax
seg001:0975                 push    ax
seg001:0976                 mov     ax, 140h
seg001:0979                 push    ax
seg001:097A                 mov     ax, 3224h
seg001:097D                 push    ax
seg001:097E                 mov     ax, 240Ch
seg001:0981                 push    ax
seg001:0982                 push    cs
seg001:0983                 call    near ptr sub_7696
seg001:0986                 add     sp, 0Ch
seg001:0989                 mov     ax, 0F1Fh
seg001:098C                 push    ax
seg001:098D                 mov     ax, 0A9Ch
seg001:0990                 push    ax
seg001:0991                 call    sub_195EA
seg001:0996                 add     sp, 4
seg001:0999                 push    word_2BF4E
seg001:099D                 push    word_2BF4C
seg001:09A1                 mov     ax, 0A9Ah
seg001:09A4                 push    ax
seg001:09A5                 call    sub_E26
seg001:09AA                 add     sp, 6
seg001:09AD                 mov     ax, 240Ch
seg001:09B0                 push    ds
seg001:09B1                 push    ax
seg001:09B2                 push    word_2BF4E
seg001:09B6                 push    word_2BF4C
seg001:09BA                 call    sub_A8EF
seg001:09BF                 add     sp, 8
seg001:09C2                 mov     ax, 1
seg001:09C5                 push    ax
seg001:09C6                 mov     ax, 45h ; 'E'
seg001:09C9                 push    ax
seg001:09CA                 sub     ax, ax
seg001:09CC                 push    ax
seg001:09CD                 mov     ax, 140h
seg001:09D0                 push    ax
seg001:09D1                 mov     ax, 2CCEh
seg001:09D4                 push    ax
seg001:09D5                 mov     ax, 240Ch
seg001:09D8                 push    ax
seg001:09D9                 push    cs
seg001:09DA                 call    near ptr sub_7696
seg001:09DD                 add     sp, 0Ch
seg001:09E0                 cmp     word_2D628, 13h
seg001:09E5                 jnz     short loc_272C
seg001:09E7                 mov     ax, 13h
seg001:09EA                 jmp     short loc_272E
seg001:09EC ; ---------------------------------------------------------------------------
seg001:09EC
seg001:09EC loc_272C:                               ; CODE XREF: sub_1DAA+97B␘j
seg001:09EC                 sub     ax, ax
seg001:09EE
seg001:09EE loc_272E:                               ; CODE XREF: sub_1DAA+980␘j
seg001:09EE                 push    ax
seg001:09EF                 call    far ptr sub_16A93
seg001:09F4                 add     sp, 2
seg001:09F7                 mov     ax, 0Dh
seg001:09FA                 push    ax
seg001:09FB                 sub     ax, ax
seg001:09FD                 push    ax
seg001:09FE                 mov     ax, 13Fh
seg001:0A01                 push    ax
seg001:0A02                 sub     ax, ax
seg001:0A04                 push    ax
seg001:0A05                 call    far ptr sub_172BD
seg001:0A0A                 add     sp, 8
seg001:0A0D                 mov     ax, 8
seg001:0A10                 push    ax
seg001:0A11                 call    far ptr sub_16A93
seg001:0A16                 add     sp, 2
seg001:0A19                 mov     ax, 0Ch
seg001:0A1C                 push    ax
seg001:0A1D                 mov     ax, 1
seg001:0A20                 push    ax
seg001:0A21                 mov     ax, 13Eh
seg001:0A24                 push    ax
seg001:0A25                 mov     ax, 1
seg001:0A28                 push    ax
seg001:0A29                 call    far ptr sub_172BD
seg001:0A2E                 add     sp, 8
seg001:0A31                 mov     ax, 7
seg001:0A34                 push    ax
seg001:0A35                 call    far ptr sub_16A93
seg001:0A3A                 add     sp, 2
seg001:0A3D                 mov     ax, 0Bh
seg001:0A40                 push    ax
seg001:0A41                 mov     ax, 2
seg001:0A44                 push    ax
seg001:0A45                 mov     ax, 13Dh
seg001:0A48                 push    ax
seg001:0A49                 mov     ax, 2
seg001:0A4C                 push    ax
seg001:0A4D                 call    far ptr sub_172BD
seg001:0A52                 add     sp, 8
seg001:0A55                 sub     ax, ax
seg001:0A57                 mov     word_1F17A, ax
seg001:0A5A                 push    ax
seg001:0A5B                 call    far ptr sub_16BB0
seg001:0A60                 add     sp, 2
seg001:0A63                 push    cs
seg001:0A64                 call    near ptr sub_391C
seg001:0A67                 cmp     byte_1F16C, 0
seg001:0A6C                 jz      short loc_27B1
seg001:0A6E                 jmp     loc_1E93
seg001:0A71 ; ---------------------------------------------------------------------------
seg001:0A71
seg001:0A71 loc_27B1:                               ; CODE XREF: sub_1DAA+A02␘j
seg001:0A71                 mov     ax, 7
seg001:0A74                 push    ax
seg001:0A75                 sub     ax, ax
seg001:0A77                 push    ax
seg001:0A78                 call    sub_C65B
seg001:0A7D                 add     sp, 4
seg001:0A80                 mov     ax, 1BA8h
seg001:0A83                 push    ax
seg001:0A84                 push    cs
seg001:0A85                 call    near ptr sub_372E
seg001:0A88                 add     sp, 2
seg001:0A8B                 mov     sp, bp
seg001:0A8D                 pop     bp
seg001:0A8E                 retf
seg001:0A8E sub_1DAA        endp
seg001:0A8E
seg001:0A8E ; ---------------------------------------------------------------------------
seg001:0A8F                 align 2
seg001:0A90
