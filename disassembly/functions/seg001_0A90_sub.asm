seg001:0A90 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:0A90
seg001:0A90 ; Attributes: bp-based frame
seg001:0A90
seg001:0A90 sub_27D0        proc far                ; CODE XREF: sub_0:loc_787␘P
seg001:0A90
seg001:0A90 var_A           = word ptr -0Ah
seg001:0A90 var_8           = word ptr -8
seg001:0A90 var_6           = word ptr -6
seg001:0A90 var_4           = word ptr -4
seg001:0A90 var_2           = word ptr -2
seg001:0A90
seg001:0A90                 push    bp
seg001:0A91                 mov     bp, sp
seg001:0A93                 sub     sp, 0Ah
seg001:0A96                 push    di
seg001:0A97                 push    si
seg001:0A98                 xor     byte_280DC, 80h
seg001:0A9D                 mov     ax, 0F2Ah
seg001:0AA0                 push    ax
seg001:0AA1                 mov     ax, 0AC1h
seg001:0AA4                 push    ax
seg001:0AA5                 call    sub_195EA
seg001:0AAA                 add     sp, 4
seg001:0AAD                 mov     ax, 0ABAh
seg001:0AB0                 push    ax
seg001:0AB1                 call    sub_CA8
seg001:0AB6                 add     sp, 2
seg001:0AB9                 sub     al, al
seg001:0ABB                 mov     byte_1F17F, al
seg001:0ABE                 mov     byte_1F16C, al
seg001:0AC1                 mov     ax, 1
seg001:0AC4                 mov     word_1F17A, ax
seg001:0AC7                 push    ax
seg001:0AC8                 call    far ptr sub_16BB0
seg001:0ACD                 add     sp, 2
seg001:0AD0                 sub     ax, ax
seg001:0AD2                 push    ax
seg001:0AD3                 call    far ptr sub_16A93
seg001:0AD8                 add     sp, 2
seg001:0ADB                 mov     ax, 0C7h ; '¦'
seg001:0ADE                 push    ax
seg001:0ADF                 sub     ax, ax
seg001:0AE1                 push    ax
seg001:0AE2                 mov     ax, 13Fh
seg001:0AE5                 push    ax
seg001:0AE6                 sub     ax, ax
seg001:0AE8                 push    ax
seg001:0AE9                 call    far ptr sub_172BD
seg001:0AEE                 add     sp, 8
seg001:0AF1                 mov     ax, 0F31h
seg001:0AF4                 push    ax
seg001:0AF5                 mov     ax, 0AC1h
seg001:0AF8                 push    ax
seg001:0AF9                 call    sub_195EA
seg001:0AFE                 add     sp, 4
seg001:0B01                 push    word_2BF4E
seg001:0B05                 push    word_2BF4C
seg001:0B09                 mov     ax, 0ABAh
seg001:0B0C                 push    ax
seg001:0B0D                 call    sub_E26
seg001:0B12                 add     sp, 6
seg001:0B15                 mov     ax, 240Ch
seg001:0B18                 push    ds
seg001:0B19                 push    ax
seg001:0B1A                 push    word_2BF4E
seg001:0B1E                 push    word_2BF4C
seg001:0B22                 call    sub_A8EF
seg001:0B27                 add     sp, 8
seg001:0B2A                 sub     ax, ax
seg001:0B2C                 push    ax
seg001:0B2D                 mov     ax, 8Bh ; 'ï'
seg001:0B30                 push    ax
seg001:0B31                 sub     ax, ax
seg001:0B33                 push    ax
seg001:0B34                 mov     ax, 70h ; 'p'
seg001:0B37                 push    ax
seg001:0B38                 push    word_1FC36
seg001:0B3C                 mov     ax, 240Ch
seg001:0B3F                 push    ax
seg001:0B40                 push    cs
seg001:0B41                 call    near ptr sub_7696
seg001:0B44                 add     sp, 0Ch
seg001:0B47                 mov     ax, 0F36h
seg001:0B4A                 push    ax
seg001:0B4B                 mov     ax, 0AC1h
seg001:0B4E                 push    ax
seg001:0B4F                 call    sub_195EA
seg001:0B54                 add     sp, 4
seg001:0B57                 push    word_2BF4E
seg001:0B5B                 push    word_2BF4C
seg001:0B5F                 mov     ax, 0ABAh
seg001:0B62                 push    ax
seg001:0B63                 call    sub_E26
seg001:0B68                 add     sp, 6
seg001:0B6B                 mov     ax, 240Ch
seg001:0B6E                 push    ds
seg001:0B6F                 push    ax
seg001:0B70                 push    word_2BF4E
seg001:0B74                 push    word_2BF4C
seg001:0B78                 call    sub_A8EF
seg001:0B7D                 add     sp, 8
seg001:0B80                 sub     ax, ax
seg001:0B82                 push    ax
seg001:0B83                 mov     ax, 8Bh ; 'ï'
seg001:0B86                 push    ax
seg001:0B87                 mov     ax, 70h ; 'p'
seg001:0B8A                 push    ax
seg001:0B8B                 mov     ax, 0D0h ; '-'
seg001:0B8E                 push    ax
seg001:0B8F                 push    word_1FC30
seg001:0B93                 mov     ax, 240Ch
seg001:0B96                 push    ax
seg001:0B97                 push    cs
seg001:0B98                 call    near ptr sub_7696
seg001:0B9B                 add     sp, 0Ch
seg001:0B9E                 sub     ax, ax
seg001:0BA0                 push    ax
seg001:0BA1                 mov     ax, 0Eh
seg001:0BA4                 push    ax
seg001:0BA5                 call    sub_C65B
seg001:0BAA                 add     sp, 4
seg001:0BAD                 sub     ax, ax
seg001:0BAF                 mov     [bp+var_6], ax
seg001:0BB2                 push    ax
seg001:0BB3                 mov     ax, 20B7h
seg001:0BB6                 push    ax
seg001:0BB7                 push    cs
seg001:0BB8                 call    near ptr sub_37BC
seg001:0BBB                 add     sp, 4
seg001:0BBE                 mov     [bp+var_6], ax
seg001:0BC1                 sub     ax, ax
seg001:0BC3                 push    ax
seg001:0BC4                 mov     ax, 0Fh
seg001:0BC7                 push    ax
seg001:0BC8                 call    sub_C65B
seg001:0BCD                 add     sp, 4
seg001:0BD0                 cmp     byte_1FBE8, 1
seg001:0BD5                 jz      short loc_292A
seg001:0BD7                 mov     al, byte_1FAA4
seg001:0BDA                 add     al, 30h ; '0'
seg001:0BDC                 mov     byte_211E9, al
seg001:0BDF                 sub     ax, ax
seg001:0BE1                 mov     [bp+var_6], ax
seg001:0BE4                 push    ax
seg001:0BE5                 mov     ax, 2100h
seg001:0BE8                 jmp     short loc_2930
seg001:0BEA ; ---------------------------------------------------------------------------
seg001:0BEA
seg001:0BEA loc_292A:                               ; CODE XREF: sub_27D0+145␘j
seg001:0BEA                 push    [bp+var_6]
seg001:0BED                 mov     ax, 20B7h
seg001:0BF0
seg001:0BF0 loc_2930:                               ; CODE XREF: sub_27D0+158␘j
seg001:0BF0                 push    ax
seg001:0BF1                 push    cs
seg001:0BF2                 call    near ptr sub_37BC
seg001:0BF5                 add     sp, 4
seg001:0BF8                 mov     [bp+var_6], ax
seg001:0BFB                 mov     ax, 0Ch
seg001:0BFE                 push    ax
seg001:0BFF                 call    far ptr sub_16A93
seg001:0C04                 add     sp, 2
seg001:0C07                 mov     ax, 0C3h ; '+'
seg001:0C0A                 push    ax
seg001:0C0B                 mov     ax, 0B3h ; '¦'
seg001:0C0E                 push    ax
seg001:0C0F                 mov     ax, 124h
seg001:0C12                 push    ax
seg001:0C13                 mov     ax, 0A4h ; 'ñ'
seg001:0C16                 push    ax
seg001:0C17                 push    cs
seg001:0C18                 call    near ptr sub_359E
seg001:0C1B                 add     sp, 8
seg001:0C1E                 mov     [bp+var_4], 0
seg001:0C23
seg001:0C23 loc_2963:                               ; CODE XREF: sub_27D0+1A2␙j
seg001:0C23                 mov     bx, [bp+var_4]
seg001:0C26                 mov     byte ptr [bx-137Ah], 20h ; ' '
seg001:0C2B                 inc     [bp+var_4]
seg001:0C2E                 cmp     [bp+var_4], 0Fh
seg001:0C32                 jl      short loc_2963
seg001:0C34                 mov     byte_2DD75, 80h ; 'Ç'
seg001:0C39                 mov     [bp+var_8], 15h
seg001:0C3E                 push    cs
seg001:0C3F                 call    near ptr sub_391C
seg001:0C42                 sub     ax, ax
seg001:0C44                 mov     word_1F17A, ax
seg001:0C47                 push    ax
seg001:0C48                 call    far ptr sub_16BB0
seg001:0C4D                 add     sp, 2
seg001:0C50                 sub     ax, ax
seg001:0C52                 push    ax
seg001:0C53                 mov     ax, 0Ah
seg001:0C56                 push    ax
seg001:0C57                 call    sub_C65B
seg001:0C5C                 add     sp, 4
seg001:0C5F                 sub     ax, ax
seg001:0C61                 mov     [bp+var_2], ax
seg001:0C64                 mov     [bp+var_4], ax
seg001:0C67                 mov     byte_28147, al
seg001:0C6A
seg001:0C6A loc_29AA:                               ; CODE XREF: sub_27D0+326␙j
seg001:0C6A                                         ; sub_27D0+32F␙j ...
seg001:0C6A                 cmp     [bp+var_8], 80h ; 'Ç'
seg001:0C6F                 jl      short loc_29B4
seg001:0C71                 jmp     loc_2B5C
seg001:0C74 ; ---------------------------------------------------------------------------
seg001:0C74
seg001:0C74 loc_29B4:                               ; CODE XREF: sub_27D0+1DF␘j
seg001:0C74                 sub     ax, ax
seg001:0C76                 push    ax
seg001:0C77                 call    far ptr sub_16A93
seg001:0C7C                 add     sp, 2
seg001:0C7F                 mov     ax, 0C0h ; '+'
seg001:0C82                 push    ax
seg001:0C83                 mov     ax, 0A8h ; '¿'
seg001:0C86                 push    ax
seg001:0C87                 call    sub_16A1A
seg001:0C8C                 add     sp, 4
seg001:0C8F                 mov     ax, 0C0h ; '+'
seg001:0C92                 push    ax
seg001:0C93                 mov     ax, 11Fh
seg001:0C96                 push    ax
seg001:0C97                 call    sub_1693E
seg001:0C9C                 add     sp, 4
seg001:0C9F                 xor     byte ptr [bp+var_4], 0Fh
seg001:0CA3                 mov     ax, [bp+var_2]
seg001:0CA6                 cmp     [bp+var_8], ax
seg001:0CA9                 jz      short loc_2A49
seg001:0CAB                 mov     ax, [bp+var_8]
seg001:0CAE                 mov     [bp+var_2], ax
seg001:0CB1                 mov     ax, 15h
seg001:0CB4                 push    ax
seg001:0CB5                 mov     ax, 17h
seg001:0CB8                 push    ax
seg001:0CB9                 call    sub_C674
seg001:0CBE                 add     sp, 4
seg001:0CC1                 sub     ax, ax
seg001:0CC3                 mov     [bp+var_6], ax
seg001:0CC6                 push    ax
seg001:0CC7                 mov     ax, 0EC86h
seg001:0CCA                 push    ax
seg001:0CCB                 push    cs
seg001:0CCC                 call    near ptr sub_3810
seg001:0CCF                 add     sp, 4
seg001:0CD2                 mov     [bp+var_6], ax
seg001:0CD5                 mov     bx, [bp+var_8]
seg001:0CD8                 mov     byte ptr [bx-138Fh], 80h ; 'Ç'
seg001:0CDD                 mov     ax, 15h
seg001:0CE0                 push    ax
seg001:0CE1                 mov     ax, 17h
seg001:0CE4                 push    ax
seg001:0CE5                 call    sub_C674
seg001:0CEA                 add     sp, 4
seg001:0CED                 sub     ax, ax
seg001:0CEF                 mov     [bp+var_6], ax
seg001:0CF2                 push    ax
seg001:0CF3                 mov     ax, 0EC86h
seg001:0CF6                 push    ax
seg001:0CF7                 push    cs
seg001:0CF8                 call    near ptr sub_3810
seg001:0CFB                 add     sp, 4
seg001:0CFE                 mov     [bp+var_6], ax
seg001:0D01                 mov     bx, [bp+var_8]
seg001:0D04                 mov     byte ptr [bx-138Fh], 20h ; ' '
seg001:0D09
seg001:0D09 loc_2A49:                               ; CODE XREF: sub_27D0+219␘j
seg001:0D09                 push    [bp+var_4]
seg001:0D0C                 call    far ptr sub_16A93
seg001:0D11                 add     sp, 2
seg001:0D14                 mov     ax, 0C0h ; '+'
seg001:0D17                 push    ax
seg001:0D18                 push    word_280D1
seg001:0D1C                 call    sub_16A1A
seg001:0D21                 add     sp, 4
seg001:0D24                 mov     ax, 0C0h ; '+'
seg001:0D27                 push    ax
seg001:0D28                 mov     ax, word_280D1
seg001:0D2B                 add     ax, 7
seg001:0D2E                 push    ax
seg001:0D2F                 call    sub_1693E
seg001:0D34                 add     sp, 4
seg001:0D37                 mov     ax, 2
seg001:0D3A                 push    ax
seg001:0D3B                 call    sub_16A5D
seg001:0D40                 add     sp, 2
seg001:0D43                 lea     ax, [bp+var_A]
seg001:0D46                 push    ax
seg001:0D47                 call    sub_EC6
seg001:0D4C                 add     sp, 2
seg001:0D4F                 mov     ax, [bp+var_A]
seg001:0D52                 cmp     ax, 8
seg001:0D55                 jz      short loc_2ABC
seg001:0D57                 cmp     ax, 0Dh
seg001:0D5A                 jnz     short loc_2A9F
seg001:0D5C                 jmp     loc_2B54
seg001:0D5F ; ---------------------------------------------------------------------------
seg001:0D5F
seg001:0D5F loc_2A9F:                               ; CODE XREF: sub_27D0+2CA␘j
seg001:0D5F                 cmp     ax, 1Eh
seg001:0D62                 jnz     short loc_2AA7
seg001:0D64                 jmp     loc_2B38
seg001:0D67 ; ---------------------------------------------------------------------------
seg001:0D67
seg001:0D67 loc_2AA7:                               ; CODE XREF: sub_27D0+2D2␘j
seg001:0D67                 cmp     ax, 94h ; 'ö'
seg001:0D6A                 jz      short loc_2ACF
seg001:0D6C                 cmp     ax, 96h ; 'û'
seg001:0D6F                 jnz     short loc_2AB4
seg001:0D71                 jmp     loc_2B48
seg001:0D74 ; ---------------------------------------------------------------------------
seg001:0D74
seg001:0D74 loc_2AB4:                               ; CODE XREF: sub_27D0+2DF␘j
seg001:0D74                 cmp     ax, 9Eh ; 'P'
seg001:0D77                 jz      short loc_2B38
seg001:0D79                 jmp     short loc_2AD8
seg001:0D79 ; ---------------------------------------------------------------------------
seg001:0D7B                 align 2
seg001:0D7C
seg001:0D7C loc_2ABC:                               ; CODE XREF: sub_27D0+2C5␘j
seg001:0D7C                 cmp     [bp+var_8], 15h
seg001:0D80                 jz      short loc_2ACA
seg001:0D82                 mov     bx, [bp+var_8]
seg001:0D85                 mov     byte ptr [bx-1390h], 20h ; ' '
seg001:0D8A
seg001:0D8A loc_2ACA:                               ; CODE XREF: sub_27D0+2F0␘j
seg001:0D8A                                         ; sub_27D0+36C␙j ...
seg001:0D8A                 mov     [bp+var_2], 0
seg001:0D8F
seg001:0D8F loc_2ACF:                               ; CODE XREF: sub_27D0+2DA␘j
seg001:0D8F                 cmp     [bp+var_8], 15h
seg001:0D93                 jle     short loc_2AD8
seg001:0D95                 dec     [bp+var_8]
seg001:0D98
seg001:0D98 loc_2AD8:                               ; CODE XREF: sub_27D0+2E9␘j
seg001:0D98                                         ; sub_27D0+303␘j ...
seg001:0D98                 cmp     [bp+var_A], 20h ; ' '
seg001:0D9C                 jl      short loc_2AE4
seg001:0D9E                 cmp     [bp+var_A], 39h ; '9'
seg001:0DA2                 jle     short loc_2B02
seg001:0DA4
seg001:0DA4 loc_2AE4:                               ; CODE XREF: sub_27D0+30C␘j
seg001:0DA4                 cmp     [bp+var_A], 41h ; 'A'
seg001:0DA8                 jl      short loc_2AF0
seg001:0DAA                 cmp     [bp+var_A], 5Ah ; 'Z'
seg001:0DAE                 jle     short loc_2B02
seg001:0DB0
seg001:0DB0 loc_2AF0:                               ; CODE XREF: sub_27D0+318␘j
seg001:0DB0                 cmp     [bp+var_A], 61h ; 'a'
seg001:0DB4                 jge     short loc_2AF9
seg001:0DB6                 jmp     loc_29AA
seg001:0DB9 ; ---------------------------------------------------------------------------
seg001:0DB9
seg001:0DB9 loc_2AF9:                               ; CODE XREF: sub_27D0+324␘j
seg001:0DB9                 cmp     [bp+var_A], 7Ah ; 'z'
seg001:0DBD                 jle     short loc_2B02
seg001:0DBF                 jmp     loc_29AA
seg001:0DC2 ; ---------------------------------------------------------------------------
seg001:0DC2
seg001:0DC2 loc_2B02:                               ; CODE XREF: sub_27D0+312␘j
seg001:0DC2                                         ; sub_27D0+31E␘j ...
seg001:0DC2                 cmp     [bp+var_A], 23h ; '#'
seg001:0DC6                 jnz     short loc_2B0B
seg001:0DC8                 jmp     loc_29AA
seg001:0DCB ; ---------------------------------------------------------------------------
seg001:0DCB
seg001:0DCB loc_2B0B:                               ; CODE XREF: sub_27D0+336␘j
seg001:0DCB                 cmp     [bp+var_A], 2Ah ; '*'
seg001:0DCF                 jnz     short loc_2B14
seg001:0DD1                 jmp     loc_29AA
seg001:0DD4 ; ---------------------------------------------------------------------------
seg001:0DD4
seg001:0DD4 loc_2B14:                               ; CODE XREF: sub_27D0+33F␘j
seg001:0DD4                 cmp     [bp+var_8], 22h ; '"'
seg001:0DD8                 jg      short loc_2B24
seg001:0DDA                 mov     bx, [bp+var_8]
seg001:0DDD                 mov     al, byte ptr [bp+var_A]
seg001:0DE0                 mov     [bx-138Fh], al
seg001:0DE4
seg001:0DE4 loc_2B24:                               ; CODE XREF: sub_27D0+348␘j
seg001:0DE4                 mov     [bp+var_2], 0
seg001:0DE9                 cmp     [bp+var_8], 23h ; '#'
seg001:0DED                 jl      short loc_2B32
seg001:0DEF                 jmp     loc_29AA
seg001:0DF2 ; ---------------------------------------------------------------------------
seg001:0DF2
seg001:0DF2 loc_2B32:                               ; CODE XREF: sub_27D0+35D␘j
seg001:0DF2                 inc     [bp+var_8]
seg001:0DF5                 jmp     loc_29AA
seg001:0DF8 ; ---------------------------------------------------------------------------
seg001:0DF8
seg001:0DF8 loc_2B38:                               ; CODE XREF: sub_27D0+2D4␘j
seg001:0DF8                                         ; sub_27D0+2E7␘j
seg001:0DF8                 cmp     [bp+var_8], 23h ; '#'
seg001:0DFC                 jz      short loc_2ACA
seg001:0DFE                 mov     bx, [bp+var_8]
seg001:0E01                 mov     byte ptr [bx-138Fh], 20h ; ' '
seg001:0E06                 jmp     short loc_2ACA
seg001:0E08 ; ---------------------------------------------------------------------------
seg001:0E08
seg001:0E08 loc_2B48:                               ; CODE XREF: sub_27D0+2E1␘j
seg001:0E08                 cmp     [bp+var_8], 23h ; '#'
seg001:0E0C                 jge     short loc_2AD8
seg001:0E0E                 inc     [bp+var_8]
seg001:0E11                 jmp     short loc_2AD8
seg001:0E11 ; ---------------------------------------------------------------------------
seg001:0E13                 align 2
seg001:0E14
seg001:0E14 loc_2B54:                               ; CODE XREF: sub_27D0+2CC␘j
seg001:0E14                 mov     [bp+var_8], 80h ; 'Ç'
seg001:0E19                 jmp     loc_2AD8
seg001:0E1C ; ---------------------------------------------------------------------------
seg001:0E1C
seg001:0E1C loc_2B5C:                               ; CODE XREF: sub_27D0+1E1␘j
seg001:0E1C                 mov     byte_28471, 0
seg001:0E21                 mov     byte_2DD75, 0
seg001:0E26                 mov     ax, 0F3Bh
seg001:0E29                 push    ax
seg001:0E2A                 mov     ax, 0EC86h
seg001:0E2D                 push    ax
seg001:0E2E                 call    sub_1961C
seg001:0E33                 add     sp, 4
seg001:0E36                 or      ax, ax
seg001:0E38                 jnz     short loc_2BAE
seg001:0E3A                 mov     byte_28471, 1
seg001:0E3F                 sub     ax, ax
seg001:0E41                 push    ax
seg001:0E42                 mov     ax, 0Ah
seg001:0E45                 push    ax
seg001:0E46                 call    sub_C65B
seg001:0E4B                 add     sp, 4
seg001:0E4E                 sub     ax, ax
seg001:0E50                 mov     [bp+var_6], ax
seg001:0E53                 push    ax
seg001:0E54                 mov     ax, 2111h
seg001:0E57                 push    ax
seg001:0E58                 push    cs
seg001:0E59                 call    near ptr sub_37BC
seg001:0E5C                 add     sp, 4
seg001:0E5F                 mov     [bp+var_6], ax
seg001:0E62                 sub     ax, ax
seg001:0E64                 push    ax
seg001:0E65                 push    cs
seg001:0E66                 call    near ptr sub_38C8
seg001:0E69                 add     sp, 2
seg001:0E6C                 jmp     short loc_2BB3
seg001:0E6E ; ---------------------------------------------------------------------------
seg001:0E6E
seg001:0E6E loc_2BAE:                               ; CODE XREF: sub_27D0+3A8␘j
seg001:0E6E                 mov     byte_28471, 0
seg001:0E73
seg001:0E73 loc_2BB3:                               ; CODE XREF: sub_27D0+3DC␘j
seg001:0E73                 mov     [bp+var_4], 0
seg001:0E78                 jmp     short loc_2BBD
seg001:0E7A ; ---------------------------------------------------------------------------
seg001:0E7A
seg001:0E7A loc_2BBA:                               ; CODE XREF: sub_27D0+405␙j
seg001:0E7A                                         ; sub_27D0+40D␙j
seg001:0E7A                 inc     [bp+var_4]
seg001:0E7D
seg001:0E7D loc_2BBD:                               ; CODE XREF: sub_27D0+3E8␘j
seg001:0E7D                 cmp     [bp+var_4], 7
seg001:0E81                 jge     short loc_2BDF
seg001:0E83                 mov     bx, [bp+var_4]
seg001:0E86                 shl     bx, 1
seg001:0E88                 shl     bx, 1
seg001:0E8A                 mov     ax, word_1FABA
seg001:0E8D                 mov     dx, word_1FABC
seg001:0E91                 cmp     [bx+1ED1h], dx
seg001:0E95                 ja      short loc_2BBA
seg001:0E97                 jb      short loc_2BDF
seg001:0E99                 cmp     [bx+1ECFh], ax
seg001:0E9D                 ja      short loc_2BBA
seg001:0E9F
seg001:0E9F loc_2BDF:                               ; CODE XREF: sub_27D0+3F1␘j
seg001:0E9F                                         ; sub_27D0+407␘j
seg001:0E9F                 mov     [bp+var_8], 6
seg001:0EA4                 jmp     short loc_2C07
seg001:0EA6 ; ---------------------------------------------------------------------------
seg001:0EA6
seg001:0EA6 loc_2BE6:                               ; CODE XREF: sub_27D0+432␙j
seg001:0EA6                 inc     [bp+var_6]
seg001:0EA9
seg001:0EA9 loc_2BE9:                               ; CODE XREF: sub_27D0+468␙j
seg001:0EA9                 cmp     [bp+var_6], 0Fh
seg001:0EAD                 jge     short loc_2C04
seg001:0EAF                 mov     ax, 12h
seg001:0EB2                 imul    [bp+var_8]
seg001:0EB5                 mov     si, ax
seg001:0EB7                 add     si, [bp+var_6]
seg001:0EBA                 mov     al, [si+1EDBh]
seg001:0EBE                 mov     [si+1EEDh], al
seg001:0EC2                 jmp     short loc_2BE6
seg001:0EC4 ; ---------------------------------------------------------------------------
seg001:0EC4
seg001:0EC4 loc_2C04:                               ; CODE XREF: sub_27D0+41D␘j
seg001:0EC4                 dec     [bp+var_8]
seg001:0EC7
seg001:0EC7 loc_2C07:                               ; CODE XREF: sub_27D0+414␘j
seg001:0EC7                 mov     ax, [bp+var_4]
seg001:0ECA                 cmp     [bp+var_8], ax
seg001:0ECD                 jle     short loc_2C3A
seg001:0ECF                 mov     si, [bp+var_8]
seg001:0ED2                 mov     cl, 2
seg001:0ED4                 shl     si, cl
seg001:0ED6                 mov     ax, [si+1ECBh]
seg001:0EDA                 mov     dx, [si+1ECDh]
seg001:0EDE                 mov     [si+1ECFh], ax
seg001:0EE2                 mov     [si+1ED1h], dx
seg001:0EE6                 mov     bx, [bp+var_8]
seg001:0EE9                 mov     di, bx
seg001:0EEB                 mov     al, [di+1EC7h]
seg001:0EEF                 mov     [bx+1EC8h], al
seg001:0EF3                 mov     [bp+var_6], 0
seg001:0EF8                 jmp     short loc_2BE9
seg001:0EFA ; ---------------------------------------------------------------------------
seg001:0EFA
seg001:0EFA loc_2C3A:                               ; CODE XREF: sub_27D0+43D␘j
seg001:0EFA                 mov     bx, [bp+var_4]
seg001:0EFD                 shl     bx, 1
seg001:0EFF                 shl     bx, 1
seg001:0F01                 mov     ax, word_1FABA
seg001:0F04                 mov     dx, word_1FABC
seg001:0F08                 mov     [bx+1ECFh], ax
seg001:0F0C                 mov     [bx+1ED1h], dx
seg001:0F10                 mov     bx, [bp+var_4]
seg001:0F13                 mov     al, byte ptr word_1FBDE
seg001:0F16                 mov     [bx+1EC8h], al
seg001:0F1A                 mov     [bp+var_6], 0
seg001:0F1F
seg001:0F1F loc_2C5F:                               ; CODE XREF: sub_27D0+4AB␙j
seg001:0F1F                 mov     bx, [bp+var_6]
seg001:0F22                 mov     al, [bx-137Ah]
seg001:0F26                 mov     cx, ax
seg001:0F28                 mov     ax, 12h
seg001:0F2B                 imul    [bp+var_4]
seg001:0F2E                 mov     si, ax
seg001:0F30                 mov     [bx+si+1EEDh], cl
seg001:0F34                 inc     [bp+var_6]
seg001:0F37                 cmp     [bp+var_6], 0Fh
seg001:0F3B                 jl      short loc_2C5F
seg001:0F3D                 push    cs
seg001:0F3E                 call    near ptr sub_4B70
seg001:0F41                 pop     si
seg001:0F42                 pop     di
seg001:0F43                 mov     sp, bp
seg001:0F45                 pop     bp
seg001:0F46                 retf
seg001:0F46 sub_27D0        endp
seg001:0F46
seg001:0F46 ; ---------------------------------------------------------------------------
seg001:0F47                 align 2
seg001:0F48
