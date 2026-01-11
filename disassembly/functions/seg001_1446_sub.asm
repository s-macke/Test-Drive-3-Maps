seg001:1446 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1446
seg001:1446 ; Attributes: bp-based frame
seg001:1446
seg001:1446 sub_3186        proc far                ; CODE XREF: sub_0+1CA␘P
seg001:1446
seg001:1446 var_6           = word ptr -6
seg001:1446 var_4           = word ptr -4
seg001:1446 var_2           = word ptr -2
seg001:1446
seg001:1446                 push    bp
seg001:1447                 mov     bp, sp
seg001:1449                 sub     sp, 6
seg001:144C                 push    cs
seg001:144D                 call    near ptr sub_4534
seg001:1450                 mov     al, 1
seg001:1452                 mov     byte_1FAA3, al
seg001:1455                 mov     byte_2BF82, al
seg001:1458                 mov     byte_1F17F, 0
seg001:145D                 cmp     word_2D628, 13h
seg001:1462                 jnz     short loc_31D7
seg001:1464                 push    cs
seg001:1465                 call    near ptr sub_39AC
seg001:1468                 sub     ax, ax
seg001:146A                 mov     word_1F17A, ax
seg001:146D                 push    ax
seg001:146E                 call    far ptr sub_16BB0
seg001:1473                 add     sp, 2
seg001:1476                 sub     ax, ax
seg001:1478                 push    ax
seg001:1479                 call    far ptr sub_16A93
seg001:147E                 add     sp, 2
seg001:1481                 mov     ax, 0C7h ; '¦'
seg001:1484                 push    ax
seg001:1485                 sub     ax, ax
seg001:1487                 push    ax
seg001:1488                 mov     ax, 13Fh
seg001:148B                 push    ax
seg001:148C                 sub     ax, ax
seg001:148E                 push    ax
seg001:148F                 call    far ptr sub_172BD
seg001:1494                 add     sp, 8
seg001:1497
seg001:1497 loc_31D7:                               ; CODE XREF: sub_3186+1C␘j
seg001:1497                 mov     byte_280DC, 80h ; 'Ç'
seg001:149C                 mov     ax, 0F83h
seg001:149F                 push    ax
seg001:14A0                 mov     ax, 0A8Ch
seg001:14A3                 push    ax
seg001:14A4                 call    sub_195EA
seg001:14A9                 add     sp, 4
seg001:14AC                 mov     ax, 0A8Ah
seg001:14AF                 push    ax
seg001:14B0                 call    sub_CA8
seg001:14B5                 add     sp, 2
seg001:14B8                 mov     ax, 0F8Fh
seg001:14BB                 push    ax
seg001:14BC                 mov     ax, 0AC1h
seg001:14BF                 push    ax
seg001:14C0                 call    sub_195EA
seg001:14C5                 add     sp, 4
seg001:14C8                 mov     ax, 0ABAh
seg001:14CB                 push    ax
seg001:14CC                 call    sub_D3C
seg001:14D1                 add     sp, 2
seg001:14D4                 mov     byte_280DC, 0
seg001:14D9                 mov     ax, 0F97h
seg001:14DC                 push    ax
seg001:14DD                 mov     ax, 0A8Ch
seg001:14E0                 push    ax
seg001:14E1                 call    sub_195EA
seg001:14E6                 add     sp, 4
seg001:14E9                 mov     ax, 0A8Ah
seg001:14EC                 push    ax
seg001:14ED                 call    sub_CA8
seg001:14F2                 add     sp, 2
seg001:14F5                 push    cs
seg001:14F6                 call    near ptr sub_3990
seg001:14F9                 mov     byte_280DC, 80h ; 'Ç'
seg001:14FE                 mov     byte_1F16C, 0
seg001:1503                 mov     [bp+var_4], 1
seg001:1508                 mov     [bp+var_2], 0FFh
seg001:150D                 mov     ax, 1
seg001:1510                 mov     word_1F17A, ax
seg001:1513                 push    ax
seg001:1514                 call    far ptr sub_16BB0
seg001:1519                 add     sp, 2
seg001:151C                 mov     ax, 240Ch
seg001:151F                 push    ds
seg001:1520                 push    ax
seg001:1521                 push    word_2DB56
seg001:1525                 push    word_2DB54
seg001:1529                 call    sub_A8EF
seg001:152E                 add     sp, 8
seg001:1531                 sub     ax, ax
seg001:1533                 push    ax
seg001:1534                 mov     ax, 0C7h ; '¦'
seg001:1537                 push    ax
seg001:1538                 sub     ax, ax
seg001:153A                 push    ax
seg001:153B                 mov     ax, 140h
seg001:153E                 push    ax
seg001:153F                 mov     ax, 17CCh
seg001:1542                 push    ax
seg001:1543                 mov     ax, 240Ch
seg001:1546                 push    ax
seg001:1547                 push    cs
seg001:1548                 call    near ptr sub_7696
seg001:154B                 add     sp, 0Ch
seg001:154E                 sub     ax, ax
seg001:1550                 push    ax
seg001:1551                 mov     ax, 0Fh
seg001:1554                 push    ax
seg001:1555                 call    sub_C65B
seg001:155A                 add     sp, 4
seg001:155D                 mov     ax, 0Dh
seg001:1560                 push    ax
seg001:1561                 mov     ax, 0Fh
seg001:1564                 push    ax
seg001:1565                 call    sub_C693
seg001:156A                 add     sp, 4
seg001:156D                 mov     byte_21263, 80h ; 'Ç'
seg001:1572                 sub     ax, ax
seg001:1574                 mov     [bp+var_6], ax
seg001:1577                 push    ax
seg001:1578                 mov     ax, 2171h
seg001:157B                 push    ax
seg001:157C                 push    cs
seg001:157D                 call    near ptr sub_3810
seg001:1580                 add     sp, 4
seg001:1583                 mov     [bp+var_6], ax
seg001:1586                 mov     byte_21263, 0
seg001:158B                 mov     ax, 0FA2h
seg001:158E                 push    ax
seg001:158F                 mov     ax, 0AC1h
seg001:1592                 push    ax
seg001:1593                 call    sub_195EA
seg001:1598                 add     sp, 4
seg001:159B                 push    word_2BF4E
seg001:159F                 push    word_2BF4C
seg001:15A3                 mov     ax, 0ABAh
seg001:15A6                 push    ax
seg001:15A7                 call    sub_E26
seg001:15AC                 add     sp, 6
seg001:15AF                 mov     ax, 240Ch
seg001:15B2                 push    ds
seg001:15B3                 push    ax
seg001:15B4                 push    word_2BF4E
seg001:15B8                 push    word_2BF4C
seg001:15BC                 call    sub_A8EF
seg001:15C1                 add     sp, 8
seg001:15C4                 sub     ax, ax
seg001:15C6                 push    ax
seg001:15C7                 mov     ax, 0C5h ; '+'
seg001:15CA                 push    ax
seg001:15CB                 mov     ax, 54h ; 'T'
seg001:15CE                 push    ax
seg001:15CF                 mov     ax, 48h ; 'H'
seg001:15D2                 push    ax
seg001:15D3                 push    word_1FC32
seg001:15D7                 mov     ax, 240Ch
seg001:15DA                 push    ax
seg001:15DB                 push    cs
seg001:15DC                 call    near ptr sub_7696
seg001:15DF                 add     sp, 0Ch
seg001:15E2                 mov     ax, word_1FBE2
seg001:15E5                 mov     cl, 3
seg001:15E7                 shl     ax, cl
seg001:15E9                 add     ax, 0A34h
seg001:15EC                 push    ax
seg001:15ED                 mov     ax, 0ADCh
seg001:15F0                 push    ax
seg001:15F1                 call    sub_195EA
seg001:15F6                 add     sp, 4
seg001:15F9                 mov     ax, 0FA7h
seg001:15FC                 push    ax
seg001:15FD                 mov     ax, 0AE3h
seg001:1600                 push    ax
seg001:1601                 call    sub_195EA
seg001:1606                 add     sp, 4
seg001:1609                 push    word_2BF4E
seg001:160D                 push    word_2BF4C
seg001:1611                 mov     ax, 0ADAh
seg001:1614                 push    ax
seg001:1615                 call    sub_E26
seg001:161A                 add     sp, 6
seg001:161D                 mov     ax, 240Ch
seg001:1620                 push    ds
seg001:1621                 push    ax
seg001:1622                 push    word_2BF4E
seg001:1626                 push    word_2BF4C
seg001:162A                 call    sub_A8EF
seg001:162F                 add     sp, 8
seg001:1632                 sub     ax, ax
seg001:1634                 push    ax
seg001:1635                 mov     ax, 0C2h ; '-'
seg001:1638                 push    ax
seg001:1639                 mov     ax, 0A4h ; 'ñ'
seg001:163C                 push    ax
seg001:163D                 mov     ax, 48h ; 'H'
seg001:1640                 push    ax
seg001:1641                 push    word_1FBF8
seg001:1645                 mov     ax, 240Ch
seg001:1648                 push    ax
seg001:1649                 push    cs
seg001:164A                 call    near ptr sub_7696
seg001:164D                 add     sp, 0Ch
seg001:1650                 sub     ax, ax
seg001:1652                 push    ax
seg001:1653                 mov     ax, 1
seg001:1656                 push    ax
seg001:1657                 mov     ax, 0C7h ; '¦'
seg001:165A                 push    ax
seg001:165B                 sub     ax, ax
seg001:165D                 push    ax
seg001:165E                 mov     ax, 0C7h ; '¦'
seg001:1661                 push    ax
seg001:1662                 sub     ax, ax
seg001:1664                 push    ax
seg001:1665                 mov     ax, 13Fh
seg001:1668                 push    ax
seg001:1669                 sub     ax, ax
seg001:166B                 push    ax
seg001:166C                 call    far ptr sub_17BE5
seg001:1671                 add     sp, 10h
seg001:1674                 sub     ax, ax
seg001:1676                 mov     word_1F17A, ax
seg001:1679                 push    ax
seg001:167A                 call    far ptr sub_16BB0
seg001:167F                 add     sp, 2
seg001:1682                 mov     ax, 0Fh
seg001:1685                 push    ax
seg001:1686                 push    ax
seg001:1687                 push    word_2D89C
seg001:168B                 push    cs
seg001:168C                 call    near ptr sub_35EA
seg001:168F                 add     sp, 6
seg001:1692                 mov     byte_280DC, 0
seg001:1697                 call    sub_83E0
seg001:169C                 call    sub_7EFE
seg001:16A1                 call    sub_8758
seg001:16A6                 mov     al, 1
seg001:16A8                 mov     byte_28477, al
seg001:16AB                 mov     byte_207B8, al
seg001:16AE                 mov     word_28491, 0FFF0h
seg001:16B4                 mov     byte_28497, 80h ; 'Ç'
seg001:16B9                 mov     byte_28499, 0
seg001:16BE                 mov     byte_28498, 24h ; '$'
seg001:16C3                 mov     word_28493, 140h
seg001:16C9                 mov     word_28495, 3Eh ; '>'
seg001:16CF                 mov     word_280C8, 16h
seg001:16D5                 sub     ax, ax
seg001:16D7                 push    ax
seg001:16D8                 push    ax
seg001:16D9                 call    far ptr sub_171CA
seg001:16DE                 add     sp, 4
seg001:16E1                 sub     ax, ax
seg001:16E3                 mov     word_1F17A, ax
seg001:16E6                 push    ax
seg001:16E7                 call    far ptr sub_16BB0
seg001:16EC                 add     sp, 2
seg001:16EF                 call    sub_153B8
seg001:16F4                 call    sub_154A1
seg001:16F9                 call    sub_D300
seg001:16FE                 push    cs
seg001:16FF                 call    near ptr sub_3982
seg001:1702                 mov     byte_28147, 0
seg001:1707
seg001:1707 loc_3447:                               ; CODE XREF: sub_3186+384␙j
seg001:1707                 cmp     word_2D89C, 80h ; 'Ç'
seg001:170D                 jl      short loc_3452
seg001:170F                 jmp     loc_3544
seg001:1712 ; ---------------------------------------------------------------------------
seg001:1712
seg001:1712 loc_3452:                               ; CODE XREF: sub_3186+2C7␘j
seg001:1712                 call    sub_153B8
seg001:1717                 call    sub_154A1
seg001:171C                 call    sub_D300
seg001:1721                 add     byte ptr word_29965, 2
seg001:1726                 test    byte ptr word_2AD23, 1
seg001:172B                 jnz     short loc_3472
seg001:172D                 mov     ax, 0Fh
seg001:1730                 jmp     short loc_3475
seg001:1732 ; ---------------------------------------------------------------------------
seg001:1732
seg001:1732 loc_3472:                               ; CODE XREF: sub_3186+2E5␘j
seg001:1732                 mov     ax, 7
seg001:1735
seg001:1735 loc_3475:                               ; CODE XREF: sub_3186+2EA␘j
seg001:1735                 push    ax
seg001:1736                 push    ax
seg001:1737                 push    word_2D89C
seg001:173B                 push    cs
seg001:173C                 call    near ptr sub_35EA
seg001:173F                 add     sp, 6
seg001:1742                 mov     ax, word_2D89C
seg001:1745                 cmp     [bp+var_2], ax
seg001:1748                 jz      short loc_34B1
seg001:174A                 sub     ax, ax
seg001:174C                 push    ax
seg001:174D                 mov     ax, 9
seg001:1750                 push    ax
seg001:1751                 push    [bp+var_2]
seg001:1754                 push    cs
seg001:1755                 call    near ptr sub_35EA
seg001:1758                 add     sp, 6
seg001:175B                 mov     ax, 0Fh
seg001:175E                 push    ax
seg001:175F                 push    ax
seg001:1760                 push    word_2D89C
seg001:1764                 push    cs
seg001:1765                 call    near ptr sub_35EA
seg001:1768                 add     sp, 6
seg001:176B                 mov     ax, word_2D89C
seg001:176E                 mov     [bp+var_2], ax
seg001:1771
seg001:1771 loc_34B1:                               ; CODE XREF: sub_3186+302␘j
seg001:1771                 lea     ax, [bp+var_6]
seg001:1774                 push    ax
seg001:1775                 call    sub_EC6
seg001:177A                 add     sp, 2
seg001:177D                 cmp     [bp+var_6], 0
seg001:1781                 jz      short loc_34F0
seg001:1783                 mov     ax, [bp+var_6]
seg001:1786                 cmp     ax, 92h ; 'Æ'
seg001:1789                 jz      short loc_350E
seg001:178B                 cmp     ax, 94h ; 'ö'
seg001:178E                 jz      short loc_34DC
seg001:1790                 cmp     ax, 96h ; 'û'
seg001:1793                 jz      short loc_352E
seg001:1795                 cmp     ax, 98h ; 'ÿ'
seg001:1798                 jz      short loc_351E
seg001:179A                 jmp     short loc_34F0
seg001:179C ; ---------------------------------------------------------------------------
seg001:179C
seg001:179C loc_34DC:                               ; CODE XREF: sub_3186+348␘j
seg001:179C                 cmp     word_2D89C, 0
seg001:17A1                 jnz     short loc_34EC
seg001:17A3                 mov     word_2D89C, 4
seg001:17A9                 jmp     short loc_34F0
seg001:17A9 ; ---------------------------------------------------------------------------
seg001:17AB                 align 2
seg001:17AC
seg001:17AC loc_34EC:                               ; CODE XREF: sub_3186+35B␘j
seg001:17AC                 dec     word_2D89C
seg001:17B0
seg001:17B0 loc_34F0:                               ; CODE XREF: sub_3186+33B␘j
seg001:17B0                                         ; sub_3186+354␘j ...
seg001:17B0                 cmp     [bp+var_6], 0Dh
seg001:17B4                 jnz     short loc_34FC
seg001:17B6                 add     word_2D89C, 80h ; 'Ç'
seg001:17BC
seg001:17BC loc_34FC:                               ; CODE XREF: sub_3186+36E␘j
seg001:17BC                 sub     ax, ax
seg001:17BE                 mov     word_1F17A, ax
seg001:17C1                 push    ax
seg001:17C2                 call    far ptr sub_16BB0
seg001:17C7                 add     sp, 2
seg001:17CA                 jmp     loc_3447
seg001:17CA ; ---------------------------------------------------------------------------
seg001:17CD                 align 2
seg001:17CE
seg001:17CE loc_350E:                               ; CODE XREF: sub_3186+343␘j
seg001:17CE                 cmp     word_2D89C, 0
seg001:17D3                 jz      short loc_3535
seg001:17D5                 mov     ax, word_2D89C
seg001:17D8                 mov     [bp+var_4], ax
seg001:17DB                 jmp     short loc_3535
seg001:17DB ; ---------------------------------------------------------------------------
seg001:17DD                 align 2
seg001:17DE
seg001:17DE loc_351E:                               ; CODE XREF: sub_3186+352␘j
seg001:17DE                 cmp     word_2D89C, 0
seg001:17E3                 jnz     short loc_34F0
seg001:17E5                 mov     ax, [bp+var_4]
seg001:17E8                 mov     word_2D89C, ax
seg001:17EB                 jmp     short loc_34F0
seg001:17EB ; ---------------------------------------------------------------------------
seg001:17ED                 align 2
seg001:17EE
seg001:17EE loc_352E:                               ; CODE XREF: sub_3186+34D␘j
seg001:17EE                 cmp     word_2D89C, 4
seg001:17F3                 jnz     short loc_353E
seg001:17F5
seg001:17F5 loc_3535:                               ; CODE XREF: sub_3186+38D␘j
seg001:17F5                                         ; sub_3186+395␘j
seg001:17F5                 mov     word_2D89C, 0
seg001:17FB                 jmp     short loc_34F0
seg001:17FB ; ---------------------------------------------------------------------------
seg001:17FD                 align 2
seg001:17FE
seg001:17FE loc_353E:                               ; CODE XREF: sub_3186+3AD␘j
seg001:17FE                 inc     word_2D89C
seg001:1802                 jmp     short loc_34F0
seg001:1804 ; ---------------------------------------------------------------------------
seg001:1804
seg001:1804 loc_3544:                               ; CODE XREF: sub_3186+2C9␘j
seg001:1804                 and     word_2D89C, 7Fh
seg001:1809                 jnz     short loc_3553
seg001:180B                 sub     al, al
seg001:180D                 mov     byte_1F16C, al
seg001:1810                 mov     byte_28147, al
seg001:1813
seg001:1813 loc_3553:                               ; CODE XREF: sub_3186+3C3␘j
seg001:1813                 mov     byte_1FAA3, 0
seg001:1818                 push    cs
seg001:1819                 call    near ptr sub_39AC
seg001:181C                 sub     ax, ax
seg001:181E                 mov     word_1F17A, ax
seg001:1821                 push    ax
seg001:1822                 call    far ptr sub_16BB0
seg001:1827                 add     sp, 2
seg001:182A                 cmp     word_2D628, 13h
seg001:182F                 jnz     short loc_3592
seg001:1831                 sub     ax, ax
seg001:1833                 push    ax
seg001:1834                 call    far ptr sub_16A93
seg001:1839                 add     sp, 2
seg001:183C                 mov     ax, 0C7h ; '¦'
seg001:183F                 push    ax
seg001:1840                 sub     ax, ax
seg001:1842                 push    ax
seg001:1843                 mov     ax, 13Fh
seg001:1846                 push    ax
seg001:1847                 sub     ax, ax
seg001:1849                 push    ax
seg001:184A                 call    far ptr sub_172BD
seg001:184F                 add     sp, 8
seg001:1852
seg001:1852 loc_3592:                               ; CODE XREF: sub_3186+3E9␘j
seg001:1852                 push    cs
seg001:1853                 call    near ptr sub_3982
seg001:1856                 mov     ax, word_2D89C
seg001:1859                 mov     sp, bp
seg001:185B                 pop     bp
seg001:185C                 retf
seg001:185C sub_3186        endp
seg001:185C
seg001:185C ; ---------------------------------------------------------------------------
seg001:185D                 align 2
seg001:185E
