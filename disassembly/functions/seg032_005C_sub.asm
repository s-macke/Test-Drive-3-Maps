seg032:005C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:005C
seg032:005C ; Attributes: bp-based frame
seg032:005C
seg032:005C sub_1B1FC       proc far                ; CODE XREF: sub_C34+B␘P
seg032:005C                                         ; sub_C58+B␘P ...
seg032:005C
seg032:005C arg_0           = word ptr  6
seg032:005C arg_2           = word ptr  8
seg032:005C
seg032:005C                 push    bp
seg032:005D                 mov     bp, sp
seg032:005F                 call    sub_1B3EC
seg032:0062                 mov     ax, word_2BDA5
seg032:0065                 inc     ax
seg032:0066                 mov     dx, word_2BDA7
seg032:006A                 inc     dx
seg032:006B                 push    ax
seg032:006C                 push    dx
seg032:006D                 mov     ax, [bp+arg_0]
seg032:0070                 dec     ax
seg032:0071                 mov     bx, [bp+arg_2]
seg032:0074                 dec     bx
seg032:0075                 call    sub_1B2FC
seg032:0078                 pop     dx
seg032:0079                 pop     ax
seg032:007A                 call    sub_1B40A
seg032:007D                 pop     bp
seg032:007E                 retf
seg032:007E sub_1B1FC       endp
seg032:007E
seg032:007F ; ---------------------------------------------------------------------------
seg032:007F                 call    sub_1B3EC
seg032:0082                 call    sub_1B325
seg032:0085                 mov     ax, word_2BDA5
seg032:0088                 inc     ax
seg032:0089                 mov     dx, word_2BDA7
seg032:008D                 inc     dx
seg032:008E                 call    sub_1B40A
seg032:0091                 retf
seg032:0092 ; ---------------------------------------------------------------------------
seg032:0092                 push    bp
seg032:0093                 mov     bp, sp
seg032:0095                 call    sub_1B3EC
seg032:0098                 mov     ax, [bp+6]
seg032:009B                 call    sub_1B579
seg032:009E                 call    sub_1B40A
seg032:00A1                 pop     bp
seg032:00A2                 retf
seg032:00A3 ; ---------------------------------------------------------------------------
seg032:00A3                 mov     al, byte_2BD68
seg032:00A6                 xor     ah, ah
seg032:00A8                 retf
seg032:00A9 ; ---------------------------------------------------------------------------
seg032:00A9                 push    bp
seg032:00AA                 mov     bp, sp
seg032:00AC                 call    sub_1B3EC
seg032:00AF                 mov     ax, [bp+6]
seg032:00B2                 dec     ax
seg032:00B3                 mov     cx, [bp+0Ah]
seg032:00B6                 dec     cx
seg032:00B7                 cmp     ax, cx
seg032:00B9                 jbe     short loc_1B25C
seg032:00BB                 xchg    ax, cx
seg032:00BC
seg032:00BC loc_1B25C:                              ; CODE XREF: seg032:00B9␘j
seg032:00BC                 xor     bx, bx
seg032:00BE                 mov     bl, byte_2B5D0
seg032:00C2                 call    sub_1B655
seg032:00C5                 mov     word_2BDA9, ax
seg032:00C8                 mov     ax, cx
seg032:00CA                 call    sub_1B655
seg032:00CD                 mov     word_2BDAD, ax
seg032:00D0                 mov     ax, [bp+8]
seg032:00D3                 dec     ax
seg032:00D4                 mov     cx, [bp+0Ch]
seg032:00D7                 dec     cx
seg032:00D8                 cmp     ax, cx
seg032:00DA                 jbe     short loc_1B27D
seg032:00DC                 xchg    ax, cx
seg032:00DD
seg032:00DD loc_1B27D:                              ; CODE XREF: seg032:00DA␘j
seg032:00DD                 xor     bx, bx
seg032:00DF                 mov     bl, byte_2B5CF
seg032:00E3                 call    sub_1B655
seg032:00E6                 mov     word_2BDAB, ax
seg032:00E9                 mov     ax, cx
seg032:00EB                 call    sub_1B655
seg032:00EE                 mov     word_2BDAF, ax
seg032:00F1                 sub     ax, ax
seg032:00F3                 mov     bx, ax
seg032:00F5                 call    sub_1B2FC
seg032:00F8                 call    sub_1B40A
seg032:00FB                 pop     bp
seg032:00FC                 retf
seg032:00FD ; ---------------------------------------------------------------------------
seg032:00FD                 push    bp
seg032:00FE                 mov     bp, sp
seg032:0100                 call    sub_1B3EC
seg032:0103                 mov     ax, [bp+6]
seg032:0106                 or      al, ah
seg032:0108                 xchg    al, byte_2BDB2
seg032:010C                 mov     ah, 0
seg032:010E                 push    ax
seg032:010F                 jz      short loc_1B2C4
seg032:0111                 cmp     byte_2BDB1, 0
seg032:0116                 jz      short loc_1B2C4
seg032:0118                 mov     byte_2BDB1, 0
seg032:011D                 inc     word_2BDA7
seg032:0121                 call    sub_1B325
seg032:0124
seg032:0124 loc_1B2C4:                              ; CODE XREF: seg032:010F␘j
seg032:0124                                         ; seg032:0116␘j
seg032:0124                 pop     ax
seg032:0125                 cbw
seg032:0126                 call    sub_1B40A
seg032:0129                 pop     bp
seg032:012A                 retf
seg032:012B ; ---------------------------------------------------------------------------
seg032:012B                 push    bp
seg032:012C                 mov     bp, sp
seg032:012E                 call    sub_1B3EC
seg032:0131                 mov     al, byte_2BDB4
seg032:0134                 mov     ah, 0
seg032:0136                 jz      short loc_1B2E1
seg032:0138                 mov     bx, [bp+6]
seg032:013B                 or      bl, bh
seg032:013D                 mov     byte_2BDB4, bl
seg032:0141
seg032:0141 loc_1B2E1:                              ; CODE XREF: seg032:0136␘j
seg032:0141                 call    sub_1B40A
seg032:0144                 pop     bp
seg032:0145                 retf
seg032:0146
