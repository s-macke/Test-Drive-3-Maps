seg000:141E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:141E
seg000:141E ; Attributes: bp-based frame
seg000:141E
seg000:141E sub_141E        proc far                ; CODE XREF: sub_CA8+A␘p
seg000:141E                                         ; sub_D3C+A␘p ...
seg000:141E
seg000:141E var_8           = word ptr -8
seg000:141E var_6           = word ptr -6
seg000:141E var_4           = word ptr -4
seg000:141E var_2           = word ptr -2
seg000:141E arg_0           = word ptr  6
seg000:141E
seg000:141E                 push    bp
seg000:141F                 mov     bp, sp
seg000:1421                 sub     sp, 8
seg000:1424                 push    si
seg000:1425                 mov     ax, [bp+arg_0]
seg000:1428                 add     ax, 2
seg000:142B                 push    ax
seg000:142C                 push    cs
seg000:142D                 call    near ptr sub_164C
seg000:1430                 add     sp, 2
seg000:1433                 mov     [bp+var_8], ax
seg000:1436                 mov     [bp+var_6], dx
seg000:1439                 mov     [bp+var_2], 0
seg000:143E
seg000:143E loc_143E:                               ; CODE XREF: sub_141E+105␙j
seg000:143E                 mov     ax, [bp+var_2]
seg000:1441                 mov     cx, ax
seg000:1443                 shl     ax, 1
seg000:1445                 add     ax, cx
seg000:1447                 shl     ax, 1
seg000:1449                 add     ax, cx
seg000:144B                 shl     ax, 1
seg000:144D                 mov     si, ax
seg000:144F                 mov     ax, [si+49Eh]
seg000:1453                 or      ax, [si+4A0h]
seg000:1457                 jz      short loc_14C4
seg000:1459                 mov     ax, [bp+var_8]
seg000:145C                 mov     dx, [bp+var_6]
seg000:145F                 cmp     [si+49Eh], ax
seg000:1463                 jz      short loc_1468
seg000:1465                 jmp     loc_1520
seg000:1468 ; ---------------------------------------------------------------------------
seg000:1468
seg000:1468 loc_1468:                               ; CODE XREF: sub_141E+45␘j
seg000:1468                 cmp     [si+4A0h], dx
seg000:146C                 jz      short loc_1471
seg000:146E                 jmp     loc_1520
seg000:1471 ; ---------------------------------------------------------------------------
seg000:1471
seg000:1471 loc_1471:                               ; CODE XREF: sub_141E+4E␘j
seg000:1471                 mov     ax, [si+4A8h]
seg000:1475                 mov     dx, [si+4AAh]
seg000:1479                 mov     word_2DB58, ax
seg000:147C                 mov     word_2DB5A, dx
seg000:1480                 mov     ax, 444h
seg000:1483                 push    ax
seg000:1484                 mov     ax, 0DCh ; '_'
seg000:1487                 push    ax
seg000:1488                 call    sub_195EA
seg000:148D                 add     sp, 4
seg000:1490                 mov     al, byte_1FB7A
seg000:1493                 mov     byte_1F1BA, al
seg000:1496                 mov     bx, [bp+var_2]
seg000:1499                 mov     ax, bx
seg000:149B                 shl     bx, 1
seg000:149D                 add     bx, ax
seg000:149F                 shl     bx, 1
seg000:14A1                 add     bx, ax
seg000:14A3                 shl     bx, 1
seg000:14A5                 mov     al, [bx+4A2h]
seg000:14A9                 mov     byte_1F1C0, al
seg000:14AC                 cbw
seg000:14AD                 cmp     ax, 63h ; 'c'
seg000:14B0                 jz      short loc_14BE
seg000:14B2                 cmp     ax, 64h ; 'd'
seg000:14B5                 jz      short loc_14E4
seg000:14B7                 cmp     ax, 65h ; 'e'
seg000:14BA                 jz      short loc_14FE
seg000:14BC                 jmp     short loc_14C4
seg000:14BE ; ---------------------------------------------------------------------------
seg000:14BE
seg000:14BE loc_14BE:                               ; CODE XREF: sub_141E+92␘j
seg000:14BE                 mov     al, byte_1FB6A
seg000:14C1                 mov     byte_1F1BA, al
seg000:14C4
seg000:14C4 loc_14C4:                               ; CODE XREF: sub_141E+39␘j
seg000:14C4                                         ; sub_141E+9E␘j ...
seg000:14C4                 mov     bx, [bp+var_2]
seg000:14C7                 mov     ax, bx
seg000:14C9                 shl     bx, 1
seg000:14CB                 add     bx, ax
seg000:14CD                 shl     bx, 1
seg000:14CF                 add     bx, ax
seg000:14D1                 shl     bx, 1
seg000:14D3                 mov     ax, [bx+49Eh]
seg000:14D7                 or      ax, [bx+4A0h]
seg000:14DB                 jnz     short loc_1526
seg000:14DD                 sub     ax, ax
seg000:14DF                 pop     si
seg000:14E0                 mov     sp, bp
seg000:14E2                 pop     bp
seg000:14E3                 retf
seg000:14E4 ; ---------------------------------------------------------------------------
seg000:14E4
seg000:14E4 loc_14E4:                               ; CODE XREF: sub_141E+97␘j
seg000:14E4                 mov     ax, 0ABAh
seg000:14E7                 push    ax
seg000:14E8                 mov     ax, 0DAh ; '+'
seg000:14EB                 push    ax
seg000:14EC                 call    sub_195EA
seg000:14F1                 add     sp, 4
seg000:14F4                 mov     ax, 44Eh
seg000:14F7                 push    ax
seg000:14F8                 mov     ax, 0E1h ; 'ß'
seg000:14FB                 jmp     short loc_1515
seg000:14FB ; ---------------------------------------------------------------------------
seg000:14FD                 align 2
seg000:14FE
seg000:14FE loc_14FE:                               ; CODE XREF: sub_141E+9C␘j
seg000:14FE                 mov     ax, 0ADAh
seg000:1501                 push    ax
seg000:1502                 mov     ax, 0DAh ; '+'
seg000:1505                 push    ax
seg000:1506                 call    sub_195EA
seg000:150B                 add     sp, 4
seg000:150E                 mov     ax, 453h
seg000:1511                 push    ax
seg000:1512                 mov     ax, 0E3h ; 'p'
seg000:1515
seg000:1515 loc_1515:                               ; CODE XREF: sub_141E+DD␘j
seg000:1515                 push    ax
seg000:1516                 call    sub_195EA
seg000:151B                 add     sp, 4
seg000:151E                 jmp     short loc_14C4
seg000:1520 ; ---------------------------------------------------------------------------
seg000:1520
seg000:1520 loc_1520:                               ; CODE XREF: sub_141E+47␘j
seg000:1520                                         ; sub_141E+50␘j
seg000:1520                 inc     [bp+var_2]
seg000:1523                 jmp     loc_143E
seg000:1526 ; ---------------------------------------------------------------------------
seg000:1526
seg000:1526 loc_1526:                               ; CODE XREF: sub_141E+BD␘j
seg000:1526                 mov     ax, 0DAh ; '+'
seg000:1529                 push    ax
seg000:152A                 call    sub_C790
seg000:152F                 add     sp, 2
seg000:1532                 mov     [bp+var_4], ax
seg000:1535                 cmp     ax, 0FFFFh
seg000:1538                 jnz     short loc_1592
seg000:153A                 mov     bx, [bp+var_2]
seg000:153D                 mov     ax, bx
seg000:153F                 shl     bx, 1
seg000:1541                 add     bx, ax
seg000:1543                 shl     bx, 1
seg000:1545                 add     bx, ax
seg000:1547                 shl     bx, 1
seg000:1549                 mov     al, [bx+4A2h]
seg000:154D                 and     al, 5Fh
seg000:154F                 cmp     al, 41h ; 'A'
seg000:1551                 jnz     short loc_1558
seg000:1553                 mov     ax, 458h
seg000:1556                 jmp     short loc_1579
seg000:1558 ; ---------------------------------------------------------------------------
seg000:1558
seg000:1558 loc_1558:                               ; CODE XREF: sub_141E+133␘j
seg000:1558                 mov     bx, [bp+var_2]
seg000:155B                 mov     ax, bx
seg000:155D                 shl     bx, 1
seg000:155F                 add     bx, ax
seg000:1561                 shl     bx, 1
seg000:1563                 add     bx, ax
seg000:1565                 shl     bx, 1
seg000:1567                 mov     al, [bx+4A2h]
seg000:156B                 and     al, 5Fh
seg000:156D                 cmp     al, 42h ; 'B'
seg000:156F                 jnz     short loc_1576
seg000:1571                 mov     ax, 46Eh
seg000:1574                 jmp     short loc_1579
seg000:1576 ; ---------------------------------------------------------------------------
seg000:1576
seg000:1576 loc_1576:                               ; CODE XREF: sub_141E+151␘j
seg000:1576                 mov     ax, 487h
seg000:1579
seg000:1579 loc_1579:                               ; CODE XREF: sub_141E+138␘j
seg000:1579                                         ; sub_141E+156␘j
seg000:1579                 push    ax
seg000:157A                 call    sub_194CE
seg000:157F                 add     sp, 2
seg000:1582
seg000:1582 loc_1582:                               ; CODE XREF: sub_141E+169␙j
seg000:1582                 cmp     byte_28147, 0
seg000:1587                 jz      short loc_1582
seg000:1589                 mov     byte_28147, 0
seg000:158E                 jmp     loc_14C4
seg000:158E ; ---------------------------------------------------------------------------
seg000:1591                 align 2
seg000:1592
seg000:1592 loc_1592:                               ; CODE XREF: sub_141E+11A␘j
seg000:1592                 mov     bx, [bp+var_2]
seg000:1595                 mov     ax, bx
seg000:1597                 shl     bx, 1
seg000:1599                 add     bx, ax
seg000:159B                 shl     bx, 1
seg000:159D                 add     bx, ax
seg000:159F                 shl     bx, 1
seg000:15A1                 push    word ptr [bx+4A6h]
seg000:15A5                 push    word ptr [bx+4A4h]
seg000:15A9                 push    [bp+var_4]
seg000:15AC                 call    sub_C776
seg000:15B1                 add     sp, 6
seg000:15B4                 mov     ax, [bp+var_4]
seg000:15B7                 pop     si
seg000:15B8                 mov     sp, bp
seg000:15BA                 pop     bp
seg000:15BB                 retf
seg000:15BB sub_141E        endp
seg000:15BB
seg000:15BC
