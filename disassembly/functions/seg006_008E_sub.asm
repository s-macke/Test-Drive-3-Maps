seg006:008E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:008E
seg006:008E
seg006:008E sub_DEDE        proc far                ; CODE XREF: sub_7ADE+4A␘P
seg006:008E                 sub     ax, ax
seg006:0090                 mov     word_1F17A, ax
seg006:0093                 push    ax
seg006:0094                 call    far ptr sub_16BB0
seg006:0099                 add     sp, 2
seg006:009C                 mov     al, byte_2D37C
seg006:009F                 mov     bl, al
seg006:00A1                 sub     bh, bh
seg006:00A3                 mov     byte_2D37C, bh
seg006:00A7                 shl     bx, 1
seg006:00A9                 jz      short loc_DF2B
seg006:00AB                 sub     bx, 80h ; 'Ç'
seg006:00AF                 js      short loc_DF2B
seg006:00B1                 cmp     al, 80h ; 'Ç'
seg006:00B3                 jz      short loc_DF2B
seg006:00B5                 ja      short loc_DF11
seg006:00B7                 add     bx, 0Ah
seg006:00BB                 mov     ax, cs:[bx]
seg006:00BE                 call    ax
seg006:00C0                 retf
seg006:00C1 ; ---------------------------------------------------------------------------
seg006:00C1
seg006:00C1 loc_DF11:                               ; CODE XREF: sub_DEDE+27␘j
seg006:00C1                 cmp     al, 8Ah ; 'è'
seg006:00C3                 ja      short loc_DF2B
seg006:00C5                 cmp     word_1F16A, 2
seg006:00CA                 jnb     short loc_DF2B
seg006:00CC                 sub     al, 81h ; 'ü'
seg006:00CE                 mov     bl, al
seg006:00D0                 sub     bh, bh
seg006:00D2                 shl     bx, 1
seg006:00D4                 mov     ax, [bx-4A07h]
seg006:00D8                 call    ax
seg006:00DA                 retf
seg006:00DB ; ---------------------------------------------------------------------------
seg006:00DB
seg006:00DB loc_DF2B:                               ; CODE XREF: sub_DEDE+1B␘j
seg006:00DB                                         ; sub_DEDE+21␘j ...
seg006:00DB                 call    loc_E542
seg006:00DE                 retf
seg006:00DE sub_DEDE        endp
seg006:00DE
seg006:00DF ; ---------------------------------------------------------------------------
seg006:00DF                 call    loc_E542
seg006:00E2                 retn
seg006:00E3 ; ---------------------------------------------------------------------------
seg006:00E3                 xor     byte_2A6BC, 1
seg006:00E8                 retn
seg006:00E9 ; ---------------------------------------------------------------------------
seg006:00E9                 xor     byte_2A6C4, 1
seg006:00EE                 mov     al, byte_2A6C4
seg006:00F1                 add     al, 0Eh
seg006:00F3                 sub     ah, ah
seg006:00F5                 push    ax
seg006:00F6                 call    sub_1688
seg006:00FB                 add     sp, 2
seg006:00FE                 retn
seg006:00FF ; ---------------------------------------------------------------------------
seg006:00FF                 mov     ax, 20h ; ' '
seg006:0102                 push    ax
seg006:0103                 call    sub_1688
seg006:0108                 add     sp, 2
seg006:010B                 retn
seg006:010C
