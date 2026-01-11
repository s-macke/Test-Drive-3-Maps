seg000:10D4 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:10D4
seg000:10D4 ; Attributes: bp-based frame
seg000:10D4
seg000:10D4 sub_10D4        proc far                ; CODE XREF: sub_0+69␘p
seg000:10D4
seg000:10D4 var_2           = word ptr -2
seg000:10D4
seg000:10D4                 push    bp
seg000:10D5                 mov     bp, sp
seg000:10D7                 sub     sp, 2
seg000:10DA                 mov     ax, 57B0h
seg000:10DD                 push    ax
seg000:10DE                 call    sub_19525
seg000:10E3                 add     sp, 2
seg000:10E6                 mov     word_2D8A8, ax
seg000:10E9                 mov     word_2D8AA, dx
seg000:10ED                 or      dx, ax
seg000:10EF                 jnz     short loc_10FC
seg000:10F1                 mov     ax, 1
seg000:10F4                 push    ax
seg000:10F5                 push    cs
seg000:10F6                 call    near ptr sub_84C
seg000:10F9                 add     sp, 2
seg000:10FC
seg000:10FC loc_10FC:                               ; CODE XREF: sub_10D4+1B␘j
seg000:10FC                 mov     ax, word_2D8A8
seg000:10FF                 mov     dx, word_2D8AA
seg000:1103                 add     ax, 3E80h
seg000:1106                 mov     word_2C1A8, ax
seg000:1109                 mov     word_2C1AA, dx
seg000:110D                 add     ax, 0C80h
seg000:1110                 mov     word_2BF7E, ax
seg000:1113                 mov     word_2BF80, dx
seg000:1117                 add     ax, 0C80h
seg000:111A                 mov     word_2D8A0, ax
seg000:111D                 mov     word_2D8A2, dx
seg000:1121                 mov     ax, 0D010h
seg000:1124                 push    ax
seg000:1125                 call    sub_19525
seg000:112A                 add     sp, 2
seg000:112D                 mov     word_2D82C, ax
seg000:1130                 mov     word_2D82E, dx
seg000:1134                 or      dx, ax
seg000:1136                 jnz     short loc_1143
seg000:1138                 mov     ax, 1
seg000:113B                 push    ax
seg000:113C                 push    cs
seg000:113D                 call    near ptr sub_84C
seg000:1140                 add     sp, 2
seg000:1143
seg000:1143 loc_1143:                               ; CODE XREF: sub_10D4+62␘j
seg000:1143                 mov     ax, 0F7E4h
seg000:1146                 push    ax
seg000:1147                 call    sub_19525
seg000:114C                 add     sp, 2
seg000:114F                 mov     word_2DAD0, ax
seg000:1152                 mov     word_2DAD2, dx
seg000:1156                 or      dx, ax
seg000:1158                 jnz     short loc_1165
seg000:115A                 mov     ax, 1
seg000:115D                 push    ax
seg000:115E                 push    cs
seg000:115F                 call    near ptr sub_84C
seg000:1162                 add     sp, 2
seg000:1165
seg000:1165 loc_1165:                               ; CODE XREF: sub_10D4+84␘j
seg000:1165                 mov     ax, 0FDE8h
seg000:1168                 push    ax
seg000:1169                 call    sub_19525
seg000:116E                 add     sp, 2
seg000:1171                 mov     word_2DA60, ax
seg000:1174                 mov     word_2DA62, dx
seg000:1178                 or      dx, ax
seg000:117A                 jnz     short loc_1187
seg000:117C                 mov     ax, 1
seg000:117F                 push    ax
seg000:1180                 push    cs
seg000:1181                 call    near ptr sub_84C
seg000:1184                 add     sp, 2
seg000:1187
seg000:1187 loc_1187:                               ; CODE XREF: sub_10D4+A6␘j
seg000:1187                 mov     ax, word_2DA60
seg000:118A                 mov     dx, word_2DA62
seg000:118E                 mov     word_2DAC8, ax
seg000:1191                 mov     word_2DACA, dx
seg000:1195                 add     ax, 3520h
seg000:1198                 mov     word_2DAD4, ax
seg000:119B                 mov     word_2DAD6, dx
seg000:119F                 add     ax, 3458h
seg000:11A2                 mov     word_2DADA, ax
seg000:11A5                 mov     word_2DADC, dx
seg000:11A9                 add     ax, 3264h
seg000:11AC                 mov     word_2DAE0, ax
seg000:11AF                 mov     word_2DAE2, dx
seg000:11B3                 add     ax, 1770h
seg000:11B6                 mov     word_2DB54, ax
seg000:11B9                 mov     word_2DB56, dx
seg000:11BD                 add     ax, 1518h
seg000:11C0                 mov     word_2DB5C, ax
seg000:11C3                 mov     word_2DB5E, dx
seg000:11C7                 add     ax, 2710h
seg000:11CA                 mov     word_2DD60, ax
seg000:11CD                 mov     word_2DD62, dx
seg000:11D1                 mov     ax, 7810h
seg000:11D4                 push    ax
seg000:11D5                 call    sub_19525
seg000:11DA                 add     sp, 2
seg000:11DD                 mov     word_2BF4C, ax
seg000:11E0                 mov     word_2BF4E, dx
seg000:11E4                 or      dx, ax
seg000:11E6                 jnz     short loc_11F3
seg000:11E8                 mov     ax, 1
seg000:11EB                 push    ax
seg000:11EC                 push    cs
seg000:11ED                 call    near ptr sub_84C
seg000:11F0                 add     sp, 2
seg000:11F3
seg000:11F3 loc_11F3:                               ; CODE XREF: sub_10D4+112␘j
seg000:11F3                 mov     ax, 7DF0h
seg000:11F6                 push    ax
seg000:11F7                 call    sub_19525
seg000:11FC                 add     sp, 2
seg000:11FF                 mov     word_2D83C, ax
seg000:1202                 mov     word_2D83E, dx
seg000:1206                 or      dx, ax
seg000:1208                 jnz     short loc_1215
seg000:120A                 mov     ax, 1
seg000:120D                 push    ax
seg000:120E                 push    cs
seg000:120F                 call    near ptr sub_84C
seg000:1212                 add     sp, 2
seg000:1215
seg000:1215 loc_1215:                               ; CODE XREF: sub_10D4+134␘j
seg000:1215                 mov     ax, 1E6Eh
seg000:1218                 push    ax
seg000:1219                 call    sub_19525
seg000:121E                 add     sp, 2
seg000:1221                 mov     word_2C18E, ax
seg000:1224                 mov     word_2C190, dx
seg000:1228                 or      dx, ax
seg000:122A                 jnz     short loc_1237
seg000:122C                 mov     ax, 1
seg000:122F                 push    ax
seg000:1230                 push    cs
seg000:1231                 call    near ptr sub_84C
seg000:1234                 add     sp, 2
seg000:1237
seg000:1237 loc_1237:                               ; CODE XREF: sub_10D4+156␘j
seg000:1237                 cmp     word_2D628, 13h
seg000:123C                 jnz     short loc_1246
seg000:123E                 mov     [bp+var_2], 12D4h
seg000:1243                 jmp     short loc_124B
seg000:1243 ; ---------------------------------------------------------------------------
seg000:1245                 align 2
seg000:1246
seg000:1246 loc_1246:                               ; CODE XREF: sub_10D4+168␘j
seg000:1246                 mov     [bp+var_2], 0F46h
seg000:124B
seg000:124B loc_124B:                               ; CODE XREF: sub_10D4+16F␘j
seg000:124B                 push    [bp+var_2]
seg000:124E                 call    sub_19525
seg000:1253                 add     sp, 2
seg000:1256                 mov     word_2D840, ax
seg000:1259                 mov     word_2D842, dx
seg000:125D                 or      dx, ax
seg000:125F                 jnz     short loc_126C
seg000:1261                 mov     ax, 1
seg000:1264                 push    ax
seg000:1265                 push    cs
seg000:1266                 call    near ptr sub_84C
seg000:1269                 add     sp, 2
seg000:126C
seg000:126C loc_126C:                               ; CODE XREF: sub_10D4+18B␘j
seg000:126C                 cmp     word_2D628, 13h
seg000:1271                 jnz     short loc_127A
seg000:1273                 mov     [bp+var_2], 1D06h
seg000:1278                 jmp     short loc_127F
seg000:127A ; ---------------------------------------------------------------------------
seg000:127A
seg000:127A loc_127A:                               ; CODE XREF: sub_10D4+19D␘j
seg000:127A                 mov     [bp+var_2], 1374h
seg000:127F
seg000:127F loc_127F:                               ; CODE XREF: sub_10D4+1A4␘j
seg000:127F                 push    [bp+var_2]
seg000:1282                 call    sub_19525
seg000:1287                 add     sp, 2
seg000:128A                 mov     word_2D84A, ax
seg000:128D                 mov     word_2D84C, dx
seg000:1291                 or      dx, ax
seg000:1293                 jnz     short loc_12A0
seg000:1295                 mov     ax, 1
seg000:1298                 push    ax
seg000:1299                 push    cs
seg000:129A                 call    near ptr sub_84C
seg000:129D                 add     sp, 2
seg000:12A0
seg000:12A0 loc_12A0:                               ; CODE XREF: sub_10D4+1BF␘j
seg000:12A0                 mov     ax, 0E2Eh
seg000:12A3                 push    ax
seg000:12A4                 call    sub_19525
seg000:12A9                 add     sp, 2
seg000:12AC                 mov     word_2DA6A, ax
seg000:12AF                 mov     word_2DA6C, dx
seg000:12B3                 or      dx, ax
seg000:12B5                 jnz     short loc_12C2
seg000:12B7                 mov     ax, 1
seg000:12BA                 push    ax
seg000:12BB                 push    cs
seg000:12BC                 call    near ptr sub_84C
seg000:12BF                 add     sp, 2
seg000:12C2
seg000:12C2 loc_12C2:                               ; CODE XREF: sub_10D4+1E1␘j
seg000:12C2                 mov     ax, 8E8h
seg000:12C5                 push    ax
seg000:12C6                 call    sub_19525
seg000:12CB                 add     sp, 2
seg000:12CE                 mov     word_2C194, ax
seg000:12D1                 mov     word_2C196, dx
seg000:12D5                 or      dx, ax
seg000:12D7                 jnz     short loc_12E4
seg000:12D9                 mov     ax, 1
seg000:12DC                 push    ax
seg000:12DD                 push    cs
seg000:12DE                 call    near ptr sub_84C
seg000:12E1                 add     sp, 2
seg000:12E4
seg000:12E4 loc_12E4:                               ; CODE XREF: sub_10D4+203␘j
seg000:12E4                 mov     ax, 37Ah
seg000:12E7                 push    ax
seg000:12E8                 call    sub_19525
seg000:12ED                 add     sp, 2
seg000:12F0                 mov     word_2C188, ax
seg000:12F3                 mov     word_2C18A, dx
seg000:12F7                 or      dx, ax
seg000:12F9                 jnz     short loc_1306
seg000:12FB                 mov     ax, 1
seg000:12FE                 push    ax
seg000:12FF                 push    cs
seg000:1300                 call    near ptr sub_84C
seg000:1303                 add     sp, 2
seg000:1306
seg000:1306 loc_1306:                               ; CODE XREF: sub_10D4+225␘j
seg000:1306                 mov     ax, 113h
seg000:1309                 push    ax
seg000:130A                 call    sub_19525
seg000:130F                 add     sp, 2
seg000:1312                 mov     word_2D8AC, ax
seg000:1315                 mov     word_2D8AE, dx
seg000:1319                 or      dx, ax
seg000:131B                 jnz     short loc_1328
seg000:131D                 mov     ax, 1
seg000:1320                 push    ax
seg000:1321                 push    cs
seg000:1322                 call    near ptr sub_84C
seg000:1325                 add     sp, 2
seg000:1328
seg000:1328 loc_1328:                               ; CODE XREF: sub_10D4+247␘j
seg000:1328                 call    sub_A8B7
seg000:132D                 mov     [bp+var_2], ax
seg000:1330                 or      ax, ax
seg000:1332                 jnz     short loc_133F
seg000:1334                 mov     ax, 1
seg000:1337                 push    ax
seg000:1338                 push    cs
seg000:1339                 call    near ptr sub_84C
seg000:133C                 add     sp, 2
seg000:133F
seg000:133F loc_133F:                               ; CODE XREF: sub_10D4+25E␘j
seg000:133F                 mov     sp, bp
seg000:1341                 pop     bp
seg000:1342                 retf
seg000:1342 sub_10D4        endp
seg000:1342
seg000:1342 ; ---------------------------------------------------------------------------
seg000:1343                 align 2
seg000:1344
