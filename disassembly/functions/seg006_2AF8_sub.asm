seg006:2AF8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2AF8
seg006:2AF8
seg006:2AF8 sub_10948       proc near               ; CODE XREF: sub_10840+102␘p
seg006:2AF8                 mov     bp, word_2AA7D
seg006:2AFC                 sub     ch, ch
seg006:2AFE                 mov     dl, byte_2A9BE
seg006:2B02                 mov     dh, byte_2A9C8
seg006:2B06                 mov     bl, al
seg006:2B08                 sub     bh, bh
seg006:2B0A                 shl     bx, 1
seg006:2B0C                 mov     ax, [bx-4823h]
seg006:2B10                 mov     bx, word_2846A
seg006:2B14                 cmp     word_2A9C9, 0
seg006:2B19                 jz      short loc_10972
seg006:2B1B                 mov     bx, 0
seg006:2B1E                 add     si, word_2A9C9
seg006:2B22
seg006:2B22 loc_10972:                              ; CODE XREF: sub_10948+21␘j
seg006:2B22                 add     ax, bx
seg006:2B24                 mov     di, ax
seg006:2B26                 cmp     di, bp
seg006:2B28                 jb      short loc_109AE
seg006:2B2A                 retn
seg006:2B2B ; ---------------------------------------------------------------------------
seg006:2B2B
seg006:2B2B loc_1097B:                              ; CODE XREF: sub_10948+7F␙j
seg006:2B2B                 inc     di
seg006:2B2C                 or      ah, ah
seg006:2B2E                 jz      short loc_10985
seg006:2B30                 mov     al, ah
seg006:2B32                 stosb
seg006:2B33                 jmp     short loc_109CE
seg006:2B35 ; ---------------------------------------------------------------------------
seg006:2B35
seg006:2B35 loc_10985:                              ; CODE XREF: sub_10948+36␘j
seg006:2B35                 inc     di
seg006:2B36                 jmp     short loc_109CE
seg006:2B38 ; ---------------------------------------------------------------------------
seg006:2B38
seg006:2B38 loc_10988:                              ; CODE XREF: sub_10948+83␙j
seg006:2B38                 stosb
seg006:2B39                 inc     di
seg006:2B3A                 jmp     short loc_109CE
seg006:2B3C ; ---------------------------------------------------------------------------
seg006:2B3C
seg006:2B3C loc_1098C:                              ; CODE XREF: sub_10948+89␙j
seg006:2B3C                 inc     di
seg006:2B3D                 or      ah, ah
seg006:2B3F                 jz      short loc_10996
seg006:2B41                 mov     al, ah
seg006:2B43                 stosb
seg006:2B44                 jmp     short loc_109D8
seg006:2B46 ; ---------------------------------------------------------------------------
seg006:2B46
seg006:2B46 loc_10996:                              ; CODE XREF: sub_10948+47␘j
seg006:2B46                 inc     di
seg006:2B47                 jmp     short loc_109D8
seg006:2B49 ; ---------------------------------------------------------------------------
seg006:2B49
seg006:2B49 loc_10999:                              ; CODE XREF: sub_10948+8D␙j
seg006:2B49                 stosb
seg006:2B4A                 inc     di
seg006:2B4B                 jmp     short loc_109D8
seg006:2B4D ; ---------------------------------------------------------------------------
seg006:2B4D
seg006:2B4D loc_1099D:                              ; CODE XREF: sub_10948+9A␙j
seg006:2B4D                 inc     di
seg006:2B4E                 or      ah, ah
seg006:2B50                 jz      short loc_109A7
seg006:2B52                 mov     al, ah
seg006:2B54                 stosb
seg006:2B55                 jmp     short loc_109E9
seg006:2B57 ; ---------------------------------------------------------------------------
seg006:2B57
seg006:2B57 loc_109A7:                              ; CODE XREF: sub_10948+58␘j
seg006:2B57                 inc     di
seg006:2B58                 jmp     short loc_109E9
seg006:2B5A ; ---------------------------------------------------------------------------
seg006:2B5A
seg006:2B5A loc_109AA:                              ; CODE XREF: sub_10948+9E␙j
seg006:2B5A                 stosb
seg006:2B5B                 inc     di
seg006:2B5C                 jmp     short loc_109E9
seg006:2B5E ; ---------------------------------------------------------------------------
seg006:2B5E
seg006:2B5E loc_109AE:                              ; CODE XREF: sub_10948+30␘j
seg006:2B5E                                         ; sub_10948+D5␙j
seg006:2B5E                 mov     bx, si
seg006:2B60                 push    di
seg006:2B61                 mov     cl, dl
seg006:2B63                 mov     es, word_280BC
seg006:2B67                 push    ds
seg006:2B68                 mov     ds, word_2A9D7
seg006:2B6C                 shr     cx, 1
seg006:2B6E                 jz      short loc_109E9
seg006:2B70                 shr     cx, 1
seg006:2B72                 jz      short loc_109DA
seg006:2B74
seg006:2B74 loc_109C4:                              ; CODE XREF: sub_10948:loc_109D8␙j
seg006:2B74                 lodsw
seg006:2B75                 or      al, al
seg006:2B77                 jz      short loc_1097B
seg006:2B79                 or      ah, ah
seg006:2B7B                 jz      short loc_10988
seg006:2B7D                 stosw
seg006:2B7E
seg006:2B7E loc_109CE:                              ; CODE XREF: sub_10948+3B␘j
seg006:2B7E                                         ; sub_10948+3E␘j ...
seg006:2B7E                 lodsw
seg006:2B7F                 or      al, al
seg006:2B81                 jz      short loc_1098C
seg006:2B83                 or      ah, ah
seg006:2B85                 jz      short loc_10999
seg006:2B87                 stosw
seg006:2B88
seg006:2B88 loc_109D8:                              ; CODE XREF: sub_10948+4C␘j
seg006:2B88                                         ; sub_10948+4F␘j ...
seg006:2B88                 loop    loc_109C4
seg006:2B8A
seg006:2B8A loc_109DA:                              ; CODE XREF: sub_10948+7A␘j
seg006:2B8A                 test    dl, 2
seg006:2B8D                 jz      short loc_109E9
seg006:2B8F                 lodsw
seg006:2B90                 or      al, al
seg006:2B92                 jz      short loc_1099D
seg006:2B94                 or      ah, ah
seg006:2B96                 jz      short loc_109AA
seg006:2B98                 stosw
seg006:2B99
seg006:2B99 loc_109E9:                              ; CODE XREF: sub_10948+5D␘j
seg006:2B99                                         ; sub_10948+60␘j ...
seg006:2B99                 test    dl, 1
seg006:2B9C                 jz      short loc_109F4
seg006:2B9E                 lodsb
seg006:2B9F                 or      al, al
seg006:2BA1                 jz      short loc_109F4
seg006:2BA3                 stosb
seg006:2BA4
seg006:2BA4 loc_109F4:                              ; CODE XREF: sub_10948+A4␘j
seg006:2BA4                                         ; sub_10948+A9␘j
seg006:2BA4                 pop     ds
seg006:2BA5                 pop     di
seg006:2BA6                 add     di, 140h
seg006:2BAA                 mov     si, bx
seg006:2BAC                 dec     dh
seg006:2BAE                 jnz     short loc_10A15
seg006:2BB0                 mov     cl, byte_2846C
seg006:2BB4                 add     si, cx
seg006:2BB6                 inc     word_2A9CB
seg006:2BBA                 mov     bx, word_2A9CB
seg006:2BBE                 mov     es, word_2A9D7
seg006:2BC2                 mov     dh, es:[bx]
seg006:2BC5
seg006:2BC5 loc_10A15:                              ; CODE XREF: sub_10948+B6␘j
seg006:2BC5                 cmp     di, bp
seg006:2BC7                 jnb     short locret_10A1F
seg006:2BC9                 dec     byte_2846D
seg006:2BCD                 jnz     short loc_109AE
seg006:2BCF
seg006:2BCF locret_10A1F:                           ; CODE XREF: sub_10948+CF␘j
seg006:2BCF                 retn
seg006:2BCF sub_10948       endp
seg006:2BCF
seg006:2BD0
