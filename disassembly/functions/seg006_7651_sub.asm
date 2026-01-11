seg006:7651 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7651
seg006:7651
seg006:7651 sub_154A1       proc far                ; CODE XREF: sub_3186+2AE␘P
seg006:7651                                         ; sub_3186+2D1␘P ...
seg006:7651                 push    si
seg006:7652                 push    di
seg006:7653                 push    bp
seg006:7654                 push    es
seg006:7655                 mov     ax, 1
seg006:7658                 mov     word_1F17A, ax
seg006:765B                 push    ax
seg006:765C                 call    far ptr sub_16BB0
seg006:7661                 add     sp, 2
seg006:7664                 call    sub_10F0A
seg006:7667                 cmp     byte_28478, 0
seg006:766C                 jz      short loc_154C1
seg006:766E                 jmp     loc_15560
seg006:7671 ; ---------------------------------------------------------------------------
seg006:7671
seg006:7671 loc_154C1:                              ; CODE XREF: sub_154A1+1B␘j
seg006:7671                 call    sub_140ED
seg006:7674                 cmp     byte_2AA85, 0Eh
seg006:7679                 jnz     short loc_154DD
seg006:767B                 mov     ax, word_291DF
seg006:767E                 sub     ax, word_284AB
seg006:7682                 cmp     ax, word_2AA6F
seg006:7686                 jg      short loc_154DD
seg006:7688                 mov     byte_2AA92, 1
seg006:768D
seg006:768D loc_154DD:                              ; CODE XREF: sub_154A1+28␘j
seg006:768D                                         ; sub_154A1+35␘j
seg006:768D                 cmp     byte_28477, 0
seg006:7692                 jz      short loc_154F5
seg006:7694                 cmp     byte_28478, 0
seg006:7699                 jnz     short loc_154F5
seg006:769B                 mov     ax, word_2AA6F
seg006:769E                 add     ax, word_28495
seg006:76A2                 mov     word_28493, ax
seg006:76A5
seg006:76A5 loc_154F5:                              ; CODE XREF: sub_154A1+41␘j
seg006:76A5                                         ; sub_154A1+48␘j
seg006:76A5                 cmp     byte_28477, 0
seg006:76AA                 jnz     short loc_15527
seg006:76AC                 cmp     byte_2A6D4, 0
seg006:76B1                 jz      short loc_15508
seg006:76B3                 mov     byte_2AA97, 2
seg006:76B8
seg006:76B8 loc_15508:                              ; CODE XREF: sub_154A1+60␘j
seg006:76B8                 mov     al, byte_2AA97
seg006:76BB                 or      al, al
seg006:76BD                 jz      short loc_15527
seg006:76BF                 dec     al
seg006:76C1                 cmp     byte_2AA85, 0Eh
seg006:76C6                 jz      short loc_1551F
seg006:76C8                 cmp     byte_2A6F1, 0
seg006:76CD                 jz      short loc_15522
seg006:76CF
seg006:76CF loc_1551F:                              ; CODE XREF: sub_154A1+75␘j
seg006:76CF                 mov     byte_2AA97, al
seg006:76D2
seg006:76D2 loc_15522:                              ; CODE XREF: sub_154A1+7C␘j
seg006:76D2                 mov     byte_2AA92, 0
seg006:76D7
seg006:76D7 loc_15527:                              ; CODE XREF: sub_154A1+59␘j
seg006:76D7                                         ; sub_154A1+6C␘j
seg006:76D7                 cmp     byte_2AA92, 0
seg006:76DC                 jz      short loc_1554E
seg006:76DE                 cmp     byte_28477, 0
seg006:76E3                 jnz     short loc_1554E
seg006:76E5                 mov     byte_2AD25, 0
seg006:76EA                 cmp     byte_2AA85, 0Eh
seg006:76EF                 jnz     short loc_1554B
seg006:76F1                 mov     byte_2AD25, 1
seg006:76F6                 mov     byte_2AD26, 1
seg006:76FB
seg006:76FB loc_1554B:                              ; CODE XREF: sub_154A1+9E␘j
seg006:76FB                 call    sub_EBFD
seg006:76FE
seg006:76FE loc_1554E:                              ; CODE XREF: sub_154A1+8B␘j
seg006:76FE                                         ; sub_154A1+92␘j
seg006:76FE                 call    sub_1238C
seg006:7701                 cmp     byte_2A777, 0
seg006:7706                 jz      short loc_1555B
seg006:7708                 call    sub_1291D
seg006:770B
seg006:770B loc_1555B:                              ; CODE XREF: sub_154A1+B5␘j
seg006:770B                 call    sub_158ED
seg006:7710
seg006:7710 loc_15560:                              ; CODE XREF: sub_154A1+1D␘j
seg006:7710                 sub     ax, ax
seg006:7712                 mov     word_1F17A, ax
seg006:7715                 push    ax
seg006:7716                 call    far ptr sub_16BB0
seg006:771B                 add     sp, 2
seg006:771E                 pop     es
seg006:771F                 pop     bp
seg006:7720                 pop     di
seg006:7721                 pop     si
seg006:7722                 retf
seg006:7722 sub_154A1       endp
seg006:7722
seg006:7723
