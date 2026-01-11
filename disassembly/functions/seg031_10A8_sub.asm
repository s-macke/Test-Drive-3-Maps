seg031:10A8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:10A8
seg031:10A8 ; Attributes: bp-based frame
seg031:10A8
seg031:10A8 sub_19F08       proc far                ; CODE XREF: sub_194CE+24␘P
seg031:10A8
seg031:10A8 var_164         = word ptr -164h
seg031:10A8 var_162         = word ptr -162h
seg031:10A8 var_4           = word ptr -4
seg031:10A8 arg_0           = word ptr  6
seg031:10A8 arg_2           = word ptr  8
seg031:10A8 arg_4           = word ptr  0Ah
seg031:10A8
seg031:10A8                 push    bp
seg031:10A9                 mov     bp, sp
seg031:10AB                 mov     ax, 164h
seg031:10AE                 call    sub_1ADCC
seg031:10B3                 push    di
seg031:10B4                 push    si
seg031:10B5                 mov     si, [bp+arg_2]
seg031:10B8                 lea     ax, [bp+var_162]
seg031:10BC                 mov     word_2BD56, ax
seg031:10BF                 mov     ax, [bp+arg_4]
seg031:10C2                 mov     word_2BD46, ax
seg031:10C5                 mov     ax, [bp+arg_0]
seg031:10C8                 mov     word_2BD3A, ax
seg031:10CB                 mov     word_2BD50, 0
seg031:10D1                 mov     word_2BD4E, 0
seg031:10D7                 jmp     loc_1A1C1
seg031:10DA ; ---------------------------------------------------------------------------
seg031:10DA
seg031:10DA loc_19F3A:                              ; CODE XREF: sub_19F08+2BE␙j
seg031:10DA                 cmp     byte ptr [si], 25h ; '%'
seg031:10DD                 jz      short loc_19F42
seg031:10DF                 jmp     loc_1A1A4
seg031:10E2 ; ---------------------------------------------------------------------------
seg031:10E2
seg031:10E2 loc_19F42:                              ; CODE XREF: sub_19F08+35␘j
seg031:10E2                 mov     word_2BD52, 1
seg031:10E8                 sub     ax, ax
seg031:10EA                 mov     word_2BD42, ax
seg031:10ED                 mov     word_2BD3E, ax
seg031:10F0                 mov     word_2BD4C, ax
seg031:10F3                 mov     word_2BD40, ax
seg031:10F6                 mov     word_2BD4A, ax
seg031:10F9                 mov     word_2BD48, ax
seg031:10FC                 mov     word_2BD3C, ax
seg031:10FF                 mov     word_2BD38, ax
seg031:1102                 mov     word_2BD44, ax
seg031:1105                 mov     word_2BD5C, 20h ; ' '
seg031:110B                 cmp     byte ptr [si+1], 30h ; '0'
seg031:110F                 jnz     short loc_19FAD
seg031:1111                 inc     si
seg031:1112                 mov     word_2BD5C, 30h ; '0'
seg031:1118                 jmp     short loc_19FAD
seg031:111A ; ---------------------------------------------------------------------------
seg031:111A
seg031:111A loc_19F7A:                              ; CODE XREF: sub_19F08+9F␙j
seg031:111A                 cmp     byte ptr [si], 2Bh ; '+'
seg031:111D                 jnz     short loc_19F8C
seg031:111F                 inc     word_2BD42
seg031:1123                 mov     word_2BD48, 0
seg031:1129                 jmp     short loc_19FAD
seg031:1129 ; ---------------------------------------------------------------------------
seg031:112B                 align 2
seg031:112C
seg031:112C loc_19F8C:                              ; CODE XREF: sub_19F08+75␘j
seg031:112C                 cmp     byte ptr [si], 20h ; ' '
seg031:112F                 jnz     short loc_19F9E
seg031:1131                 cmp     word_2BD42, 0
seg031:1136                 jnz     short loc_19FAD
seg031:1138                 inc     word_2BD48
seg031:113C                 jmp     short loc_19FAD
seg031:113E ; ---------------------------------------------------------------------------
seg031:113E
seg031:113E loc_19F9E:                              ; CODE XREF: sub_19F08+87␘j
seg031:113E                 inc     word_2BD38
seg031:1142                 jmp     short loc_19FAD
seg031:1144 ; ---------------------------------------------------------------------------
seg031:1144
seg031:1144 loc_19FA4:                              ; CODE XREF: sub_19F08+B3␙j
seg031:1144                 cmp     byte ptr [si], 2Dh ; '-'
seg031:1147                 jnz     short loc_19F7A
seg031:1149                 inc     word_2BD44
seg031:114D
seg031:114D loc_19FAD:                              ; CODE XREF: sub_19F08+67␘j
seg031:114D                                         ; sub_19F08+70␘j ...
seg031:114D                 inc     si
seg031:114E                 mov     al, [si]
seg031:1150                 cbw
seg031:1151                 push    ax
seg031:1152                 push    cs
seg031:1153                 call    near ptr sub_1A7D0
seg031:1156                 add     sp, 2
seg031:1159                 or      ax, ax
seg031:115B                 jnz     short loc_19FA4
seg031:115D                 push    si
seg031:115E                 mov     ax, 0CC78h
seg031:1161                 push    ax
seg031:1162                 push    cs
seg031:1163                 call    near ptr sub_1A750
seg031:1166                 add     sp, 4
seg031:1169                 mov     si, ax
seg031:116B                 cmp     word_2BD58, 0
seg031:1170                 jge     short loc_19FDE
seg031:1172                 inc     word_2BD44
seg031:1176                 mov     ax, word_2BD58
seg031:1179                 neg     ax
seg031:117B                 mov     word_2BD58, ax
seg031:117E
seg031:117E loc_19FDE:                              ; CODE XREF: sub_19F08+C8␘j
seg031:117E                 cmp     byte ptr [si], 2Eh ; '.'
seg031:1181                 jnz     short loc_1A007
seg031:1183                 inc     word_2BD4A
seg031:1187                 inc     si
seg031:1188                 push    si
seg031:1189                 mov     ax, 0CC72h
seg031:118C                 push    ax
seg031:118D                 push    cs
seg031:118E                 call    near ptr sub_1A750
seg031:1191                 add     sp, 4
seg031:1194                 mov     si, ax
seg031:1196                 cmp     word_2BD52, 0
seg031:119B                 jge     short loc_1A007
seg031:119D                 mov     word_2BD52, 1
seg031:11A3                 dec     word_2BD4A
seg031:11A7
seg031:11A7 loc_1A007:                              ; CODE XREF: sub_19F08+D9␘j
seg031:11A7                                         ; sub_19F08+F3␘j
seg031:11A7                 mov     al, [si]
seg031:11A9                 cbw
seg031:11AA                 cmp     ax, 46h ; 'F'
seg031:11AD                 jz      short loc_1A042
seg031:11AF                 cmp     ax, 4Eh ; 'N'
seg031:11B2                 jz      short loc_1A04A
seg031:11B4                 cmp     ax, 68h ; 'h'
seg031:11B7                 jz      short loc_1A03A
seg031:11B9                 cmp     ax, 6Ch ; 'l'
seg031:11BC                 jnz     short loc_1A024
seg031:11BE                 mov     word_2BD40, 2
seg031:11C4
seg031:11C4 loc_1A024:                              ; CODE XREF: sub_19F08+114␘j
seg031:11C4                                         ; sub_19F08+138␙j ...
seg031:11C4                 cmp     word_2BD40, 0
seg031:11C9                 jnz     short loc_1A030
seg031:11CB                 cmp     byte ptr [si], 4Ch ; 'L'
seg031:11CE                 jnz     short loc_1A031
seg031:11D0
seg031:11D0 loc_1A030:                              ; CODE XREF: sub_19F08+121␘j
seg031:11D0                 inc     si
seg031:11D1
seg031:11D1 loc_1A031:                              ; CODE XREF: sub_19F08+126␘j
seg031:11D1                 cmp     byte ptr [si], 0
seg031:11D4                 jnz     short loc_1A052
seg031:11D6                 jmp     loc_1A1C9
seg031:11D6 ; ---------------------------------------------------------------------------
seg031:11D9                 align 2
seg031:11DA
seg031:11DA loc_1A03A:                              ; CODE XREF: sub_19F08+10F␘j
seg031:11DA                 mov     word_2BD40, 1
seg031:11E0                 jmp     short loc_1A024
seg031:11E2 ; ---------------------------------------------------------------------------
seg031:11E2
seg031:11E2 loc_1A042:                              ; CODE XREF: sub_19F08+105␘j
seg031:11E2                 mov     word_2BD40, 10h
seg031:11E8                 jmp     short loc_1A024
seg031:11EA ; ---------------------------------------------------------------------------
seg031:11EA
seg031:11EA loc_1A04A:                              ; CODE XREF: sub_19F08+10A␘j
seg031:11EA                 mov     word_2BD40, 8
seg031:11F0                 jmp     short loc_1A024
seg031:11F2 ; ---------------------------------------------------------------------------
seg031:11F2
seg031:11F2 loc_1A052:                              ; CODE XREF: sub_19F08+12C␘j
seg031:11F2                 mov     al, [si]
seg031:11F4                 cbw
seg031:11F5                 mov     [bp+var_164], ax
seg031:11F9                 cmp     ax, 45h ; 'E'
seg031:11FC                 jz      short loc_1A068
seg031:11FE                 cmp     ax, 47h ; 'G'
seg031:1201                 jz      short loc_1A068
seg031:1203                 cmp     ax, 58h ; 'X'
seg031:1206                 jnz     short loc_1A071
seg031:1208
seg031:1208 loc_1A068:                              ; CODE XREF: sub_19F08+154␘j
seg031:1208                                         ; sub_19F08+159␘j
seg031:1208                 inc     word_2BD3E
seg031:120C                 add     [bp+var_164], 20h ; ' '
seg031:1211
seg031:1211 loc_1A071:                              ; CODE XREF: sub_19F08+15E␘j
seg031:1211                 mov     ax, [bp+var_164]
seg031:1215                 sub     ax, 63h ; 'c'
seg031:1218                 cmp     ax, 15h
seg031:121B                 jbe     short loc_1A080
seg031:121D                 jmp     loc_1A19A
seg031:1220 ; ---------------------------------------------------------------------------
seg031:1220
seg031:1220 loc_1A080:                              ; CODE XREF: sub_19F08+173␘j
seg031:1220                 add     ax, ax
seg031:1222                 xchg    ax, bx
seg031:1223                 jmp     cs:off_1A1E0[bx]
seg031:1228
seg031:1228 loc_1A088:                              ; DATA XREF: sub_19F08+2EE␙o
seg031:1228                 mov     bx, word_2BD46
seg031:122C                 mov     bx, [bx]
seg031:122E                 mov     ax, word_2BD4E
seg031:1231                 mov     [bx], ax
seg031:1233
seg031:1233 loc_1A093:                              ; CODE XREF: sub_19F08+26C␙j
seg031:1233                 add     word_2BD46, 2
seg031:1238                 jmp     loc_1A20C
seg031:1238 ; ---------------------------------------------------------------------------
seg031:123B                 align 2
seg031:123C
seg031:123C loc_1A09C:                              ; CODE XREF: sub_19F08+17B␘j
seg031:123C                                         ; DATA XREF: sub_19F08+2FC␙o
seg031:123C                 inc     word_2BD4C
seg031:1240
seg031:1240 loc_1A0A0:                              ; CODE XREF: sub_19F08+17B␘j
seg031:1240                                         ; DATA XREF: sub_19F08+2DA␙o ...
seg031:1240                 mov     word_2BD38, 0
seg031:1246                 mov     ax, 0Ah
seg031:1249
seg031:1249 loc_1A0A9:                              ; CODE XREF: sub_19F08+1AF␙j
seg031:1249                                         ; sub_19F08+273␙j
seg031:1249                 push    ax
seg031:124A                 push    cs
seg031:124B                 call    near ptr sub_1A234
seg031:124E
seg031:124E loc_1A0AE:                              ; CODE XREF: sub_19F08+27D␙j
seg031:124E                                         ; sub_19F08+28E␙j
seg031:124E                 add     sp, 2
seg031:1251                 jmp     loc_1A20C
seg031:1254 ; ---------------------------------------------------------------------------
seg031:1254
seg031:1254 loc_1A0B4:                              ; CODE XREF: sub_19F08+17B␘j
seg031:1254                                         ; DATA XREF: sub_19F08+2F0␙o
seg031:1254                 mov     ax, 8
seg031:1257                 jmp     short loc_1A0A9
seg031:1257 ; ---------------------------------------------------------------------------
seg031:1259                 align 2
seg031:125A
seg031:125A loc_1A0BA:                              ; CODE XREF: sub_19F08+17B␘j
seg031:125A                                         ; DATA XREF: sub_19F08+2F2␙o
seg031:125A                 inc     word_2BD3C
seg031:125E                 inc     word_2BD3E
seg031:1262                 cmp     word_2BD4A, 0
seg031:1267                 jnz     short loc_1A0D2
seg031:1269                 mov     word_2BD54, 1
seg031:126F                 jmp     short loc_1A0D8
seg031:126F ; ---------------------------------------------------------------------------
seg031:1271                 align 2
seg031:1272
seg031:1272 loc_1A0D2:                              ; CODE XREF: sub_19F08+1BF␘j
seg031:1272                 mov     word_2BD54, 0
seg031:1278
seg031:1278 loc_1A0D8:                              ; CODE XREF: sub_19F08+1C7␘j
seg031:1278                 inc     word_2BD4A
seg031:127C                 mov     word_2BD52, 4
seg031:1282                 cmp     word_2BD40, 8
seg031:1287                 jnz     short loc_1A0EC
seg031:1289                 jmp     loc_1A178
seg031:128C ; ---------------------------------------------------------------------------
seg031:128C
seg031:128C loc_1A0EC:                              ; CODE XREF: sub_19F08+1DF␘j
seg031:128C                 sub     ax, ax
seg031:128E                 mov     word_2BD40, ax
seg031:1291                 mov     [bp+var_4], ax
seg031:1294                 cmp     word_2BD58, ax
seg031:1298                 jz      short loc_1A121
seg031:129A                 mov     ax, word_2BD58
seg031:129D                 mov     [bp+var_4], ax
seg031:12A0                 cmp     word_2BD44, 0
seg031:12A5                 jz      short loc_1A110
seg031:12A7                 mov     word_2BD58, 0
seg031:12AD                 jmp     short loc_1A121
seg031:12AD ; ---------------------------------------------------------------------------
seg031:12AF                 align 2
seg031:12B0
seg031:12B0 loc_1A110:                              ; CODE XREF: sub_19F08+1FD␘j
seg031:12B0                 sub     word_2BD58, 5
seg031:12B5                 mov     ax, word_2BD58
seg031:12B8                 or      ax, ax
seg031:12BA                 jge     short loc_1A11E
seg031:12BC                 sub     ax, ax
seg031:12BE
seg031:12BE loc_1A11E:                              ; CODE XREF: sub_19F08+212␘j
seg031:12BE                 mov     word_2BD58, ax
seg031:12C1
seg031:12C1 loc_1A121:                              ; CODE XREF: sub_19F08+1F0␘j
seg031:12C1                                         ; sub_19F08+205␘j
seg031:12C1                 add     word_2BD46, 2
seg031:12C6                 mov     ax, 10h
seg031:12C9                 push    ax
seg031:12CA                 push    cs
seg031:12CB                 call    near ptr sub_1A234
seg031:12CE                 add     sp, 2
seg031:12D1                 mov     ax, 3Ah ; ':'
seg031:12D4                 push    ax
seg031:12D5                 push    cs
seg031:12D6                 call    near ptr sub_1A518
seg031:12D9                 add     sp, 2
seg031:12DC                 cmp     [bp+var_4], 0
seg031:12E0                 jz      short loc_1A164
seg031:12E2                 cmp     word_2BD44, 0
seg031:12E7                 jz      short loc_1A15E
seg031:12E9                 mov     ax, [bp+var_4]
seg031:12EC                 sub     ax, 5
seg031:12EF                 mov     word_2BD58, ax
seg031:12F2                 or      ax, ax
seg031:12F4                 jge     short loc_1A158
seg031:12F6                 sub     ax, ax
seg031:12F8
seg031:12F8 loc_1A158:                              ; CODE XREF: sub_19F08+24C␘j
seg031:12F8                 mov     word_2BD58, ax
seg031:12FB                 jmp     short loc_1A164
seg031:12FB ; ---------------------------------------------------------------------------
seg031:12FD                 align 2
seg031:12FE
seg031:12FE loc_1A15E:                              ; CODE XREF: sub_19F08+23F␘j
seg031:12FE                 mov     word_2BD58, 0
seg031:1304
seg031:1304 loc_1A164:                              ; CODE XREF: sub_19F08+238␘j
seg031:1304                                         ; sub_19F08+253␘j
seg031:1304                 sub     word_2BD46, 4
seg031:1309                 mov     ax, 10h
seg031:130C                 push    ax
seg031:130D                 push    cs
seg031:130E                 call    near ptr sub_1A234
seg031:1311                 add     sp, 2
seg031:1314                 jmp     loc_1A093
seg031:1314 ; ---------------------------------------------------------------------------
seg031:1317                 align 2
seg031:1318
seg031:1318 loc_1A178:                              ; CODE XREF: sub_19F08+17B␘j
seg031:1318                                         ; sub_19F08+1E1␘j
seg031:1318                                         ; DATA XREF: ...
seg031:1318                 mov     ax, 10h
seg031:131B                 jmp     loc_1A0A9
seg031:131E ; ---------------------------------------------------------------------------
seg031:131E
seg031:131E loc_1A17E:                              ; CODE XREF: sub_19F08+17B␘j
seg031:131E                                         ; DATA XREF: sub_19F08+2F8␙o
seg031:131E                 sub     ax, ax
seg031:1320
seg031:1320 loc_1A180:                              ; CODE XREF: sub_19F08+283␙j
seg031:1320                 push    ax
seg031:1321                 push    cs
seg031:1322                 call    near ptr sub_1A36E
seg031:1325                 jmp     loc_1A0AE
seg031:1328 ; ---------------------------------------------------------------------------
seg031:1328
seg031:1328 loc_1A188:                              ; CODE XREF: sub_19F08+17B␘j
seg031:1328                                         ; DATA XREF: sub_19F08:off_1A1E0␙o
seg031:1328                 mov     ax, 1
seg031:132B                 jmp     short loc_1A180
seg031:132B ; ---------------------------------------------------------------------------
seg031:132D                 align 2
seg031:132E
seg031:132E loc_1A18E:                              ; CODE XREF: sub_19F08+17B␘j
seg031:132E                                         ; DATA XREF: sub_19F08+2DC␙o ...
seg031:132E                 push    [bp+var_164]
seg031:1332                 push    cs
seg031:1333                 call    near ptr sub_1A45A
seg031:1336                 jmp     loc_1A0AE
seg031:1336 ; ---------------------------------------------------------------------------
seg031:1339                 align 2
seg031:133A
seg031:133A loc_1A19A:                              ; CODE XREF: sub_19F08+175␘j
seg031:133A                                         ; sub_19F08+17B␘j
seg031:133A                                         ; DATA XREF: ...
seg031:133A                 cmp     word_2BD40, 0
seg031:133F                 jz      short loc_1A1A4
seg031:1341                 mov     ax, si
seg031:1343                 dec     si
seg031:1344
seg031:1344 loc_1A1A4:                              ; CODE XREF: sub_19F08+37␘j
seg031:1344                                         ; sub_19F08+297␘j
seg031:1344                 mov     di, si
seg031:1346
seg031:1346 loc_1A1A6:                              ; CODE XREF: sub_19F08+2A7␙j
seg031:1346                 inc     di
seg031:1347                 cmp     byte ptr [di], 0
seg031:134A                 jz      short loc_1A1B1
seg031:134C                 cmp     byte ptr [di], 25h ; '%'
seg031:134F                 jnz     short loc_1A1A6
seg031:1351
seg031:1351 loc_1A1B1:                              ; CODE XREF: sub_19F08+2A2␘j
seg031:1351                 mov     ax, di
seg031:1353                 sub     ax, si
seg031:1355                 push    ax
seg031:1356                 push    ds
seg031:1357                 push    si
seg031:1358                 push    cs
seg031:1359                 call    near ptr sub_1A5B8
seg031:135C                 add     sp, 6
seg031:135F                 mov     si, di
seg031:1361
seg031:1361 loc_1A1C1:                              ; CODE XREF: sub_19F08+2F␘j
seg031:1361                                         ; sub_19F08+31F␙j
seg031:1361                 cmp     byte ptr [si], 0
seg031:1364                 jz      short loc_1A1C9
seg031:1366                 jmp     loc_19F3A
seg031:1369 ; ---------------------------------------------------------------------------
seg031:1369
seg031:1369 loc_1A1C9:                              ; CODE XREF: sub_19F08+12E␘j
seg031:1369                                         ; sub_19F08+2BC␘j
seg031:1369                 cmp     word_2BD4E, 0
seg031:136E                 jnz     short loc_1A22A
seg031:1370                 mov     bx, word_2BD3A
seg031:1374                 test    byte ptr [bx+6], 20h
seg031:1378                 jz      short loc_1A22A
seg031:137A
seg031:137A loc_1A1DA:                              ; CODE XREF: sub_19F08+31A␙j
seg031:137A                 mov     ax, 0FFFFh
seg031:137D                 jmp     short loc_1A22D
seg031:137D ; ---------------------------------------------------------------------------
seg031:137F                 align 2
seg031:1380 off_1A1E0       dw offset loc_1A188     ; DATA XREF: sub_19F08+17B␘r
seg031:1382                 dw offset loc_1A0A0
seg031:1384                 dw offset loc_1A18E
seg031:1386                 dw offset loc_1A18E
seg031:1388                 dw offset loc_1A18E
seg031:138A                 dw offset loc_1A19A
seg031:138C                 dw offset loc_1A0A0
seg031:138E                 dw offset loc_1A19A
seg031:1390                 dw offset loc_1A19A
seg031:1392                 dw offset loc_1A19A
seg031:1394                 dw offset loc_1A19A
seg031:1396                 dw offset loc_1A088
seg031:1398                 dw offset loc_1A0B4
seg031:139A                 dw offset loc_1A0BA
seg031:139C                 dw offset loc_1A19A
seg031:139E                 dw offset loc_1A19A
seg031:13A0                 dw offset loc_1A17E
seg031:13A2                 dw offset loc_1A19A
seg031:13A4                 dw offset loc_1A09C
seg031:13A6                 dw offset loc_1A19A
seg031:13A8                 dw offset loc_1A19A
seg031:13AA                 dw offset loc_1A178
seg031:13AC ; ---------------------------------------------------------------------------
seg031:13AC
seg031:13AC loc_1A20C:                              ; CODE XREF: sub_19F08+190␘j
seg031:13AC                                         ; sub_19F08+1A9␘j
seg031:13AC                 cmp     word_2BD50, 0
seg031:13B1                 jz      short loc_1A226
seg031:13B3                 cmp     word_2BD4E, 0
seg031:13B8                 jnz     short loc_1A22A
seg031:13BA                 mov     bx, word_2BD3A
seg031:13BE                 test    byte ptr [bx+6], 20h
seg031:13C2                 jnz     short loc_1A1DA
seg031:13C4                 jmp     short loc_1A22A
seg031:13C6 ; ---------------------------------------------------------------------------
seg031:13C6
seg031:13C6 loc_1A226:                              ; CODE XREF: sub_19F08+309␘j
seg031:13C6                 inc     si
seg031:13C7                 jmp     short loc_1A1C1
seg031:13C7 ; ---------------------------------------------------------------------------
seg031:13C9                 align 2
seg031:13CA
seg031:13CA loc_1A22A:                              ; CODE XREF: sub_19F08+2C6␘j
seg031:13CA                                         ; sub_19F08+2D0␘j ...
seg031:13CA                 mov     ax, word_2BD4E
seg031:13CD
seg031:13CD loc_1A22D:                              ; CODE XREF: sub_19F08+2D5␘j
seg031:13CD                 pop     si
seg031:13CE                 pop     di
seg031:13CF                 mov     sp, bp
seg031:13D1                 pop     bp
seg031:13D2                 retf
seg031:13D2 sub_19F08       endp
seg031:13D2
seg031:13D2 ; ---------------------------------------------------------------------------
seg031:13D3                 align 2
seg031:13D4
