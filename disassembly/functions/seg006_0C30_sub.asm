seg006:0C30 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0C30
seg006:0C30
seg006:0C30 sub_EA80        proc near               ; CODE XREF: sub_E7E9+5E␘p
seg006:0C30                 inc     byte_2A6FB
seg006:0C34                 mov     ah, 0FFh
seg006:0C36                 mov     al, byte_2A6FB
seg006:0C39                 test    al, 8
seg006:0C3B                 jnz     short loc_EAAB
seg006:0C3D                 mov     ah, byte_2A6FA
seg006:0C41                 shr     ah, 1
seg006:0C43                 shr     ah, 1
seg006:0C45                 shr     ah, 1
seg006:0C47                 shr     ah, 1
seg006:0C49                 test    al, 7
seg006:0C4B                 jnz     short loc_EAAB
seg006:0C4D                 or      ah, ah
seg006:0C4F                 jz      short loc_EAAB
seg006:0C51                 push    ax
seg006:0C52                 mov     ax, 0Eh
seg006:0C55                 call    sub_D045
seg006:0C5A                 pop     ax
seg006:0C5B
seg006:0C5B loc_EAAB:                               ; CODE XREF: sub_EA80+B␘j
seg006:0C5B                                         ; sub_EA80+1B␘j ...
seg006:0C5B                 cmp     ah, byte_2A6F9
seg006:0C5F                 jnz     short loc_EAB2
seg006:0C61                 retn
seg006:0C62 ; ---------------------------------------------------------------------------
seg006:0C62
seg006:0C62 loc_EAB2:                               ; CODE XREF: sub_EA80+2F␘j
seg006:0C62                 mov     byte_2A6F9, ah
seg006:0C66                 or      ah, ah
seg006:0C68                 jns     short loc_EADD
seg006:0C6A                 sub     ax, ax
seg006:0C6C                 push    ax
seg006:0C6D                 call    far ptr sub_16A93
seg006:0C72                 add     sp, 2
seg006:0C75                 mov     ax, 0Bh
seg006:0C78                 push    ax
seg006:0C79                 mov     al, 9
seg006:0C7B                 push    ax
seg006:0C7C                 mov     ax, 137h
seg006:0C7F                 push    ax
seg006:0C80                 mov     ax, 120h
seg006:0C83                 push    ax
seg006:0C84                 call    far ptr sub_172BD
seg006:0C89                 add     sp, 8
seg006:0C8C                 retn
seg006:0C8D ; ---------------------------------------------------------------------------
seg006:0C8D
seg006:0C8D loc_EADD:                               ; CODE XREF: sub_EA80+38␘j
seg006:0C8D                 mov     byte_28456, ah
seg006:0C91                 mov     al, byte_2C19E
seg006:0C94                 sub     ah, ah
seg006:0C96                 push    ax
seg006:0C97                 call    far ptr sub_16A93
seg006:0C9C                 add     sp, 2
seg006:0C9F                 mov     ax, 0Ah
seg006:0CA2                 push    ax
seg006:0CA3                 mov     al, 9
seg006:0CA5                 push    ax
seg006:0CA6                 mov     ax, 11Fh
seg006:0CA9                 push    ax
seg006:0CAA                 mov     ax, 11Ch
seg006:0CAD                 push    ax
seg006:0CAE                 call    far ptr sub_172BD
seg006:0CB3                 add     sp, 8
seg006:0CB6                 mov     al, byte_2C19F
seg006:0CB9                 sub     ah, ah
seg006:0CBB                 push    ax
seg006:0CBC                 call    far ptr sub_16A93
seg006:0CC1                 add     sp, 2
seg006:0CC4                 mov     ax, 0Ah
seg006:0CC7                 push    ax
seg006:0CC8                 mov     al, 9
seg006:0CCA                 push    ax
seg006:0CCB                 mov     word_2844A, 127h
seg006:0CD1                 jmp     short loc_EB36
seg006:0CD3 ; ---------------------------------------------------------------------------
seg006:0CD3
seg006:0CD3 loc_EB23:                               ; CODE XREF: sub_EA80+BA␙j
seg006:0CD3                 mov     ax, word_2844A
seg006:0CD6                 push    ax
seg006:0CD7                 dec     ax
seg006:0CD8                 push    ax
seg006:0CD9                 call    far ptr sub_172BD
seg006:0CDE                 add     sp, 4
seg006:0CE1                 add     word_2844A, 3
seg006:0CE6
seg006:0CE6 loc_EB36:                               ; CODE XREF: sub_EA80+A1␘j
seg006:0CE6                 dec     byte_28456
seg006:0CEA                 jns     short loc_EB23
seg006:0CEC                 add     sp, 4
seg006:0CEF                 retn
seg006:0CEF sub_EA80        endp
seg006:0CEF
seg006:0CF0
