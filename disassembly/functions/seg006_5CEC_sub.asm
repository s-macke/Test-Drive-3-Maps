seg006:5CEC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:5CEC
seg006:5CEC
seg006:5CEC sub_13B3C       proc near               ; CODE XREF: sub_1118F+D␘p
seg006:5CEC                 mov     si, word_2ACBE
seg006:5CF0                 cmp     si, 0FFFFh
seg006:5CF3                 jnz     short loc_13B56
seg006:5CF5                 mov     byte_2ACC3, 0
seg006:5CFA                 mov     byte_2ACC2, 0
seg006:5CFF                 mov     word_2ACC4, 0FFFFh
seg006:5D05                 retn
seg006:5D06 ; ---------------------------------------------------------------------------
seg006:5D06
seg006:5D06 loc_13B56:                              ; CODE XREF: sub_13B3C+7␘j
seg006:5D06                 mov     byte_2ACC3, 0
seg006:5D0B                 mov     bx, word_29461
seg006:5D0F                 shl     bx, 1
seg006:5D11                 jmp     short loc_13BBD
seg006:5D13 ; ---------------------------------------------------------------------------
seg006:5D13
seg006:5D13 loc_13B63:                              ; CODE XREF: sub_13B3C+84␙j
seg006:5D13                 test    word ptr [bx-5C7Bh], 2000h
seg006:5D19                 jz      short loc_13BBD
seg006:5D1B                 cmp     word ptr [bx-4D7Bh], 0
seg006:5D20                 jz      short loc_13BBD
seg006:5D22                 mov     ax, [bx-5C7Bh]
seg006:5D26                 and     al, 3Fh
seg006:5D28                 cmp     al, 12h
seg006:5D2A                 jb      short loc_13BBD
seg006:5D2C                 cmp     al, 14h
seg006:5D2E                 ja      short loc_13BBD
seg006:5D30                 mov     ax, [si-5B3Bh]
seg006:5D34                 add     ax, 100h
seg006:5D37                 and     ax, 0FE00h
seg006:5D3A                 sub     ax, [bx-5B3Bh]
seg006:5D3E                 jns     short loc_13B92
seg006:5D40                 neg     ax
seg006:5D42
seg006:5D42 loc_13B92:                              ; CODE XREF: sub_13B3C+52␘j
seg006:5D42                 mov     dx, [si-59FBh]
seg006:5D46                 add     dx, 100h
seg006:5D4A                 and     dx, 0FE00h
seg006:5D4E                 sub     dx, [bx-59FBh]
seg006:5D52                 jns     short loc_13BA6
seg006:5D54                 neg     dx
seg006:5D56
seg006:5D56 loc_13BA6:                              ; CODE XREF: sub_13B3C+66␘j
seg006:5D56                 add     ax, dx
seg006:5D58                 cmp     ax, 240h
seg006:5D5B                 jnb     short loc_13BBD
seg006:5D5D                 cmp     word_2ACC4, ax
seg006:5D61                 jb      short loc_13BB6
seg006:5D63                 mov     word_2ACC4, ax
seg006:5D66
seg006:5D66 loc_13BB6:                              ; CODE XREF: sub_13B3C+75␘j
seg006:5D66                 mov     byte_2ACC3, 1
seg006:5D6B                 jmp     short loc_13BC2
seg006:5D6D ; ---------------------------------------------------------------------------
seg006:5D6D
seg006:5D6D loc_13BBD:                              ; CODE XREF: sub_13B3C+25␘j
seg006:5D6D                                         ; sub_13B3C+2D␘j ...
seg006:5D6D                 sub     bx, 2
seg006:5D70                 jnz     short loc_13B63
seg006:5D72
seg006:5D72 loc_13BC2:                              ; CODE XREF: sub_13B3C+7F␘j
seg006:5D72                 mov     al, byte_2ACC3
seg006:5D75                 mov     ah, byte_2ACC2
seg006:5D79                 or      ah, ah
seg006:5D7B                 jz      short loc_13BD7
seg006:5D7D                 push    ax
seg006:5D7E                 mov     ax, 7
seg006:5D81                 call    sub_D045
seg006:5D86                 pop     ax
seg006:5D87
seg006:5D87 loc_13BD7:                              ; CODE XREF: sub_13B3C+8F␘j
seg006:5D87                 or      al, al
seg006:5D89                 jz      short loc_13C02
seg006:5D8B                 cmp     ah, 40h ; '@'
seg006:5D8E                 jnb     short loc_13C0B
seg006:5D90                 cmp     ah, 3Ch ; '<'
seg006:5D93                 jnb     short loc_13BEF
seg006:5D95                 cmp     word_2ACC4, 60h ; '`'
seg006:5D9A                 ja      short loc_13BEF
seg006:5D9C                 add     ah, 3
seg006:5D9F
seg006:5D9F loc_13BEF:                              ; CODE XREF: sub_13B3C+A7␘j
seg006:5D9F                                         ; sub_13B3C+AE␘j
seg006:5D9F                 inc     ah
seg006:5DA1                 cmp     ah, 3Eh ; '>'
seg006:5DA4                 jnz     short loc_13C0B
seg006:5DA6                 push    ax
seg006:5DA7                 mov     ax, 8
seg006:5DAA                 call    sub_D045
seg006:5DAF                 pop     ax
seg006:5DB0                 jmp     short loc_13C0B
seg006:5DB2 ; ---------------------------------------------------------------------------
seg006:5DB2
seg006:5DB2 loc_13C02:                              ; CODE XREF: sub_13B3C+9D␘j
seg006:5DB2                 or      ah, ah
seg006:5DB4                 jz      short loc_13C0B
seg006:5DB6                 dec     ah
seg006:5DB8                 and     ah, 3Eh
seg006:5DBB
seg006:5DBB loc_13C0B:                              ; CODE XREF: sub_13B3C+A2␘j
seg006:5DBB                                         ; sub_13B3C+B8␘j ...
seg006:5DBB                 mov     byte_2ACC2, ah
seg006:5DBF                 mov     si, word_2ACBE
seg006:5DC3                 call    sub_13C23
seg006:5DC6                 mov     si, word_2ACC0
seg006:5DCA                 cmp     si, 0FFFFh
seg006:5DCD                 jz      short locret_13C22
seg006:5DCF                 call    sub_13C23
seg006:5DD2
seg006:5DD2 locret_13C22:                           ; CODE XREF: sub_13B3C+E1␘j
seg006:5DD2                 retn
seg006:5DD2 sub_13B3C       endp
seg006:5DD2
seg006:5DD3
