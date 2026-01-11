seg001:1EBC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1EBC
seg001:1EBC ; Attributes: bp-based frame
seg001:1EBC
seg001:1EBC sub_3BFC        proc far                ; CODE XREF: sub_0:loc_176␘P
seg001:1EBC
seg001:1EBC var_1A          = word ptr -1Ah
seg001:1EBC var_18          = word ptr -18h
seg001:1EBC var_16          = word ptr -16h
seg001:1EBC var_14          = word ptr -14h
seg001:1EBC var_12          = word ptr -12h
seg001:1EBC var_10          = word ptr -10h
seg001:1EBC var_E           = word ptr -0Eh
seg001:1EBC var_C           = word ptr -0Ch
seg001:1EBC var_A           = word ptr -0Ah
seg001:1EBC var_8           = word ptr -8
seg001:1EBC var_6           = word ptr -6
seg001:1EBC var_4           = word ptr -4
seg001:1EBC var_2           = word ptr -2
seg001:1EBC
seg001:1EBC                 push    bp
seg001:1EBD                 mov     bp, sp
seg001:1EBF                 sub     sp, 1Ah
seg001:1EC2                 push    si
seg001:1EC3                 cmp     byte_1F168, 0
seg001:1EC8                 jz      short loc_3C12
seg001:1ECA                 sub     ax, ax
seg001:1ECC                 pop     si
seg001:1ECD                 mov     sp, bp
seg001:1ECF                 pop     bp
seg001:1ED0                 retf
seg001:1ED0 ; ---------------------------------------------------------------------------
seg001:1ED1                 align 2
seg001:1ED2
seg001:1ED2 loc_3C12:                               ; CODE XREF: sub_3BFC+C␘j
seg001:1ED2                 mov     [bp+var_A], 0
seg001:1ED7
seg001:1ED7 loc_3C17:                               ; CODE XREF: sub_3BFC+62␙j
seg001:1ED7                 mov     ax, 0FC8h
seg001:1EDA                 push    ax
seg001:1EDB                 mov     ax, 0A9Ch
seg001:1EDE                 push    ax
seg001:1EDF                 call    sub_195EA
seg001:1EE4                 add     sp, 4
seg001:1EE7                 mov     ax, 0FD2h
seg001:1EEA                 push    ax
seg001:1EEB                 mov     ax, 0A9Ah
seg001:1EEE                 push    ax
seg001:1EEF                 call    sub_1916A
seg001:1EF4                 add     sp, 4
seg001:1EF7                 mov     word_2D896, ax
seg001:1EFA                 or      ax, ax
seg001:1EFC                 jz      short loc_3C4E
seg001:1EFE                 push    ax
seg001:1EFF                 call    sub_190A2
seg001:1F04                 add     sp, 2
seg001:1F07                 mov     [bp+var_A], 1
seg001:1F0C                 jmp     short loc_3C5A
seg001:1F0E ; ---------------------------------------------------------------------------
seg001:1F0E
seg001:1F0E loc_3C4E:                               ; CODE XREF: sub_3BFC+40␘j
seg001:1F0E                 mov     ax, 1Eh
seg001:1F11                 push    ax
seg001:1F12                 call    sub_1688
seg001:1F17                 add     sp, 2
seg001:1F1A
seg001:1F1A loc_3C5A:                               ; CODE XREF: sub_3BFC+50␘j
seg001:1F1A                 cmp     [bp+var_A], 0
seg001:1F1E                 jz      short loc_3C17
seg001:1F20                 xor     byte_280DC, 80h
seg001:1F25                 mov     ax, 0FD5h
seg001:1F28                 push    ax
seg001:1F29                 mov     ax, 0A9Ch
seg001:1F2C                 push    ax
seg001:1F2D                 call    sub_195EA
seg001:1F32                 add     sp, 4
seg001:1F35                 mov     ax, 0A9Ah
seg001:1F38                 push    ax
seg001:1F39                 call    sub_CA8
seg001:1F3E                 add     sp, 2
seg001:1F41                 sub     al, al
seg001:1F43                 mov     byte_1F17F, al
seg001:1F46                 sub     ah, ah
seg001:1F48                 mov     word_2C186, ax
seg001:1F4B                 mov     byte_1F16C, al
seg001:1F4E                 mov     ax, 1
seg001:1F51                 mov     word_1F17A, ax
seg001:1F54                 push    ax
seg001:1F55                 call    far ptr sub_16BB0
seg001:1F5A                 add     sp, 2
seg001:1F5D                 mov     ax, 0FE1h
seg001:1F60                 push    ax
seg001:1F61                 mov     ax, 0A9Ch
seg001:1F64                 push    ax
seg001:1F65                 call    sub_195EA
seg001:1F6A                 add     sp, 4
seg001:1F6D                 push    word_2BF4E
seg001:1F71                 push    word_2BF4C
seg001:1F75                 mov     ax, 0A9Ah
seg001:1F78                 push    ax
seg001:1F79                 call    sub_E26
seg001:1F7E                 add     sp, 6
seg001:1F81                 mov     ax, 240Ch
seg001:1F84                 push    ds
seg001:1F85                 push    ax
seg001:1F86                 push    word_2BF4E
seg001:1F8A                 push    word_2BF4C
seg001:1F8E                 call    sub_A8EF
seg001:1F93                 add     sp, 8
seg001:1F96                 sub     ax, ax
seg001:1F98                 push    ax
seg001:1F99                 mov     ax, 9Dh ; '¥'
seg001:1F9C                 push    ax
seg001:1F9D                 sub     ax, ax
seg001:1F9F                 push    ax
seg001:1FA0                 mov     ax, 140h
seg001:1FA3                 push    ax
seg001:1FA4                 mov     ax, 235Dh
seg001:1FA7                 push    ax
seg001:1FA8                 mov     ax, 240Ch
seg001:1FAB                 push    ax
seg001:1FAC                 push    cs
seg001:1FAD                 call    near ptr sub_7696
seg001:1FB0                 add     sp, 0Ch
seg001:1FB3                 mov     ax, 0FE9h
seg001:1FB6                 push    ax
seg001:1FB7                 mov     ax, 0A9Ch
seg001:1FBA                 push    ax
seg001:1FBB                 call    sub_195EA
seg001:1FC0                 add     sp, 4
seg001:1FC3                 push    word_2BF4E
seg001:1FC7                 push    word_2BF4C
seg001:1FCB                 mov     ax, 0A9Ah
seg001:1FCE                 push    ax
seg001:1FCF                 call    sub_E26
seg001:1FD4                 add     sp, 6
seg001:1FD7                 mov     ax, 240Ch
seg001:1FDA                 push    ds
seg001:1FDB                 push    ax
seg001:1FDC                 push    word_2BF4E
seg001:1FE0                 push    word_2BF4C
seg001:1FE4                 call    sub_A8EF
seg001:1FE9                 add     sp, 8
seg001:1FEC                 mov     ax, 1
seg001:1FEF                 push    ax
seg001:1FF0                 mov     ax, 63h ; 'c'
seg001:1FF3                 push    ax
seg001:1FF4                 sub     ax, ax
seg001:1FF6                 push    ax
seg001:1FF7                 mov     ax, 140h
seg001:1FFA                 push    ax
seg001:1FFB                 mov     ax, 273Eh
seg001:1FFE                 push    ax
seg001:1FFF                 mov     ax, 240Ch
seg001:2002                 push    ax
seg001:2003                 push    cs
seg001:2004                 call    near ptr sub_7696
seg001:2007                 add     sp, 0Ch
seg001:200A                 mov     ax, 0Bh
seg001:200D                 push    ax
seg001:200E                 call    far ptr sub_16A93
seg001:2013                 add     sp, 2
seg001:2016                 mov     ax, 0C7h ; '¦'
seg001:2019                 push    ax
seg001:201A                 mov     ax, 9Eh ; 'P'
seg001:201D                 push    ax
seg001:201E                 mov     ax, 13Fh
seg001:2021                 push    ax
seg001:2022                 sub     ax, ax
seg001:2024                 push    ax
seg001:2025                 call    far ptr sub_172BD
seg001:202A                 add     sp, 8
seg001:202D                 mov     ax, 8
seg001:2030                 push    ax
seg001:2031                 call    far ptr sub_16A93
seg001:2036                 add     sp, 2
seg001:2039                 mov     ax, 0C7h ; '¦'
seg001:203C                 push    ax
seg001:203D                 mov     ax, 9Eh ; 'P'
seg001:2040                 push    ax
seg001:2041                 mov     ax, 13Fh
seg001:2044                 push    ax
seg001:2045                 sub     ax, ax
seg001:2047                 push    ax
seg001:2048                 push    cs
seg001:2049                 call    near ptr sub_359E
seg001:204C                 add     sp, 8
seg001:204F                 mov     ax, 0Bh
seg001:2052                 push    ax
seg001:2053                 sub     ax, ax
seg001:2055                 push    ax
seg001:2056                 call    sub_C65B
seg001:205B                 add     sp, 4
seg001:205E                 sub     ax, ax
seg001:2060                 mov     word_1F17A, ax
seg001:2063                 push    ax
seg001:2064                 call    far ptr sub_16BB0
seg001:2069                 add     sp, 2
seg001:206C                 push    cs
seg001:206D                 call    near ptr sub_391C
seg001:2070                 mov     ax, 1
seg001:2073                 mov     word_1F17A, ax
seg001:2076                 push    ax
seg001:2077                 call    far ptr sub_16BB0
seg001:207C                 add     sp, 2
seg001:207F                 mov     ax, 0FF1h
seg001:2082                 push    ax
seg001:2083                 mov     ax, 0A9Ch
seg001:2086                 push    ax
seg001:2087                 call    sub_195EA
seg001:208C                 add     sp, 4
seg001:208F                 push    word_2BF4E
seg001:2093                 push    word_2BF4C
seg001:2097                 mov     ax, 0A9Ah
seg001:209A                 push    ax
seg001:209B                 call    sub_E26
seg001:20A0                 add     sp, 6
seg001:20A3                 mov     ax, 240Ch
seg001:20A6                 push    ds
seg001:20A7                 push    ax
seg001:20A8                 push    word_2BF4E
seg001:20AC                 push    word_2BF4C
seg001:20B0                 call    sub_A8EF
seg001:20B5                 add     sp, 8
seg001:20B8                 sub     ax, ax
seg001:20BA                 push    ax
seg001:20BB                 mov     ax, 59h ; 'Y'
seg001:20BE                 push    ax
seg001:20BF                 sub     ax, ax
seg001:20C1                 push    ax
seg001:20C2                 mov     ax, 80h ; 'Ç'
seg001:20C5                 push    ax
seg001:20C6                 mov     ax, 155Bh
seg001:20C9                 push    ax
seg001:20CA                 mov     ax, 240Ch
seg001:20CD                 push    ax
seg001:20CE                 push    cs
seg001:20CF                 call    near ptr sub_7696
seg001:20D2                 add     sp, 0Ch
seg001:20D5                 xor     byte_280DC, 80h
seg001:20DA                 mov     ax, 0FFBh
seg001:20DD                 push    ax
seg001:20DE                 mov     ax, 0A9Ch
seg001:20E1                 push    ax
seg001:20E2                 call    sub_195EA
seg001:20E7                 add     sp, 4
seg001:20EA                 mov     ax, 0A9Ah
seg001:20ED                 push    ax
seg001:20EE                 call    sub_CA8
seg001:20F3                 add     sp, 2
seg001:20F6                 mov     ax, 1007h
seg001:20F9                 push    ax
seg001:20FA                 mov     ax, 0A9Ch
seg001:20FD                 push    ax
seg001:20FE                 call    sub_195EA
seg001:2103                 add     sp, 4
seg001:2106                 push    word_2BF4E
seg001:210A                 push    word_2BF4C
seg001:210E                 mov     ax, 0A9Ah
seg001:2111                 push    ax
seg001:2112                 call    sub_E26
seg001:2117                 add     sp, 6
seg001:211A                 mov     ax, 240Ch
seg001:211D                 push    ds
seg001:211E                 push    ax
seg001:211F                 push    word_2BF4E
seg001:2123                 push    word_2BF4C
seg001:2127                 call    sub_A8EF
seg001:212C                 add     sp, 8
seg001:212F                 sub     ax, ax
seg001:2131                 push    ax
seg001:2132                 mov     ax, 8Fh ; 'Å'
seg001:2135                 push    ax
seg001:2136                 mov     ax, 80h ; 'Ç'
seg001:2139                 push    ax
seg001:213A                 mov     ax, 0C0h ; '+'
seg001:213D                 push    ax
seg001:213E                 mov     ax, 1A3Bh
seg001:2141                 push    ax
seg001:2142                 mov     ax, 240Ch
seg001:2145                 push    ax
seg001:2146                 push    cs
seg001:2147                 call    near ptr sub_7696
seg001:214A                 add     sp, 0Ch
seg001:214D                 sub     ax, ax
seg001:214F                 mov     word_1F17A, ax
seg001:2152                 push    ax
seg001:2153                 call    far ptr sub_16BB0
seg001:2158                 add     sp, 2
seg001:215B                 mov     byte_280CC, 1
seg001:2160                 cmp     byte_1F169, 0
seg001:2165                 jnz     short loc_3EB2
seg001:2167                 call    sub_E9E
seg001:216C                 and     ax, 1
seg001:216F                 jmp     short loc_3EB8
seg001:216F ; ---------------------------------------------------------------------------
seg001:2171                 align 2
seg001:2172
seg001:2172 loc_3EB2:                               ; CODE XREF: sub_3BFC+2A9␘j
seg001:2172                 mov     al, byte_1F169
seg001:2175                 sub     ah, ah
seg001:2177                 dec     ax
seg001:2178
seg001:2178 loc_3EB8:                               ; CODE XREF: sub_3BFC+2B3␘j
seg001:2178                 mov     [bp+var_14], ax
seg001:217B                 or      ax, ax
seg001:217D                 jnz     short loc_3EEE
seg001:217F                 mov     ax, 100Fh
seg001:2182                 push    ax
seg001:2183                 mov     ax, 8CD8h
seg001:2186                 push    ax
seg001:2187                 call    sub_195EA
seg001:218C                 add     sp, 4
seg001:218F                 mov     ax, 1022h
seg001:2192                 push    ax
seg001:2193                 mov     ax, 0A9Ch
seg001:2196                 push    ax
seg001:2197                 call    sub_195EA
seg001:219C                 add     sp, 4
seg001:219F                 mov     ax, 8D10h
seg001:21A2                 push    ax
seg001:21A3                 mov     ax, 0A9Ah
seg001:21A6                 push    ax
seg001:21A7                 call    sub_DBA
seg001:21AC                 jmp     short loc_3EFB
seg001:21AE ; ---------------------------------------------------------------------------
seg001:21AE
seg001:21AE loc_3EEE:                               ; CODE XREF: sub_3BFC+2C1␘j
seg001:21AE                 mov     ax, 0AEAh
seg001:21B1                 push    ax
seg001:21B2                 mov     ax, 8CD8h
seg001:21B5                 push    ax
seg001:21B6                 call    sub_195EA
seg001:21BB
seg001:21BB loc_3EFB:                               ; CODE XREF: sub_3BFC+2F0␘j
seg001:21BB                 add     sp, 4
seg001:21BE                 mov     byte_27DCA, 20h ; ' '
seg001:21C3                 mov     [bp+var_6], 0Fh
seg001:21C8
seg001:21C8 loc_3F08:                               ; CODE XREF: sub_3BFC+365␙j
seg001:21C8                 cmp     [bp+var_6], 0Bh
seg001:21CC                 ja      short loc_3F20
seg001:21CE                 cmp     [bp+var_8], 0Bh
seg001:21D2                 ja      short loc_3F20
seg001:21D4                 cmp     [bp+var_E], 0Bh
seg001:21D8                 ja      short loc_3F20
seg001:21DA                 cmp     [bp+var_10], 0Bh
seg001:21DE                 jbe     short loc_3F64
seg001:21E0
seg001:21E0 loc_3F20:                               ; CODE XREF: sub_3BFC+310␘j
seg001:21E0                                         ; sub_3BFC+316␘j ...
seg001:21E0                 call    sub_E9E
seg001:21E5                 mov     [bp+var_6], ax
seg001:21E8                 push    ax
seg001:21E9                 call    sub_C62A
seg001:21EE                 add     sp, 2
seg001:21F1                 mov     [bp+var_6], ax
seg001:21F4                 mov     cl, 0Ch
seg001:21F6                 shr     ax, cl
seg001:21F8                 mov     [bp+var_10], ax
seg001:21FB                 shl     ax, cl
seg001:21FD                 sub     [bp+var_6], ax
seg001:2200                 mov     ax, [bp+var_6]
seg001:2203                 mov     cl, 8
seg001:2205                 shr     ax, cl
seg001:2207                 mov     [bp+var_E], ax
seg001:220A                 mov     ah, byte ptr [bp+var_E]
seg001:220D                 sub     al, al
seg001:220F                 sub     [bp+var_6], ax
seg001:2212                 mov     ax, [bp+var_6]
seg001:2215                 mov     cl, 4
seg001:2217                 shr     ax, cl
seg001:2219                 mov     [bp+var_8], ax
seg001:221C                 shl     ax, cl
seg001:221E                 sub     [bp+var_6], ax
seg001:2221                 jmp     short loc_3F08
seg001:2221 ; ---------------------------------------------------------------------------
seg001:2223                 align 2
seg001:2224
seg001:2224 loc_3F64:                               ; CODE XREF: sub_3BFC+322␘j
seg001:2224                 mov     ax, 8
seg001:2227                 push    ax
seg001:2228                 mov     bx, [bp+var_6]
seg001:222B                 mov     al, [bx-7164h]
seg001:222F                 sub     ah, ah
seg001:2231                 push    ax
seg001:2232                 push    cs
seg001:2233                 call    near ptr sub_4364
seg001:2236                 add     sp, 4
seg001:2239                 mov     ax, 48h ; 'H'
seg001:223C                 push    ax
seg001:223D                 mov     bx, [bp+var_8]
seg001:2240                 mov     al, [bx-7158h]
seg001:2244                 sub     ah, ah
seg001:2246                 push    ax
seg001:2247                 push    cs
seg001:2248                 call    near ptr sub_4364
seg001:224B                 add     sp, 4
seg001:224E                 sub     ax, ax
seg001:2250                 mov     [bp+var_18], ax
seg001:2253                 push    ax
seg001:2254                 mov     ax, 8CCEh
seg001:2257                 push    ax
seg001:2258                 push    cs
seg001:2259                 call    near ptr sub_37BC
seg001:225C                 add     sp, 4
seg001:225F                 mov     [bp+var_18], ax
seg001:2262                 mov     ax, 3
seg001:2265                 push    ax
seg001:2266                 mov     ax, 0BFh ; '+'
seg001:2269                 push    ax
seg001:226A                 call    sub_C693
seg001:226F                 add     sp, 4
seg001:2272                 push    [bp+var_18]
seg001:2275                 mov     ax, 8CCEh
seg001:2278                 push    ax
seg001:2279                 push    cs
seg001:227A                 call    near ptr sub_3810
seg001:227D                 add     sp, 4
seg001:2280                 mov     [bp+var_18], ax
seg001:2283                 mov     ax, 11h
seg001:2286                 push    ax
seg001:2287                 mov     ax, 16h
seg001:228A                 push    ax
seg001:228B                 call    sub_C674
seg001:2290                 add     sp, 4
seg001:2293                 mov     bx, [bp+var_E]
seg001:2296                 shl     bx, 1
seg001:2298                 mov     ax, [bx-714Ch]
seg001:229C                 add     ax, 8D10h
seg001:229F                 mov     [bp+var_16], ax
seg001:22A2                 sub     ax, ax
seg001:22A4                 mov     [bp+var_18], ax
seg001:22A7                 push    ax
seg001:22A8                 push    [bp+var_16]
seg001:22AB                 push    cs
seg001:22AC                 call    near ptr sub_3810
seg001:22AF                 add     sp, 4
seg001:22B2                 mov     [bp+var_18], ax
seg001:22B5                 mov     bx, [bp+var_10]
seg001:22B8                 shl     bx, 1
seg001:22BA                 mov     ax, [bx-7134h]
seg001:22BE                 add     ax, 8D10h
seg001:22C1                 mov     [bp+var_16], ax
seg001:22C4                 sub     ax, ax
seg001:22C6                 mov     [bp+var_18], ax
seg001:22C9                 push    ax
seg001:22CA                 push    [bp+var_16]
seg001:22CD                 push    cs
seg001:22CE                 call    near ptr sub_3810
seg001:22D1                 add     sp, 4
seg001:22D4                 mov     [bp+var_18], ax
seg001:22D7                 mov     ax, 0C7h ; '¦'
seg001:22DA                 push    ax
seg001:22DB                 mov     ax, 9Eh ; 'P'
seg001:22DE                 push    ax
seg001:22DF                 mov     ax, 13Fh
seg001:22E2                 push    ax
seg001:22E3                 sub     ax, ax
seg001:22E5                 push    ax
seg001:22E6                 call    far ptr sub_1764B
seg001:22EB                 add     sp, 8
seg001:22EE                 mov     ax, [bp+var_10]
seg001:22F1                 sub     ax, [bp+var_E]
seg001:22F4                 mov     [bp+var_2], ax
seg001:22F7                 or      ax, ax
seg001:22F9                 jge     short loc_403F
seg001:22FB                 add     [bp+var_2], 0Ch
seg001:22FF
seg001:22FF loc_403F:                               ; CODE XREF: sub_3BFC+43D␘j
seg001:22FF                 mov     cx, 0Ch
seg001:2302                 mov     ax, [bp+var_2]
seg001:2305                 cwd
seg001:2306                 idiv    cx
seg001:2308                 mov     [bp+var_2], dx
seg001:230B                 mov     ax, dx
seg001:230D                 add     ax, [bp+var_6]
seg001:2310                 sub     dx, dx
seg001:2312                 div     cx
seg001:2314                 mov     [bp+var_6], dx
seg001:2317                 mov     ax, [bp+var_2]
seg001:231A                 add     ax, [bp+var_8]
seg001:231D                 sub     dx, dx
seg001:231F                 div     cx
seg001:2321                 mov     [bp+var_8], dx
seg001:2324                 mov     ax, [bp+var_2]
seg001:2327                 add     ax, [bp+var_E]
seg001:232A                 sub     dx, dx
seg001:232C                 div     cx
seg001:232E                 mov     [bp+var_E], dx
seg001:2331                 mov     bx, dx
seg001:2333                 mov     al, [bx-72F0h]
seg001:2337                 sub     ah, ah
seg001:2339                 mov     [bp+var_2], ax
seg001:233C                 shl     ax, 1
seg001:233E                 shl     ax, 1
seg001:2340                 mov     si, ax
seg001:2342                 mov     ax, [bp+var_8]
seg001:2345                 mov     cl, 5
seg001:2347                 shl     ax, cl
seg001:2349                 add     ax, si
seg001:234B                 add     ax, 0Ch
seg001:234E                 mov     [bp+var_A], ax
seg001:2351                 mov     bx, ax
seg001:2353                 cmp     byte ptr [bx-72F0h], 7Bh ; '{'
seg001:2358                 jnz     short loc_40A7
seg001:235A                 mov     ax, [bp+var_6]
seg001:235D                 shl     ax, cl
seg001:235F                 add     ax, si
seg001:2361                 add     ax, 1Ch
seg001:2364                 mov     [bp+var_A], ax
seg001:2367
seg001:2367 loc_40A7:                               ; CODE XREF: sub_3BFC+49C␘j
seg001:2367                 mov     [bp+var_C], 0
seg001:236C                 mov     [bp+var_12], 1
seg001:2371                 mov     [bp+var_2], 0
seg001:2376
seg001:2376 loc_40B6:                               ; CODE XREF: sub_3BFC+4C9␙j
seg001:2376                 mov     bx, [bp+var_2]
seg001:2379                 mov     byte ptr [bx-137Ah], 20h ; ' '
seg001:237E                 inc     [bp+var_2]
seg001:2381                 cmp     [bp+var_2], 14h
seg001:2385                 jl      short loc_40B6
seg001:2387                 mov     byte_280CC, 0
seg001:238C                 jmp     loc_42A2
seg001:238C ; ---------------------------------------------------------------------------
seg001:238F                 align 2
seg001:2390
seg001:2390 loc_40D0:                               ; CODE XREF: sub_3BFC+6AC␙j
seg001:2390                 mov     ax, [bp+var_18]
seg001:2393                 and     ax, 3
seg001:2396                 add     ax, 6
seg001:2399                 push    ax
seg001:239A                 call    far ptr sub_16A93
seg001:239F                 add     sp, 2
seg001:23A2                 push    cs
seg001:23A3                 call    near ptr sub_43BC
seg001:23A6                 mov     ax, [bp+var_C]
seg001:23A9                 mov     cl, 3
seg001:23AB                 shl     ax, cl
seg001:23AD                 add     ax, 0F8h ; '°'
seg001:23B0                 mov     [bp+var_2], ax
seg001:23B3                 mov     ax, 0C5h ; '+'
seg001:23B6                 push    ax
seg001:23B7                 mov     ax, 0BEh ; '+'
seg001:23BA                 push    ax
seg001:23BB                 mov     ax, [bp+var_2]
seg001:23BE                 add     ax, 7
seg001:23C1                 push    ax
seg001:23C2                 push    [bp+var_2]
seg001:23C5                 call    far ptr sub_172BD
seg001:23CA                 add     sp, 8
seg001:23CD                 inc     [bp+var_18]
seg001:23D0                 mov     ax, 2
seg001:23D3                 push    ax
seg001:23D4                 call    sub_16A5D
seg001:23D9                 add     sp, 2
seg001:23DC                 call    sub_E9E
seg001:23E1                 mov     [bp+var_2], ax
seg001:23E4                 sub     ax, ax
seg001:23E6                 mov     word_1F17A, ax
seg001:23E9                 push    ax
seg001:23EA                 call    far ptr sub_16BB0
seg001:23EF                 add     sp, 2
seg001:23F2                 lea     ax, [bp+var_1A]
seg001:23F5                 push    ax
seg001:23F6                 call    sub_EC6
seg001:23FB                 add     sp, 2
seg001:23FE                 cmp     [bp+var_1A], 0
seg001:2402                 jnz     short loc_4147
seg001:2404                 jmp     loc_42A2
seg001:2407 ; ---------------------------------------------------------------------------
seg001:2407
seg001:2407 loc_4147:                               ; CODE XREF: sub_3BFC+546␘j
seg001:2407                 jmp     loc_42AB
seg001:240A ; ---------------------------------------------------------------------------
seg001:240A                 or      ax, 374h
seg001:240D                 jmp     loc_41D2
seg001:2410 ; ---------------------------------------------------------------------------
seg001:2410                 cmp     word ptr [bp-0Ch], 0
seg001:2414                 jz      short loc_41D2
seg001:2416                 mov     ax, 0Bh
seg001:2419                 push    ax
seg001:241A                 call    far ptr sub_16A93
seg001:241F                 add     sp, 2
seg001:2422                 mov     ax, [bp-0Ch]
seg001:2425                 mov     cl, 3
seg001:2427                 shl     ax, cl
seg001:2429                 add     ax, 0F8h ; '°'
seg001:242C                 mov     [bp-2], ax
seg001:242F                 mov     ax, 0C5h ; '+'
seg001:2432                 push    ax
seg001:2433                 mov     ax, 0BEh ; '+'
seg001:2436                 push    ax
seg001:2437                 mov     ax, [bp-2]
seg001:243A                 add     ax, 7
seg001:243D                 push    ax
seg001:243E                 push    word ptr [bp-2]
seg001:2441                 call    far ptr sub_172BD
seg001:2446                 add     sp, 8
seg001:2449                 mov     word ptr [bp-18h], 0
seg001:244E                 mov     word ptr [bp-12h], 1
seg001:2453
seg001:2453 loc_4193:                               ; CODE XREF: sub_3BFC+5D4␙j
seg001:2453                 mov     bx, [bp-12h]
seg001:2456                 mov     al, 0FFh
seg001:2458                 sub     al, [bx-137Bh]
seg001:245C                 sub     ah, ah
seg001:245E                 mov     [bp-2], ax
seg001:2461                 mov     al, [bp-2]
seg001:2464                 and     ax, 0F0h
seg001:2467                 mov     cl, 4
seg001:2469                 shr     ax, cl
seg001:246B                 mov     dx, [bp-2]
seg001:246E                 and     dx, 0Fh
seg001:2471                 shl     dx, cl
seg001:2473                 add     ax, dx
seg001:2475                 mov     si, [bp-0Ah]
seg001:2478                 mov     cl, [bx+si-72F1h]
seg001:247C                 sub     ch, ch
seg001:247E                 cmp     ax, cx
seg001:2480                 jz      short loc_41C9
seg001:2482                 inc     word ptr [bp-18h]
seg001:2485                 add     word ptr [bp-12h], 0Eh
seg001:2489
seg001:2489 loc_41C9:                               ; CODE XREF: sub_3BFC+5C4␘j
seg001:2489                 inc     word ptr [bp-12h]
seg001:248C                 cmp     word ptr [bp-12h], 5
seg001:2490                 jl      short loc_4193
seg001:2492
seg001:2492 loc_41D2:                               ; CODE XREF: sub_3BFC+551␘j
seg001:2492                                         ; sub_3BFC+558␘j
seg001:2492                 cmp     word ptr [bp-1Ah], 2Eh ; '.'
seg001:2496                 jz      short loc_41E4
seg001:2498                 cmp     word ptr [bp-1Ah], 2Fh ; '/'
seg001:249C                 jle     short loc_4258
seg001:249E                 cmp     word ptr [bp-1Ah], 3Ah ; ':'
seg001:24A2                 jge     short loc_4258
seg001:24A4
seg001:24A4 loc_41E4:                               ; CODE XREF: sub_3BFC+5DA␘j
seg001:24A4                 cmp     word ptr [bp-0Ch], 4
seg001:24A8                 jge     short loc_4258
seg001:24AA                 mov     bx, [bp-0Ch]
seg001:24AD                 mov     al, [bp-1Ah]
seg001:24B0                 mov     [bx-137Ah], al
seg001:24B4                 mov     ax, 0Bh
seg001:24B7                 push    ax
seg001:24B8                 call    far ptr sub_16A93
seg001:24BD                 add     sp, 2
seg001:24C0                 mov     ax, [bp-0Ch]
seg001:24C3                 mov     cl, 3
seg001:24C5                 shl     ax, cl
seg001:24C7                 add     ax, 0F8h ; '°'
seg001:24CA                 mov     [bp-2], ax
seg001:24CD                 mov     ax, 0C5h ; '+'
seg001:24D0                 push    ax
seg001:24D1                 mov     ax, 0BEh ; '+'
seg001:24D4                 push    ax
seg001:24D5                 mov     ax, [bp-2]
seg001:24D8                 add     ax, 7
seg001:24DB                 push    ax
seg001:24DC                 push    word ptr [bp-2]
seg001:24DF                 call    far ptr sub_172BD
seg001:24E4                 add     sp, 8
seg001:24E7                 mov     ax, [bp-0Ch]
seg001:24EA                 add     ax, 1Fh
seg001:24ED                 push    ax
seg001:24EE                 mov     ax, 0BFh ; '+'
seg001:24F1                 push    ax
seg001:24F2                 call    sub_C693
seg001:24F7                 add     sp, 4
seg001:24FA                 mov     ax, 0Bh
seg001:24FD                 push    ax
seg001:24FE                 sub     ax, ax
seg001:2500                 push    ax
seg001:2501                 call    sub_C65B
seg001:2506                 add     sp, 4
seg001:2509                 lea     ax, [bp-1Ah]
seg001:250C                 push    ax
seg001:250D                 call    sub_C6AC
seg001:2512                 add     sp, 2
seg001:2515                 inc     word ptr [bp-0Ch]
seg001:2518
seg001:2518 loc_4258:                               ; CODE XREF: sub_3BFC+5E0␘j
seg001:2518                                         ; sub_3BFC+5E6␘j ...
seg001:2518                 cmp     word ptr [bp-1Ah], 8
seg001:251C                 jnz     short loc_42A2
seg001:251E                 cmp     word ptr [bp-0Ch], 0
seg001:2522                 jle     short loc_42A2
seg001:2524                 mov     ax, 0Bh
seg001:2527                 push    ax
seg001:2528                 call    far ptr sub_16A93
seg001:252D                 add     sp, 2
seg001:2530                 mov     ax, [bp-0Ch]
seg001:2533                 mov     cl, 3
seg001:2535                 shl     ax, cl
seg001:2537                 add     ax, 0F8h ; '°'
seg001:253A                 mov     [bp-2], ax
seg001:253D                 mov     ax, 0C5h ; '+'
seg001:2540                 push    ax
seg001:2541                 mov     ax, 0BEh ; '+'
seg001:2544                 push    ax
seg001:2545                 mov     ax, [bp-2]
seg001:2548                 add     ax, 7
seg001:254B                 push    ax
seg001:254C                 push    word ptr [bp-2]
seg001:254F                 call    far ptr sub_172BD
seg001:2554                 add     sp, 8
seg001:2557                 dec     word ptr [bp-0Ch]
seg001:255A                 mov     bx, [bp-0Ch]
seg001:255D                 mov     byte ptr [bx-137Ah], 20h ; ' '
seg001:2562
seg001:2562 loc_42A2:                               ; CODE XREF: sub_3BFC+4D0␘j
seg001:2562                                         ; sub_3BFC+548␘j ...
seg001:2562                 cmp     [bp+var_12], 1
seg001:2566                 jnz     short loc_42AB
seg001:2568                 jmp     loc_40D0
seg001:256B ; ---------------------------------------------------------------------------
seg001:256B
seg001:256B loc_42AB:                               ; CODE XREF: sub_3BFC:loc_4147␘j
seg001:256B                                         ; sub_3BFC+6AA␘j
seg001:256B                 mov     ax, 0Bh
seg001:256E                 push    ax
seg001:256F                 call    far ptr sub_16A93
seg001:2574                 add     sp, 2
seg001:2577                 mov     ax, 0C6h ; '¦'
seg001:257A                 push    ax
seg001:257B                 mov     ax, 9Fh ; 'ƒ'
seg001:257E                 push    ax
seg001:257F                 mov     ax, 13Eh
seg001:2582                 push    ax
seg001:2583                 mov     ax, 1
seg001:2586                 push    ax
seg001:2587                 call    far ptr sub_172BD
seg001:258C                 add     sp, 8
seg001:258F                 mov     ax, 0Bh
seg001:2592                 push    ax
seg001:2593                 sub     ax, ax
seg001:2595                 push    ax
seg001:2596                 call    sub_C65B
seg001:259B                 add     sp, 4
seg001:259E                 cmp     [bp+var_18], 0
seg001:25A2                 jmp     short loc_4316
seg001:25A4 ; ---------------------------------------------------------------------------
seg001:25A4                 sub     ax, ax
seg001:25A6                 mov     [bp-18h], ax
seg001:25A9                 push    ax
seg001:25AA                 mov     ax, 1D4Ch
seg001:25AD                 push    ax
seg001:25AE                 push    cs
seg001:25AF                 call    near ptr sub_37BC
seg001:25B2                 add     sp, 4
seg001:25B5                 mov     [bp+var_18], ax
seg001:25B8                 mov     al, byte ptr [bp+var_14]
seg001:25BB                 inc     al
seg001:25BD                 mov     byte_1F169, al
seg001:25C0                 sub     ax, ax
seg001:25C2                 mov     word_1F17A, ax
seg001:25C5                 push    ax
seg001:25C6                 call    far ptr sub_16BB0
seg001:25CB                 add     sp, 2
seg001:25CE                 mov     [bp+var_4], 1
seg001:25D3                 jmp     short loc_4332
seg001:25D3 ; ---------------------------------------------------------------------------
seg001:25D5                 align 2
seg001:25D6
seg001:25D6 loc_4316:                               ; CODE XREF: sub_3BFC+6E6␘j
seg001:25D6                 sub     ax, ax
seg001:25D8                 mov     [bp+var_18], ax
seg001:25DB                 push    ax
seg001:25DC                 mov     ax, 1D43h
seg001:25DF                 push    ax
seg001:25E0                 push    cs
seg001:25E1                 call    near ptr sub_37BC
seg001:25E4                 add     sp, 4
seg001:25E7                 mov     [bp+var_18], ax
seg001:25EA                 sub     ax, ax
seg001:25EC                 mov     [bp+var_4], ax
seg001:25EF                 mov     byte_1F169, al
seg001:25F2
seg001:25F2 loc_4332:                               ; CODE XREF: sub_3BFC+717␘j
seg001:25F2                 mov     byte_1F16C, 0
seg001:25F7                 mov     [bp+var_18], 0
seg001:25FC
seg001:25FC loc_433C:                               ; CODE XREF: sub_3BFC+75D␙j
seg001:25FC                 cmp     byte_1F16C, 0
seg001:2601                 jnz     short loc_4352
seg001:2603                 push    cs
seg001:2604                 call    near ptr sub_43BC
seg001:2607                 mov     ax, 2
seg001:260A                 push    ax
seg001:260B                 push    cs
seg001:260C                 call    near ptr sub_38C8
seg001:260F                 add     sp, 2
seg001:2612
seg001:2612 loc_4352:                               ; CODE XREF: sub_3BFC+745␘j
seg001:2612                 inc     [bp+var_18]
seg001:2615                 cmp     [bp+var_18], 12h
seg001:2619                 jl      short loc_433C
seg001:261B                 mov     ax, [bp+var_4]
seg001:261E                 pop     si
seg001:261F                 mov     sp, bp
seg001:2621                 pop     bp
seg001:2622                 retf
seg001:2622 sub_3BFC        endp
seg001:2622
seg001:2622 ; ---------------------------------------------------------------------------
seg001:2623                 align 2
seg001:2624
