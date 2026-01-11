seg001:18AA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:18AA
seg001:18AA ; Attributes: bp-based frame
seg001:18AA
seg001:18AA sub_35EA        proc far                ; CODE XREF: sub_3186+246␘p
seg001:18AA                                         ; sub_3186+2F6␘p ...
seg001:18AA
seg001:18AA var_2           = word ptr -2
seg001:18AA arg_0           = word ptr  6
seg001:18AA arg_2           = word ptr  8
seg001:18AA arg_4           = word ptr  0Ah
seg001:18AA
seg001:18AA                 push    bp
seg001:18AB                 mov     bp, sp
seg001:18AD                 sub     sp, 2
seg001:18B0                 mov     ax, 50h ; 'P'
seg001:18B3                 imul    [bp+arg_0]
seg001:18B6                 sub     ax, 50h ; 'P'
seg001:18B9                 mov     [bp+var_2], ax
seg001:18BC                 push    [bp+arg_2]
seg001:18BF                 call    far ptr sub_16A93
seg001:18C4                 add     sp, 2
seg001:18C7                 mov     ax, [bp+arg_0]
seg001:18CA                 or      ax, ax
seg001:18CC                 jz      short loc_361A
seg001:18CE                 cmp     ax, 1
seg001:18D1                 jl      short loc_3631
seg001:18D3                 cmp     ax, 4
seg001:18D6                 jle     short loc_3650
seg001:18D8                 jmp     short loc_3631
seg001:18DA ; ---------------------------------------------------------------------------
seg001:18DA
seg001:18DA loc_361A:                               ; CODE XREF: sub_35EA+22␘j
seg001:18DA                 mov     ax, 71h ; 'q'
seg001:18DD                 push    ax
seg001:18DE                 mov     ax, 1Ah
seg001:18E1                 push    ax
seg001:18E2                 mov     ax, 120h
seg001:18E5                 push    ax
seg001:18E6                 mov     ax, 1Fh
seg001:18E9
seg001:18E9 loc_3629:                               ; CODE XREF: sub_35EA+7B␙j
seg001:18E9                 push    ax
seg001:18EA                 push    cs
seg001:18EB                 call    near ptr sub_359E
seg001:18EE                 add     sp, 8
seg001:18F1
seg001:18F1 loc_3631:                               ; CODE XREF: sub_35EA+27␘j
seg001:18F1                                         ; sub_35EA+2E␘j
seg001:18F1                 push    [bp+arg_4]
seg001:18F4                 call    far ptr sub_16A93
seg001:18F9                 add     sp, 2
seg001:18FC                 mov     ax, [bp+arg_0]
seg001:18FF                 or      ax, ax
seg001:1901                 jz      short loc_3668
seg001:1903                 cmp     ax, 1
seg001:1906                 jl      short loc_367F
seg001:1908                 cmp     ax, 4
seg001:190B                 jle     short loc_36AC
seg001:190D                 jmp     short loc_367F
seg001:190D ; ---------------------------------------------------------------------------
seg001:190F                 align 2
seg001:1910
seg001:1910 loc_3650:                               ; CODE XREF: sub_35EA+2C␘j
seg001:1910                 mov     ax, 0C6h ; '¦'
seg001:1913                 push    ax
seg001:1914                 mov     ax, 8Ch ; 'î'
seg001:1917                 push    ax
seg001:1918                 mov     ax, [bp+var_2]
seg001:191B                 add     ax, 4Eh ; 'N'
seg001:191E                 push    ax
seg001:191F                 mov     ax, [bp+var_2]
seg001:1922                 add     ax, 3
seg001:1925                 jmp     short loc_3629
seg001:1925 ; ---------------------------------------------------------------------------
seg001:1927                 align 2
seg001:1928
seg001:1928 loc_3668:                               ; CODE XREF: sub_35EA+57␘j
seg001:1928                 mov     ax, 72h ; 'r'
seg001:192B                 push    ax
seg001:192C                 mov     ax, 19h
seg001:192F                 push    ax
seg001:1930                 mov     ax, 121h
seg001:1933                 push    ax
seg001:1934                 mov     ax, 1Eh
seg001:1937
seg001:1937 loc_3677:                               ; CODE XREF: sub_35EA+D7␙j
seg001:1937                 push    ax
seg001:1938                 push    cs
seg001:1939                 call    near ptr sub_359E
seg001:193C                 add     sp, 8
seg001:193F
seg001:193F loc_367F:                               ; CODE XREF: sub_35EA+5C␘j
seg001:193F                                         ; sub_35EA+63␘j
seg001:193F                 cmp     [bp+arg_4], 0
seg001:1943                 jz      short loc_3688
seg001:1945                 jmp     loc_372A
seg001:1948 ; ---------------------------------------------------------------------------
seg001:1948
seg001:1948 loc_3688:                               ; CODE XREF: sub_35EA+99␘j
seg001:1948                 mov     ax, 1
seg001:194B                 push    ax
seg001:194C                 call    far ptr sub_16A93
seg001:1951                 add     sp, 2
seg001:1954                 mov     ax, [bp+arg_0]
seg001:1957                 or      ax, ax
seg001:1959                 jz      short loc_36C4
seg001:195B                 cmp     ax, 1
seg001:195E                 jge     short loc_36A3
seg001:1960                 jmp     loc_372A
seg001:1963 ; ---------------------------------------------------------------------------
seg001:1963
seg001:1963 loc_36A3:                               ; CODE XREF: sub_35EA+B4␘j
seg001:1963                 cmp     ax, 4
seg001:1966                 jle     short loc_36F8
seg001:1968                 mov     sp, bp
seg001:196A                 pop     bp
seg001:196B                 retf
seg001:196C ; ---------------------------------------------------------------------------
seg001:196C
seg001:196C loc_36AC:                               ; CODE XREF: sub_35EA+61␘j
seg001:196C                 mov     ax, 0C7h ; '¦'
seg001:196F                 push    ax
seg001:1970                 mov     ax, 8Bh ; 'ï'
seg001:1973                 push    ax
seg001:1974                 mov     ax, [bp+var_2]
seg001:1977                 add     ax, 4Fh ; 'O'
seg001:197A                 push    ax
seg001:197B                 mov     ax, [bp+var_2]
seg001:197E                 add     ax, 2
seg001:1981                 jmp     short loc_3677
seg001:1981 ; ---------------------------------------------------------------------------
seg001:1983                 align 2
seg001:1984
seg001:1984 loc_36C4:                               ; CODE XREF: sub_35EA+AF␘j
seg001:1984                 mov     ax, 1Bh
seg001:1987                 push    ax
seg001:1988                 mov     ax, 121h
seg001:198B                 push    ax
seg001:198C                 call    sub_16A1A
seg001:1991                 add     sp, 4
seg001:1994                 mov     ax, 72h ; 'r'
seg001:1997                 push    ax
seg001:1998                 mov     ax, 121h
seg001:199B                 push    ax
seg001:199C                 call    sub_1693E
seg001:19A1                 add     sp, 4
seg001:19A4                 mov     ax, 72h ; 'r'
seg001:19A7                 push    ax
seg001:19A8                 mov     ax, 20h ; ' '
seg001:19AB
seg001:19AB loc_36EB:                               ; CODE XREF: sub_35EA+13E␙j
seg001:19AB                 push    ax
seg001:19AC                 call    sub_1693E
seg001:19B1                 add     sp, 4
seg001:19B4                 mov     sp, bp
seg001:19B6                 pop     bp
seg001:19B7                 retf
seg001:19B8 ; ---------------------------------------------------------------------------
seg001:19B8
seg001:19B8 loc_36F8:                               ; CODE XREF: sub_35EA+BC␘j
seg001:19B8                 mov     ax, 8Dh ; 'ì'
seg001:19BB                 push    ax
seg001:19BC                 mov     ax, [bp+var_2]
seg001:19BF                 add     ax, 4Fh ; 'O'
seg001:19C2                 push    ax
seg001:19C3                 call    sub_16A1A
seg001:19C8                 add     sp, 4
seg001:19CB                 mov     ax, 0C7h ; '¦'
seg001:19CE                 push    ax
seg001:19CF                 mov     ax, [bp+var_2]
seg001:19D2                 add     ax, 4Fh ; 'O'
seg001:19D5                 push    ax
seg001:19D6                 call    sub_1693E
seg001:19DB                 add     sp, 4
seg001:19DE                 mov     ax, 0C7h ; '¦'
seg001:19E1                 push    ax
seg001:19E2                 mov     ax, [bp+var_2]
seg001:19E5                 add     ax, 4
seg001:19E8                 jmp     short loc_36EB
seg001:19EA ; ---------------------------------------------------------------------------
seg001:19EA
seg001:19EA loc_372A:                               ; CODE XREF: sub_35EA+9B␘j
seg001:19EA                                         ; sub_35EA+B6␘j
seg001:19EA                 mov     sp, bp
seg001:19EC                 pop     bp
seg001:19ED                 retf
seg001:19ED sub_35EA        endp
seg001:19ED
seg001:19EE
