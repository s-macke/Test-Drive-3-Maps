seg031:17C2 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:17C2
seg031:17C2 ; Attributes: bp-based frame
seg031:17C2
seg031:17C2 sub_1A622       proc far                ; CODE XREF: sub_1A234+12E␘p
seg031:17C2                                         ; sub_1A45A+B6␘p
seg031:17C2
seg031:17C2 var_8           = word ptr -8
seg031:17C2 var_6           = word ptr -6
seg031:17C2 var_4           = word ptr -4
seg031:17C2 arg_0           = word ptr  6
seg031:17C2
seg031:17C2                 push    bp
seg031:17C3                 mov     bp, sp
seg031:17C5                 sub     sp, 0Ah
seg031:17C8                 push    di
seg031:17C9                 push    si
seg031:17CA                 mov     si, word_2BD56
seg031:17CE                 sub     ax, ax
seg031:17D0                 mov     [bp+var_4], ax
seg031:17D3                 mov     [bp+var_6], ax
seg031:17D6                 cmp     word_2BD5C, 30h ; '0'
seg031:17DB                 jnz     short loc_1A655
seg031:17DD                 cmp     word_2BD4A, ax
seg031:17E1                 jz      short loc_1A655
seg031:17E3                 cmp     word_2BD3C, ax
seg031:17E7                 jz      short loc_1A64F
seg031:17E9                 cmp     word_2BD54, ax
seg031:17ED                 jnz     short loc_1A655
seg031:17EF
seg031:17EF loc_1A64F:                              ; CODE XREF: sub_1A622+25␘j
seg031:17EF                 mov     word_2BD5C, 20h ; ' '
seg031:17F5
seg031:17F5 loc_1A655:                              ; CODE XREF: sub_1A622+19␘j
seg031:17F5                                         ; sub_1A622+1F␘j ...
seg031:17F5                 mov     di, word_2BD58
seg031:17F9                 push    si
seg031:17FA                 call    sub_19648
seg031:17FF                 add     sp, 2
seg031:1802                 mov     [bp+var_8], ax
seg031:1805                 sub     di, ax
seg031:1807                 sub     di, [bp+arg_0]
seg031:180A                 cmp     word_2BD44, 0
seg031:180F                 jnz     short loc_1A68A
seg031:1811                 cmp     byte ptr [si], 2Dh ; '-'
seg031:1814                 jnz     short loc_1A68A
seg031:1816                 cmp     word_2BD5C, 30h ; '0'
seg031:181B                 jnz     short loc_1A68A
seg031:181D                 lodsb
seg031:181E                 cbw
seg031:181F                 push    ax
seg031:1820                 push    cs
seg031:1821                 call    near ptr sub_1A518
seg031:1824                 add     sp, 2
seg031:1827                 dec     [bp+var_8]
seg031:182A
seg031:182A loc_1A68A:                              ; CODE XREF: sub_1A622+4D␘j
seg031:182A                                         ; sub_1A622+52␘j ...
seg031:182A                 cmp     word_2BD5C, 30h ; '0'
seg031:182F                 jz      short loc_1A69C
seg031:1831                 or      di, di
seg031:1833                 jle     short loc_1A69C
seg031:1835                 cmp     word_2BD44, 0
seg031:183A                 jz      short loc_1A6B7
seg031:183C
seg031:183C loc_1A69C:                              ; CODE XREF: sub_1A622+6D␘j
seg031:183C                                         ; sub_1A622+71␘j
seg031:183C                 cmp     [bp+arg_0], 0
seg031:1840                 jz      short loc_1A6A9
seg031:1842                 inc     [bp+var_6]
seg031:1845                 push    cs
seg031:1846                 call    near ptr sub_1A70E
seg031:1849
seg031:1849 loc_1A6A9:                              ; CODE XREF: sub_1A622+7E␘j
seg031:1849                 cmp     word_2BD5A, 0
seg031:184E                 jz      short loc_1A6B7
seg031:1850                 inc     [bp+var_4]
seg031:1853                 push    cs
seg031:1854                 call    near ptr sub_1A726
seg031:1857
seg031:1857 loc_1A6B7:                              ; CODE XREF: sub_1A622+78␘j
seg031:1857                                         ; sub_1A622+8C␘j
seg031:1857                 cmp     word_2BD44, 0
seg031:185C                 jnz     short loc_1A6E7
seg031:185E                 push    di
seg031:185F                 push    cs
seg031:1860                 call    near ptr sub_1A558
seg031:1863                 add     sp, 2
seg031:1866                 cmp     [bp+arg_0], 0
seg031:186A                 jz      short loc_1A6D6
seg031:186C                 cmp     [bp+var_6], 0
seg031:1870                 jnz     short loc_1A6D6
seg031:1872                 push    cs
seg031:1873                 call    near ptr sub_1A70E
seg031:1876
seg031:1876 loc_1A6D6:                              ; CODE XREF: sub_1A622+A8␘j
seg031:1876                                         ; sub_1A622+AE␘j
seg031:1876                 cmp     word_2BD5A, 0
seg031:187B                 jz      short loc_1A6E7
seg031:187D                 cmp     [bp+var_4], 0
seg031:1881                 jnz     short loc_1A6E7
seg031:1883                 push    cs
seg031:1884                 call    near ptr sub_1A726
seg031:1887
seg031:1887 loc_1A6E7:                              ; CODE XREF: sub_1A622+9A␘j
seg031:1887                                         ; sub_1A622+B9␘j ...
seg031:1887                 push    [bp+var_8]
seg031:188A                 push    ds
seg031:188B                 push    si
seg031:188C                 push    cs
seg031:188D                 call    near ptr sub_1A5B8
seg031:1890                 add     sp, 6
seg031:1893                 cmp     word_2BD44, 0
seg031:1898                 jz      short loc_1A708
seg031:189A                 mov     word_2BD5C, 20h ; ' '
seg031:18A0                 push    di
seg031:18A1                 push    cs
seg031:18A2                 call    near ptr sub_1A558
seg031:18A5                 add     sp, 2
seg031:18A8
seg031:18A8 loc_1A708:                              ; CODE XREF: sub_1A622+D6␘j
seg031:18A8                 pop     si
seg031:18A9                 pop     di
seg031:18AA                 mov     sp, bp
seg031:18AC                 pop     bp
seg031:18AD                 retf
seg031:18AD sub_1A622       endp
seg031:18AD
seg031:18AE
