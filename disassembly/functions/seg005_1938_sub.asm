seg005:1938 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1938
seg005:1938
seg005:1938 sub_D858        proc near               ; CODE XREF: sub_D300:loc_D39D␘p
seg005:1938                 push    ds
seg005:1939                 mov     ax, di
seg005:193B                 xchg    al, ah
seg005:193D                 sub     ah, ah
seg005:193F                 shl     ax, 1
seg005:1941                 shl     ax, 1
seg005:1943                 shl     ax, 1
seg005:1945                 mov     bx, ax
seg005:1947                 shl     ax, 1
seg005:1949                 shl     ax, 1
seg005:194B                 add     ax, bx
seg005:194D                 and     di, 0FFh
seg005:1951                 shr     di, 1
seg005:1953                 shr     di, 1
seg005:1955                 shr     di, 1
seg005:1957                 add     di, ax
seg005:1959                 shr     cx, 1
seg005:195B                 shr     cx, 1
seg005:195D                 shr     bp, 1
seg005:195F                 shr     bp, 1
seg005:1961                 shr     bp, 1
seg005:1963                 push    dx
seg005:1964                 call    sub_DA97
seg005:1967                 pop     dx
seg005:1968                 cmp     byte_2BF82, 0
seg005:196D                 jz      short loc_D892
seg005:196F
seg005:196F loc_D88F:                               ; CODE XREF: sub_D858+43␙j
seg005:196F                 jmp     short loc_D8EB
seg005:196F ; ---------------------------------------------------------------------------
seg005:1971                 align 2
seg005:1972
seg005:1972 loc_D892:                               ; CODE XREF: sub_D858+35␘j
seg005:1972                 mov     dh, byte ptr word_2AA7B
seg005:1976                 sub     dh, dl
seg005:1978                 cmp     dh, 0Eh
seg005:197B                 jnb     short loc_D88F
seg005:197D                 push    bp
seg005:197E                 push    cx
seg005:197F                 neg     dh
seg005:1981                 add     dh, 0Eh
seg005:1984                 push    ds
seg005:1985                 cmp     byte_2A6C6, 0
seg005:198A                 mov     ds, word_280BC
seg005:198E                 jz      short loc_D8D0
seg005:1990
seg005:1990 loc_D8B0:                               ; CODE XREF: sub_D858+74␙j
seg005:1990                 mov     bp, 10h
seg005:1993                 call    sub_D90C
seg005:1996                 add     si, 58h ; 'X'
seg005:1999                 add     di, 0Bh
seg005:199C                 mov     bp, 3
seg005:199F                 call    sub_D90C
seg005:19A2                 add     di, 0Ah
seg005:19A5                 add     si, 50h ; 'P'
seg005:19A8                 dec     dl
seg005:19AA                 dec     dh
seg005:19AC                 jnz     short loc_D8B0
seg005:19AE                 jmp     short loc_D8E8
seg005:19B0 ; ---------------------------------------------------------------------------
seg005:19B0
seg005:19B0 loc_D8D0:                               ; CODE XREF: sub_D858+56␘j
seg005:19B0                                         ; sub_D858+8E␙j
seg005:19B0                 mov     bp, 15h
seg005:19B3                 call    sub_D90C
seg005:19B6                 add     si, 58h ; 'X'
seg005:19B9                 add     di, 0Bh
seg005:19BC                 mov     bp, 8
seg005:19BF                 call    sub_D90C
seg005:19C2                 dec     dl
seg005:19C4                 dec     dh
seg005:19C6                 jnz     short loc_D8D0
seg005:19C8
seg005:19C8 loc_D8E8:                               ; CODE XREF: sub_D858+76␘j
seg005:19C8                 pop     ds
seg005:19C9                 pop     cx
seg005:19CA                 pop     bp
seg005:19CB
seg005:19CB loc_D8EB:                               ; CODE XREF: sub_D858:loc_D88F␘j
seg005:19CB                 mov     ds, word_280BC
seg005:19CF                 mov     bl, cl
seg005:19D1                 sub     bh, bh
seg005:19D3                 push    bp
seg005:19D4
seg005:19D4 loc_D8F4:                               ; CODE XREF: sub_D858+AF␙j
seg005:19D4                 mov     bp, bx
seg005:19D6                 call    sub_D90C
seg005:19D9                 pop     bp
seg005:19DA                 add     di, bp
seg005:19DC                 push    bp
seg005:19DD                 shl     bp, 1
seg005:19DF                 shl     bp, 1
seg005:19E1                 shl     bp, 1
seg005:19E3                 add     si, bp
seg005:19E5                 dec     dl
seg005:19E7                 jnz     short loc_D8F4
seg005:19E9                 pop     bp
seg005:19EA                 pop     ds
seg005:19EB                 retn
seg005:19EB sub_D858        endp
seg005:19EB
seg005:19EC
