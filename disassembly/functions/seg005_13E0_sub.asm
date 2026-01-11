seg005:13E0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:13E0
seg005:13E0
seg005:13E0 sub_D300        proc far                ; CODE XREF: sub_3186+2B3␘P
seg005:13E0                                         ; sub_3186+2D6␘P ...
seg005:13E0                 push    ds
seg005:13E1                 push    es
seg005:13E2                 push    si
seg005:13E3                 push    di
seg005:13E4                 push    bp
seg005:13E5                 call    sub_D6F5
seg005:13E8                 sub     si, si
seg005:13EA                 mov     cx, word_2AA7F
seg005:13EE                 shr     cx, 1
seg005:13F0                 shr     cx, 1
seg005:13F2                 shr     cx, 1
seg005:13F4                 shr     cx, 1
seg005:13F6                 shr     cx, 1
seg005:13F8                 inc     cx
seg005:13F9                 shr     cx, 1
seg005:13FB                 mov     ax, cx
seg005:13FD                 sub     ax, 0A0h ; 'á'
seg005:1400                 neg     ax
seg005:1402                 mov     bp, ax
seg005:1404                 shl     bp, 1
seg005:1406                 mov     di, ax
seg005:1408                 mov     ax, word_280C8
seg005:140B                 xchg    al, ah
seg005:140D                 add     di, ax
seg005:140F                 mov     dx, word_2AA7B
seg005:1413                 mov     ax, dx
seg005:1415                 sub     ax, 60h ; '`'
seg005:1418                 neg     ax
seg005:141A                 shr     ax, 1
seg005:141C                 push    ax
seg005:141D                 cmp     byte_1FAA3, 0
seg005:1422                 jz      short loc_D348
seg005:1424                 xchg    al, ah
seg005:1426                 add     di, ax
seg005:1428
seg005:1428 loc_D348:                               ; CODE XREF: sub_D300+42␘j
seg005:1428                 mov     ax, 15h
seg005:142B                 cmp     byte_2AA6C, 0
seg005:1430                 jnz     short loc_D364
seg005:1432                 mov     ax, word_2AABE
seg005:1435                 mov     bx, ax
seg005:1437                 cmp     ax, word_2AAC0
seg005:143B                 jle     short loc_D360
seg005:143D                 mov     ax, word_2AAC0
seg005:1440
seg005:1440 loc_D360:                               ; CODE XREF: sub_D300+5B␘j
seg005:1440                 mov     word_2AAC0, bx
seg005:1444
seg005:1444 loc_D364:                               ; CODE XREF: sub_D300+50␘j
seg005:1444                 pop     bx
seg005:1445                 sub     ax, bx
seg005:1447                 js      short loc_D37D
seg005:1449                 sub     dx, ax
seg005:144B                 js      short loc_D397
seg005:144D                 jz      short loc_D397
seg005:144F                 xchg    al, ah
seg005:1451                 add     di, ax
seg005:1453                 mov     bx, ax
seg005:1455                 shr     ax, 1
seg005:1457                 shr     ax, 1
seg005:1459                 add     ax, bx
seg005:145B                 add     si, ax
seg005:145D
seg005:145D loc_D37D:                               ; CODE XREF: sub_D300+67␘j
seg005:145D                 mov     es, word_280B8
seg005:1461                 mov     bx, word_2D628
seg005:1465                 cmp     bl, 0Dh
seg005:1468                 jz      short loc_D39D
seg005:146A                 cmp     bl, 9
seg005:146D                 jz      short loc_D3A6
seg005:146F                 cmp     bl, 13h
seg005:1472                 jnz     short loc_D397
seg005:1474                 jmp     loc_D471
seg005:1477 ; ---------------------------------------------------------------------------
seg005:1477
seg005:1477 loc_D397:                               ; CODE XREF: sub_D300+6B␘j
seg005:1477                                         ; sub_D300+6D␘j ...
seg005:1477                 pop     bp
seg005:1478                 pop     di
seg005:1479                 pop     si
seg005:147A                 pop     es
seg005:147B                 pop     ds
seg005:147C                 retf
seg005:147D ; ---------------------------------------------------------------------------
seg005:147D
seg005:147D loc_D39D:                               ; CODE XREF: sub_D300+88␘j
seg005:147D                 call    sub_D858
seg005:1480                 pop     bp
seg005:1481                 pop     di
seg005:1482                 pop     si
seg005:1483                 pop     es
seg005:1484                 pop     ds
seg005:1485                 retf
seg005:1486 ; ---------------------------------------------------------------------------
seg005:1486
seg005:1486 loc_D3A6:                               ; CODE XREF: sub_D300+8D␘j
seg005:1486                 mov     ax, di
seg005:1488                 shr     al, 1
seg005:148A                 mov     di, ax
seg005:148C                 shr     cx, 1
seg005:148E                 mov     ax, di
seg005:1490                 xchg    al, ah
seg005:1492                 mov     bx, ax
seg005:1494                 and     bx, 3
seg005:1497                 ror     bx, 1
seg005:1499                 ror     bx, 1
seg005:149B                 ror     bx, 1
seg005:149D                 and     di, 0FFh
seg005:14A1                 add     di, bx
seg005:14A3                 and     ax, 0FCh
seg005:14A6                 shl     ax, 1
seg005:14A8                 shl     ax, 1
seg005:14AA                 shl     ax, 1
seg005:14AC                 add     di, ax
seg005:14AE                 shl     ax, 1
seg005:14B0                 shl     ax, 1
seg005:14B2                 add     di, ax
seg005:14B4                 cmp     byte_2BF82, 0
seg005:14B9                 jz      short loc_D3DE
seg005:14BB
seg005:14BB loc_D3DB:                               ; CODE XREF: sub_D300+E7␙j
seg005:14BB                 jmp     short loc_D446
seg005:14BB ; ---------------------------------------------------------------------------
seg005:14BD                 align 2
seg005:14BE
seg005:14BE loc_D3DE:                               ; CODE XREF: sub_D300+D9␘j
seg005:14BE                 mov     dh, byte ptr word_2AA7B
seg005:14C2                 sub     dh, dl
seg005:14C4                 cmp     dh, 0Eh
seg005:14C7                 jnb     short loc_D3DB
seg005:14C9                 push    cx
seg005:14CA                 neg     dh
seg005:14CC                 add     dh, 0Eh
seg005:14CF                 push    ds
seg005:14D0                 cmp     byte_2A6C6, 0
seg005:14D5                 mov     ds, word_280BC
seg005:14D9                 jz      short loc_D422
seg005:14DB
seg005:14DB loc_D3FB:                               ; CODE XREF: sub_D300+11E␙j
seg005:14DB                 mov     cx, 2004h
seg005:14DE                 call    sub_D620
seg005:14E1                 add     si, 58h ; 'X'
seg005:14E4                 add     di, 2Ch ; ','
seg005:14E7                 mov     cx, 604h
seg005:14EA                 call    sub_D620
seg005:14ED                 add     di, 1F88h
seg005:14F1                 jns     short loc_D417
seg005:14F3                 add     di, 80A0h
seg005:14F7
seg005:14F7 loc_D417:                               ; CODE XREF: sub_D300+111␘j
seg005:14F7                 add     si, 50h ; 'P'
seg005:14FA                 dec     dl
seg005:14FC                 dec     dh
seg005:14FE                 jnz     short loc_D3FB
seg005:1500                 jmp     short loc_D444
seg005:1502 ; ---------------------------------------------------------------------------
seg005:1502
seg005:1502 loc_D422:                               ; CODE XREF: sub_D300+F9␘j
seg005:1502                                         ; sub_D300+142␙j
seg005:1502                 mov     cx, 2A04h
seg005:1505                 call    sub_D620
seg005:1508                 add     si, 58h ; 'X'
seg005:150B                 add     di, 2Ch ; ','
seg005:150E                 mov     cx, 1004h
seg005:1511                 call    sub_D620
seg005:1514                 add     di, 1F60h
seg005:1518                 jns     short loc_D43E
seg005:151A                 add     di, 80A0h
seg005:151E
seg005:151E loc_D43E:                               ; CODE XREF: sub_D300+138␘j
seg005:151E                 dec     dl
seg005:1520                 dec     dh
seg005:1522                 jnz     short loc_D422
seg005:1524
seg005:1524 loc_D444:                               ; CODE XREF: sub_D300+120␘j
seg005:1524                 pop     ds
seg005:1525                 pop     cx
seg005:1526
seg005:1526 loc_D446:                               ; CODE XREF: sub_D300:loc_D3DB␘j
seg005:1526                 mov     ds, word_280BC
seg005:152A                 mov     dh, cl
seg005:152C                 mov     cl, 4
seg005:152E
seg005:152E loc_D44E:                               ; CODE XREF: sub_D300+169␙j
seg005:152E                 mov     ch, dh
seg005:1530                 call    sub_D620
seg005:1533                 add     si, bp
seg005:1535                 mov     bl, dh
seg005:1537                 sub     bh, bh
seg005:1539                 sub     di, bx
seg005:153B                 sub     di, bx
seg005:153D                 add     di, 2000h
seg005:1541                 jns     short loc_D467
seg005:1543                 add     di, 80A0h
seg005:1547
seg005:1547 loc_D467:                               ; CODE XREF: sub_D300+161␘j
seg005:1547                 dec     dl
seg005:1549                 jnz     short loc_D44E
seg005:154B                 pop     bp
seg005:154C                 pop     di
seg005:154D                 pop     si
seg005:154E                 pop     es
seg005:154F                 pop     ds
seg005:1550                 retf
seg005:1551 ; ---------------------------------------------------------------------------
seg005:1551
seg005:1551 loc_D471:                               ; CODE XREF: sub_D300+94␘j
seg005:1551                 mov     ax, di
seg005:1553                 sub     al, al
seg005:1555                 shr     ax, 1
seg005:1557                 shr     ax, 1
seg005:1559                 add     di, ax
seg005:155B                 cmp     byte_2BF82, 0
seg005:1560                 jz      short loc_D485
seg005:1562
seg005:1562 loc_D482:                               ; CODE XREF: sub_D300+18E␙j
seg005:1562                 jmp     short loc_D4D7
seg005:1562 ; ---------------------------------------------------------------------------
seg005:1564                 db 90h
seg005:1565 ; ---------------------------------------------------------------------------
seg005:1565
seg005:1565 loc_D485:                               ; CODE XREF: sub_D300+180␘j
seg005:1565                 mov     dh, byte ptr word_2AA7B
seg005:1569                 sub     dh, dl
seg005:156B                 cmp     dh, 0Eh
seg005:156E                 jnb     short loc_D482
seg005:1570                 push    cx
seg005:1571                 neg     dh
seg005:1573                 add     dh, 0Eh
seg005:1576                 push    ds
seg005:1577                 mov     bx, 58h ; 'X'
seg005:157A                 cmp     byte_2A6C6, 0
seg005:157F                 mov     ds, word_280BC
seg005:1583                 jz      short loc_D4C1
seg005:1585
seg005:1585 loc_D4A5:                               ; CODE XREF: sub_D300+1BD␙j
seg005:1585                 mov     cx, 40h ; '@'
seg005:1588                 rep movsw
seg005:158A                 add     si, bx
seg005:158C                 add     di, bx
seg005:158E                 mov     cx, 0Ch
seg005:1591                 rep movsw
seg005:1593                 add     di, 50h ; 'P'
seg005:1596                 add     si, 50h ; 'P'
seg005:1599                 dec     dl
seg005:159B                 dec     dh
seg005:159D                 jnz     short loc_D4A5
seg005:159F                 jmp     short loc_D4D5
seg005:15A1 ; ---------------------------------------------------------------------------
seg005:15A1
seg005:15A1 loc_D4C1:                               ; CODE XREF: sub_D300+1A3␘j
seg005:15A1                                         ; sub_D300+1D3␙j
seg005:15A1                 mov     cx, 54h ; 'T'
seg005:15A4                 rep movsw
seg005:15A6                 add     si, bx
seg005:15A8                 add     di, bx
seg005:15AA                 mov     cx, 20h ; ' '
seg005:15AD                 rep movsw
seg005:15AF                 dec     dl
seg005:15B1                 dec     dh
seg005:15B3                 jnz     short loc_D4C1
seg005:15B5
seg005:15B5 loc_D4D5:                               ; CODE XREF: sub_D300+1BF␘j
seg005:15B5                 pop     ds
seg005:15B6                 pop     cx
seg005:15B7
seg005:15B7 loc_D4D7:                               ; CODE XREF: sub_D300:loc_D482␘j
seg005:15B7                 mov     ds, word_280BC
seg005:15BB
seg005:15BB loc_D4DB:                               ; CODE XREF: sub_D300+1E7␙j
seg005:15BB                 mov     bx, cx
seg005:15BD                 rep movsw
seg005:15BF                 mov     cx, bx
seg005:15C1                 add     si, bp
seg005:15C3                 add     di, bp
seg005:15C5                 dec     dl
seg005:15C7                 jnz     short loc_D4DB
seg005:15C9                 pop     bp
seg005:15CA                 pop     di
seg005:15CB                 pop     si
seg005:15CC                 pop     es
seg005:15CD                 pop     ds
seg005:15CE                 retf
seg005:15CE sub_D300        endp
seg005:15CE
seg005:15CF
