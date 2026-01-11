seg031:13D4 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:13D4
seg031:13D4 ; Attributes: bp-based frame
seg031:13D4
seg031:13D4 sub_1A234       proc far                ; CODE XREF: sub_19F08+1A3␘p
seg031:13D4                                         ; sub_19F08+223␘p ...
seg031:13D4
seg031:13D4 var_18          = word ptr -18h
seg031:13D4 var_C           = word ptr -0Ch
seg031:13D4 var_8           = word ptr -8
seg031:13D4 var_4           = word ptr -4
seg031:13D4 var_2           = word ptr -2
seg031:13D4 arg_0           = word ptr  6
seg031:13D4
seg031:13D4                 push    bp
seg031:13D5                 mov     bp, sp
seg031:13D7                 sub     sp, 18h
seg031:13DA                 push    di
seg031:13DB                 push    si
seg031:13DC                 cmp     [bp+arg_0], 0Ah
seg031:13E0                 jz      short loc_1A246
seg031:13E2                 inc     word_2BD4C
seg031:13E6
seg031:13E6 loc_1A246:                              ; CODE XREF: sub_1A234+C␘j
seg031:13E6                 cmp     word_2BD40, 2
seg031:13EB                 jz      short loc_1A254
seg031:13ED                 cmp     word_2BD40, 10h
seg031:13F2                 jnz     short loc_1A26A
seg031:13F4
seg031:13F4 loc_1A254:                              ; CODE XREF: sub_1A234+17␘j
seg031:13F4                 mov     bx, word_2BD46
seg031:13F8                 mov     ax, [bx]
seg031:13FA                 mov     dx, [bx+2]
seg031:13FD                 mov     [bp+var_4], ax
seg031:1400                 mov     [bp+var_2], dx
seg031:1403                 add     word_2BD46, 4
seg031:1408                 jmp     short loc_1A294
seg031:140A ; ---------------------------------------------------------------------------
seg031:140A
seg031:140A loc_1A26A:                              ; CODE XREF: sub_1A234+1E␘j
seg031:140A                 cmp     word_2BD4C, 0
seg031:140F                 jz      short loc_1A282
seg031:1411                 mov     bx, word_2BD46
seg031:1415                 mov     ax, [bx]
seg031:1417                 mov     [bp+var_4], ax
seg031:141A                 mov     [bp+var_2], 0
seg031:141F                 jmp     short loc_1A28F
seg031:141F ; ---------------------------------------------------------------------------
seg031:1421                 align 2
seg031:1422
seg031:1422 loc_1A282:                              ; CODE XREF: sub_1A234+3B␘j
seg031:1422                 mov     bx, word_2BD46
seg031:1426                 mov     ax, [bx]
seg031:1428                 cwd
seg031:1429                 mov     [bp+var_4], ax
seg031:142C                 mov     [bp+var_2], dx
seg031:142F
seg031:142F loc_1A28F:                              ; CODE XREF: sub_1A234+4B␘j
seg031:142F                 add     word_2BD46, 2
seg031:1434
seg031:1434 loc_1A294:                              ; CODE XREF: sub_1A234+34␘j
seg031:1434                 cmp     word_2BD38, 0
seg031:1439                 jz      short loc_1A2A8
seg031:143B                 mov     ax, [bp+var_4]
seg031:143E                 or      ax, [bp+var_2]
seg031:1441                 jz      short loc_1A2A8
seg031:1443                 mov     ax, [bp+arg_0]
seg031:1446                 jmp     short loc_1A2AA
seg031:1448 ; ---------------------------------------------------------------------------
seg031:1448
seg031:1448 loc_1A2A8:                              ; CODE XREF: sub_1A234+65␘j
seg031:1448                                         ; sub_1A234+6D␘j
seg031:1448                 sub     ax, ax
seg031:144A
seg031:144A loc_1A2AA:                              ; CODE XREF: sub_1A234+72␘j
seg031:144A                 mov     word_2BD5A, ax
seg031:144D                 mov     si, word_2BD56
seg031:1451                 cmp     word_2BD4C, 0
seg031:1456                 jnz     short loc_1A2E2
seg031:1458                 cmp     [bp+var_2], 0
seg031:145C                 jge     short loc_1A2E2
seg031:145E                 cmp     [bp+arg_0], 0Ah
seg031:1462                 jnz     short loc_1A2DB
seg031:1464                 mov     byte ptr [si], 2Dh ; '-'
seg031:1467                 inc     si
seg031:1468                 mov     ax, [bp+var_4]
seg031:146B                 mov     dx, [bp+var_2]
seg031:146E                 neg     ax
seg031:1470                 adc     dx, 0
seg031:1473                 neg     dx
seg031:1475                 mov     [bp+var_4], ax
seg031:1478                 mov     [bp+var_2], dx
seg031:147B
seg031:147B loc_1A2DB:                              ; CODE XREF: sub_1A234+8E␘j
seg031:147B                 mov     [bp+var_8], 1
seg031:1480                 jmp     short loc_1A2E7
seg031:1482 ; ---------------------------------------------------------------------------
seg031:1482
seg031:1482 loc_1A2E2:                              ; CODE XREF: sub_1A234+82␘j
seg031:1482                                         ; sub_1A234+88␘j
seg031:1482                 mov     [bp+var_8], 0
seg031:1487
seg031:1487 loc_1A2E7:                              ; CODE XREF: sub_1A234+AC␘j
seg031:1487                 lea     ax, [bp+var_18]
seg031:148A                 mov     di, ax
seg031:148C                 push    [bp+arg_0]
seg031:148F                 push    di
seg031:1490                 push    [bp+var_2]
seg031:1493                 push    [bp+var_4]
seg031:1496                 call    far ptr sub_1B0E4
seg031:149B                 add     sp, 8
seg031:149E                 cmp     word_2BD4A, 0
seg031:14A3                 jz      short loc_1A328
seg031:14A5                 push    di
seg031:14A6                 call    sub_19648
seg031:14AB                 add     sp, 2
seg031:14AE                 mov     cx, word_2BD52
seg031:14B2                 sub     cx, ax
seg031:14B4                 mov     [bp+var_C], cx
seg031:14B7                 jmp     short loc_1A31E
seg031:14B7 ; ---------------------------------------------------------------------------
seg031:14B9                 align 2
seg031:14BA
seg031:14BA loc_1A31A:                              ; CODE XREF: sub_1A234+EF␙j
seg031:14BA                 mov     byte ptr [si], 30h ; '0'
seg031:14BD                 inc     si
seg031:14BE
seg031:14BE loc_1A31E:                              ; CODE XREF: sub_1A234+E3␘j
seg031:14BE                 mov     ax, cx
seg031:14C0                 dec     cx
seg031:14C1                 or      ax, ax
seg031:14C3                 jg      short loc_1A31A
seg031:14C5                 mov     [bp+var_C], cx
seg031:14C8
seg031:14C8 loc_1A328:                              ; CODE XREF: sub_1A234+CF␘j
seg031:14C8                 mov     cx, word_2BD3E
seg031:14CC
seg031:14CC loc_1A32C:                              ; CODE XREF: sub_1A234+10D␙j
seg031:14CC                 mov     al, [di]
seg031:14CE                 mov     [si], al
seg031:14D0                 or      cx, cx
seg031:14D2                 jz      short loc_1A33B
seg031:14D4                 cmp     al, 61h ; 'a'
seg031:14D6                 jl      short loc_1A33B
seg031:14D8                 sub     byte ptr [si], 20h ; ' '
seg031:14DB
seg031:14DB loc_1A33B:                              ; CODE XREF: sub_1A234+FE␘j
seg031:14DB                                         ; sub_1A234+102␘j
seg031:14DB                 inc     si
seg031:14DC                 inc     di
seg031:14DD                 cmp     byte ptr [di-1], 0
seg031:14E1                 jnz     short loc_1A32C
seg031:14E3                 cmp     word_2BD4C, 0
seg031:14E8                 jnz     short loc_1A35E
seg031:14EA                 mov     ax, word_2BD42
seg031:14ED                 or      ax, word_2BD48
seg031:14F1                 jz      short loc_1A35E
seg031:14F3                 cmp     [bp+var_8], 0
seg031:14F7                 jnz     short loc_1A35E
seg031:14F9                 mov     ax, 1
seg031:14FC                 jmp     short loc_1A360
seg031:14FE ; ---------------------------------------------------------------------------
seg031:14FE
seg031:14FE loc_1A35E:                              ; CODE XREF: sub_1A234+114␘j
seg031:14FE                                         ; sub_1A234+11D␘j ...
seg031:14FE                 sub     ax, ax
seg031:1500
seg031:1500 loc_1A360:                              ; CODE XREF: sub_1A234+128␘j
seg031:1500                 push    ax
seg031:1501                 push    cs
seg031:1502                 call    near ptr sub_1A622
seg031:1505                 add     sp, 2
seg031:1508                 pop     si
seg031:1509                 pop     di
seg031:150A                 mov     sp, bp
seg031:150C                 pop     bp
seg031:150D                 retf
seg031:150D sub_1A234       endp
seg031:150D
seg031:150E
