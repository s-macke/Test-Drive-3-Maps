seg000:0EC6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0EC6
seg000:0EC6 ; Attributes: bp-based frame
seg000:0EC6
seg000:0EC6 sub_EC6         proc far                ; CODE XREF: sub_1DAA+23A␙P
seg000:0EC6                                         ; sub_27D0+2B7␙P ...
seg000:0EC6
seg000:0EC6 var_6           = byte ptr -6
seg000:0EC6 var_2           = word ptr -2
seg000:0EC6 arg_0           = word ptr  6
seg000:0EC6
seg000:0EC6                 push    bp
seg000:0EC7                 mov     bp, sp
seg000:0EC9                 sub     sp, 8
seg000:0ECC                 mov     bx, [bp+arg_0]
seg000:0ECF                 mov     word ptr [bx], 0
seg000:0ED3                 cmp     byte_1F16D, 0
seg000:0ED8                 jz      short loc_EE6
seg000:0EDA                 push    [bp+arg_0]
seg000:0EDD                 call    sub_A8B2
seg000:0EE2                 jmp     loc_10B4
seg000:0EE2 ; ---------------------------------------------------------------------------
seg000:0EE5                 align 2
seg000:0EE6
seg000:0EE6 loc_EE6:                                ; CODE XREF: sub_EC6+12␘j
seg000:0EE6                 cmp     byte_28147, 0
seg000:0EEB                 jz      short loc_EFB
seg000:0EED                 mov     bx, [bp+arg_0]
seg000:0EF0                 mov     al, byte_28147
seg000:0EF3                 sub     ah, ah
seg000:0EF5                 mov     [bx], ax
seg000:0EF7                 mov     byte_28147, ah
seg000:0EFB
seg000:0EFB loc_EFB:                                ; CODE XREF: sub_EC6+25␘j
seg000:0EFB                 mov     bx, [bp+arg_0]
seg000:0EFE                 mov     al, [bx]
seg000:0F00                 mov     [bp+var_6], al
seg000:0F03                 or      al, al
seg000:0F05                 jnz     short loc_F16
seg000:0F07                 push    bx
seg000:0F08                 push    cs
seg000:0F09                 call    near ptr sub_1C3E
seg000:0F0C                 add     sp, 2
seg000:0F0F                 mov     [bp+var_2], ax
seg000:0F12                 jmp     loc_10B7
seg000:0F12 ; ---------------------------------------------------------------------------
seg000:0F15                 align 2
seg000:0F16
seg000:0F16 loc_F16:                                ; CODE XREF: sub_EC6+3F␘j
seg000:0F16                 cmp     [bp+var_6], 80h ; 'Ç'
seg000:0F1A                 jnz     short loc_F61
seg000:0F1C                 cmp     word_1F166, 5
seg000:0F21                 jnz     short loc_F4A
seg000:0F23                 cmp     byte_2849E, 0
seg000:0F28                 jnz     short loc_F55
seg000:0F2A                 mov     ax, 26h ; '&'
seg000:0F2D                 push    ax
seg000:0F2E                 push    cs
seg000:0F2F                 call    near ptr sub_1688
seg000:0F32                 add     sp, 2
seg000:0F35                 cmp     byte_2D850, 0
seg000:0F3A                 jz      short loc_F55
seg000:0F3C                 mov     word_1F16A, 3
seg000:0F42                 mov     al, byte_1FBEB
seg000:0F45                 mov     byte_1FBEA, al
seg000:0F48                 jmp     short loc_F55
seg000:0F4A ; ---------------------------------------------------------------------------
seg000:0F4A
seg000:0F4A loc_F4A:                                ; CODE XREF: sub_EC6+5B␘j
seg000:0F4A                 mov     ax, 12h
seg000:0F4D                 push    ax
seg000:0F4E                 push    cs
seg000:0F4F                 call    near ptr sub_1688
seg000:0F52                 add     sp, 2
seg000:0F55
seg000:0F55 loc_F55:                                ; CODE XREF: sub_EC6+62␘j
seg000:0F55                                         ; sub_EC6+74␘j ...
seg000:0F55                 mov     bx, [bp+arg_0]
seg000:0F58                 sub     al, al
seg000:0F5A                 mov     [bp+var_6], al
seg000:0F5D                 sub     ah, ah
seg000:0F5F                 mov     [bx], ax
seg000:0F61
seg000:0F61 loc_F61:                                ; CODE XREF: sub_EC6+54␘j
seg000:0F61                 cmp     [bp+var_6], 14h
seg000:0F65                 jnz     short loc_F84
seg000:0F67                 mov     word_1F172, 1
seg000:0F6D                 mov     ax, 5
seg000:0F70                 push    ax
seg000:0F71                 push    cs
seg000:0F72                 call    near ptr sub_1688
seg000:0F75                 add     sp, 2
seg000:0F78                 mov     bx, [bp+arg_0]
seg000:0F7B                 sub     al, al
seg000:0F7D                 mov     [bp+var_6], al
seg000:0F80                 sub     ah, ah
seg000:0F82                 mov     [bx], ax
seg000:0F84
seg000:0F84 loc_F84:                                ; CODE XREF: sub_EC6+9F␘j
seg000:0F84                 cmp     [bp+var_6], 15h
seg000:0F88                 jnz     short loc_FAB
seg000:0F8A                 sub     al, al
seg000:0F8C                 mov     byte_28467, al
seg000:0F8F                 sub     ah, ah
seg000:0F91                 mov     word_1F172, ax
seg000:0F94                 mov     ax, 6
seg000:0F97                 push    ax
seg000:0F98                 push    cs
seg000:0F99                 call    near ptr sub_1688
seg000:0F9C                 add     sp, 2
seg000:0F9F                 mov     bx, [bp+arg_0]
seg000:0FA2                 sub     al, al
seg000:0FA4                 mov     [bp+var_6], al
seg000:0FA7                 sub     ah, ah
seg000:0FA9                 mov     [bx], ax
seg000:0FAB
seg000:0FAB loc_FAB:                                ; CODE XREF: sub_EC6+C2␘j
seg000:0FAB                 cmp     [bp+var_6], 11h
seg000:0FAF                 jnz     short loc_FF0
seg000:0FB1                 xor     byte_1F16E, 1
seg000:0FB6                 cmp     byte_1F16E, 1
seg000:0FBB                 jnz     short loc_FC8
seg000:0FBD                 sub     ax, ax
seg000:0FBF                 push    ax
seg000:0FC0                 call    sub_1E040
seg000:0FC5                 jmp     short loc_FD3
seg000:0FC5 ; ---------------------------------------------------------------------------
seg000:0FC7                 align 2
seg000:0FC8
seg000:0FC8 loc_FC8:                                ; CODE XREF: sub_EC6+F5␘j
seg000:0FC8                 mov     al, byte_2A6B6
seg000:0FCB                 sub     ah, ah
seg000:0FCD                 push    ax
seg000:0FCE                 call    sub_3A5C
seg000:0FD3
seg000:0FD3 loc_FD3:                                ; CODE XREF: sub_EC6+FF␘j
seg000:0FD3                 add     sp, 2
seg000:0FD6                 mov     al, byte_1F16E
seg000:0FD9                 sub     ah, ah
seg000:0FDB                 inc     ax
seg000:0FDC                 push    ax
seg000:0FDD                 push    cs
seg000:0FDE                 call    near ptr sub_1688
seg000:0FE1                 add     sp, 2
seg000:0FE4                 mov     bx, [bp+arg_0]
seg000:0FE7                 sub     al, al
seg000:0FE9                 mov     [bp+var_6], al
seg000:0FEC                 sub     ah, ah
seg000:0FEE                 mov     [bx], ax
seg000:0FF0
seg000:0FF0 loc_FF0:                                ; CODE XREF: sub_EC6+E9␘j
seg000:0FF0                 cmp     [bp+var_6], 16h
seg000:0FF4                 jnz     short loc_1017
seg000:0FF6                 xor     byte_2B9E6, 1
seg000:0FFB                 mov     al, byte_2B9E6
seg000:0FFE                 sub     ah, ah
seg000:1000                 add     ax, 29h ; ')'
seg000:1003                 push    ax
seg000:1004                 push    cs
seg000:1005                 call    near ptr sub_1688
seg000:1008                 add     sp, 2
seg000:100B                 mov     bx, [bp+arg_0]
seg000:100E                 sub     al, al
seg000:1010                 mov     [bp+var_6], al
seg000:1013                 sub     ah, ah
seg000:1015                 mov     [bx], ax
seg000:1017
seg000:1017 loc_1017:                               ; CODE XREF: sub_EC6+12E␘j
seg000:1017                 cmp     [bp+var_6], 13h
seg000:101B                 jnz     short loc_108C
seg000:101D                 xor     byte ptr word_1F16F, 1
seg000:1022                 cmp     byte ptr word_1F16F, 1
seg000:1027                 jnz     short loc_1050
seg000:1029                 sub     ax, ax
seg000:102B                 push    ax
seg000:102C                 call    sub_D038
seg000:1031                 add     sp, 2
seg000:1034                 cmp     word_1F176, 0
seg000:1039                 jnz     short loc_1070
seg000:103B                 cmp     word_1F166, 5
seg000:1040                 jnz     short loc_1070
seg000:1042                 mov     al, byte_2A6B6
seg000:1045                 sub     ah, ah
seg000:1047                 push    ax
seg000:1048                 call    sub_3A5C
seg000:104D                 jmp     short loc_106D
seg000:104D ; ---------------------------------------------------------------------------
seg000:104F                 align 2
seg000:1050
seg000:1050 loc_1050:                               ; CODE XREF: sub_EC6+161␘j
seg000:1050                 cmp     word_1F176, 0
seg000:1055                 jnz     short loc_1070
seg000:1057                 cmp     word_1F166, 5
seg000:105C                 jnz     short loc_1070
seg000:105E                 cmp     byte_1F16E, 0
seg000:1063                 jnz     short loc_1070
seg000:1065                 sub     ax, ax
seg000:1067                 push    ax
seg000:1068                 call    sub_1E040
seg000:106D
seg000:106D loc_106D:                               ; CODE XREF: sub_EC6+187␘j
seg000:106D                 add     sp, 2
seg000:1070
seg000:1070 loc_1070:                               ; CODE XREF: sub_EC6+173␘j
seg000:1070                                         ; sub_EC6+17A␘j ...
seg000:1070                 mov     al, byte ptr word_1F16F
seg000:1073                 sub     ah, ah
seg000:1075                 add     ax, 3
seg000:1078                 push    ax
seg000:1079                 push    cs
seg000:107A                 call    near ptr sub_1688
seg000:107D                 add     sp, 2
seg000:1080                 mov     bx, [bp+arg_0]
seg000:1083                 sub     al, al
seg000:1085                 mov     [bp+var_6], al
seg000:1088                 sub     ah, ah
seg000:108A                 mov     [bx], ax
seg000:108C
seg000:108C loc_108C:                               ; CODE XREF: sub_EC6+155␘j
seg000:108C                 cmp     [bp+var_6], 12h
seg000:1090                 jnz     short loc_10B7
seg000:1092                 mov     bx, [bp+arg_0]
seg000:1095                 sub     al, al
seg000:1097                 mov     [bp+var_6], al
seg000:109A                 sub     ah, ah
seg000:109C                 mov     [bx], ax
seg000:109E                 mov     ax, 11h
seg000:10A1                 push    ax
seg000:10A2                 push    cs
seg000:10A3                 call    near ptr sub_1688
seg000:10A6                 add     sp, 2
seg000:10A9                 mov     al, byte_2A6B6
seg000:10AC                 sub     ah, ah
seg000:10AE                 push    ax
seg000:10AF                 call    sub_3A5C
seg000:10B4
seg000:10B4 loc_10B4:                               ; CODE XREF: sub_EC6+1C␘j
seg000:10B4                 add     sp, 2
seg000:10B7
seg000:10B7 loc_10B7:                               ; CODE XREF: sub_EC6+4C␘j
seg000:10B7                                         ; sub_EC6+1CA␘j
seg000:10B7                 mov     bx, [bp+arg_0]
seg000:10BA                 mov     byte ptr [bx+1], 0
seg000:10BE                 mov     bx, [bp+arg_0]
seg000:10C1                 mov     al, [bx]
seg000:10C3                 mov     byte_2D37C, al
seg000:10C6                 or      al, al
seg000:10C8                 jz      short loc_10CF
seg000:10CA                 mov     byte_1F16C, 1
seg000:10CF
seg000:10CF loc_10CF:                               ; CODE XREF: sub_EC6+202␘j
seg000:10CF                 mov     sp, bp
seg000:10D1                 pop     bp
seg000:10D2                 retf
seg000:10D2 sub_EC6         endp
seg000:10D2
seg000:10D2 ; ---------------------------------------------------------------------------
seg000:10D3                 align 2
seg000:10D4
