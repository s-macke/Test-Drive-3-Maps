seg001:3AF8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:3AF8
seg001:3AF8 ; Attributes: bp-based frame
seg001:3AF8
seg001:3AF8 sub_5838        proc far                ; CODE XREF: sub_0+1FA␘P
seg001:3AF8
seg001:3AF8 var_C           = word ptr -0Ch
seg001:3AF8 var_A           = word ptr -0Ah
seg001:3AF8 var_8           = word ptr -8
seg001:3AF8 var_6           = word ptr -6
seg001:3AF8 var_4           = word ptr -4
seg001:3AF8 var_2           = word ptr -2
seg001:3AF8
seg001:3AF8                 push    bp
seg001:3AF9                 mov     bp, sp
seg001:3AFB                 sub     sp, 0Ch
seg001:3AFE                 mov     byte_280DC, 0
seg001:3B03                 mov     al, byte_1FBE8
seg001:3B06                 sub     ah, ah
seg001:3B08                 mov     cl, byte_1FBE9
seg001:3B0C                 sub     ch, ch
seg001:3B0E                 sub     ax, cx
seg001:3B10                 mov     [bp+var_A], ax
seg001:3B13                 mov     ax, word_1FBE4
seg001:3B16                 mov     [bp+var_C], ax
seg001:3B19                 mov     ax, 0FFh
seg001:3B1C                 mov     [bp+var_2], ax
seg001:3B1F                 mov     [bp+var_4], ax
seg001:3B22                 mov     ax, 1092h
seg001:3B25                 push    ax
seg001:3B26                 mov     ax, 0A8Ch
seg001:3B29                 push    ax
seg001:3B2A                 call    sub_195EA
seg001:3B2F                 add     sp, 4
seg001:3B32                 mov     ax, 0A8Ah
seg001:3B35                 push    ax
seg001:3B36                 call    sub_CA8
seg001:3B3B                 add     sp, 2
seg001:3B3E                 mov     ax, 1
seg001:3B41                 mov     word_1F17A, ax
seg001:3B44                 push    ax
seg001:3B45                 call    far ptr sub_16BB0
seg001:3B4A                 add     sp, 2
seg001:3B4D                 mov     ax, 240Ch
seg001:3B50                 push    ds
seg001:3B51                 push    ax
seg001:3B52                 push    word_2DADC
seg001:3B56                 push    word_2DADA
seg001:3B5A                 call    sub_A8EF
seg001:3B5F                 add     sp, 8
seg001:3B62                 sub     ax, ax
seg001:3B64                 push    ax
seg001:3B65                 mov     ax, 0C7h ; '¦'
seg001:3B68                 push    ax
seg001:3B69                 sub     ax, ax
seg001:3B6B                 push    ax
seg001:3B6C                 mov     ax, 140h
seg001:3B6F                 push    ax
seg001:3B70                 mov     ax, 2BF9h
seg001:3B73                 push    ax
seg001:3B74                 mov     ax, 240Ch
seg001:3B77                 push    ax
seg001:3B78                 push    cs
seg001:3B79                 call    near ptr sub_7696
seg001:3B7C                 add     sp, 0Ch
seg001:3B7F                 mov     ax, 240Ch
seg001:3B82                 push    ds
seg001:3B83                 push    ax
seg001:3B84                 push    word_2DAD6
seg001:3B88                 push    word_2DAD4
seg001:3B8C                 call    sub_A8EF
seg001:3B91                 add     sp, 8
seg001:3B94                 mov     ax, 1
seg001:3B97                 push    ax
seg001:3B98                 mov     ax, 86h ; 'å'
seg001:3B9B                 push    ax
seg001:3B9C                 sub     ax, ax
seg001:3B9E                 push    ax
seg001:3B9F                 mov     ax, 140h
seg001:3BA2                 push    ax
seg001:3BA3                 mov     ax, 27BAh
seg001:3BA6                 push    ax
seg001:3BA7                 mov     ax, 240Ch
seg001:3BAA                 push    ax
seg001:3BAB                 push    cs
seg001:3BAC                 call    near ptr sub_7696
seg001:3BAF                 add     sp, 0Ch
seg001:3BB2                 mov     ax, 240Ch
seg001:3BB5                 push    ds
seg001:3BB6                 push    ax
seg001:3BB7                 push    word_2DACA
seg001:3BBB                 push    word_2DAC8
seg001:3BBF                 call    sub_A8EF
seg001:3BC4                 add     sp, 8
seg001:3BC7                 mov     ax, 1
seg001:3BCA                 push    ax
seg001:3BCB                 mov     ax, 45h ; 'E'
seg001:3BCE                 push    ax
seg001:3BCF                 sub     ax, ax
seg001:3BD1                 push    ax
seg001:3BD2                 mov     ax, 140h
seg001:3BD5                 push    ax
seg001:3BD6                 mov     ax, 2E17h
seg001:3BD9                 push    ax
seg001:3BDA                 mov     ax, 240Ch
seg001:3BDD                 push    ax
seg001:3BDE                 push    cs
seg001:3BDF                 call    near ptr sub_7696
seg001:3BE2                 add     sp, 0Ch
seg001:3BE5                 cmp     word_2D628, 13h
seg001:3BEA                 jnz     short loc_5932
seg001:3BEC                 mov     ax, 13h
seg001:3BEF                 jmp     short loc_5934
seg001:3BEF ; ---------------------------------------------------------------------------
seg001:3BF1                 align 2
seg001:3BF2
seg001:3BF2 loc_5932:                               ; CODE XREF: sub_5838+F2␘j
seg001:3BF2                 sub     ax, ax
seg001:3BF4
seg001:3BF4 loc_5934:                               ; CODE XREF: sub_5838+F7␘j
seg001:3BF4                 push    ax
seg001:3BF5                 call    far ptr sub_16A93
seg001:3BFA                 add     sp, 2
seg001:3BFD                 mov     ax, 0Dh
seg001:3C00                 push    ax
seg001:3C01                 sub     ax, ax
seg001:3C03                 push    ax
seg001:3C04                 mov     ax, 13Fh
seg001:3C07                 push    ax
seg001:3C08                 sub     ax, ax
seg001:3C0A                 push    ax
seg001:3C0B                 call    far ptr sub_172BD
seg001:3C10                 add     sp, 8
seg001:3C13                 mov     ax, 8
seg001:3C16                 push    ax
seg001:3C17                 call    far ptr sub_16A93
seg001:3C1C                 add     sp, 2
seg001:3C1F                 mov     ax, 0Ch
seg001:3C22                 push    ax
seg001:3C23                 mov     ax, 1
seg001:3C26                 push    ax
seg001:3C27                 mov     ax, 13Eh
seg001:3C2A                 push    ax
seg001:3C2B                 mov     ax, 1
seg001:3C2E                 push    ax
seg001:3C2F                 call    far ptr sub_172BD
seg001:3C34                 add     sp, 8
seg001:3C37                 mov     ax, 7
seg001:3C3A                 push    ax
seg001:3C3B                 call    far ptr sub_16A93
seg001:3C40                 add     sp, 2
seg001:3C43                 mov     ax, 0Bh
seg001:3C46                 push    ax
seg001:3C47                 mov     ax, 2
seg001:3C4A                 push    ax
seg001:3C4B                 mov     ax, 13Dh
seg001:3C4E                 push    ax
seg001:3C4F                 mov     ax, 2
seg001:3C52                 push    ax
seg001:3C53                 call    far ptr sub_172BD
seg001:3C58                 add     sp, 8
seg001:3C5B                 sub     ax, ax
seg001:3C5D                 mov     word_1F17A, ax
seg001:3C60                 push    ax
seg001:3C61                 call    far ptr sub_16BB0
seg001:3C66                 add     sp, 2
seg001:3C69                 push    cs
seg001:3C6A                 call    near ptr sub_391C
seg001:3C6D                 mov     ax, 7
seg001:3C70                 push    ax
seg001:3C71                 sub     ax, ax
seg001:3C73                 push    ax
seg001:3C74                 call    sub_C65B
seg001:3C79                 add     sp, 4
seg001:3C7C                 mov     ax, 1
seg001:3C7F                 push    ax
seg001:3C80                 mov     ax, 3
seg001:3C83                 push    ax
seg001:3C84                 call    sub_C693
seg001:3C89                 add     sp, 4
seg001:3C8C                 sub     ax, ax
seg001:3C8E                 mov     [bp+var_6], ax
seg001:3C91                 push    ax
seg001:3C92                 mov     ax, 1D71h
seg001:3C95                 push    ax
seg001:3C96                 push    cs
seg001:3C97                 call    near ptr sub_3810
seg001:3C9A                 add     sp, 4
seg001:3C9D                 mov     [bp+var_6], ax
seg001:3CA0                 sub     al, al
seg001:3CA2                 mov     byte_28147, al
seg001:3CA5                 sub     ah, ah
seg001:3CA7                 mov     [bp+var_6], ax
seg001:3CAA                 jmp     loc_5AB3
seg001:3CAA ; ---------------------------------------------------------------------------
seg001:3CAD                 align 2
seg001:3CAE
seg001:3CAE loc_59EE:                               ; CODE XREF: sub_5838+281␙j
seg001:3CAE                 mov     ax, 4
seg001:3CB1                 push    ax
seg001:3CB2                 call    sub_16A5D
seg001:3CB7                 add     sp, 2
seg001:3CBA                 lea     ax, [bp+var_8]
seg001:3CBD                 push    ax
seg001:3CBE                 call    sub_EC6
seg001:3CC3                 add     sp, 2
seg001:3CC6                 mov     ax, word_1FBE4
seg001:3CC9                 cmp     [bp+var_4], ax
seg001:3CCC                 jz      short loc_5A5F
seg001:3CCE                 cmp     ax, 3
seg001:3CD1                 jge     short loc_5A18
seg001:3CD3                 mov     ax, 109Fh
seg001:3CD6                 jmp     short loc_5A1B
seg001:3CD8 ; ---------------------------------------------------------------------------
seg001:3CD8
seg001:3CD8 loc_5A18:                               ; CODE XREF: sub_5838+1D9␘j
seg001:3CD8                 mov     ax, 10ACh
seg001:3CDB
seg001:3CDB loc_5A1B:                               ; CODE XREF: sub_5838+1DE␘j
seg001:3CDB                 push    ax
seg001:3CDC                 mov     ax, 1D91h
seg001:3CDF                 push    ax
seg001:3CE0                 call    sub_195EA
seg001:3CE5                 add     sp, 4
seg001:3CE8                 mov     al, byte ptr word_1FBE4
seg001:3CEB                 add     al, 31h ; '1'
seg001:3CED                 mov     byte_20E6F, al
seg001:3CF0                 mov     byte_20E7D, 0AAh ; '¬'
seg001:3CF5                 mov     ax, 19h
seg001:3CF8                 push    ax
seg001:3CF9                 mov     ax, 3
seg001:3CFC                 push    ax
seg001:3CFD                 call    sub_C693
seg001:3D02                 add     sp, 4
seg001:3D05                 sub     ax, ax
seg001:3D07                 mov     [bp+var_4], ax
seg001:3D0A                 push    ax
seg001:3D0B                 mov     ax, 1D8Fh
seg001:3D0E                 push    ax
seg001:3D0F                 push    cs
seg001:3D10                 call    near ptr sub_3810
seg001:3D13                 add     sp, 4
seg001:3D16                 mov     [bp+var_4], ax
seg001:3D19                 mov     ax, word_1FBE4
seg001:3D1C                 mov     [bp+var_4], ax
seg001:3D1F
seg001:3D1F loc_5A5F:                               ; CODE XREF: sub_5838+1D4␘j
seg001:3D1F                 mov     ax, [bp+var_8]
seg001:3D22                 cmp     ax, 92h ; 'Æ'
seg001:3D25                 jz      short loc_5A8E
seg001:3D27                 jg      short loc_5AA4
seg001:3D29                 cmp     ax, 0Dh
seg001:3D2C                 jz      short loc_5A9C
seg001:3D2E                 cmp     ax, 31h ; '1'
seg001:3D31                 jl      short loc_5AB3
seg001:3D33                 cmp     ax, 39h ; '9'
seg001:3D36                 jg      short loc_5AB3
seg001:3D38                 sub     ax, 31h ; '1'
seg001:3D3B                 mov     word_1FBE4, ax
seg001:3D3E                 jmp     short loc_5AB3
seg001:3D40 ; ---------------------------------------------------------------------------
seg001:3D40
seg001:3D40 loc_5A80:                               ; CODE XREF: sub_5838+26F␙j
seg001:3D40                                         ; sub_5838+279␙j
seg001:3D40                 cmp     word_1FBE4, 0
seg001:3D45                 jle     short loc_5AB3
seg001:3D47                 dec     word_1FBE4
seg001:3D4B                 jmp     short loc_5AB3
seg001:3D4B ; ---------------------------------------------------------------------------
seg001:3D4D                 align 2
seg001:3D4E
seg001:3D4E loc_5A8E:                               ; CODE XREF: sub_5838+22D␘j
seg001:3D4E                                         ; sub_5838+274␙j
seg001:3D4E                 cmp     word_1FBE4, 8
seg001:3D53                 jge     short loc_5AB3
seg001:3D55                 inc     word_1FBE4
seg001:3D59                 jmp     short loc_5AB3
seg001:3D59 ; ---------------------------------------------------------------------------
seg001:3D5B                 align 2
seg001:3D5C
seg001:3D5C loc_5A9C:                               ; CODE XREF: sub_5838+234␘j
seg001:3D5C                 mov     [bp+var_6], 1
seg001:3D61                 jmp     short loc_5AB3
seg001:3D61 ; ---------------------------------------------------------------------------
seg001:3D63                 align 2
seg001:3D64
seg001:3D64 loc_5AA4:                               ; CODE XREF: sub_5838+22F␘j
seg001:3D64                 cmp     ax, 94h ; 'ö'
seg001:3D67                 jz      short loc_5A80
seg001:3D69                 cmp     ax, 96h ; 'û'
seg001:3D6C                 jz      short loc_5A8E
seg001:3D6E                 cmp     ax, 98h ; 'ÿ'
seg001:3D71                 jz      short loc_5A80
seg001:3D73
seg001:3D73 loc_5AB3:                               ; CODE XREF: sub_5838+1B2␘j
seg001:3D73                                         ; sub_5838+239␘j ...
seg001:3D73                 cmp     [bp+var_6], 0
seg001:3D77                 jnz     short loc_5ABC
seg001:3D79                 jmp     loc_59EE
seg001:3D7C ; ---------------------------------------------------------------------------
seg001:3D7C
seg001:3D7C loc_5ABC:                               ; CODE XREF: sub_5838+27F␘j
seg001:3D7C                 sub     ax, ax
seg001:3D7E                 mov     word_1F17A, ax
seg001:3D81                 push    ax
seg001:3D82                 call    far ptr sub_16BB0
seg001:3D87                 add     sp, 2
seg001:3D8A                 mov     ax, 1
seg001:3D8D                 push    ax
seg001:3D8E                 mov     ax, 3
seg001:3D91                 push    ax
seg001:3D92                 call    sub_C693
seg001:3D97                 add     sp, 4
seg001:3D9A                 sub     ax, ax
seg001:3D9C                 mov     [bp+var_6], ax
seg001:3D9F                 push    ax
seg001:3DA0                 mov     ax, 1D9Eh
seg001:3DA3                 push    ax
seg001:3DA4                 push    cs
seg001:3DA5                 call    near ptr sub_3810
seg001:3DA8                 add     sp, 4
seg001:3DAB                 mov     [bp+var_6], ax
seg001:3DAE                 sub     al, al
seg001:3DB0                 mov     byte_28147, al
seg001:3DB3                 sub     ah, ah
seg001:3DB5                 mov     [bp+var_6], ax
seg001:3DB8                 jmp     loc_5C4C
seg001:3DB8 ; ---------------------------------------------------------------------------
seg001:3DBB                 align 2
seg001:3DBC
seg001:3DBC loc_5AFC:                               ; CODE XREF: sub_5838+41A␙j
seg001:3DBC                 mov     ax, 4
seg001:3DBF                 push    ax
seg001:3DC0                 call    sub_16A5D
seg001:3DC5                 add     sp, 2
seg001:3DC8                 lea     ax, [bp+var_8]
seg001:3DCB                 push    ax
seg001:3DCC                 call    sub_EC6
seg001:3DD1                 add     sp, 2
seg001:3DD4                 mov     al, byte_1FBE8
seg001:3DD7                 sub     ah, ah
seg001:3DD9                 mov     cl, byte_1FBE9
seg001:3DDD                 sub     ch, ch
seg001:3DDF                 sub     ax, cx
seg001:3DE1                 cmp     ax, [bp+var_2]
seg001:3DE4                 jz      short loc_5B9D
seg001:3DE6                 cmp     cl, ch
seg001:3DE8                 jz      short loc_5B34
seg001:3DEA                 mov     ax, 10B9h
seg001:3DED
seg001:3DED loc_5B2D:                               ; CODE XREF: sub_5838+306␙j
seg001:3DED                 push    ax
seg001:3DEE                 mov     ax, 1DCAh
seg001:3DF1                 jmp     short loc_5B5B
seg001:3DF1 ; ---------------------------------------------------------------------------
seg001:3DF3                 align 2
seg001:3DF4
seg001:3DF4 loc_5B34:                               ; CODE XREF: sub_5838+2F0␘j
seg001:3DF4                 cmp     byte_1FBE8, 1
seg001:3DF9                 jnz     short loc_5B40
seg001:3DFB                 mov     ax, 10C8h
seg001:3DFE                 jmp     short loc_5B2D
seg001:3E00 ; ---------------------------------------------------------------------------
seg001:3E00
seg001:3E00 loc_5B40:                               ; CODE XREF: sub_5838+301␘j
seg001:3E00                 mov     al, byte_1FBE8
seg001:3E03                 add     al, 2Fh ; '/'
seg001:3E05                 mov     byte_20EAA, al
seg001:3E08                 cmp     byte_1FBE8, 2
seg001:3E0D                 jnz     short loc_5B54
seg001:3E0F                 mov     ax, 10D7h
seg001:3E12                 jmp     short loc_5B57
seg001:3E14 ; ---------------------------------------------------------------------------
seg001:3E14
seg001:3E14 loc_5B54:                               ; CODE XREF: sub_5838+315␘j
seg001:3E14                 mov     ax, 10E5h
seg001:3E17
seg001:3E17 loc_5B57:                               ; CODE XREF: sub_5838+31A␘j
seg001:3E17                 push    ax
seg001:3E18                 mov     ax, 1DCBh
seg001:3E1B
seg001:3E1B loc_5B5B:                               ; CODE XREF: sub_5838+2F9␘j
seg001:3E1B                 push    ax
seg001:3E1C                 call    sub_195EA
seg001:3E21                 add     sp, 4
seg001:3E24                 mov     byte_20EB8, 0AAh ; '¬'
seg001:3E29                 mov     ax, 1Ah
seg001:3E2C                 push    ax
seg001:3E2D                 mov     ax, 3
seg001:3E30                 push    ax
seg001:3E31                 call    sub_C693
seg001:3E36                 add     sp, 4
seg001:3E39                 sub     ax, ax
seg001:3E3B                 mov     [bp+var_2], ax
seg001:3E3E                 push    ax
seg001:3E3F                 mov     ax, 1DCAh
seg001:3E42                 push    ax
seg001:3E43                 push    cs
seg001:3E44                 call    near ptr sub_3810
seg001:3E47                 add     sp, 4
seg001:3E4A                 mov     [bp+var_2], ax
seg001:3E4D                 mov     al, byte_1FBE8
seg001:3E50                 sub     ah, ah
seg001:3E52                 mov     cl, byte_1FBE9
seg001:3E56                 sub     ch, ch
seg001:3E58                 sub     ax, cx
seg001:3E5A                 mov     [bp+var_2], ax
seg001:3E5D
seg001:3E5D loc_5B9D:                               ; CODE XREF: sub_5838+2EC␘j
seg001:3E5D                 mov     ax, [bp+var_8]
seg001:3E60                 cmp     ax, 63h ; 'c'
seg001:3E63                 jz      short loc_5BF8
seg001:3E65                 jle     short loc_5BAA
seg001:3E67                 jmp     loc_5C30
seg001:3E6A ; ---------------------------------------------------------------------------
seg001:3E6A
seg001:3E6A loc_5BAA:                               ; CODE XREF: sub_5838+36D␘j
seg001:3E6A                 cmp     ax, 33h ; '3'
seg001:3E6D                 jg      short loc_5C24
seg001:3E6F                 cmp     ax, 30h ; '0'
seg001:3E72                 jge     short loc_5C0C
seg001:3E74                 cmp     ax, 0Dh
seg001:3E77                 jz      short loc_5C1C
seg001:3E79                 jmp     loc_5C4C
seg001:3E7C ; ---------------------------------------------------------------------------
seg001:3E7C
seg001:3E7C loc_5BBC:                               ; CODE XREF: sub_5838+400␙j
seg001:3E7C                                         ; sub_5838+40C␙j
seg001:3E7C                 cmp     byte_1FBE9, 0
seg001:3E81                 jz      short loc_5BCE
seg001:3E83                 mov     byte_1FBE9, 0
seg001:3E88                 jmp     loc_5C4C
seg001:3E88 ; ---------------------------------------------------------------------------
seg001:3E8B                 db 3 dup(90h)
seg001:3E8E ; ---------------------------------------------------------------------------
seg001:3E8E
seg001:3E8E loc_5BCE:                               ; CODE XREF: sub_5838+389␘j
seg001:3E8E                 cmp     byte_1FBE8, 4
seg001:3E93                 jnb     short loc_5C4C
seg001:3E95                 inc     byte_1FBE8
seg001:3E99                 jmp     short loc_5C4C
seg001:3E99 ; ---------------------------------------------------------------------------
seg001:3E9B                 align 2
seg001:3E9C
seg001:3E9C loc_5BDC:                               ; CODE XREF: sub_5838+405␙j
seg001:3E9C                                         ; sub_5838+412␙j
seg001:3E9C                 cmp     byte_1FBE8, 1
seg001:3EA1                 jnz     short loc_5BEA
seg001:3EA3                 mov     byte_1FBE9, 1
seg001:3EA8                 jmp     short loc_5C4C
seg001:3EAA ; ---------------------------------------------------------------------------
seg001:3EAA
seg001:3EAA loc_5BEA:                               ; CODE XREF: sub_5838+3A9␘j
seg001:3EAA                 cmp     byte_1FBE8, 1
seg001:3EAF                 jbe     short loc_5C4C
seg001:3EB1                 dec     byte_1FBE8
seg001:3EB5                 jmp     short loc_5C4C
seg001:3EB5 ; ---------------------------------------------------------------------------
seg001:3EB7                 align 2
seg001:3EB8
seg001:3EB8 loc_5BF8:                               ; CODE XREF: sub_5838+36B␘j
seg001:3EB8                                         ; sub_5838+3EF␙j
seg001:3EB8                 mov     byte_1FBE9, 0
seg001:3EBD                 jmp     short loc_5C05
seg001:3EBD ; ---------------------------------------------------------------------------
seg001:3EBF                 align 2
seg001:3EC0
seg001:3EC0 loc_5C00:                               ; CODE XREF: sub_5838+3F4␙j
seg001:3EC0                                         ; sub_5838+3FB␙j
seg001:3EC0                 mov     byte_1FBE9, 1
seg001:3EC5
seg001:3EC5 loc_5C05:                               ; CODE XREF: sub_5838+3C5␘j
seg001:3EC5                 mov     byte_1FBE8, 1
seg001:3ECA                 jmp     short loc_5C4C
seg001:3ECC ; ---------------------------------------------------------------------------
seg001:3ECC
seg001:3ECC loc_5C0C:                               ; CODE XREF: sub_5838+37A␘j
seg001:3ECC                 mov     byte_1FBE9, 0
seg001:3ED1                 mov     al, byte ptr [bp+var_8]
seg001:3ED4                 sub     al, 2Fh ; '/'
seg001:3ED6                 mov     byte_1FBE8, al
seg001:3ED9                 jmp     short loc_5C4C
seg001:3ED9 ; ---------------------------------------------------------------------------
seg001:3EDB                 align 2
seg001:3EDC
seg001:3EDC loc_5C1C:                               ; CODE XREF: sub_5838+37F␘j
seg001:3EDC                 mov     [bp+var_6], 1
seg001:3EE1                 jmp     short loc_5C4C
seg001:3EE1 ; ---------------------------------------------------------------------------
seg001:3EE3                 align 2
seg001:3EE4
seg001:3EE4 loc_5C24:                               ; CODE XREF: sub_5838+375␘j
seg001:3EE4                 cmp     ax, 43h ; 'C'
seg001:3EE7                 jz      short loc_5BF8
seg001:3EE9                 cmp     ax, 50h ; 'P'
seg001:3EEC                 jz      short loc_5C00
seg001:3EEE                 jmp     short loc_5C4C
seg001:3EF0 ; ---------------------------------------------------------------------------
seg001:3EF0
seg001:3EF0 loc_5C30:                               ; CODE XREF: sub_5838+36F␘j
seg001:3EF0                 cmp     ax, 70h ; 'p'
seg001:3EF3                 jz      short loc_5C00
seg001:3EF5                 cmp     ax, 92h ; 'Æ'
seg001:3EF8                 jz      short loc_5BBC
seg001:3EFA                 cmp     ax, 94h ; 'ö'
seg001:3EFD                 jz      short loc_5BDC
seg001:3EFF                 cmp     ax, 96h ; 'û'
seg001:3F02                 jnz     short loc_5C47
seg001:3F04                 jmp     loc_5BBC
seg001:3F07 ; ---------------------------------------------------------------------------
seg001:3F07
seg001:3F07 loc_5C47:                               ; CODE XREF: sub_5838+40A␘j
seg001:3F07                 cmp     ax, 98h ; 'ÿ'
seg001:3F0A                 jz      short loc_5BDC
seg001:3F0C
seg001:3F0C loc_5C4C:                               ; CODE XREF: sub_5838+2C0␘j
seg001:3F0C                                         ; sub_5838+381␘j ...
seg001:3F0C                 cmp     [bp+var_6], 0
seg001:3F10                 jnz     short loc_5C55
seg001:3F12                 jmp     loc_5AFC
seg001:3F15 ; ---------------------------------------------------------------------------
seg001:3F15
seg001:3F15 loc_5C55:                               ; CODE XREF: sub_5838+418␘j
seg001:3F15                 mov     ax, word_1FBE4
seg001:3F18                 cmp     [bp+var_C], ax
seg001:3F1B                 jnz     short loc_5C6F
seg001:3F1D                 mov     al, byte_1FBE8
seg001:3F20                 sub     ah, ah
seg001:3F22                 mov     cl, byte_1FBE9
seg001:3F26                 sub     ch, ch
seg001:3F28                 sub     ax, cx
seg001:3F2A                 cmp     ax, [bp+var_A]
seg001:3F2D                 jz      short loc_5C73
seg001:3F2F
seg001:3F2F loc_5C6F:                               ; CODE XREF: sub_5838+423␘j
seg001:3F2F                 push    cs
seg001:3F30                 call    near ptr sub_4470
seg001:3F33
seg001:3F33 loc_5C73:                               ; CODE XREF: sub_5838+435␘j
seg001:3F33                 mov     sp, bp
seg001:3F35                 pop     bp
seg001:3F36                 retf
seg001:3F36 sub_5838        endp
seg001:3F36
seg001:3F36 ; ---------------------------------------------------------------------------
seg001:3F37                 align 2
seg001:3F38
