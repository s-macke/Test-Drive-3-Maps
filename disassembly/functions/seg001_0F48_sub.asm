seg001:0F48 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:0F48
seg001:0F48 ; Attributes: bp-based frame
seg001:0F48
seg001:0F48 sub_2C88        proc far                ; CODE XREF: sub_0+19C␘P
seg001:0F48
seg001:0F48 var_C           = word ptr -0Ch
seg001:0F48 var_A           = word ptr -0Ah
seg001:0F48 var_8           = word ptr -8
seg001:0F48 var_6           = word ptr -6
seg001:0F48 var_4           = word ptr -4
seg001:0F48 var_2           = word ptr -2
seg001:0F48
seg001:0F48                 push    bp
seg001:0F49                 mov     bp, sp
seg001:0F4B                 sub     sp, 0Ch
seg001:0F4E                 push    cs
seg001:0F4F                 call    near ptr sub_70AE
seg001:0F52                 mov     byte_1F17F, 0
seg001:0F57                 xor     byte_280DC, 80h
seg001:0F5C                 mov     ax, 0F4Bh
seg001:0F5F                 push    ax
seg001:0F60                 mov     ax, 0A9Ch
seg001:0F63                 push    ax
seg001:0F64                 call    sub_195EA
seg001:0F69                 add     sp, 4
seg001:0F6C                 mov     ax, 0A9Ah
seg001:0F6F                 push    ax
seg001:0F70                 call    sub_CA8
seg001:0F75                 add     sp, 2
seg001:0F78                 mov     ax, 1
seg001:0F7B                 mov     word_1F17A, ax
seg001:0F7E                 push    ax
seg001:0F7F                 call    far ptr sub_16BB0
seg001:0F84                 add     sp, 2
seg001:0F87                 mov     ax, 0F57h
seg001:0F8A                 push    ax
seg001:0F8B                 mov     ax, 0A9Ch
seg001:0F8E                 push    ax
seg001:0F8F                 call    sub_195EA
seg001:0F94                 add     sp, 4
seg001:0F97                 push    word_2BF4E
seg001:0F9B                 push    word_2BF4C
seg001:0F9F                 mov     ax, 0A9Ah
seg001:0FA2                 push    ax
seg001:0FA3                 call    sub_E26
seg001:0FA8                 add     sp, 6
seg001:0FAB                 mov     ax, 240Ch
seg001:0FAE                 push    ds
seg001:0FAF                 push    ax
seg001:0FB0                 push    word_2BF4E
seg001:0FB4                 push    word_2BF4C
seg001:0FB8                 call    sub_A8EF
seg001:0FBD                 add     sp, 8
seg001:0FC0                 sub     ax, ax
seg001:0FC2                 push    ax
seg001:0FC3                 mov     ax, 0C7h ; '¦'
seg001:0FC6                 push    ax
seg001:0FC7                 sub     ax, ax
seg001:0FC9                 push    ax
seg001:0FCA                 mov     ax, 140h
seg001:0FCD                 push    ax
seg001:0FCE                 mov     ax, 26B4h
seg001:0FD1                 push    ax
seg001:0FD2                 mov     ax, 240Ch
seg001:0FD5                 push    ax
seg001:0FD6                 push    cs
seg001:0FD7                 call    near ptr sub_7696
seg001:0FDA                 add     sp, 0Ch
seg001:0FDD                 mov     ax, 0F63h
seg001:0FE0                 push    ax
seg001:0FE1                 mov     ax, 0A9Ch
seg001:0FE4                 push    ax
seg001:0FE5                 call    sub_195EA
seg001:0FEA                 add     sp, 4
seg001:0FED                 push    word_2BF4E
seg001:0FF1                 push    word_2BF4C
seg001:0FF5                 mov     ax, 0A9Ah
seg001:0FF8                 push    ax
seg001:0FF9                 call    sub_E26
seg001:0FFE                 add     sp, 6
seg001:1001                 mov     ax, 240Ch
seg001:1004                 push    ds
seg001:1005                 push    ax
seg001:1006                 push    word_2BF4E
seg001:100A                 push    word_2BF4C
seg001:100E                 call    sub_A8EF
seg001:1013                 add     sp, 8
seg001:1016                 mov     ax, 1
seg001:1019                 push    ax
seg001:101A                 mov     ax, 84h ; 'ä'
seg001:101D                 push    ax
seg001:101E                 sub     ax, ax
seg001:1020                 push    ax
seg001:1021                 mov     ax, 140h
seg001:1024                 push    ax
seg001:1025                 mov     ax, 2D83h
seg001:1028                 push    ax
seg001:1029                 mov     ax, 240Ch
seg001:102C                 push    ax
seg001:102D                 push    cs
seg001:102E                 call    near ptr sub_7696
seg001:1031                 add     sp, 0Ch
seg001:1034                 mov     ax, 0F6Fh
seg001:1037                 push    ax
seg001:1038                 mov     ax, 0A9Ch
seg001:103B                 push    ax
seg001:103C                 call    sub_195EA
seg001:1041                 add     sp, 4
seg001:1044                 push    word_2BF4E
seg001:1048                 push    word_2BF4C
seg001:104C                 mov     ax, 0A9Ah
seg001:104F                 push    ax
seg001:1050                 call    sub_E26
seg001:1055                 add     sp, 6
seg001:1058                 mov     ax, 240Ch
seg001:105B                 push    ds
seg001:105C                 push    ax
seg001:105D                 push    word_2BF4E
seg001:1061                 push    word_2BF4C
seg001:1065                 call    sub_A8EF
seg001:106A                 add     sp, 8
seg001:106D                 mov     ax, 1
seg001:1070                 push    ax
seg001:1071                 mov     ax, 42h ; 'B'
seg001:1074                 push    ax
seg001:1075                 sub     ax, ax
seg001:1077                 push    ax
seg001:1078                 mov     ax, 140h
seg001:107B                 push    ax
seg001:107C                 mov     ax, 2E1Bh
seg001:107F                 push    ax
seg001:1080                 mov     ax, 240Ch
seg001:1083                 push    ax
seg001:1084                 push    cs
seg001:1085                 call    near ptr sub_7696
seg001:1088                 add     sp, 0Ch
seg001:108B                 push    cs
seg001:108C                 call    near ptr sub_4534
seg001:108F                 mov     byte_280CC, 1
seg001:1094                 sub     ax, ax
seg001:1096                 push    ax
seg001:1097                 push    ax
seg001:1098                 call    sub_C65B
seg001:109D                 add     sp, 4
seg001:10A0                 sub     ax, ax
seg001:10A2                 mov     [bp+var_A], ax
seg001:10A5                 push    ax
seg001:10A6                 mov     ax, 208Ah
seg001:10A9                 push    ax
seg001:10AA                 push    cs
seg001:10AB                 call    near ptr sub_37BC
seg001:10AE                 add     sp, 4
seg001:10B1                 mov     [bp+var_A], ax
seg001:10B4                 mov     ax, 0Bh
seg001:10B7                 push    ax
seg001:10B8                 mov     ax, 2
seg001:10BB                 push    ax
seg001:10BC                 call    sub_C674
seg001:10C1                 add     sp, 4
seg001:10C4                 sub     ax, ax
seg001:10C6                 push    ax
seg001:10C7                 mov     ax, 0Bh
seg001:10CA                 push    ax
seg001:10CB                 call    sub_C65B
seg001:10D0                 add     sp, 4
seg001:10D3                 mov     [bp+var_4], 0
seg001:10D8
seg001:10D8 loc_2E18:                               ; CODE XREF: sub_2C88+1AD␙j
seg001:10D8                 mov     bx, [bp+var_4]
seg001:10DB                 mov     al, [bx+0AEAh]
seg001:10DF                 mov     byte ptr [bp+var_C], al
seg001:10E2                 lea     ax, [bp+var_C]
seg001:10E5                 push    ax
seg001:10E6                 call    sub_C6AC
seg001:10EB                 add     sp, 2
seg001:10EE                 inc     [bp+var_4]
seg001:10F1                 cmp     [bp+var_4], 12h
seg001:10F5                 jl      short loc_2E18
seg001:10F7                 mov     ax, word_1FABA
seg001:10FA                 or      ax, word_1FABC
seg001:10FE                 jz      short loc_2E58
seg001:1100                 cmp     byte_1FBE8, 1
seg001:1105                 jnz     short loc_2E58
seg001:1107                 push    [bp+var_A]
seg001:110A                 mov     ax, 208Ah
seg001:110D                 push    ax
seg001:110E                 push    cs
seg001:110F                 call    near ptr sub_37BC
seg001:1112                 add     sp, 4
seg001:1115                 mov     [bp+var_A], ax
seg001:1118
seg001:1118 loc_2E58:                               ; CODE XREF: sub_2C88+1B6␘j
seg001:1118                                         ; sub_2C88+1BD␘j
seg001:1118                 mov     [bp+var_4], 0
seg001:111D                 jmp     loc_2F4E
seg001:1120 ; ---------------------------------------------------------------------------
seg001:1120
seg001:1120 loc_2E60:                               ; CODE XREF: sub_2C88+2E7␙j
seg001:1120                 mov     ax, 13h
seg001:1123                 push    ax
seg001:1124                 mov     ax, [bp+var_4]
seg001:1127                 add     ax, 5
seg001:112A
seg001:112A loc_2E6A:                               ; CODE XREF: sub_2C88+2F1␙j
seg001:112A                 push    ax
seg001:112B                 call    sub_C674
seg001:1130                 add     sp, 4
seg001:1133                 mov     ax, [bp+var_8]
seg001:1136                 or      ax, [bp+var_6]
seg001:1139                 jnz     short loc_2E7E
seg001:113B                 jmp     loc_2F4B
seg001:113E ; ---------------------------------------------------------------------------
seg001:113E
seg001:113E loc_2E7E:                               ; CODE XREF: sub_2C88+1F1␘j
seg001:113E                 push    [bp+var_6]
seg001:1141                 push    [bp+var_8]
seg001:1144                 push    cs
seg001:1145                 call    near ptr sub_300E
seg001:1148                 add     sp, 4
seg001:114B                 mov     ax, 0B50h
seg001:114E                 push    ax
seg001:114F                 mov     ax, 2171h
seg001:1152                 push    ax
seg001:1153                 mov     ax, 0ABAh
seg001:1156                 push    ax
seg001:1157                 mov     bx, [bp+var_4]
seg001:115A                 mov     al, [bx+1EC8h]
seg001:115E                 sub     ah, ah
seg001:1160                 push    ax
seg001:1161                 push    cs
seg001:1162                 call    near ptr sub_46FA
seg001:1165                 add     sp, 8
seg001:1168                 mov     [bp+var_2], ax
seg001:116B                 or      ax, ax
seg001:116D                 jz      short loc_2EB2
seg001:116F                 jmp     loc_2F4B
seg001:1172 ; ---------------------------------------------------------------------------
seg001:1172
seg001:1172 loc_2EB2:                               ; CODE XREF: sub_2C88+225␘j
seg001:1172                 mov     ax, 0F7Bh
seg001:1175                 push    ax
seg001:1176                 mov     ax, 0AC1h
seg001:1179                 push    ax
seg001:117A                 call    sub_195EA
seg001:117F                 add     sp, 4
seg001:1182                 mov     ax, 0F80h
seg001:1185                 push    ax
seg001:1186                 mov     ax, 0ABAh
seg001:1189                 push    ax
seg001:118A                 call    sub_1916A
seg001:118F                 add     sp, 4
seg001:1192                 mov     word_2D896, ax
seg001:1195                 or      ax, ax
seg001:1197                 jz      short loc_2EFD
seg001:1199                 push    ax
seg001:119A                 mov     ax, 13h
seg001:119D                 push    ax
seg001:119E                 mov     ax, 1
seg001:11A1                 push    ax
seg001:11A2                 mov     ax, 2171h
seg001:11A5                 push    ax
seg001:11A6                 call    sub_19196
seg001:11AB                 add     sp, 8
seg001:11AE                 mov     [bp+var_2], ax
seg001:11B1                 push    word_2D896
seg001:11B5                 call    sub_190A2
seg001:11BA                 add     sp, 2
seg001:11BD
seg001:11BD loc_2EFD:                               ; CODE XREF: sub_2C88+24F␘j
seg001:11BD                 cmp     [bp+var_4], 0
seg001:11C1                 jnz     short loc_2F0C
seg001:11C3                 sub     ax, ax
seg001:11C5                 push    ax
seg001:11C6                 mov     ax, 4
seg001:11C9                 jmp     short loc_2F15
seg001:11C9 ; ---------------------------------------------------------------------------
seg001:11CB                 align 2
seg001:11CC
seg001:11CC loc_2F0C:                               ; CODE XREF: sub_2C88+279␘j
seg001:11CC                 sub     ax, ax
seg001:11CE                 push    ax
seg001:11CF                 mov     ax, [bp+var_4]
seg001:11D2                 add     ax, 5
seg001:11D5
seg001:11D5 loc_2F15:                               ; CODE XREF: sub_2C88+281␘j
seg001:11D5                 push    ax
seg001:11D6                 call    sub_C674
seg001:11DB                 add     sp, 4
seg001:11DE                 sub     ax, ax
seg001:11E0                 push    ax
seg001:11E1                 mov     ax, 0Bh
seg001:11E4                 push    ax
seg001:11E5                 call    sub_C65B
seg001:11EA                 add     sp, 4
seg001:11ED                 mov     byte_21263, 80h ; 'Ç'
seg001:11F2                 sub     ax, ax
seg001:11F4                 mov     [bp+var_2], ax
seg001:11F7                 push    ax
seg001:11F8                 mov     ax, 2171h
seg001:11FB                 push    ax
seg001:11FC                 push    cs
seg001:11FD                 call    near ptr sub_3810
seg001:1200                 add     sp, 4
seg001:1203                 mov     [bp+var_2], ax
seg001:1206                 mov     byte_21263, 0
seg001:120B
seg001:120B loc_2F4B:                               ; CODE XREF: sub_2C88+1F3␘j
seg001:120B                                         ; sub_2C88+227␘j
seg001:120B                 inc     [bp+var_4]
seg001:120E
seg001:120E loc_2F4E:                               ; CODE XREF: sub_2C88+1D5␘j
seg001:120E                 cmp     [bp+var_4], 7
seg001:1212                 jge     short loc_2F7C
seg001:1214                 mov     bx, [bp+var_4]
seg001:1217                 shl     bx, 1
seg001:1219                 shl     bx, 1
seg001:121B                 mov     ax, [bx+1ECFh]
seg001:121F                 mov     dx, [bx+1ED1h]
seg001:1223                 mov     [bp+var_8], ax
seg001:1226                 mov     [bp+var_6], dx
seg001:1229                 cmp     [bp+var_4], 0
seg001:122D                 jz      short loc_2F72
seg001:122F                 jmp     loc_2E60
seg001:1232 ; ---------------------------------------------------------------------------
seg001:1232
seg001:1232 loc_2F72:                               ; CODE XREF: sub_2C88+2E5␘j
seg001:1232                 mov     ax, 13h
seg001:1235                 push    ax
seg001:1236                 mov     ax, 4
seg001:1239                 jmp     loc_2E6A
seg001:123C ; ---------------------------------------------------------------------------
seg001:123C
seg001:123C loc_2F7C:                               ; CODE XREF: sub_2C88+2CA␘j
seg001:123C                 mov     ax, 0B50h
seg001:123F                 push    ax
seg001:1240                 mov     ax, 2171h
seg001:1243                 push    ax
seg001:1244                 mov     ax, 0ABAh
seg001:1247                 push    ax
seg001:1248                 push    word_1FBDE
seg001:124C                 push    cs
seg001:124D                 call    near ptr sub_46FA
seg001:1250                 add     sp, 8
seg001:1253                 mov     [bp+var_2], ax
seg001:1256                 mov     ax, word_1FABA
seg001:1259                 or      ax, word_1FABC
seg001:125D                 jz      short loc_2FC5
seg001:125F                 cmp     byte_1FBE8, 1
seg001:1264                 jnz     short loc_2FC5
seg001:1266                 mov     ax, 17h
seg001:1269                 push    ax
seg001:126A                 mov     ax, 18h
seg001:126D                 push    ax
seg001:126E                 call    sub_C674
seg001:1273                 add     sp, 4
seg001:1276                 push    word_1FABC
seg001:127A                 push    word_1FABA
seg001:127E                 push    cs
seg001:127F                 call    near ptr sub_300E
seg001:1282                 add     sp, 4
seg001:1285
seg001:1285 loc_2FC5:                               ; CODE XREF: sub_2C88+315␘j
seg001:1285                                         ; sub_2C88+31C␘j
seg001:1285                 sub     ax, ax
seg001:1287                 mov     [bp+var_A], ax
seg001:128A                 push    ax
seg001:128B                 mov     ax, 1EEBh
seg001:128E                 push    ax
seg001:128F                 push    cs
seg001:1290                 call    near ptr sub_37BC
seg001:1293                 add     sp, 4
seg001:1296                 mov     [bp+var_A], ax
seg001:1299                 sub     ax, ax
seg001:129B                 mov     word_1FABC, ax
seg001:129E                 mov     word_1FABA, ax
seg001:12A1                 sub     al, al
seg001:12A3                 mov     byte_28147, al
seg001:12A6                 mov     byte_1F16C, al
seg001:12A9                 push    cs
seg001:12AA                 call    near ptr sub_391C
seg001:12AD                 mov     byte_280CC, 0
seg001:12B2                 cmp     byte_1F16C, 0
seg001:12B7                 jz      short loc_3000
seg001:12B9                 sub     ax, ax
seg001:12BB                 mov     sp, bp
seg001:12BD                 pop     bp
seg001:12BE                 retf
seg001:12BE ; ---------------------------------------------------------------------------
seg001:12BF                 align 2
seg001:12C0
seg001:12C0 loc_3000:                               ; CODE XREF: sub_2C88+36F␘j
seg001:12C0                 sub     ax, ax
seg001:12C2                 push    ax
seg001:12C3                 push    cs
seg001:12C4                 call    near ptr sub_38C8
seg001:12C7                 add     sp, 2
seg001:12CA                 mov     sp, bp
seg001:12CC                 pop     bp
seg001:12CD                 retf
seg001:12CD sub_2C88        endp
seg001:12CD
seg001:12CE
