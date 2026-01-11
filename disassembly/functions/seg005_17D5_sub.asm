seg005:17D5 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:17D5
seg005:17D5
seg005:17D5 sub_D6F5        proc near               ; CODE XREF: sub_D300+5␘p
seg005:17D5                 push    ds
seg005:17D6                 push    es
seg005:17D7                 push    si
seg005:17D8                 push    di
seg005:17D9                 push    bp
seg005:17DA                 cmp     word_2D628, 9
seg005:17DF                 jnz     short $+2
seg005:17E1
seg005:17E1 loc_D701:                               ; CODE XREF: sub_D6F5+12␙j
seg005:17E1                 mov     dx, 3DAh
seg005:17E4                 in      al, dx          ; Video status bits:
seg005:17E4                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg005:17E4                                         ; 1: 1=light pen is triggered; 0=armed
seg005:17E4                                         ; 2: 1=light pen switch is open; 0=closed
seg005:17E4                                         ; 3: 1=vertical sync pulse is occurring.
seg005:17E5                 test    al, 8
seg005:17E7                 jz      short loc_D701
seg005:17E9                 cmp     byte_2AD29, 0
seg005:17EE                 jnz     short loc_D717
seg005:17F0                 cmp     byte_2BF82, 0
seg005:17F5                 jz      short loc_D71D
seg005:17F7
seg005:17F7 loc_D717:                               ; CODE XREF: sub_D6F5+19␘j
seg005:17F7                                         ; sub_D6F5+34␙j
seg005:17F7                 pop     bp
seg005:17F8                 pop     di
seg005:17F9                 pop     si
seg005:17FA                 pop     es
seg005:17FB                 pop     ds
seg005:17FC                 retn
seg005:17FD ; ---------------------------------------------------------------------------
seg005:17FD
seg005:17FD loc_D71D:                               ; CODE XREF: sub_D6F5+20␘j
seg005:17FD                 cmp     byte_2A6BC, 0
seg005:1802                 jnz     short loc_D730
seg005:1804                 cmp     byte_2A6BB, 0
seg005:1809                 jz      short loc_D717
seg005:180B                 mov     byte_2A6BB, 0
seg005:1810
seg005:1810 loc_D730:                               ; CODE XREF: sub_D6F5+2D␘j
seg005:1810                 mov     es, word_280B8
seg005:1814                 mov     ax, word_2D628
seg005:1817                 mov     ds, word_280BE
seg005:181B                 mov     si, 18h
seg005:181E                 cmp     al, 0Dh
seg005:1820                 jz      short loc_D7A6
seg005:1822                 cmp     al, 9
seg005:1824                 jz      short loc_D750
seg005:1826                 cmp     al, 13h
seg005:1828                 jz      short loc_D753
seg005:182A                 pop     bp
seg005:182B                 pop     di
seg005:182C                 pop     si
seg005:182D                 pop     es
seg005:182E                 pop     ds
seg005:182F                 retn
seg005:1830 ; ---------------------------------------------------------------------------
seg005:1830
seg005:1830 loc_D750:                               ; CODE XREF: sub_D6F5+4F␘j
seg005:1830                 jmp     loc_D7FA
seg005:1833 ; ---------------------------------------------------------------------------
seg005:1833
seg005:1833 loc_D753:                               ; CODE XREF: sub_D6F5+53␘j
seg005:1833                 mov     di, 0E80h
seg005:1836                 mov     cx, 14h
seg005:1839                 rep movsw
seg005:183B                 add     di, 108h
seg005:183F                 add     si, 20h ; ' '
seg005:1842                 mov     cx, 24h ; '$'
seg005:1845                 rep movsw
seg005:1847                 add     di, 0F6h ; '÷'
seg005:184B                 add     si, 0Eh
seg005:184E                 mov     cx, 26h ; '&'
seg005:1851                 rep movsw
seg005:1853                 add     di, 0F3h ; '='
seg005:1857                 add     si, 0Bh
seg005:185A                 mov     cx, 27h ; '''
seg005:185D                 rep movsw
seg005:185F                 add     di, 0F1h ; '±'
seg005:1863                 add     si, 9
seg005:1866                 mov     cx, 28h ; '('
seg005:1869                 rep movsw
seg005:186B                 mov     di, 14A8h
seg005:186E                 mov     si, 1B8h
seg005:1871                 mov     bl, 0Eh
seg005:1873
seg005:1873 loc_D793:                               ; CODE XREF: sub_D6F5+A9␙j
seg005:1873                 mov     cx, 2Ch ; ','
seg005:1876                 rep movsw
seg005:1878                 add     di, 0E8h ; 'F'
seg005:187C                 dec     bl
seg005:187E                 jnz     short loc_D793
seg005:1880                 pop     bp
seg005:1881                 pop     di
seg005:1882                 pop     si
seg005:1883                 pop     es
seg005:1884                 pop     ds
seg005:1885                 retn
seg005:1886 ; ---------------------------------------------------------------------------
seg005:1886
seg005:1886 loc_D7A6:                               ; CODE XREF: sub_D6F5+4B␘j
seg005:1886                 mov     di, 1D0h
seg005:1889                 mov     bp, 5
seg005:188C                 call    sub_D90C
seg005:188F                 mov     di, 1F6h
seg005:1892                 add     si, 20h ; ' '
seg005:1895                 mov     bp, 9
seg005:1898                 call    sub_D90C
seg005:189B                 mov     di, 21Eh
seg005:189E                 add     si, 10h
seg005:18A1                 mov     bp, 9
seg005:18A4                 call    sub_D90C
seg005:18A7                 mov     di, 245h
seg005:18AA                 add     si, 8
seg005:18AD                 mov     bp, 0Bh
seg005:18B0                 call    sub_D90C
seg005:18B3                 mov     di, 26Dh
seg005:18B6                 add     si, 0
seg005:18B9                 mov     bp, 0Bh
seg005:18BC                 call    sub_D90C
seg005:18BF                 mov     di, 295h
seg005:18C2                 mov     si, 1B8h
seg005:18C5                 mov     dl, 0Eh
seg005:18C7
seg005:18C7 loc_D7E7:                               ; CODE XREF: sub_D6F5+FD␙j
seg005:18C7                 mov     bp, 0Bh
seg005:18CA                 call    sub_D90C
seg005:18CD                 add     di, 1Dh
seg005:18D0                 dec     dl
seg005:18D2                 jnz     short loc_D7E7
seg005:18D4                 pop     bp
seg005:18D5                 pop     di
seg005:18D6                 pop     si
seg005:18D7                 pop     es
seg005:18D8                 pop     ds
seg005:18D9                 retn
seg005:18DA ; ---------------------------------------------------------------------------
seg005:18DA
seg005:18DA loc_D7FA:                               ; CODE XREF: sub_D6F5:loc_D750␘j
seg005:18DA                 mov     di, 61A0h
seg005:18DD                 mov     cl, 4
seg005:18DF                 mov     ch, 0Ah
seg005:18E1                 call    sub_D620
seg005:18E4                 mov     di, 238h
seg005:18E7                 add     si, 20h ; ' '
seg005:18EA                 mov     ch, 12h
seg005:18EC                 call    sub_D620
seg005:18EF                 mov     di, 2237h
seg005:18F2                 add     si, 0Eh
seg005:18F5                 mov     ch, 13h
seg005:18F7                 call    sub_D620
seg005:18FA                 mov     di, 4236h
seg005:18FD                 add     si, 0Ah
seg005:1900                 mov     ch, 14h
seg005:1902                 call    sub_D620
seg005:1905                 mov     di, 6236h
seg005:1908                 add     si, 8
seg005:190B                 mov     ch, 14h
seg005:190D                 call    sub_D620
seg005:1910                 mov     di, 2D4h
seg005:1913                 mov     si, 1B8h
seg005:1916                 mov     dl, 0Eh
seg005:1918
seg005:1918 loc_D838:                               ; CODE XREF: sub_D6F5+15B␙j
seg005:1918                 mov     dh, 4
seg005:191A
seg005:191A loc_D83A:                               ; CODE XREF: sub_D6F5+155␙j
seg005:191A                 mov     cx, 1604h
seg005:191D                 call    sub_D620
seg005:1920                 add     di, 1FD4h
seg005:1924                 dec     dl
seg005:1926                 jz      short loc_D852
seg005:1928                 dec     dh
seg005:192A                 jnz     short loc_D83A
seg005:192C                 add     di, 80A0h
seg005:1930                 jmp     short loc_D838
seg005:1932 ; ---------------------------------------------------------------------------
seg005:1932
seg005:1932 loc_D852:                               ; CODE XREF: sub_D6F5+151␘j
seg005:1932                 pop     bp
seg005:1933                 pop     di
seg005:1934                 pop     si
seg005:1935                 pop     es
seg005:1936                 pop     ds
seg005:1937                 retn
seg005:1937 sub_D6F5        endp
seg005:1937
seg005:1938
