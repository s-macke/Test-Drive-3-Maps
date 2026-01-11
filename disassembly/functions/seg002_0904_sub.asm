seg002:0904 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:0904
seg002:0904 ; Attributes: bp-based frame
seg002:0904
seg002:0904 sub_7FD4        proc far                ; CODE XREF: sub_76D6+44␘p
seg002:0904
seg002:0904 var_2           = word ptr -2
seg002:0904
seg002:0904                 push    bp
seg002:0905                 mov     bp, sp
seg002:0907                 sub     sp, 2
seg002:090A                 sub     al, al
seg002:090C                 mov     byte_2BF42, al
seg002:090F                 mov     byte_2D620, al
seg002:0912                 mov     byte_2D8A6, al
seg002:0915                 mov     bl, byte_2A6C1
seg002:0919                 sub     bh, bh
seg002:091B                 mov     al, [bx-188Bh]
seg002:091F                 mov     byte_2BF47, al
seg002:0922                 inc     al
seg002:0924                 mov     byte_2C184, al
seg002:0927                 mov     al, 0FFh
seg002:0929                 mov     byte_2D8A7, al
seg002:092C                 mov     byte_2DB50, al
seg002:092F                 mov     byte_2BF46, al
seg002:0932                 mov     byte_2C18D, al
seg002:0935                 mov     byte_2A6FC, al
seg002:0938                 mov     byte_2D852, 1
seg002:093D                 mov     al, 6
seg002:093F                 mov     byte_2BF41, al
seg002:0942                 mov     byte_2BF7C, al
seg002:0945                 mov     byte_280DC, bh
seg002:0949                 mov     ax, 118Ah
seg002:094C                 push    ax
seg002:094D                 mov     ax, 0A8Ch
seg002:0950                 push    ax
seg002:0951                 call    sub_195EA
seg002:0956                 add     sp, 4
seg002:0959                 mov     ax, 0A8Ah
seg002:095C                 push    ax
seg002:095D                 call    sub_CA8
seg002:0962                 add     sp, 2
seg002:0965                 mov     byte_280DC, 80h ; 'Ç'
seg002:096A                 mov     ax, 1195h
seg002:096D                 push    ax
seg002:096E                 mov     ax, 0AC1h
seg002:0971                 push    ax
seg002:0972                 call    sub_195EA
seg002:0977                 add     sp, 4
seg002:097A                 mov     ax, 0ABAh
seg002:097D                 push    ax
seg002:097E                 call    sub_CA8
seg002:0983                 add     sp, 2
seg002:0986                 call    sub_393A
seg002:098B                 mov     ax, 1
seg002:098E                 mov     word_1F17A, ax
seg002:0991                 push    ax
seg002:0992                 call    far ptr sub_16BB0
seg002:0997                 add     sp, 2
seg002:099A                 sub     ax, ax
seg002:099C                 push    ax
seg002:099D                 call    far ptr sub_16A93
seg002:09A2                 add     sp, 2
seg002:09A5                 mov     ax, 6Fh ; 'o'
seg002:09A8                 push    ax
seg002:09A9                 mov     ax, 10h
seg002:09AC                 push    ax
seg002:09AD                 mov     ax, 13Fh
seg002:09B0                 push    ax
seg002:09B1                 sub     ax, ax
seg002:09B3                 push    ax
seg002:09B4                 call    far ptr sub_172BD
seg002:09B9                 add     sp, 8
seg002:09BC                 mov     ax, 0C7h ; '¦'
seg002:09BF                 push    ax
seg002:09C0                 push    cs
seg002:09C1                 call    near ptr sub_9312
seg002:09C4                 add     sp, 2
seg002:09C7                 mov     ax, 1
seg002:09CA                 mov     word_1F17A, ax
seg002:09CD                 push    ax
seg002:09CE                 call    far ptr sub_16BB0
seg002:09D3                 add     sp, 2
seg002:09D6                 mov     ax, 119Dh
seg002:09D9                 push    ax
seg002:09DA                 mov     ax, 0AC1h
seg002:09DD                 push    ax
seg002:09DE                 call    sub_195EA
seg002:09E3                 add     sp, 4
seg002:09E6                 push    word_2BF4E
seg002:09EA                 push    word_2BF4C
seg002:09EE                 mov     ax, 0ABAh
seg002:09F1                 push    ax
seg002:09F2                 call    sub_E26
seg002:09F7                 add     sp, 6
seg002:09FA                 mov     ax, 240Ch
seg002:09FD                 push    ds
seg002:09FE                 push    ax
seg002:09FF                 push    word_2BF4E
seg002:0A03                 push    word_2BF4C
seg002:0A07                 call    sub_A8EF
seg002:0A0C                 add     sp, 8
seg002:0A0F                 sub     ax, ax
seg002:0A11                 push    ax
seg002:0A12                 mov     ax, 0AFh ; '»'
seg002:0A15                 push    ax
seg002:0A16                 mov     ax, 108h
seg002:0A19                 push    ax
seg002:0A1A                 mov     ax, 38h ; '8'
seg002:0A1D                 push    ax
seg002:0A1E                 push    word_1FC44
seg002:0A22                 mov     ax, 240Ch
seg002:0A25                 push    ax
seg002:0A26                 call    sub_7696
seg002:0A2B                 add     sp, 0Ch
seg002:0A2E                 mov     ax, 9Ch ; '£'
seg002:0A31                 push    ax
seg002:0A32                 mov     ax, 118h
seg002:0A35                 push    ax
seg002:0A36                 call    sub_16A1A
seg002:0A3B                 add     sp, 4
seg002:0A3E                 cmp     word_2D628, 13h
seg002:0A43                 jnz     short loc_811C
seg002:0A45                 mov     [bp+var_2], 80h ; 'Ç'
seg002:0A4A                 jmp     short loc_8121
seg002:0A4C ; ---------------------------------------------------------------------------
seg002:0A4C
seg002:0A4C loc_811C:                               ; CODE XREF: sub_7FD4+13F␘j
seg002:0A4C                 mov     [bp+var_2], 0
seg002:0A51
seg002:0A51 loc_8121:                               ; CODE XREF: sub_7FD4+146␘j
seg002:0A51                 mov     ax, [bp+var_2]
seg002:0A54                 add     ax, 0Fh
seg002:0A57                 push    ax
seg002:0A58                 call    far ptr sub_16A93
seg002:0A5D                 add     sp, 2
seg002:0A60                 mov     ax, 5
seg002:0A63                 push    ax
seg002:0A64                 mov     ax, 1
seg002:0A67                 push    ax
seg002:0A68                 mov     ax, 0E764h
seg002:0A6B                 push    ax
seg002:0A6C                 call    far ptr sub_18596
seg002:0A71                 add     sp, 6
seg002:0A74                 mov     ax, 0AFh ; '»'
seg002:0A77                 push    ax
seg002:0A78                 mov     ax, 120h
seg002:0A7B                 push    ax
seg002:0A7C                 call    sub_16A1A
seg002:0A81                 add     sp, 4
seg002:0A84                 mov     ax, 18h
seg002:0A87                 push    ax
seg002:0A88                 mov     ax, 4
seg002:0A8B                 push    ax
seg002:0A8C                 mov     ax, 0E2A0h
seg002:0A8F                 push    ax
seg002:0A90                 call    far ptr sub_18596
seg002:0A95                 add     sp, 6
seg002:0A98                 mov     ax, [bp+var_2]
seg002:0A9B                 add     ax, 7
seg002:0A9E                 push    ax
seg002:0A9F                 call    far ptr sub_16A93
seg002:0AA4                 add     sp, 2
seg002:0AA7                 mov     ax, 18h
seg002:0AAA                 push    ax
seg002:0AAB                 mov     ax, 4
seg002:0AAE                 push    ax
seg002:0AAF                 mov     ax, 0E300h
seg002:0AB2                 push    ax
seg002:0AB3                 call    far ptr sub_18596
seg002:0AB8                 add     sp, 6
seg002:0ABB                 mov     ax, [bp+var_2]
seg002:0ABE                 add     ax, 8
seg002:0AC1                 push    ax
seg002:0AC2                 call    far ptr sub_16A93
seg002:0AC7                 add     sp, 2
seg002:0ACA                 mov     ax, 18h
seg002:0ACD                 push    ax
seg002:0ACE                 mov     ax, 4
seg002:0AD1                 push    ax
seg002:0AD2                 mov     ax, 0E360h
seg002:0AD5                 push    ax
seg002:0AD6                 call    far ptr sub_18596
seg002:0ADB                 add     sp, 6
seg002:0ADE                 push    [bp+var_2]
seg002:0AE1                 call    far ptr sub_16A93
seg002:0AE6                 add     sp, 2
seg002:0AE9                 mov     ax, 18h
seg002:0AEC                 push    ax
seg002:0AED                 mov     ax, 4
seg002:0AF0                 push    ax
seg002:0AF1                 mov     ax, 0E3C0h
seg002:0AF4                 push    ax
seg002:0AF5                 call    far ptr sub_18596
seg002:0AFA                 add     sp, 6
seg002:0AFD                 mov     ax, [bp+var_2]
seg002:0B00                 add     ax, 0Ch
seg002:0B03                 push    ax
seg002:0B04                 call    far ptr sub_16A93
seg002:0B09                 add     sp, 2
seg002:0B0C                 mov     ax, 18h
seg002:0B0F                 push    ax
seg002:0B10                 mov     ax, 4
seg002:0B13                 push    ax
seg002:0B14                 mov     ax, 0E420h
seg002:0B17                 push    ax
seg002:0B18                 call    far ptr sub_18596
seg002:0B1D                 add     sp, 6
seg002:0B20                 mov     ax, [bp+var_2]
seg002:0B23                 add     ax, 4
seg002:0B26                 push    ax
seg002:0B27                 call    far ptr sub_16A93
seg002:0B2C                 add     sp, 2
seg002:0B2F                 mov     ax, 18h
seg002:0B32                 push    ax
seg002:0B33                 mov     ax, 4
seg002:0B36                 push    ax
seg002:0B37                 mov     ax, 0E480h
seg002:0B3A                 push    ax
seg002:0B3B                 call    far ptr sub_18596
seg002:0B40                 add     sp, 6
seg002:0B43                 mov     ax, 1
seg002:0B46                 push    ax
seg002:0B47                 sub     ax, ax
seg002:0B49                 push    ax
seg002:0B4A                 mov     ax, 67h ; 'g'
seg002:0B4D                 push    ax
seg002:0B4E                 sub     ax, ax
seg002:0B50                 push    ax
seg002:0B51                 mov     ax, 0C7h ; '¦'
seg002:0B54                 push    ax
seg002:0B55                 mov     ax, 70h ; 'p'
seg002:0B58                 push    ax
seg002:0B59                 mov     ax, 13Fh
seg002:0B5C                 push    ax
seg002:0B5D                 sub     ax, ax
seg002:0B5F                 push    ax
seg002:0B60                 call    far ptr sub_17BE5
seg002:0B65                 add     sp, 10h
seg002:0B68                 mov     ax, 1
seg002:0B6B                 push    ax
seg002:0B6C                 sub     ax, ax
seg002:0B6E                 push    ax
seg002:0B6F                 mov     ax, 88h ; 'ê'
seg002:0B72                 push    ax
seg002:0B73                 mov     ax, 0A8h ; '¿'
seg002:0B76                 push    ax
seg002:0B77                 push    word_2BF6E
seg002:0B7B                 mov     ax, word_2BF6E
seg002:0B7E                 sub     ax, 20h ; ' '
seg002:0B81                 push    ax
seg002:0B82                 mov     ax, word_2BF6C
seg002:0B85                 add     ax, 27h ; '''
seg002:0B88                 push    ax
seg002:0B89                 push    word_2BF6C
seg002:0B8D                 call    far ptr sub_17BE5
seg002:0B92                 add     sp, 10h
seg002:0B95                 mov     ax, 1
seg002:0B98                 push    ax
seg002:0B99                 sub     ax, ax
seg002:0B9B                 push    ax
seg002:0B9C                 mov     ax, 0A9h ; '¬'
seg002:0B9F                 push    ax
seg002:0BA0                 mov     ax, 0A8h ; '¿'
seg002:0BA3                 push    ax
seg002:0BA4                 push    word_2BF6E
seg002:0BA8                 mov     ax, word_2BF6E
seg002:0BAB                 sub     ax, 20h ; ' '
seg002:0BAE                 push    ax
seg002:0BAF                 mov     ax, word_2BF6C
seg002:0BB2                 add     ax, word_2BF74
seg002:0BB6                 dec     ax
seg002:0BB7                 push    ax
seg002:0BB8                 mov     ax, word_2BF6C
seg002:0BBB                 add     ax, 28h ; '('
seg002:0BBE                 push    ax
seg002:0BBF                 call    far ptr sub_17BE5
seg002:0BC4                 add     sp, 10h
seg002:0BC7                 mov     ax, 1
seg002:0BCA                 push    ax
seg002:0BCB                 sub     ax, ax
seg002:0BCD                 push    ax
seg002:0BCE                 mov     ax, 0C7h ; '¦'
seg002:0BD1                 push    ax
seg002:0BD2                 mov     ax, 108h
seg002:0BD5                 push    ax
seg002:0BD6                 push    word_2BF72
seg002:0BDA                 mov     ax, word_2BF72
seg002:0BDD                 sub     ax, 20h ; ' '
seg002:0BE0                 push    ax
seg002:0BE1                 mov     ax, word_2BF70
seg002:0BE4                 add     ax, word_2BF76
seg002:0BE8                 dec     ax
seg002:0BE9                 push    ax
seg002:0BEA                 push    word_2BF70
seg002:0BEE                 call    far ptr sub_17BE5
seg002:0BF3                 add     sp, 10h
seg002:0BF6                 mov     ax, 11A2h
seg002:0BF9                 push    ax
seg002:0BFA                 mov     ax, 0AC1h
seg002:0BFD                 push    ax
seg002:0BFE                 call    sub_195EA
seg002:0C03                 add     sp, 4
seg002:0C06                 push    word_2BF4E
seg002:0C0A                 push    word_2BF4C
seg002:0C0E                 mov     ax, 0ABAh
seg002:0C11                 push    ax
seg002:0C12                 call    sub_E26
seg002:0C17                 add     sp, 6
seg002:0C1A                 mov     ax, 240Ch
seg002:0C1D                 push    ds
seg002:0C1E                 push    ax
seg002:0C1F                 push    word_2BF4E
seg002:0C23                 push    word_2BF4C
seg002:0C27                 call    sub_A8EF
seg002:0C2C                 add     sp, 8
seg002:0C2F                 sub     ax, ax
seg002:0C31                 push    ax
seg002:0C32                 mov     ax, 97h ; 'ù'
seg002:0C35                 push    ax
seg002:0C36                 sub     ax, ax
seg002:0C38                 push    ax
seg002:0C39                 mov     ax, 0A8h ; '¿'
seg002:0C3C                 push    ax
seg002:0C3D                 push    word_1FC40
seg002:0C41                 mov     ax, 240Ch
seg002:0C44                 push    ax
seg002:0C45                 call    sub_7696
seg002:0C4A                 add     sp, 0Ch
seg002:0C4D                 mov     ax, 11A8h
seg002:0C50                 push    ax
seg002:0C51                 mov     ax, 0AC1h
seg002:0C54                 push    ax
seg002:0C55                 call    sub_195EA
seg002:0C5A                 add     sp, 4
seg002:0C5D                 push    word_2BF4E
seg002:0C61                 push    word_2BF4C
seg002:0C65                 mov     ax, 0ABAh
seg002:0C68                 push    ax
seg002:0C69                 call    sub_E26
seg002:0C6E                 add     sp, 6
seg002:0C71                 mov     ax, 240Ch
seg002:0C74                 push    ds
seg002:0C75                 push    ax
seg002:0C76                 push    word_2BF4E
seg002:0C7A                 push    word_2BF4C
seg002:0C7E                 call    sub_A8EF
seg002:0C83                 add     sp, 8
seg002:0C86                 sub     ax, ax
seg002:0C88                 push    ax
seg002:0C89                 mov     ax, 0C7h ; '¦'
seg002:0C8C                 push    ax
seg002:0C8D                 sub     ax, ax
seg002:0C8F                 push    ax
seg002:0C90                 mov     ax, 0A8h ; '¿'
seg002:0C93                 push    ax
seg002:0C94                 push    word_1FC42
seg002:0C98                 mov     ax, 240Ch
seg002:0C9B                 push    ax
seg002:0C9C                 call    sub_7696
seg002:0CA1                 add     sp, 0Ch
seg002:0CA4                 push    cs
seg002:0CA5                 call    near ptr sub_949A
seg002:0CA8                 mov     byte_280DC, 0
seg002:0CAD                 sub     ax, ax
seg002:0CAF                 mov     word_1F17A, ax
seg002:0CB2                 push    ax
seg002:0CB3                 call    far ptr sub_16BB0
seg002:0CB8                 add     sp, 2
seg002:0CBB                 push    cs
seg002:0CBC                 call    near ptr sub_839E
seg002:0CBF                 call    sub_396E
seg002:0CC4                 call    sub_3982
seg002:0CC9                 mov     sp, bp
seg002:0CCB                 pop     bp
seg002:0CCC                 retf
seg002:0CCC sub_7FD4        endp
seg002:0CCC
seg002:0CCC ; ---------------------------------------------------------------------------
seg002:0CCD                 align 2
seg002:0CCE
