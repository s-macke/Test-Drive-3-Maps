seg002:192E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:192E
seg002:192E ; Attributes: bp-based frame
seg002:192E
seg002:192E sub_8FFE        proc far                ; CODE XREF: sub_76D6+268␘p
seg002:192E
seg002:192E var_4           = word ptr -4
seg002:192E var_2           = word ptr -2
seg002:192E
seg002:192E                 push    bp
seg002:192F                 mov     bp, sp
seg002:1931                 sub     sp, 4
seg002:1934                 mov     ax, word_2032E
seg002:1937                 mov     dx, word_20330
seg002:193B                 mov     [bp+var_4], ax
seg002:193E                 mov     [bp+var_2], dx
seg002:1941                 or      dx, dx
seg002:1943                 jge     short loc_9022
seg002:1945                 neg     ax
seg002:1947                 adc     dx, 0
seg002:194A                 neg     dx
seg002:194C                 mov     [bp+var_4], ax
seg002:194F                 mov     [bp+var_2], dx
seg002:1952
seg002:1952 loc_9022:                               ; CODE XREF: sub_8FFE+15␘j
seg002:1952                 mov     ax, [bp+var_4]
seg002:1955                 mov     dx, [bp+var_2]
seg002:1958                 add     word_20266, ax
seg002:195C                 adc     word_20268, dx
seg002:1960
seg002:1960 loc_9030:                               ; CODE XREF: sub_8FFE+5F␙j
seg002:1960                                         ; sub_8FFE+71␙j
seg002:1960                 mov     ax, word_284A5
seg002:1963                 mov     dx, word_284A7
seg002:1967                 cmp     word_20268, dx
seg002:196B                 jb      short loc_9072
seg002:196D                 ja      short loc_9045
seg002:196F                 cmp     word_20266, ax
seg002:1973                 jb      short loc_9072
seg002:1975
seg002:1975 loc_9045:                               ; CODE XREF: sub_8FFE+3F␘j
seg002:1975                 mov     ax, word_284A5
seg002:1978                 mov     dx, word_284A7
seg002:197C                 sub     word_20266, ax
seg002:1980                 sbb     word_20268, dx
seg002:1984                 mov     al, byte_2C198
seg002:1987                 inc     byte_2C198
seg002:198B                 cmp     al, 3Ch ; '<'
seg002:198D                 jb      short loc_9030
seg002:198F                 cmp     byte_2D84E, 63h ; 'c'
seg002:1994                 jnb     short loc_906A
seg002:1996                 inc     byte_2D84E
seg002:199A
seg002:199A loc_906A:                               ; CODE XREF: sub_8FFE+66␘j
seg002:199A                 sub     byte_2C198, 3Ch ; '<'
seg002:199F                 jmp     short loc_9030
seg002:199F ; ---------------------------------------------------------------------------
seg002:19A1                 align 2
seg002:19A2
seg002:19A2 loc_9072:                               ; CODE XREF: sub_8FFE+3D␘j
seg002:19A2                                         ; sub_8FFE+45␘j
seg002:19A2                 mov     sp, bp
seg002:19A4                 pop     bp
seg002:19A5                 retf
seg002:19A5 sub_8FFE        endp
seg002:19A5
seg002:19A6
