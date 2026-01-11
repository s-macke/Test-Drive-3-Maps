seg002:16A0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:16A0
seg002:16A0 ; Attributes: bp-based frame
seg002:16A0
seg002:16A0 sub_8D70        proc far                ; CODE XREF: sub_76D6+54␘p
seg002:16A0                                         ; sub_76D6+264␘p ...
seg002:16A0
seg002:16A0 var_C           = word ptr -0Ch
seg002:16A0 var_A           = word ptr -0Ah
seg002:16A0
seg002:16A0                 push    bp
seg002:16A1                 mov     bp, sp
seg002:16A3                 sub     sp, 0Ch
seg002:16A6                 mov     ax, word_2BF60
seg002:16A9                 add     ax, word_2BF62
seg002:16AD                 jnz     short loc_8D82
seg002:16AF                 jmp     loc_8F81
seg002:16B2 ; ---------------------------------------------------------------------------
seg002:16B2
seg002:16B2 loc_8D82:                               ; CODE XREF: sub_8D70+D␘j
seg002:16B2                 mov     al, byte_2C18D
seg002:16B5                 cmp     byte_2C198, al
seg002:16B9                 jnz     short loc_8D8E
seg002:16BB                 jmp     loc_8F40
seg002:16BE ; ---------------------------------------------------------------------------
seg002:16BE
seg002:16BE loc_8D8E:                               ; CODE XREF: sub_8D70+19␘j
seg002:16BE                 sub     al, al
seg002:16C0                 mov     byte_2BF41, al
seg002:16C3                 mov     byte_2BF7C, al
seg002:16C6                 cmp     byte_2C198, 36h ; '6'
seg002:16CB                 jbe     short loc_8DB9
seg002:16CD                 mov     al, byte_2C198
seg002:16D0                 sub     al, 36h ; '6'
seg002:16D2                 mov     byte_2BF7C, al
seg002:16D5                 mov     al, byte_2D84E
seg002:16D8                 sub     ah, ah
seg002:16DA                 mov     cl, 0Ah
seg002:16DC                 div     cl
seg002:16DE                 cmp     ah, 9
seg002:16E1                 jnz     short loc_8DB9
seg002:16E3                 mov     al, byte_2BF7C
seg002:16E6                 mov     byte_2BF41, al
seg002:16E9
seg002:16E9 loc_8DB9:                               ; CODE XREF: sub_8D70+2B␘j
seg002:16E9                                         ; sub_8D70+41␘j
seg002:16E9                 mov     ax, word_2BF68
seg002:16EC                 mov     [bp+var_A], ax
seg002:16EF                 mov     ax, word_2BF6A
seg002:16F2                 mov     [bp+var_C], ax
seg002:16F5                 or      ax, ax
seg002:16F7                 jnz     short loc_8DCC
seg002:16F9                 jmp     loc_8F3A
seg002:16FC ; ---------------------------------------------------------------------------
seg002:16FC
seg002:16FC loc_8DCC:                               ; CODE XREF: sub_8D70+57␘j
seg002:16FC                 mov     ax, 1
seg002:16FF                 mov     word_1F17A, ax
seg002:1702                 push    ax
seg002:1703                 call    far ptr sub_16BB0
seg002:1708                 add     sp, 2
seg002:170B                 mov     al, byte_2C1A3
seg002:170E                 sub     ah, ah
seg002:1710                 push    ax
seg002:1711                 call    far ptr sub_16A93
seg002:1716                 add     sp, 2
seg002:1719                 push    [bp+var_C]
seg002:171C                 mov     ax, [bp+var_C]
seg002:171F                 sub     ax, 4
seg002:1722                 push    ax
seg002:1723                 mov     ax, [bp+var_A]
seg002:1726                 add     ax, 7
seg002:1729                 push    ax
seg002:172A                 push    [bp+var_A]
seg002:172D                 call    far ptr sub_172BD
seg002:1732                 add     sp, 8
seg002:1735                 push    [bp+var_C]
seg002:1738                 mov     ax, [bp+var_C]
seg002:173B                 sub     ax, 4
seg002:173E                 push    ax
seg002:173F                 mov     ax, [bp+var_A]
seg002:1742                 add     ax, 0Dh
seg002:1745                 push    ax
seg002:1746                 mov     ax, [bp+var_A]
seg002:1749                 add     ax, 0Ah
seg002:174C                 push    ax
seg002:174D                 call    far ptr sub_172BD
seg002:1752                 add     sp, 8
seg002:1755                 mov     al, byte_2C1A2
seg002:1758                 sub     ah, ah
seg002:175A                 push    ax
seg002:175B                 call    far ptr sub_16A93
seg002:1760                 add     sp, 2
seg002:1763                 push    [bp+var_C]
seg002:1766                 push    [bp+var_A]
seg002:1769                 call    sub_16A1A
seg002:176E                 add     sp, 4
seg002:1771                 mov     ax, 5
seg002:1774                 push    ax
seg002:1775                 mov     ax, 1
seg002:1778                 push    ax
seg002:1779                 mov     al, byte_2D84E
seg002:177C                 sub     ah, ah
seg002:177E                 mov     cl, 0Ah
seg002:1780                 div     cl
seg002:1782                 sub     ah, ah
seg002:1784                 mov     cx, ax
seg002:1786                 shl     ax, 1
seg002:1788                 add     ax, cx
seg002:178A                 shl     ax, 1
seg002:178C                 mov     cl, byte_2BF41
seg002:1790                 sub     ch, ch
seg002:1792                 add     ax, cx
seg002:1794                 add     ax, 0B623h
seg002:1797                 push    ax
seg002:1798                 call    far ptr sub_1805D
seg002:179D                 add     sp, 6
seg002:17A0                 push    [bp+var_C]
seg002:17A3                 mov     ax, [bp+var_A]
seg002:17A6                 add     ax, 4
seg002:17A9                 push    ax
seg002:17AA                 call    sub_16A1A
seg002:17AF                 add     sp, 4
seg002:17B2                 mov     ax, 5
seg002:17B5                 push    ax
seg002:17B6                 mov     ax, 1
seg002:17B9                 push    ax
seg002:17BA                 mov     al, byte_2D84E
seg002:17BD                 sub     ah, ah
seg002:17BF                 mov     cl, 0Ah
seg002:17C1                 div     cl
seg002:17C3                 mov     al, ah
seg002:17C5                 sub     ah, ah
seg002:17C7                 mov     cx, ax
seg002:17C9                 shl     ax, 1
seg002:17CB                 add     ax, cx
seg002:17CD                 shl     ax, 1
seg002:17CF                 mov     cl, byte_2BF7C
seg002:17D3                 sub     ch, ch
seg002:17D5                 add     ax, cx
seg002:17D7                 add     ax, 0B623h
seg002:17DA                 push    ax
seg002:17DB                 call    far ptr sub_1805D
seg002:17E0                 add     sp, 6
seg002:17E3                 push    [bp+var_C]
seg002:17E6                 mov     ax, [bp+var_A]
seg002:17E9                 add     ax, 0Ah
seg002:17EC                 push    ax
seg002:17ED                 call    sub_16A1A
seg002:17F2                 add     sp, 4
seg002:17F5                 mov     ax, 5
seg002:17F8                 push    ax
seg002:17F9                 mov     ax, 1
seg002:17FC                 push    ax
seg002:17FD                 mov     al, byte_2C198
seg002:1800                 sub     ah, ah
seg002:1802                 add     ax, 0B623h
seg002:1805                 push    ax
seg002:1806                 call    far ptr sub_1805D
seg002:180B                 add     sp, 6
seg002:180E                 push    [bp+var_C]
seg002:1811                 mov     ax, [bp+var_A]
seg002:1814                 add     ax, 8
seg002:1817                 push    ax
seg002:1818                 call    sub_16E27
seg002:181D                 add     sp, 4
seg002:1820                 mov     al, byte_2DB50
seg002:1823                 cmp     byte_2D84F, al
seg002:1827                 jnz     short loc_8F3A
seg002:1829                 sub     ax, ax
seg002:182B                 push    ax
seg002:182C                 mov     ax, 1
seg002:182F                 push    ax
seg002:1830                 mov     ax, [bp+var_C]
seg002:1833                 add     ax, word_2BF72
seg002:1837                 sub     ax, 0C7h ; '¦'
seg002:183A                 push    ax
seg002:183B                 mov     ax, [bp+var_A]
seg002:183E                 add     ax, word_2BF70
seg002:1842                 sub     ax, 108h
seg002:1845                 push    ax
seg002:1846                 push    [bp+var_C]
seg002:1849                 mov     ax, [bp+var_C]
seg002:184C                 sub     ax, 4
seg002:184F                 push    ax
seg002:1850                 mov     ax, [bp+var_A]
seg002:1853                 add     ax, 0Dh
seg002:1856                 push    ax
seg002:1857                 push    [bp+var_A]
seg002:185A                 call    far ptr sub_17BE5
seg002:185F                 add     sp, 10h
seg002:1862                 push    cs
seg002:1863                 call    near ptr sub_8F86
seg002:1866                 push    cs
seg002:1867                 call    near ptr sub_8C0C
seg002:186A
seg002:186A loc_8F3A:                               ; CODE XREF: sub_8D70+59␘j
seg002:186A                                         ; sub_8D70+187␘j
seg002:186A                 mov     al, byte_2C198
seg002:186D                 mov     byte_2C18D, al
seg002:1870
seg002:1870 loc_8F40:                               ; CODE XREF: sub_8D70+1B␘j
seg002:1870                 mov     al, byte_2DB50
seg002:1873                 cmp     byte_2D84F, al
seg002:1877                 jz      short loc_8F81
seg002:1879                 sub     ax, ax
seg002:187B                 push    ax
seg002:187C                 mov     ax, 1
seg002:187F                 push    ax
seg002:1880                 push    word_2BF72
seg002:1884                 push    word_2BF70
seg002:1888                 mov     ax, 0C7h ; '¦'
seg002:188B                 push    ax
seg002:188C                 mov     ax, 0A7h ; 'º'
seg002:188F                 push    ax
seg002:1890                 mov     ax, word_2BF76
seg002:1893                 add     ax, 107h
seg002:1896                 push    ax
seg002:1897                 mov     ax, 108h
seg002:189A                 push    ax
seg002:189B                 call    far ptr sub_17BE5
seg002:18A0                 add     sp, 10h
seg002:18A3                 push    cs
seg002:18A4                 call    near ptr sub_8F86
seg002:18A7                 push    cs
seg002:18A8                 call    near ptr sub_8C0C
seg002:18AB                 mov     al, byte_2D84F
seg002:18AE                 mov     byte_2DB50, al
seg002:18B1
seg002:18B1 loc_8F81:                               ; CODE XREF: sub_8D70+F␘j
seg002:18B1                                         ; sub_8D70+1D7␘j
seg002:18B1                 mov     sp, bp
seg002:18B3                 pop     bp
seg002:18B4                 retf
seg002:18B4 sub_8D70        endp
seg002:18B4
seg002:18B4 ; ---------------------------------------------------------------------------
seg002:18B5                 align 2
seg002:18B6
