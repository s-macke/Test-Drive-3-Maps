seg002:153C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:153C
seg002:153C ; Attributes: bp-based frame
seg002:153C
seg002:153C sub_8C0C        proc far                ; CODE XREF: sub_89C2+15F␘p
seg002:153C                                         ; sub_8C80+E9␙p ...
seg002:153C
seg002:153C var_4           = word ptr -4
seg002:153C var_2           = word ptr -2
seg002:153C
seg002:153C                 push    bp
seg002:153D                 mov     bp, sp
seg002:153F                 sub     sp, 4
seg002:1542                 push    word_2DA70
seg002:1546                 mov     al, byte_2D62A
seg002:1549                 sub     ah, ah
seg002:154B                 mov     cx, ax
seg002:154D                 mov     ax, word_2DA72
seg002:1550                 mul     cx
seg002:1552                 mov     dx, word_2DA72
seg002:1556                 mov     cl, 5
seg002:1558                 shl     dx, cl
seg002:155A                 sub     ax, dx
seg002:155C                 push    ax
seg002:155D                 call    sub_10017
seg002:1562                 add     sp, 4
seg002:1565                 mov     ax, word_2DA74
seg002:1568                 add     ax, word_2844C
seg002:156C                 mov     [bp+var_2], ax
seg002:156F                 mov     ax, word_2DA76
seg002:1572                 sub     ax, word_2844E
seg002:1576                 mov     [bp+var_4], ax
seg002:1579                 add     ax, 4
seg002:157C                 push    ax
seg002:157D                 push    [bp+var_2]
seg002:1580                 call    sub_16A1A
seg002:1585                 add     sp, 4
seg002:1588                 push    word_2DA6E
seg002:158C                 call    far ptr sub_16A93
seg002:1591                 add     sp, 2
seg002:1594                 mov     ax, 5
seg002:1597                 push    ax
seg002:1598                 mov     ax, 1
seg002:159B                 push    ax
seg002:159C                 mov     ax, 0E764h
seg002:159F                 push    ax
seg002:15A0                 call    far ptr sub_1805D
seg002:15A5                 mov     al, byte_2D62A
seg002:15A8                 mov     byte_2D8A7, al
seg002:15AB                 mov     sp, bp
seg002:15AD                 pop     bp
seg002:15AE                 retf
seg002:15AE sub_8C0C        endp
seg002:15AE
seg002:15AE ; ---------------------------------------------------------------------------
seg002:15AF                 align 2
seg002:15B0
