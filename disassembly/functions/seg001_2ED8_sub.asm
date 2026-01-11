seg001:2ED8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:2ED8
seg001:2ED8 ; Attributes: bp-based frame
seg001:2ED8
seg001:2ED8 sub_4C18        proc far                ; CODE XREF: sub_4438+31␘p
seg001:2ED8
seg001:2ED8 var_A           = word ptr -0Ah
seg001:2ED8 var_8           = word ptr -8
seg001:2ED8 var_6           = word ptr -6
seg001:2ED8 var_4           = word ptr -4
seg001:2ED8 var_2           = word ptr -2
seg001:2ED8
seg001:2ED8                 push    bp
seg001:2ED9                 mov     bp, sp
seg001:2EDB                 sub     sp, 0Ah
seg001:2EDE                 sub     ax, ax
seg001:2EE0                 mov     word_1F17A, ax
seg001:2EE3                 push    ax
seg001:2EE4                 call    far ptr sub_16BB0
seg001:2EE9                 add     sp, 2
seg001:2EEC                 sub     ax, ax
seg001:2EEE                 push    ax
seg001:2EEF                 call    far ptr sub_16A93
seg001:2EF4                 add     sp, 2
seg001:2EF7                 mov     ax, 0C7h ; '¦'
seg001:2EFA                 push    ax
seg001:2EFB                 sub     ax, ax
seg001:2EFD                 push    ax
seg001:2EFE                 mov     ax, 13Fh
seg001:2F01                 push    ax
seg001:2F02                 sub     ax, ax
seg001:2F04                 push    ax
seg001:2F05                 call    far ptr sub_172BD
seg001:2F0A                 add     sp, 8
seg001:2F0D                 mov     ax, 0Ah
seg001:2F10                 push    ax
seg001:2F11                 call    far ptr sub_16A93
seg001:2F16                 add     sp, 2
seg001:2F19                 mov     ax, 0AAh ; '¬'
seg001:2F1C                 push    ax
seg001:2F1D                 mov     ax, 29h ; ')'
seg001:2F20                 push    ax
seg001:2F21                 mov     ax, 9Ch ; '£'
seg001:2F24                 push    ax
seg001:2F25                 mov     ax, 4
seg001:2F28                 push    ax
seg001:2F29                 push    cs
seg001:2F2A                 call    near ptr sub_359E
seg001:2F2D                 add     sp, 8
seg001:2F30                 mov     ax, 0AAh ; '¬'
seg001:2F33                 push    ax
seg001:2F34                 mov     ax, 29h ; ')'
seg001:2F37                 push    ax
seg001:2F38                 mov     ax, 13Ch
seg001:2F3B                 push    ax
seg001:2F3C                 mov     ax, 0A4h ; 'ñ'
seg001:2F3F                 push    ax
seg001:2F40                 push    cs
seg001:2F41                 call    near ptr sub_359E
seg001:2F44                 add     sp, 8
seg001:2F47                 sub     ax, ax
seg001:2F49                 push    ax
seg001:2F4A                 mov     ax, 0Fh
seg001:2F4D                 push    ax
seg001:2F4E                 call    sub_C65B
seg001:2F53                 add     sp, 4
seg001:2F56                 sub     ax, ax
seg001:2F58                 mov     [bp+var_8], ax
seg001:2F5B                 push    ax
seg001:2F5C                 mov     ax, 1E8Bh
seg001:2F5F                 push    ax
seg001:2F60                 push    cs
seg001:2F61                 call    near ptr sub_37BC
seg001:2F64                 add     sp, 4
seg001:2F67                 mov     [bp+var_8], ax
seg001:2F6A                 sub     ax, ax
seg001:2F6C                 push    ax
seg001:2F6D                 mov     ax, 0Eh
seg001:2F70                 push    ax
seg001:2F71                 call    sub_C65B
seg001:2F76                 add     sp, 4
seg001:2F79                 push    [bp+var_8]
seg001:2F7C                 mov     ax, 1E8Bh
seg001:2F7F                 push    ax
seg001:2F80                 push    cs
seg001:2F81                 call    near ptr sub_37BC
seg001:2F84                 add     sp, 4
seg001:2F87                 mov     [bp+var_8], ax
seg001:2F8A                 mov     ax, 0Dh
seg001:2F8D                 push    ax
seg001:2F8E                 mov     ax, 2
seg001:2F91                 push    ax
seg001:2F92                 call    sub_C674
seg001:2F97                 add     sp, 4
seg001:2F9A                 mov     [bp+var_4], 0
seg001:2F9F
seg001:2F9F loc_4CDF:                               ; CODE XREF: sub_4C18+E4␙j
seg001:2F9F                 mov     bx, [bp+var_4]
seg001:2FA2                 mov     al, [bx+0A78h]
seg001:2FA6                 mov     byte ptr [bp+var_A], al
seg001:2FA9                 lea     ax, [bp+var_A]
seg001:2FAC                 push    ax
seg001:2FAD                 call    sub_C6AC
seg001:2FB2                 add     sp, 2
seg001:2FB5                 inc     [bp+var_4]
seg001:2FB8                 cmp     [bp+var_4], 11h
seg001:2FBC                 jl      short loc_4CDF
seg001:2FBE                 sub     ax, ax
seg001:2FC0                 push    ax
seg001:2FC1                 mov     ax, 0Bh
seg001:2FC4                 push    ax
seg001:2FC5                 call    sub_C65B
seg001:2FCA                 add     sp, 4
seg001:2FCD                 mov     [bp+var_2], 0
seg001:2FD2
seg001:2FD2 loc_4D12:                               ; CODE XREF: sub_4C18+155␙j
seg001:2FD2                 mov     ax, 0B50h
seg001:2FD5                 push    ax
seg001:2FD6                 mov     ax, 2171h
seg001:2FD9                 push    ax
seg001:2FDA                 mov     ax, 0ABAh
seg001:2FDD                 push    ax
seg001:2FDE                 push    [bp+var_2]
seg001:2FE1                 push    cs
seg001:2FE2                 call    near ptr sub_46FA
seg001:2FE5                 add     sp, 8
seg001:2FE8                 mov     [bp+var_6], ax
seg001:2FEB                 or      ax, ax
seg001:2FED                 jnz     short loc_4D66
seg001:2FEF                 mov     ax, 1
seg001:2FF2                 push    ax
seg001:2FF3                 mov     ax, [bp+var_2]
seg001:2FF6                 add     ax, 6
seg001:2FF9                 push    ax
seg001:2FFA                 call    sub_C674
seg001:2FFF                 add     sp, 4
seg001:3002                 mov     [bp+var_4], 0
seg001:3007
seg001:3007 loc_4D47:                               ; CODE XREF: sub_4C18+14C␙j
seg001:3007                 mov     bx, [bp+var_4]
seg001:300A                 mov     al, [bx+2171h]
seg001:300E                 mov     byte ptr [bp+var_A], al
seg001:3011                 lea     ax, [bp+var_A]
seg001:3014                 push    ax
seg001:3015                 call    sub_C6AC
seg001:301A                 add     sp, 2
seg001:301D                 inc     [bp+var_4]
seg001:3020                 cmp     [bp+var_4], 12h
seg001:3024                 jl      short loc_4D47
seg001:3026
seg001:3026 loc_4D66:                               ; CODE XREF: sub_4C18+115␘j
seg001:3026                 inc     [bp+var_2]
seg001:3029                 cmp     [bp+var_2], 0Eh
seg001:302D                 jl      short loc_4D12
seg001:302F                 mov     ax, 0B50h
seg001:3032                 push    ax
seg001:3033                 mov     ax, 2171h
seg001:3036                 push    ax
seg001:3037                 mov     ax, 0ABAh
seg001:303A                 push    ax
seg001:303B                 push    word_1FBDE
seg001:303F                 push    cs
seg001:3040                 call    near ptr sub_46FA
seg001:3043                 add     sp, 8
seg001:3046                 sub     ax, ax
seg001:3048                 push    ax
seg001:3049                 mov     ax, 0Ch
seg001:304C                 push    ax
seg001:304D                 call    sub_C65B
seg001:3052                 add     sp, 4
seg001:3055                 mov     [bp+var_2], 0
seg001:305A
seg001:305A loc_4D9A:                               ; CODE XREF: sub_4C18+1D9␙j
seg001:305A                 mov     ax, 0AEAh
seg001:305D                 push    ax
seg001:305E                 mov     ax, 0ADAh
seg001:3061                 push    ax
seg001:3062                 push    [bp+var_2]
seg001:3065                 push    cs
seg001:3066                 call    near ptr sub_48D0
seg001:3069                 add     sp, 6
seg001:306C                 mov     [bp+var_6], ax
seg001:306F                 or      ax, ax
seg001:3071                 jnz     short loc_4DEA
seg001:3073                 mov     ax, 15h
seg001:3076                 push    ax
seg001:3077                 mov     ax, [bp+var_2]
seg001:307A                 add     ax, 6
seg001:307D                 push    ax
seg001:307E                 call    sub_C674
seg001:3083                 add     sp, 4
seg001:3086                 mov     [bp+var_4], 0
seg001:308B
seg001:308B loc_4DCB:                               ; CODE XREF: sub_4C18+1D0␙j
seg001:308B                 mov     bx, [bp+var_4]
seg001:308E                 mov     al, [bx+0AEAh]
seg001:3092                 mov     byte ptr [bp+var_A], al
seg001:3095                 lea     ax, [bp+var_A]
seg001:3098                 push    ax
seg001:3099                 call    sub_C6AC
seg001:309E                 add     sp, 2
seg001:30A1                 inc     [bp+var_4]
seg001:30A4                 cmp     [bp+var_4], 12h
seg001:30A8                 jl      short loc_4DCB
seg001:30AA
seg001:30AA loc_4DEA:                               ; CODE XREF: sub_4C18+199␘j
seg001:30AA                 inc     [bp+var_2]
seg001:30AD                 cmp     [bp+var_2], 0Eh
seg001:30B1                 jl      short loc_4D9A
seg001:30B3                 mov     ax, 0AEAh
seg001:30B6                 push    ax
seg001:30B7                 mov     ax, 0ADAh
seg001:30BA                 push    ax
seg001:30BB                 push    word_1FBE2
seg001:30BF                 push    cs
seg001:30C0                 call    near ptr sub_48D0
seg001:30C3                 add     sp, 6
seg001:30C6                 mov     byte_28147, 0
seg001:30CB                 sub     ax, ax
seg001:30CD                 push    ax
seg001:30CE                 push    cs
seg001:30CF                 call    near ptr sub_38C8
seg001:30D2                 mov     sp, bp
seg001:30D4                 pop     bp
seg001:30D5                 retf
seg001:30D5 sub_4C18        endp
seg001:30D5
seg001:30D6
