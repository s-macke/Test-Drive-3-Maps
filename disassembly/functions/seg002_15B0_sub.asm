seg002:15B0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:15B0
seg002:15B0 ; Attributes: bp-based frame
seg002:15B0
seg002:15B0 sub_8C80        proc far                ; CODE XREF: sub_76D6+50␘p
seg002:15B0                                         ; sub_76D6+260␘p ...
seg002:15B0
seg002:15B0 var_4           = word ptr -4
seg002:15B0 var_2           = word ptr -2
seg002:15B0
seg002:15B0                 push    bp
seg002:15B1                 mov     bp, sp
seg002:15B3                 sub     sp, 4
seg002:15B6                 mov     ax, word_2BF58
seg002:15B9                 add     ax, word_2BF5A
seg002:15BD                 jnz     short loc_8C92
seg002:15BF                 jmp     loc_8D6C
seg002:15C2 ; ---------------------------------------------------------------------------
seg002:15C2
seg002:15C2 loc_8C92:                               ; CODE XREF: sub_8C80+D␘j
seg002:15C2                 mov     al, byte_2BF46
seg002:15C5                 cmp     byte_2D89E, al
seg002:15C9                 jnz     short loc_8C9E
seg002:15CB                 jmp     loc_8D6C
seg002:15CE ; ---------------------------------------------------------------------------
seg002:15CE
seg002:15CE loc_8C9E:                               ; CODE XREF: sub_8C80+19␘j
seg002:15CE                 sub     ax, ax
seg002:15D0                 mov     word_1F17A, ax
seg002:15D3                 push    ax
seg002:15D4                 call    far ptr sub_16BB0
seg002:15D9                 add     sp, 2
seg002:15DC                 sub     ax, ax
seg002:15DE                 push    ax
seg002:15DF                 mov     ax, 1
seg002:15E2                 push    ax
seg002:15E3                 push    word_2BF6E
seg002:15E7                 push    word_2BF6C
seg002:15EB                 mov     ax, 88h ; 'ê'
seg002:15EE                 push    ax
seg002:15EF                 mov     ax, 68h ; 'h'
seg002:15F2                 push    ax
seg002:15F3                 mov     ax, 0CFh ; '-'
seg002:15F6                 push    ax
seg002:15F7                 mov     ax, 0A8h ; '¿'
seg002:15FA                 push    ax
seg002:15FB                 call    far ptr sub_17BE5
seg002:1600                 add     sp, 10h
seg002:1603                 sub     ax, ax
seg002:1605                 push    ax
seg002:1606                 mov     ax, 1
seg002:1609                 push    ax
seg002:160A                 push    word_2BF6E
seg002:160E                 mov     ax, word_2BF6C
seg002:1611                 add     ax, 28h ; '('
seg002:1614                 push    ax
seg002:1615                 mov     ax, 0A9h ; '¬'
seg002:1618                 push    ax
seg002:1619                 mov     ax, 89h ; 'ë'
seg002:161C                 push    ax
seg002:161D                 mov     ax, word_2BF74
seg002:1620                 add     ax, 7Fh ; '␡'
seg002:1623                 push    ax
seg002:1624                 mov     ax, 0A8h ; '¿'
seg002:1627                 push    ax
seg002:1628                 call    far ptr sub_17BE5
seg002:162D                 add     sp, 10h
seg002:1630                 mov     al, byte_2C1A4
seg002:1633                 sub     ah, ah
seg002:1635                 push    ax
seg002:1636                 call    far ptr sub_16A93
seg002:163B                 add     sp, 2
seg002:163E                 push    word_2BF5A
seg002:1642                 push    word_2BF58
seg002:1646                 call    sub_16A1A
seg002:164B                 add     sp, 4
seg002:164E                 push    word_2BF54
seg002:1652                 mov     al, byte_2D89E
seg002:1655                 sub     ah, ah
seg002:1657                 mov     cx, ax
seg002:1659                 mov     ax, word_2BF56
seg002:165C                 mul     cx
seg002:165E                 mov     cx, ax
seg002:1660                 mov     ax, 500h
seg002:1663                 imul    word_2BF7A
seg002:1667                 sub     cx, ax
seg002:1669                 push    cx
seg002:166A                 call    sub_10017
seg002:166F                 add     sp, 4
seg002:1672                 mov     ax, word_2BF58
seg002:1675                 add     ax, word_2844C
seg002:1679                 mov     [bp+var_2], ax
seg002:167C                 mov     ax, word_2BF5A
seg002:167F                 sub     ax, word_2844E
seg002:1683                 mov     [bp+var_4], ax
seg002:1686                 push    ax
seg002:1687                 push    [bp+var_2]
seg002:168A                 call    sub_1693E
seg002:168F                 add     sp, 4
seg002:1692                 mov     al, byte_2D89E
seg002:1695                 mov     byte_2BF46, al
seg002:1698                 push    cs
seg002:1699                 call    near ptr sub_8C0C
seg002:169C
seg002:169C loc_8D6C:                               ; CODE XREF: sub_8C80+F␘j
seg002:169C                                         ; sub_8C80+1B␘j
seg002:169C                 mov     sp, bp
seg002:169E                 pop     bp
seg002:169F                 retf
seg002:169F sub_8C80        endp
seg002:169F
seg002:16A0
