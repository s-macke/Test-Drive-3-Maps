seg002:1138 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:1138
seg002:1138 ; Attributes: bp-based frame
seg002:1138
seg002:1138 sub_8808        proc far                ; CODE XREF: sub_877A+F␘p
seg002:1138                                         ; sub_877A+2F␘p
seg002:1138
seg002:1138 var_6           = word ptr -6
seg002:1138 var_4           = word ptr -4
seg002:1138 var_2           = word ptr -2
seg002:1138
seg002:1138                 push    bp
seg002:1139                 mov     bp, sp
seg002:113B                 sub     sp, 6
seg002:113E                 push    si
seg002:113F                 cmp     byte_2BF42, 0
seg002:1144                 jnz     short loc_8842
seg002:1146                 mov     ax, 1
seg002:1149                 push    ax
seg002:114A                 sub     ax, ax
seg002:114C                 push    ax
seg002:114D                 mov     ax, 97h ; 'ù'
seg002:1150                 push    ax
seg002:1151                 mov     ax, 0D0h ; '-'
seg002:1154                 push    ax
seg002:1155                 mov     ax, 0ABh ; '½'
seg002:1158                 push    ax
seg002:1159                 mov     ax, 7Ch ; '|'
seg002:115C                 push    ax
seg002:115D                 mov     ax, 12Fh
seg002:1160                 push    ax
seg002:1161                 mov     ax, 0F8h ; '°'
seg002:1164                 push    ax
seg002:1165                 call    far ptr sub_17BE5
seg002:116A                 add     sp, 10h
seg002:116D                 mov     byte_2BF42, 1
seg002:1172
seg002:1172 loc_8842:                               ; CODE XREF: sub_8808+C␘j
seg002:1172                 mov     ax, 1
seg002:1175                 push    ax
seg002:1176                 push    ax
seg002:1177                 mov     ax, 0C7h ; '¦'
seg002:117A                 push    ax
seg002:117B                 mov     ax, 0D0h ; '-'
seg002:117E                 push    ax
seg002:117F                 mov     ax, 97h ; 'ù'
seg002:1182                 push    ax
seg002:1183                 mov     ax, 68h ; 'h'
seg002:1186                 push    ax
seg002:1187                 mov     ax, 13Fh
seg002:118A                 push    ax
seg002:118B                 mov     ax, 108h
seg002:118E                 push    ax
seg002:118F                 call    far ptr sub_17BE5
seg002:1194                 add     sp, 10h
seg002:1197                 mov     ax, 1
seg002:119A                 mov     word_1F17A, ax
seg002:119D                 push    ax
seg002:119E                 call    far ptr sub_16BB0
seg002:11A3                 add     sp, 2
seg002:11A6                 mov     al, byte_2C184
seg002:11A9                 sub     ah, ah
seg002:11AB                 mov     si, ax
seg002:11AD                 shl     si, 1
seg002:11AF                 mov     al, [si-1883h]
seg002:11B3                 add     ax, 0D0h ; '-'
seg002:11B6                 mov     [bp+var_4], ax
seg002:11B9                 mov     al, [si-1882h]
seg002:11BD                 sub     ah, ah
seg002:11BF                 add     ax, 0AFh ; '»'
seg002:11C2                 mov     [bp+var_6], ax
seg002:11C5                 push    ax
seg002:11C6                 push    [bp+var_4]
seg002:11C9                 call    sub_16A1A
seg002:11CE                 add     sp, 4
seg002:11D1                 cmp     word_2D628, 13h
seg002:11D6                 jnz     short loc_88B0
seg002:11D8                 mov     [bp+var_2], 80h ; 'Ç'
seg002:11DD                 jmp     short loc_88B5
seg002:11DD ; ---------------------------------------------------------------------------
seg002:11DF                 align 2
seg002:11E0
seg002:11E0 loc_88B0:                               ; CODE XREF: sub_8808+9E␘j
seg002:11E0                 mov     [bp+var_2], 0
seg002:11E5
seg002:11E5 loc_88B5:                               ; CODE XREF: sub_8808+A5␘j
seg002:11E5                 mov     ax, [bp+var_2]
seg002:11E8                 add     ax, 0Fh
seg002:11EB                 push    ax
seg002:11EC                 call    far ptr sub_16A93
seg002:11F1                 add     sp, 2
seg002:11F4                 mov     ax, 18h
seg002:11F7                 push    ax
seg002:11F8                 mov     ax, 4
seg002:11FB                 push    ax
seg002:11FC                 mov     ax, 0E2A0h
seg002:11FF                 push    ax
seg002:1200                 call    far ptr sub_1805D
seg002:1205                 add     sp, 6
seg002:1208                 mov     ax, [bp+var_2]
seg002:120B                 add     ax, 7
seg002:120E                 push    ax
seg002:120F                 call    far ptr sub_16A93
seg002:1214                 add     sp, 2
seg002:1217                 mov     ax, 18h
seg002:121A                 push    ax
seg002:121B                 mov     ax, 4
seg002:121E                 push    ax
seg002:121F                 mov     ax, 0E300h
seg002:1222                 push    ax
seg002:1223                 call    far ptr sub_1805D
seg002:1228                 add     sp, 6
seg002:122B                 mov     ax, [bp+var_2]
seg002:122E                 add     ax, 8
seg002:1231                 push    ax
seg002:1232                 call    far ptr sub_16A93
seg002:1237                 add     sp, 2
seg002:123A                 mov     ax, 18h
seg002:123D                 push    ax
seg002:123E                 mov     ax, 4
seg002:1241                 push    ax
seg002:1242                 mov     ax, 0E360h
seg002:1245                 push    ax
seg002:1246                 call    far ptr sub_1805D
seg002:124B                 add     sp, 6
seg002:124E                 push    [bp+var_2]
seg002:1251                 call    far ptr sub_16A93
seg002:1256                 add     sp, 2
seg002:1259                 mov     ax, 18h
seg002:125C                 push    ax
seg002:125D                 mov     ax, 4
seg002:1260                 push    ax
seg002:1261                 mov     ax, 0E3C0h
seg002:1264                 push    ax
seg002:1265                 call    far ptr sub_1805D
seg002:126A                 add     sp, 6
seg002:126D                 mov     ax, [bp+var_2]
seg002:1270                 add     ax, 0Ch
seg002:1273                 push    ax
seg002:1274                 call    far ptr sub_16A93
seg002:1279                 add     sp, 2
seg002:127C                 mov     ax, 18h
seg002:127F                 push    ax
seg002:1280                 mov     ax, 4
seg002:1283                 push    ax
seg002:1284                 mov     ax, 0E420h
seg002:1287                 push    ax
seg002:1288                 call    far ptr sub_1805D
seg002:128D                 add     sp, 6
seg002:1290                 mov     ax, [bp+var_2]
seg002:1293                 add     ax, 4
seg002:1296                 push    ax
seg002:1297                 call    far ptr sub_16A93
seg002:129C                 add     sp, 2
seg002:129F                 mov     ax, 18h
seg002:12A2                 push    ax
seg002:12A3                 mov     ax, 4
seg002:12A6                 push    ax
seg002:12A7                 mov     ax, 0E480h
seg002:12AA                 push    ax
seg002:12AB                 call    far ptr sub_1805D
seg002:12B0                 add     sp, 6
seg002:12B3                 sub     ax, ax
seg002:12B5                 mov     word_1F17A, ax
seg002:12B8                 push    ax
seg002:12B9                 call    far ptr sub_16BB0
seg002:12BE                 add     sp, 2
seg002:12C1                 sub     ax, ax
seg002:12C3                 push    ax
seg002:12C4                 mov     ax, 1
seg002:12C7                 push    ax
seg002:12C8                 mov     ax, 0ABh ; '½'
seg002:12CB                 push    ax
seg002:12CC                 mov     ax, 0F8h ; '°'
seg002:12CF                 push    ax
seg002:12D0                 mov     ax, 0C7h ; '¦'
seg002:12D3                 push    ax
seg002:12D4                 mov     ax, 98h ; 'ÿ'
seg002:12D7                 push    ax
seg002:12D8                 mov     ax, 107h
seg002:12DB                 push    ax
seg002:12DC                 mov     ax, 0D0h ; '-'
seg002:12DF                 push    ax
seg002:12E0                 call    far ptr sub_17BE5
seg002:12E5                 add     sp, 10h
seg002:12E8                 mov     byte_2D8A6, 1
seg002:12ED                 pop     si
seg002:12EE                 mov     sp, bp
seg002:12F0                 pop     bp
seg002:12F1                 retf
seg002:12F1 sub_8808        endp
seg002:12F1
seg002:12F2
