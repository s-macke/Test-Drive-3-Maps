seg006:0B3A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0B3A
seg006:0B3A
seg006:0B3A sub_E98A        proc near               ; CODE XREF: sub_E7E9+5B␘p
seg006:0B3A                 cmp     byte_2A6D4, 0
seg006:0B3F                 jnz     short loc_E9DB
seg006:0B41                 mov     ax, word_28484
seg006:0B44                 add     ah, byte_285AA
seg006:0B48                 mov     al, ah
seg006:0B4A                 sub     ah, ah
seg006:0B4C                 shr     ax, 1
seg006:0B4E                 mov     bx, word_2D628
seg006:0B52                 cmp     bl, 13h
seg006:0B55                 jz      short loc_E9B0
seg006:0B57                 and     al, 0FEh
seg006:0B59                 cmp     bl, 9
seg006:0B5C                 jz      short loc_E9B0
seg006:0B5E                 and     al, 0F8h
seg006:0B60
seg006:0B60 loc_E9B0:                               ; CODE XREF: sub_E98A+1B␘j
seg006:0B60                                         ; sub_E98A+22␘j
seg006:0B60                 cmp     al, byte_2A6FC
seg006:0B64                 jz      short locret_E9DA
seg006:0B66                 mov     byte_2A6FC, al
seg006:0B69                 sub     bx, bx
seg006:0B6B                 push    bx
seg006:0B6C                 inc     bx
seg006:0B6D                 push    bx
seg006:0B6E                 mov     bl, 0Eh
seg006:0B70                 push    bx
seg006:0B71                 mov     bl, 8
seg006:0B73                 push    bx
seg006:0B74                 mov     bl, 7
seg006:0B76                 push    bx
seg006:0B77                 sub     bl, bl
seg006:0B79                 push    bx
seg006:0B7A                 add     ax, 17h
seg006:0B7D                 push    ax
seg006:0B7E                 sub     ax, 17h
seg006:0B81                 push    ax
seg006:0B82                 call    far ptr sub_17BE5
seg006:0B87                 add     sp, 10h
seg006:0B8A
seg006:0B8A locret_E9DA:                            ; CODE XREF: sub_E98A+2A␘j
seg006:0B8A                 retn
seg006:0B8B ; ---------------------------------------------------------------------------
seg006:0B8B
seg006:0B8B loc_E9DB:                               ; CODE XREF: sub_E98A+5␘j
seg006:0B8B                 sub     ax, ax
seg006:0B8D                 push    ax
seg006:0B8E                 call    far ptr sub_16A93
seg006:0B93                 add     sp, 2
seg006:0B96                 mov     ax, 0Dh
seg006:0B99                 push    ax
seg006:0B9A                 mov     al, 8
seg006:0B9C                 push    ax
seg006:0B9D                 mov     ax, 13h
seg006:0BA0                 push    ax
seg006:0BA1                 mov     ax, 0Ah
seg006:0BA4                 push    ax
seg006:0BA5                 call    far ptr sub_172BD
seg006:0BAA                 add     sp, 8
seg006:0BAD                 mov     al, byte_2C1A6
seg006:0BB0                 sub     ah, ah
seg006:0BB2                 push    ax
seg006:0BB3                 call    far ptr sub_16A93
seg006:0BB8                 add     sp, 2
seg006:0BBB                 mov     al, byte_2A6F8
seg006:0BBE                 mov     bh, 0Ah
seg006:0BC0                 sub     ah, ah
seg006:0BC2                 div     bh
seg006:0BC4                 mov     byte_28456, al
seg006:0BC7                 mov     byte_28457, ah
seg006:0BCB                 mov     ax, 0Dh
seg006:0BCE                 push    ax
seg006:0BCF                 mov     ax, 0Ah
seg006:0BD2                 push    ax
seg006:0BD3                 call    sub_16A1A
seg006:0BD8                 add     sp, 4
seg006:0BDB                 mov     ax, 5
seg006:0BDE                 push    ax
seg006:0BDF                 mov     al, 1
seg006:0BE1                 push    ax
seg006:0BE2                 mov     bl, byte_28456
seg006:0BE6                 mov     bh, bl
seg006:0BE8                 shl     bl, 1
seg006:0BEA                 shl     bl, 1
seg006:0BEC                 add     bl, bh
seg006:0BEE                 sub     bh, bh
seg006:0BF0                 add     bx, 0B665h
seg006:0BF4                 push    bx
seg006:0BF5                 call    far ptr sub_1805D
seg006:0BFA                 add     sp, 6
seg006:0BFD                 mov     ax, 0Dh
seg006:0C00                 push    ax
seg006:0C01                 mov     ax, 0Fh
seg006:0C04                 push    ax
seg006:0C05                 call    sub_16A1A
seg006:0C0A                 add     sp, 4
seg006:0C0D                 mov     ax, 5
seg006:0C10                 push    ax
seg006:0C11                 mov     al, 1
seg006:0C13                 push    ax
seg006:0C14                 mov     bl, byte_28457
seg006:0C18                 mov     bh, bl
seg006:0C1A                 shl     bl, 1
seg006:0C1C                 shl     bl, 1
seg006:0C1E                 add     bl, bh
seg006:0C20                 sub     bh, bh
seg006:0C22                 add     bx, 0B665h
seg006:0C26                 push    bx
seg006:0C27                 call    far ptr sub_1805D
seg006:0C2C                 add     sp, 6
seg006:0C2F                 retn
seg006:0C2F sub_E98A        endp
seg006:0C2F
seg006:0C30
