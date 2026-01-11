seg000:1688 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:1688
seg000:1688 ; Attributes: bp-based frame
seg000:1688
seg000:1688 sub_1688        proc far                ; CODE XREF: seg000:081B␘p
seg000:1688                                         ; seg000:082C␘p ...
seg000:1688
seg000:1688 var_16          = word ptr -16h
seg000:1688 var_14          = word ptr -14h
seg000:1688 var_12          = word ptr -12h
seg000:1688 var_10          = word ptr -10h
seg000:1688 var_E           = word ptr -0Eh
seg000:1688 var_C           = word ptr -0Ch
seg000:1688 var_A           = word ptr -0Ah
seg000:1688 var_8           = word ptr -8
seg000:1688 var_6           = word ptr -6
seg000:1688 var_2           = word ptr -2
seg000:1688 arg_0           = word ptr  6
seg000:1688
seg000:1688                 push    bp
seg000:1689                 mov     bp, sp
seg000:168B                 sub     sp, 16h
seg000:168E                 push    di
seg000:168F                 push    si
seg000:1690                 mov     byte_2AA6C, 1
seg000:1695                 mov     ax, 15h
seg000:1698                 mov     word_2AAC0, ax
seg000:169B                 mov     word_2AABE, ax
seg000:169E                 cmp     [bp+arg_0], 11h
seg000:16A2                 jnz     short loc_16BA
seg000:16A4                 sub     ax, ax
seg000:16A6                 push    ax
seg000:16A7                 call    sub_1E040
seg000:16AC                 add     sp, 2
seg000:16AF                 sub     ax, ax
seg000:16B1                 push    ax
seg000:16B2                 call    sub_D038
seg000:16B7                 add     sp, 2
seg000:16BA
seg000:16BA loc_16BA:                               ; CODE XREF: sub_1688+1A␘j
seg000:16BA                 mov     ax, word_1F17A
seg000:16BD                 mov     [bp+var_12], ax
seg000:16C0                 mov     ax, word_280CD
seg000:16C3                 mov     [bp+var_16], ax
seg000:16C6                 mov     ax, word_280CF
seg000:16C9                 mov     [bp+var_C], ax
seg000:16CC                 mov     bx, [bp+arg_0]
seg000:16CF                 shl     bx, 1
seg000:16D1                 mov     ax, [bx+16DAh]
seg000:16D5                 mov     [bp+var_A], ax
seg000:16D8                 mov     bx, ax
seg000:16DA                 mov     al, [bx]
seg000:16DC                 sub     ah, ah
seg000:16DE                 mov     [bp+var_6], ax
seg000:16E1                 cmp     ax, 5
seg000:16E4                 jge     short loc_16EE
seg000:16E6                 mov     [bp+var_6], 0
seg000:16EB                 jmp     short loc_16FB
seg000:16EB ; ---------------------------------------------------------------------------
seg000:16ED                 align 2
seg000:16EE
seg000:16EE loc_16EE:                               ; CODE XREF: sub_1688+5C␘j
seg000:16EE                 mov     ax, [bp+var_6]
seg000:16F1                 mov     cl, 3
seg000:16F3                 shl     ax, cl
seg000:16F5                 sub     ax, 28h ; '('
seg000:16F8                 mov     [bp+var_6], ax
seg000:16FB
seg000:16FB loc_16FB:                               ; CODE XREF: sub_1688+63␘j
seg000:16FB                 sub     ax, ax
seg000:16FD                 mov     word_1F17A, ax
seg000:1700                 push    ax
seg000:1701                 call    far ptr sub_16BB0
seg000:1706                 add     sp, 2
seg000:1709                 mov     ax, 85h ; 'à'
seg000:170C                 push    ax
seg000:170D                 mov     ax, 71h ; 'q'
seg000:1710                 push    ax
seg000:1711                 mov     ax, 13Fh
seg000:1714                 sub     ax, [bp+var_6]
seg000:1717                 push    ax
seg000:1718                 push    [bp+var_6]
seg000:171B                 call    sub_D11F
seg000:1720                 add     sp, 8
seg000:1723                 mov     [bp+var_10], 0
seg000:1728                 mov     ax, 7
seg000:172B                 push    ax
seg000:172C                 call    far ptr sub_16A93
seg000:1731                 add     sp, 2
seg000:1734                 mov     ax, 85h ; 'à'
seg000:1737                 push    ax
seg000:1738                 mov     ax, 71h ; 'q'
seg000:173B                 push    ax
seg000:173C                 mov     ax, 13Fh
seg000:173F                 sub     ax, [bp+var_6]
seg000:1742                 push    ax
seg000:1743                 push    [bp+var_6]
seg000:1746                 call    far ptr sub_172BD
seg000:174B                 add     sp, 8
seg000:174E                 sub     ax, ax
seg000:1750                 push    ax
seg000:1751                 call    far ptr sub_16A93
seg000:1756                 add     sp, 2
seg000:1759                 mov     ax, 85h ; 'à'
seg000:175C                 push    ax
seg000:175D                 mov     ax, 71h ; 'q'
seg000:1760                 push    ax
seg000:1761                 mov     ax, 13Fh
seg000:1764                 sub     ax, [bp+var_6]
seg000:1767                 push    ax
seg000:1768                 push    [bp+var_6]
seg000:176B                 call    sub_359E
seg000:1770                 add     sp, 8
seg000:1773                 mov     ax, 8
seg000:1776                 push    ax
seg000:1777                 call    far ptr sub_16A93
seg000:177C                 add     sp, 2
seg000:177F                 mov     ax, 84h ; 'ä'
seg000:1782                 push    ax
seg000:1783                 mov     ax, 72h ; 'r'
seg000:1786                 push    ax
seg000:1787                 mov     ax, 13Eh
seg000:178A                 sub     ax, [bp+var_6]
seg000:178D                 push    ax
seg000:178E                 mov     ax, [bp+var_6]
seg000:1791                 inc     ax
seg000:1792                 push    ax
seg000:1793                 call    sub_359E
seg000:1798                 add     sp, 8
seg000:179B                 mov     ax, 7
seg000:179E                 push    ax
seg000:179F                 sub     ax, ax
seg000:17A1                 push    ax
seg000:17A2                 call    sub_C65B
seg000:17A7                 add     sp, 4
seg000:17AA                 sub     ax, ax
seg000:17AC                 mov     [bp+var_E], ax
seg000:17AF                 push    ax
seg000:17B0                 push    [bp+var_A]
seg000:17B3                 call    sub_37BC
seg000:17B8                 add     sp, 4
seg000:17BB                 mov     [bp+var_E], ax
seg000:17BE                 mov     ax, [bp+arg_0]
seg000:17C1                 sub     ax, 5
seg000:17C4                 cmp     ax, 29h ; ')'
seg000:17C7                 jbe     short loc_17CC
seg000:17C9                 jmp     loc_1B8A
seg000:17CC ; ---------------------------------------------------------------------------
seg000:17CC
seg000:17CC loc_17CC:                               ; CODE XREF: sub_1688+13F␘j
seg000:17CC                 add     ax, ax
seg000:17CE                 xchg    ax, bx
seg000:17CF                 jmp     cs:off_1B90[bx]
seg000:17D4 ; ---------------------------------------------------------------------------
seg000:17D4                 jmp     short loc_17F9
seg000:17D6 ; ---------------------------------------------------------------------------
seg000:17D6
seg000:17D6 loc_17D6:                               ; CODE XREF: sub_1688+176␙j
seg000:17D6                 mov     ax, 4
seg000:17D9                 push    ax
seg000:17DA                 call    sub_16A5D
seg000:17DF                 add     sp, 2
seg000:17E2                 lea     ax, [bp+var_14]
seg000:17E5                 push    ax
seg000:17E6                 push    cs
seg000:17E7                 call    near ptr sub_1C3E
seg000:17EA                 add     sp, 2
seg000:17ED                 mov     [bp+var_2], ax
seg000:17F0                 or      ax, ax
seg000:17F2                 jz      short loc_17F9
seg000:17F4                 mov     byte_28147, 1
seg000:17F9
seg000:17F9 loc_17F9:                               ; CODE XREF: sub_1688+147␘j
seg000:17F9                                         ; sub_1688+14C␘j ...
seg000:17F9                 cmp     byte_28147, 0
seg000:17FE                 jz      short loc_17D6
seg000:1800                 cmp     byte_28147, 80h ; 'Ç'
seg000:1805
seg000:1805 loc_1805:                               ; CODE XREF: sub_1688+2BB␙j
seg000:1805                 jnz     short loc_180B
seg000:1807
seg000:1807 loc_1807:                               ; CODE XREF: sub_1688+2B3␙j
seg000:1807                 push    cs
seg000:1808                 call    near ptr sub_7BC
seg000:180B
seg000:180B loc_180B:                               ; CODE XREF: sub_1688:loc_1805␘j
seg000:180B                                         ; sub_1688+1BB␙j ...
seg000:180B                 mov     byte_28147, 0
seg000:1810                 jmp     loc_1BE4
seg000:1810 ; ---------------------------------------------------------------------------
seg000:1813                 align 2
seg000:1814
seg000:1814 loc_1814:                               ; CODE XREF: sub_1688+1B4␙j
seg000:1814                 mov     ax, 4
seg000:1817                 push    ax
seg000:1818                 call    sub_16A5D
seg000:181D                 add     sp, 2
seg000:1820                 lea     ax, [bp+var_14]
seg000:1823                 push    ax
seg000:1824                 push    cs
seg000:1825                 call    near ptr sub_1C3E
seg000:1828                 add     sp, 2
seg000:182B                 mov     [bp+var_2], ax
seg000:182E                 or      ax, ax
seg000:1830                 jz      short loc_1837
seg000:1832                 mov     byte_28147, 1
seg000:1837
seg000:1837 loc_1837:                               ; CODE XREF: sub_1688+147␘j
seg000:1837                                         ; sub_1688+1A8␘j
seg000:1837                                         ; DATA XREF: ...
seg000:1837                 cmp     byte_28147, 0
seg000:183C                 jz      short loc_1814
seg000:183E                 cmp     byte_2849E, 0
seg000:1843                 jz      short loc_180B
seg000:1845                 cmp     byte_28147, 8Ah ; 'è'
seg000:184A                 jnz     short loc_180B
seg000:184C                 mov     byte_2A6BF, 1
seg000:1851                 jmp     short loc_180B
seg000:1851 ; ---------------------------------------------------------------------------
seg000:1853                 align 2
seg000:1854
seg000:1854 loc_1854:                               ; CODE XREF: sub_1688+147␘j
seg000:1854                                         ; DATA XREF: sub_1688+540␙o
seg000:1854                 mov     al, byte_2AC8F
seg000:1857                 sub     ah, ah
seg000:1859                 mov     cx, ax
seg000:185B                 shl     ax, 1
seg000:185D                 add     ax, cx
seg000:185F                 shl     ax, 1
seg000:1861                 add     ax, cx
seg000:1863                 mov     cx, word_1F1B4
seg000:1867                 and     cx, 7
seg000:186A                 sub     ax, cx
seg000:186C                 mov     [bp+var_8], ax
seg000:186F                 cwd
seg000:1870                 mov     cx, 64h ; 'd'
seg000:1873                 idiv    cx
seg000:1875                 mov     [bp+var_2], ax
seg000:1878                 or      ax, ax
seg000:187A                 jnz     short loc_1884
seg000:187C                 mov     byte_20C5D, 20h ; ' '
seg000:1881                 jmp     short loc_188C
seg000:1881 ; ---------------------------------------------------------------------------
seg000:1883                 align 2
seg000:1884
seg000:1884 loc_1884:                               ; CODE XREF: sub_1688+1F2␘j
seg000:1884                 mov     al, byte ptr [bp+var_2]
seg000:1887                 add     al, 30h ; '0'
seg000:1889                 mov     byte_20C5D, al
seg000:188C
seg000:188C loc_188C:                               ; CODE XREF: sub_1688+1F9␘j
seg000:188C                 mov     ax, [bp+var_8]
seg000:188F                 cwd
seg000:1890                 mov     cx, 0Ah
seg000:1893                 idiv    cx
seg000:1895                 mov     cx, [bp+var_2]
seg000:1898                 mov     dx, cx
seg000:189A                 shl     cx, 1
seg000:189C                 shl     cx, 1
seg000:189E                 add     cx, dx
seg000:18A0                 shl     cx, 1
seg000:18A2                 sub     al, cl
seg000:18A4                 add     al, 30h ; '0'
seg000:18A6                 mov     byte_20C5E, al
seg000:18A9                 mov     ax, [bp+var_8]
seg000:18AC                 cwd
seg000:18AD                 mov     cx, 0Ah
seg000:18B0                 idiv    cx
seg000:18B2                 add     dl, 30h ; '0'
seg000:18B5                 mov     byte_20C5F, dl
seg000:18B9                 mov     word_28474, 2Dh ; '-'
seg000:18BF
seg000:18BF loc_18BF:                               ; CODE XREF: sub_1688+147␘j
seg000:18BF                                         ; DATA XREF: sub_1688+558␙o
seg000:18BF                 sub     ax, ax
seg000:18C1                 push    ax
seg000:18C2                 call    sub_D038
seg000:18C7                 add     sp, 2
seg000:18CA
seg000:18CA loc_18CA:                               ; CODE XREF: sub_1688+147␘j
seg000:18CA                                         ; DATA XREF: sub_1688+510␙o ...
seg000:18CA                 mov     ax, 0Ch
seg000:18CD                 push    ax
seg000:18CE                 call    sub_16A5D
seg000:18D3                 add     sp, 2
seg000:18D6                 mov     byte_28147, 0
seg000:18DB
seg000:18DB loc_18DB:                               ; CODE XREF: sub_1688+279␙j
seg000:18DB                                         ; sub_1688+280␙j
seg000:18DB                 cmp     byte_28147, 0
seg000:18E0                 jz      short loc_18E5
seg000:18E2                 jmp     loc_180B
seg000:18E5 ; ---------------------------------------------------------------------------
seg000:18E5
seg000:18E5 loc_18E5:                               ; CODE XREF: sub_1688+258␘j
seg000:18E5                 mov     ax, 4
seg000:18E8                 push    ax
seg000:18E9                 call    sub_16A5D
seg000:18EE                 add     sp, 2
seg000:18F1                 lea     ax, [bp+var_14]
seg000:18F4                 push    ax
seg000:18F5                 push    cs
seg000:18F6                 call    near ptr sub_1C3E
seg000:18F9                 add     sp, 2
seg000:18FC                 mov     [bp+var_2], ax
seg000:18FF                 or      ax, ax
seg000:1901                 jz      short loc_18DB
seg000:1903                 mov     byte_28147, 1
seg000:1908                 jmp     short loc_18DB
seg000:190A ; ---------------------------------------------------------------------------
seg000:190A
seg000:190A loc_190A:                               ; CODE XREF: sub_1688+2AA␙j
seg000:190A                 mov     ax, 4
seg000:190D                 push    ax
seg000:190E                 call    sub_16A5D
seg000:1913                 add     sp, 2
seg000:1916                 lea     ax, [bp+var_14]
seg000:1919                 push    ax
seg000:191A                 push    cs
seg000:191B                 call    near ptr sub_1C3E
seg000:191E                 add     sp, 2
seg000:1921                 mov     [bp+var_2], ax
seg000:1924                 or      ax, ax
seg000:1926                 jz      short loc_192D
seg000:1928                 mov     byte_28147, 1
seg000:192D
seg000:192D loc_192D:                               ; CODE XREF: sub_1688+147␘j
seg000:192D                                         ; sub_1688+29E␘j
seg000:192D                                         ; DATA XREF: ...
seg000:192D                 cmp     byte_28147, 0
seg000:1932                 jz      short loc_190A
seg000:1934                 cmp     byte_28147, 59h ; 'Y'
seg000:1939                 jnz     short loc_193E
seg000:193B                 jmp     loc_1807
seg000:193E ; ---------------------------------------------------------------------------
seg000:193E
seg000:193E loc_193E:                               ; CODE XREF: sub_1688+2B1␘j
seg000:193E                 cmp     byte_28147, 79h ; 'y'
seg000:1943                 jmp     loc_1805
seg000:1946 ; ---------------------------------------------------------------------------
seg000:1946
seg000:1946 loc_1946:                               ; CODE XREF: sub_1688+147␘j
seg000:1946                                         ; DATA XREF: sub_1688+54A␙o
seg000:1946                 mov     byte_2D850, 0
seg000:194B                 jmp     short loc_1971
seg000:194B ; ---------------------------------------------------------------------------
seg000:194D                 align 2
seg000:194E
seg000:194E loc_194E:                               ; CODE XREF: sub_1688+2EE␙j
seg000:194E                 mov     ax, 4
seg000:1951                 push    ax
seg000:1952                 call    sub_16A5D
seg000:1957                 add     sp, 2
seg000:195A                 lea     ax, [bp+var_14]
seg000:195D                 push    ax
seg000:195E                 push    cs
seg000:195F                 call    near ptr sub_1C3E
seg000:1962                 add     sp, 2
seg000:1965                 mov     [bp+var_2], ax
seg000:1968                 or      ax, ax
seg000:196A                 jz      short loc_1971
seg000:196C                 mov     byte_28147, 1
seg000:1971
seg000:1971 loc_1971:                               ; CODE XREF: sub_1688+2C3␘j
seg000:1971                                         ; sub_1688+2E2␘j
seg000:1971                 cmp     byte_28147, 0
seg000:1976                 jz      short loc_194E
seg000:1978                 cmp     byte_28147, 59h ; 'Y'
seg000:197D                 jz      short loc_1989
seg000:197F                 cmp     byte_28147, 79h ; 'y'
seg000:1984                 jz      short loc_1989
seg000:1986                 jmp     loc_180B
seg000:1989 ; ---------------------------------------------------------------------------
seg000:1989
seg000:1989 loc_1989:                               ; CODE XREF: sub_1688+2F5␘j
seg000:1989                                         ; sub_1688+2FC␘j
seg000:1989                 mov     byte_2D850, 1
seg000:198E                 jmp     loc_180B
seg000:198E ; ---------------------------------------------------------------------------
seg000:1991                 align 2
seg000:1992
seg000:1992 loc_1992:                               ; CODE XREF: sub_1688+333␙j
seg000:1992                 mov     ax, 4
seg000:1995                 push    ax
seg000:1996                 call    sub_16A5D
seg000:199B                 add     sp, 2
seg000:199E                 lea     ax, [bp+var_14]
seg000:19A1                 push    ax
seg000:19A2                 push    cs
seg000:19A3                 call    near ptr sub_1C3E
seg000:19A6                 add     sp, 2
seg000:19A9                 mov     [bp+var_2], ax
seg000:19AC                 or      ax, ax
seg000:19AE                 jz      short loc_19B6
seg000:19B0                 mov     al, byte ptr [bp+var_2]
seg000:19B3                 mov     byte_28147, al
seg000:19B6
seg000:19B6 loc_19B6:                               ; CODE XREF: sub_1688+147␘j
seg000:19B6                                         ; sub_1688+326␘j ...
seg000:19B6                 cmp     byte_28147, 0
seg000:19BB                 jz      short loc_1992
seg000:19BD                 mov     al, byte_28147
seg000:19C0                 sub     ah, ah
seg000:19C2                 mov     [bp+var_2], ax
seg000:19C5                 mov     byte_28147, ah
seg000:19C9                 cmp     ax, 80h ; 'Ç'
seg000:19CC                 jnz     short loc_19D2
seg000:19CE                 push    cs
seg000:19CF                 call    near ptr sub_7BC
seg000:19D2
seg000:19D2 loc_19D2:                               ; CODE XREF: sub_1688+344␘j
seg000:19D2                 cmp     [bp+var_2], 0Dh
seg000:19D6                 jnz     short loc_19DB
seg000:19D8                 jmp     loc_1BE4
seg000:19DB ; ---------------------------------------------------------------------------
seg000:19DB
seg000:19DB loc_19DB:                               ; CODE XREF: sub_1688+34E␘j
seg000:19DB                 cmp     [bp+var_2], 91h ; 'æ'
seg000:19E0                 jz      short loc_19F0
seg000:19E2                 cmp     [bp+var_2], 92h ; 'Æ'
seg000:19E7                 jz      short loc_19F0
seg000:19E9                 cmp     [bp+var_2], 94h ; 'ö'
seg000:19EE                 jnz     short loc_1A02
seg000:19F0
seg000:19F0 loc_19F0:                               ; CODE XREF: sub_1688+358␘j
seg000:19F0                                         ; sub_1688+35F␘j
seg000:19F0                 cmp     byte_209D6, 41h ; 'A'
seg000:19F5                 jnz     short loc_19FE
seg000:19F7                 mov     byte_209D6, 46h ; 'F'
seg000:19FC                 jmp     short loc_1A02
seg000:19FE ; ---------------------------------------------------------------------------
seg000:19FE
seg000:19FE loc_19FE:                               ; CODE XREF: sub_1688+36D␘j
seg000:19FE                 dec     byte_209D6
seg000:1A02
seg000:1A02 loc_1A02:                               ; CODE XREF: sub_1688+366␘j
seg000:1A02                                         ; sub_1688+374␘j
seg000:1A02                 cmp     [bp+var_2], 96h ; 'û'
seg000:1A07                 jz      short loc_1A17
seg000:1A09                 cmp     [bp+var_2], 98h ; 'ÿ'
seg000:1A0E                 jz      short loc_1A17
seg000:1A10                 cmp     [bp+var_2], 99h ; 'Ö'
seg000:1A15                 jnz     short loc_1A2A
seg000:1A17
seg000:1A17 loc_1A17:                               ; CODE XREF: sub_1688+37F␘j
seg000:1A17                                         ; sub_1688+386␘j
seg000:1A17                 cmp     byte_209D6, 46h ; 'F'
seg000:1A1C                 jnz     short loc_1A26
seg000:1A1E                 mov     byte_209D6, 41h ; 'A'
seg000:1A23                 jmp     short loc_1A2A
seg000:1A23 ; ---------------------------------------------------------------------------
seg000:1A25                 align 2
seg000:1A26
seg000:1A26 loc_1A26:                               ; CODE XREF: sub_1688+394␘j
seg000:1A26                 inc     byte_209D6
seg000:1A2A
seg000:1A2A loc_1A2A:                               ; CODE XREF: sub_1688+38D␘j
seg000:1A2A                                         ; sub_1688+39B␘j
seg000:1A2A                 and     [bp+var_2], 0DFh
seg000:1A2F                 cmp     [bp+var_2], 41h ; 'A'
seg000:1A33                 jl      short loc_1A41
seg000:1A35                 cmp     [bp+var_2], 46h ; 'F'
seg000:1A39                 jg      short loc_1A41
seg000:1A3B                 mov     al, byte ptr [bp+var_2]
seg000:1A3E                 mov     byte_209D6, al
seg000:1A41
seg000:1A41 loc_1A41:                               ; CODE XREF: sub_1688+3AB␘j
seg000:1A41                                         ; sub_1688+3B1␘j
seg000:1A41                 mov     al, byte_209D6
seg000:1A44                 mov     byte_1FBBA, al
seg000:1A47                 mov     byte_1FB6A, al
seg000:1A4A                 mov     byte_1FBAA, al
seg000:1A4D                 mov     byte_1FB9A, al
seg000:1A50                 mov     byte_1FB8A, al
seg000:1A53                 mov     byte_20FA5, al
seg000:1A56                 mov     byte_209F7, al
seg000:1A59                 sub     ax, ax
seg000:1A5B                 mov     [bp+var_E], ax
seg000:1A5E                 push    ax
seg000:1A5F                 push    [bp+var_A]
seg000:1A62                 call    sub_37BC
seg000:1A67                 add     sp, 4
seg000:1A6A                 mov     [bp+var_E], ax
seg000:1A6D                 jmp     loc_19B6
seg000:1A70 ; ---------------------------------------------------------------------------
seg000:1A70
seg000:1A70 loc_1A70:                               ; CODE XREF: sub_1688+147␘j
seg000:1A70                                         ; DATA XREF: sub_1688+50C␙o ...
seg000:1A70                 mov     ax, 1Eh
seg000:1A73
seg000:1A73 loc_1A73:                               ; CODE XREF: sub_1688+505␙j
seg000:1A73                 push    ax
seg000:1A74                 call    sub_16A5D
seg000:1A79                 add     sp, 2
seg000:1A7C                 jmp     loc_1BE4
seg000:1A7C ; ---------------------------------------------------------------------------
seg000:1A7F                 align 2
seg000:1A80
seg000:1A80 loc_1A80:                               ; CODE XREF: sub_1688+147␘j
seg000:1A80                                         ; DATA XREF: sub_1688:off_1B90␙o
seg000:1A80                 call    sub_C58C
seg000:1A85                 mov     ax, word_1F1A2
seg000:1A88                 mov     word_1F1A4, ax
seg000:1A8B                 mov     ax, word_1F1AC
seg000:1A8E                 mov     word_1F1AE, ax
seg000:1A91                 call    sub_C58C
seg000:1A96                 mov     ax, word_1F1A4
seg000:1A99                 add     ax, word_1F1A2
seg000:1A9D                 shr     ax, 1
seg000:1A9F                 mov     word_1F19E, ax
seg000:1AA2                 mov     word_1F1A0, ax
seg000:1AA5                 mov     word_1F19C, ax
seg000:1AA8                 mov     ax, word_1F1AE
seg000:1AAB                 add     ax, word_1F1AC
seg000:1AAF                 shr     ax, 1
seg000:1AB1                 mov     word_1F1A8, ax
seg000:1AB4                 mov     word_1F1AA, ax
seg000:1AB7                 mov     word_1F1A6, ax
seg000:1ABA                 mov     [bp+var_2], 0FFh
seg000:1ABF
seg000:1ABF loc_1ABF:                               ; CODE XREF: sub_1688+468␙j
seg000:1ABF                                         ; sub_1688+4FF␙j
seg000:1ABF                 call    sub_C600
seg000:1AC4                 or      ax, ax
seg000:1AC6                 jz      short loc_1ACB
seg000:1AC8                 jmp     loc_1BE4
seg000:1ACB ; ---------------------------------------------------------------------------
seg000:1ACB
seg000:1ACB loc_1ACB:                               ; CODE XREF: sub_1688+43E␘j
seg000:1ACB                 cmp     byte_28147, 80h ; 'Ç'
seg000:1AD0                 jnz     short loc_1AD5
seg000:1AD2                 jmp     loc_180B
seg000:1AD5 ; ---------------------------------------------------------------------------
seg000:1AD5
seg000:1AD5 loc_1AD5:                               ; CODE XREF: sub_1688+448␘j
seg000:1AD5                 cmp     byte_28147, 0Dh
seg000:1ADA                 jnz     short loc_1ADF
seg000:1ADC                 jmp     loc_180B
seg000:1ADF ; ---------------------------------------------------------------------------
seg000:1ADF
seg000:1ADF loc_1ADF:                               ; CODE XREF: sub_1688+452␘j
seg000:1ADF                 mov     byte_28467, 0
seg000:1AE4                 push    cs
seg000:1AE5                 call    near ptr sub_1C9E
seg000:1AE8                 mov     al, byte_28467
seg000:1AEB                 sub     ah, ah
seg000:1AED                 cmp     [bp+var_2], ax
seg000:1AF0                 jz      short loc_1ABF
seg000:1AF2                 cmp     [bp+var_2], 0FFh
seg000:1AF7                 jz      short loc_1B3E
seg000:1AF9                 mov     ax, 7
seg000:1AFC                 push    ax
seg000:1AFD                 call    far ptr sub_16A93
seg000:1B02                 add     sp, 2
seg000:1B05                 mov     ax, [bp+var_2]
seg000:1B08                 cwd
seg000:1B09                 xor     ax, dx
seg000:1B0B                 sub     ax, dx
seg000:1B0D                 mov     cx, 2
seg000:1B10                 sar     ax, cl
seg000:1B12                 xor     ax, dx
seg000:1B14                 sub     ax, dx
seg000:1B16                 mov     bx, ax
seg000:1B18                 mov     al, [bx+0A2h]
seg000:1B1C                 sub     ah, ah
seg000:1B1E                 mov     si, ax
seg000:1B20                 mov     bx, [bp+var_2]
seg000:1B23                 and     bx, 3
seg000:1B26                 mov     al, [bx+0A6h]
seg000:1B2A                 mov     di, ax
seg000:1B2C                 lea     ax, [di+1]
seg000:1B2F                 push    ax
seg000:1B30                 push    di
seg000:1B31                 lea     ax, [si+1]
seg000:1B34                 push    ax
seg000:1B35                 push    si
seg000:1B36                 call    far ptr sub_172BD
seg000:1B3B                 add     sp, 8
seg000:1B3E
seg000:1B3E loc_1B3E:                               ; CODE XREF: sub_1688+46F␘j
seg000:1B3E                 sub     ax, ax
seg000:1B40                 push    ax
seg000:1B41                 call    far ptr sub_16A93
seg000:1B46                 add     sp, 2
seg000:1B49                 mov     al, byte_28467
seg000:1B4C                 sub     ah, ah
seg000:1B4E                 mov     [bp+var_2], ax
seg000:1B51                 cwd
seg000:1B52                 xor     ax, dx
seg000:1B54                 sub     ax, dx
seg000:1B56                 mov     cx, 2
seg000:1B59                 sar     ax, cl
seg000:1B5B                 xor     ax, dx
seg000:1B5D                 sub     ax, dx
seg000:1B5F                 mov     bx, ax
seg000:1B61                 mov     al, [bx+0A2h]
seg000:1B65                 sub     ah, ah
seg000:1B67                 mov     si, ax
seg000:1B69                 mov     bx, [bp+var_2]
seg000:1B6C                 and     bx, 3
seg000:1B6F                 mov     al, [bx+0A6h]
seg000:1B73                 mov     di, ax
seg000:1B75                 lea     ax, [di+1]
seg000:1B78                 push    ax
seg000:1B79                 push    di
seg000:1B7A                 lea     ax, [si+1]
seg000:1B7D                 push    ax
seg000:1B7E                 push    si
seg000:1B7F                 call    far ptr sub_172BD
seg000:1B84                 add     sp, 8
seg000:1B87                 jmp     loc_1ABF
seg000:1B8A ; ---------------------------------------------------------------------------
seg000:1B8A
seg000:1B8A loc_1B8A:                               ; CODE XREF: sub_1688+141␘j
seg000:1B8A                                         ; sub_1688+147␘j
seg000:1B8A                                         ; DATA XREF: ...
seg000:1B8A                 mov     ax, 0Ch
seg000:1B8D                 jmp     loc_1A73
seg000:1B8D ; ---------------------------------------------------------------------------
seg000:1B90 off_1B90        dw offset loc_1A80      ; DATA XREF: sub_1688+147␘r
seg000:1B92                 dw offset loc_1B8A
seg000:1B94                 dw offset loc_1A70
seg000:1B96                 dw offset loc_17F9
seg000:1B98                 dw offset loc_18CA
seg000:1B9A                 dw offset loc_1B8A
seg000:1B9C                 dw offset loc_1B8A
seg000:1B9E                 dw offset loc_1A70
seg000:1BA0                 dw offset loc_1A70
seg000:1BA2                 dw offset loc_1B8A
seg000:1BA4                 dw offset loc_1B8A
seg000:1BA6                 dw offset loc_17F9
seg000:1BA8                 dw offset loc_18CA
seg000:1BAA                 dw offset loc_192D
seg000:1BAC                 dw offset loc_19B6
seg000:1BAE                 dw offset loc_17F9
seg000:1BB0                 dw offset loc_1837
seg000:1BB2                 dw offset loc_1837
seg000:1BB4                 dw offset loc_1A70
seg000:1BB6                 dw offset loc_1A70
seg000:1BB8                 dw offset loc_1B8A
seg000:1BBA                 dw offset loc_17F9
seg000:1BBC                 dw offset loc_1B8A
seg000:1BBE                 dw offset loc_1B8A
seg000:1BC0                 dw offset loc_1B8A
seg000:1BC2                 dw offset loc_17F9
seg000:1BC4                 dw offset loc_18CA
seg000:1BC6                 dw offset loc_1B8A
seg000:1BC8                 dw offset loc_1854
seg000:1BCA                 dw offset loc_1B8A
seg000:1BCC                 dw offset loc_17F9
seg000:1BCE                 dw offset loc_17F9
seg000:1BD0                 dw offset loc_1837
seg000:1BD2                 dw offset loc_1946
seg000:1BD4                 dw offset loc_1A70
seg000:1BD6                 dw offset loc_1A70
seg000:1BD8                 dw offset loc_1B8A
seg000:1BDA                 dw offset loc_1B8A
seg000:1BDC                 dw offset loc_1837
seg000:1BDE                 dw offset loc_1A70
seg000:1BE0                 dw offset loc_18BF
seg000:1BE2                 dw offset loc_18CA
seg000:1BE4 ; ---------------------------------------------------------------------------
seg000:1BE4
seg000:1BE4 loc_1BE4:                               ; CODE XREF: sub_1688+188␘j
seg000:1BE4                                         ; sub_1688+350␘j ...
seg000:1BE4                 cmp     [bp+var_10], 0
seg000:1BE8                 jnz     short loc_1C04
seg000:1BEA                 mov     ax, 85h ; 'à'
seg000:1BED                 push    ax
seg000:1BEE                 mov     ax, 71h ; 'q'
seg000:1BF1                 push    ax
seg000:1BF2                 mov     ax, 13Fh
seg000:1BF5                 sub     ax, [bp+var_6]
seg000:1BF8                 push    ax
seg000:1BF9                 push    [bp+var_6]
seg000:1BFC                 call    sub_D22B
seg000:1C01                 add     sp, 8
seg000:1C04
seg000:1C04 loc_1C04:                               ; CODE XREF: sub_1688+560␘j
seg000:1C04                 mov     al, byte ptr word_1F180
seg000:1C07                 mov     byte_2A6F2, al
seg000:1C0A                 mov     ax, [bp+var_12]
seg000:1C0D                 mov     word_1F17A, ax
seg000:1C10                 push    ax
seg000:1C11                 call    far ptr sub_16BB0
seg000:1C16                 add     sp, 2
seg000:1C19                 mov     ax, 1
seg000:1C1C                 push    ax
seg000:1C1D                 call    far ptr sub_16B44
seg000:1C22                 add     sp, 2
seg000:1C25                 mov     ax, [bp+var_C]
seg000:1C28                 mov     word_280CF, ax
seg000:1C2B                 mov     ax, [bp+var_16]
seg000:1C2E                 mov     word_280CD, ax
seg000:1C31                 mov     word_2AAC0, 0
seg000:1C37                 pop     si
seg000:1C38                 pop     di
seg000:1C39                 mov     sp, bp
seg000:1C3B                 pop     bp
seg000:1C3C                 retf
seg000:1C3C sub_1688        endp
seg000:1C3C
seg000:1C3C ; ---------------------------------------------------------------------------
seg000:1C3D                 align 2
seg000:1C3E
