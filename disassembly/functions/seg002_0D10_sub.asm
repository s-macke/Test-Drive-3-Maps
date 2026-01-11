seg002:0D10 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:0D10
seg002:0D10 ; Attributes: bp-based frame
seg002:0D10
seg002:0D10 sub_83E0        proc far                ; CODE XREF: sub_3186+251␘P
seg002:0D10                                         ; sub_76D6+38␘p
seg002:0D10
seg002:0D10 var_2           = word ptr -2
seg002:0D10
seg002:0D10                 push    bp
seg002:0D11                 mov     bp, sp
seg002:0D13                 sub     sp, 2
seg002:0D16                 call    sub_11D68
seg002:0D1B                 sub     al, al
seg002:0D1D                 mov     byte_2D89E, al
seg002:0D20                 mov     byte_2D84F, al
seg002:0D23                 mov     byte_2D84E, al
seg002:0D26                 mov     byte_2C198, al
seg002:0D29                 sub     ah, ah
seg002:0D2B                 mov     word_28474, ax
seg002:0D2E                 mov     ax, 1
seg002:0D31                 mov     word_1F16A, ax
seg002:0D34                 mov     word_2DA64, ax
seg002:0D37                 mov     byte_2A777, 0
seg002:0D3C                 cmp     byte_1FAA3, 0
seg002:0D41                 jnz     short loc_8440
seg002:0D43                 mov     bl, byte_1FBEA
seg002:0D47                 sub     bh, bh
seg002:0D49                 mov     al, [bx+0B0Ch]
seg002:0D4D                 mov     byte_1FBC3, al
seg002:0D50                 mov     ax, 11AEh
seg002:0D53                 push    ax
seg002:0D54                 mov     ax, 0AE4h
seg002:0D57                 push    ax
seg002:0D58                 call    sub_195EA
seg002:0D5D                 add     sp, 4
seg002:0D60                 mov     ax, 240Ch
seg002:0D63                 push    ax
seg002:0D64                 mov     ax, 0ADAh
seg002:0D67                 push    ax
seg002:0D68                 call    sub_DBA
seg002:0D6D                 add     sp, 4
seg002:0D70
seg002:0D70 loc_8440:                               ; CODE XREF: sub_83E0+31␘j
seg002:0D70                 push    cs
seg002:0D71                 call    near ptr sub_8680
seg002:0D74                 cmp     byte_1FAA3, 0
seg002:0D79                 jnz     short loc_8450
seg002:0D7B                 call    sub_10455
seg002:0D80
seg002:0D80 loc_8450:                               ; CODE XREF: sub_83E0+69␘j
seg002:0D80                 cmp     byte_1FAA3, 0
seg002:0D85                 jnz     short loc_84D4
seg002:0D87                 mov     ax, 11B3h
seg002:0D8A                 push    ax
seg002:0D8B                 mov     ax, 0AE3h
seg002:0D8E                 push    ax
seg002:0D8F                 call    sub_195EA
seg002:0D94                 add     sp, 4
seg002:0D97                 push    word_2DA62
seg002:0D9B                 push    word_2DA60
seg002:0D9F                 mov     ax, 0ADAh
seg002:0DA2                 push    ax
seg002:0DA3                 call    sub_E26
seg002:0DA8                 add     sp, 6
seg002:0DAB                 mov     byte_1F164, 0
seg002:0DB0                 mov     byte_1FBC3, 0
seg002:0DB5                 cmp     byte_1FBF5, 0
seg002:0DBA                 jnz     short loc_84D4
seg002:0DBC                 mov     ax, 11B9h
seg002:0DBF                 push    ax
seg002:0DC0                 mov     ax, 0AE3h
seg002:0DC3                 push    ax
seg002:0DC4                 call    sub_195EA
seg002:0DC9                 add     sp, 4
seg002:0DCC                 push    word_2D83E
seg002:0DD0                 push    word_2D83C
seg002:0DD4                 mov     ax, 0ADAh
seg002:0DD7                 push    ax
seg002:0DD8                 call    sub_E26
seg002:0DDD                 add     sp, 6
seg002:0DE0                 mov     ax, 11BFh
seg002:0DE3                 push    ax
seg002:0DE4                 mov     ax, 0AE3h
seg002:0DE7                 push    ax
seg002:0DE8                 call    sub_195EA
seg002:0DED                 add     sp, 4
seg002:0DF0                 push    word_2C190
seg002:0DF4                 push    word_2C18E
seg002:0DF8                 mov     ax, 0ADAh
seg002:0DFB                 push    ax
seg002:0DFC                 call    sub_E26
seg002:0E01                 add     sp, 6
seg002:0E04
seg002:0E04 loc_84D4:                               ; CODE XREF: sub_83E0+75␘j
seg002:0E04                                         ; sub_83E0+AA␘j
seg002:0E04                 mov     ax, 11C5h
seg002:0E07                 push    ax
seg002:0E08                 mov     ax, 0AC1h
seg002:0E0B                 push    ax
seg002:0E0C                 call    sub_195EA
seg002:0E11                 add     sp, 4
seg002:0E14                 push    word_2C196
seg002:0E18                 push    word_2C194
seg002:0E1C                 mov     ax, 0ABAh
seg002:0E1F                 push    ax
seg002:0E20                 call    sub_E26
seg002:0E25                 add     sp, 6
seg002:0E28                 sub     al, al
seg002:0E2A                 mov     byte_2C192, al
seg002:0E2D                 mov     byte_2C18C, al
seg002:0E30                 cmp     byte_1F168, al
seg002:0E34                 jnz     short loc_8509
seg002:0E36                 jmp     loc_866A
seg002:0E39 ; ---------------------------------------------------------------------------
seg002:0E39
seg002:0E39 loc_8509:                               ; CODE XREF: sub_83E0+124␘j
seg002:0E39                 cmp     byte_1FBE9, al
seg002:0E3D                 jnz     short loc_8512
seg002:0E3F                 jmp     loc_866A
seg002:0E42 ; ---------------------------------------------------------------------------
seg002:0E42
seg002:0E42 loc_8512:                               ; CODE XREF: sub_83E0+12D␘j
seg002:0E42                 cmp     byte_1FAA3, al
seg002:0E46                 jz      short loc_851B
seg002:0E48                 jmp     loc_866A
seg002:0E4B ; ---------------------------------------------------------------------------
seg002:0E4B
seg002:0E4B loc_851B:                               ; CODE XREF: sub_83E0+136␘j
seg002:0E4B                 mov     al, byte_1FBE6
seg002:0E4E                 sub     ah, ah
seg002:0E50                 cmp     ax, 1
seg002:0E53                 jbe     short loc_855A
seg002:0E55                 cmp     ax, 2
seg002:0E58                 jnz     short loc_8538
seg002:0E5A                 mov     al, byte ptr word_1FBDE
seg002:0E5D                 xor     al, 1
seg002:0E5F                 mov     byte_2C192, al
seg002:0E62                 mov     byte_2C18C, al
seg002:0E65                 jmp     short loc_855A
seg002:0E65 ; ---------------------------------------------------------------------------
seg002:0E67                 align 2
seg002:0E68
seg002:0E68 loc_8538:                               ; CODE XREF: sub_83E0+148␘j
seg002:0E68                 mov     byte_2C18C, 0
seg002:0E6D                 mov     byte_2C192, 1
seg002:0E72                 cmp     word_1FBDE, 0
seg002:0E77                 jnz     short loc_854E
seg002:0E79                 mov     byte_2C18C, 2
seg002:0E7E
seg002:0E7E loc_854E:                               ; CODE XREF: sub_83E0+167␘j
seg002:0E7E                 cmp     word_1FBDE, 1
seg002:0E83                 jnz     short loc_855A
seg002:0E85                 mov     byte_2C192, 2
seg002:0E8A
seg002:0E8A loc_855A:                               ; CODE XREF: sub_83E0+143␘j
seg002:0E8A                                         ; sub_83E0+155␘j ...
seg002:0E8A                 mov     al, byte_2C18C
seg002:0E8D                 sub     ah, ah
seg002:0E8F                 mov     cx, ax
seg002:0E91                 shl     ax, 1
seg002:0E93                 add     ax, cx
seg002:0E95                 shl     ax, 1
seg002:0E97                 add     ax, 9E0h
seg002:0E9A                 push    ax
seg002:0E9B                 mov     ax, 0ACCh
seg002:0E9E                 push    ax
seg002:0E9F                 call    sub_195EA
seg002:0EA4                 add     sp, 4
seg002:0EA7                 mov     ax, 11CAh
seg002:0EAA                 push    ax
seg002:0EAB                 mov     ax, 0AD1h
seg002:0EAE                 push    ax
seg002:0EAF                 call    sub_195EA
seg002:0EB4                 add     sp, 4
seg002:0EB7                 mov     ax, 11CFh
seg002:0EBA                 push    ax
seg002:0EBB                 mov     ax, 0ACAh
seg002:0EBE                 push    ax
seg002:0EBF                 call    sub_1916A
seg002:0EC4                 add     sp, 4
seg002:0EC7                 mov     word_2D896, ax
seg002:0ECA                 or      ax, ax
seg002:0ECC                 jz      short loc_85C2
seg002:0ECE                 push    ax
seg002:0ECF                 mov     ax, 13h
seg002:0ED2                 push    ax
seg002:0ED3                 mov     ax, 1
seg002:0ED6                 push    ax
seg002:0ED7                 mov     ax, 2193h
seg002:0EDA                 push    ax
seg002:0EDB                 call    sub_19196
seg002:0EE0                 add     sp, 8
seg002:0EE3                 mov     [bp+var_2], ax
seg002:0EE6                 push    word_2D896
seg002:0EEA                 call    sub_190A2
seg002:0EEF                 add     sp, 2
seg002:0EF2
seg002:0EF2 loc_85C2:                               ; CODE XREF: sub_83E0+1BC␘j
seg002:0EF2                 mov     ax, 11D2h
seg002:0EF5                 push    ax
seg002:0EF6                 mov     ax, 0AD1h
seg002:0EF9                 push    ax
seg002:0EFA                 call    sub_195EA
seg002:0EFF                 add     sp, 4
seg002:0F02                 mov     ax, 0D0CCh
seg002:0F05                 push    ax
seg002:0F06                 mov     ax, 0ACAh
seg002:0F09                 push    ax
seg002:0F0A                 call    sub_DBA
seg002:0F0F                 add     sp, 4
seg002:0F12                 mov     al, byte_2C192
seg002:0F15                 sub     ah, ah
seg002:0F17                 mov     cx, ax
seg002:0F19                 shl     ax, 1
seg002:0F1B                 add     ax, cx
seg002:0F1D                 shl     ax, 1
seg002:0F1F                 add     ax, 9E0h
seg002:0F22                 push    ax
seg002:0F23                 mov     ax, 0ACCh
seg002:0F26                 push    ax
seg002:0F27                 call    sub_195EA
seg002:0F2C                 add     sp, 4
seg002:0F2F                 mov     ax, 11D7h
seg002:0F32                 push    ax
seg002:0F33                 mov     ax, 0AD1h
seg002:0F36                 push    ax
seg002:0F37                 call    sub_195EA
seg002:0F3C                 add     sp, 4
seg002:0F3F                 mov     ax, 11DCh
seg002:0F42                 push    ax
seg002:0F43                 mov     ax, 0ACAh
seg002:0F46                 push    ax
seg002:0F47                 call    sub_1916A
seg002:0F4C                 add     sp, 4
seg002:0F4F                 mov     word_2D896, ax
seg002:0F52                 or      ax, ax
seg002:0F54                 jz      short loc_864A
seg002:0F56                 push    ax
seg002:0F57                 mov     ax, 13h
seg002:0F5A                 push    ax
seg002:0F5B                 mov     ax, 1
seg002:0F5E                 push    ax
seg002:0F5F                 mov     ax, 21A8h
seg002:0F62                 push    ax
seg002:0F63                 call    sub_19196
seg002:0F68                 add     sp, 8
seg002:0F6B                 mov     [bp+var_2], ax
seg002:0F6E                 push    word_2D896
seg002:0F72                 call    sub_190A2
seg002:0F77                 add     sp, 2
seg002:0F7A
seg002:0F7A loc_864A:                               ; CODE XREF: sub_83E0+244␘j
seg002:0F7A                 mov     ax, 11DFh
seg002:0F7D                 push    ax
seg002:0F7E                 mov     ax, 0AD1h
seg002:0F81                 push    ax
seg002:0F82                 call    sub_195EA
seg002:0F87                 add     sp, 4
seg002:0F8A                 mov     ax, 0D9B4h
seg002:0F8D                 push    ax
seg002:0F8E                 mov     ax, 0ACAh
seg002:0F91                 push    ax
seg002:0F92                 call    sub_DBA
seg002:0F97                 add     sp, 4
seg002:0F9A
seg002:0F9A loc_866A:                               ; CODE XREF: sub_83E0+126␘j
seg002:0F9A                                         ; sub_83E0+12F␘j ...
seg002:0F9A                 call    sub_1022A
seg002:0F9F                 cmp     byte_1FAA3, 0
seg002:0FA4                 jnz     short loc_867B
seg002:0FA6                 call    sub_39AC
seg002:0FAB
seg002:0FAB loc_867B:                               ; CODE XREF: sub_83E0+294␘j
seg002:0FAB                 mov     sp, bp
seg002:0FAD                 pop     bp
seg002:0FAE                 retf
seg002:0FAE sub_83E0        endp
seg002:0FAE
seg002:0FAE ; ---------------------------------------------------------------------------
seg002:0FAF                 align 2
seg002:0FB0
