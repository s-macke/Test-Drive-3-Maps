seg004:1207 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:1207
seg004:1207
seg004:1207 sub_BAB7        proc far                ; CODE XREF: sub_7EFE+15␘P
seg004:1207                 mov     bx, 207h
seg004:120A                 mov     cx, 800h
seg004:120D                 sub     ax, ax
seg004:120F
seg004:120F loc_BABF:                               ; CODE XREF: sub_BAB7+E␙j
seg004:120F                 mov     cs:[bx], ax
seg004:1212                 add     bx, 2
seg004:1215                 loop    loc_BABF
seg004:1217                 retf
seg004:1217 sub_BAB7        endp
seg004:1217
seg004:1218 ; ---------------------------------------------------------------------------
seg004:1218
seg004:1218 loc_BAC8:                               ; CODE XREF: sub_153B8:loc_153F7␙P
seg004:1218                 push    bp
seg004:1219                 push    si
seg004:121A                 push    di
seg004:121B                 mov     dx, 0FFFh
seg004:121E                 mov     bp, 0FFFFh
seg004:1221                 mov     bx, word_207B4
seg004:1225                 mov     di, 207h
seg004:1228                 mov     al, byte_2849E
seg004:122B                 or      al, al
seg004:122D                 jnz     short loc_BB46
seg004:122F                 mov     cs:[bx+di], bp
seg004:1232                 add     bx, 2
seg004:1235                 and     bx, dx
seg004:1237                 mov     ax, word_28CDF
seg004:123A                 cmp     ax, bp
seg004:123C                 jnz     short loc_BAEF
seg004:123E                 dec     ax
seg004:123F
seg004:123F loc_BAEF:                               ; CODE XREF: seg004:123C␘j
seg004:123F                 mov     cs:[bx+di], ax
seg004:1242                 add     bx, 2
seg004:1245                 and     bx, dx
seg004:1247                 mov     ax, word_28F5F
seg004:124A                 cmp     ax, bp
seg004:124C                 jnz     short loc_BAFF
seg004:124E                 dec     ax
seg004:124F
seg004:124F loc_BAFF:                               ; CODE XREF: seg004:124C␘j
seg004:124F                 mov     cs:[bx+di], ax
seg004:1252                 add     bx, 2
seg004:1255                 and     bx, dx
seg004:1257                 mov     ax, word_291DF
seg004:125A                 cmp     ax, bp
seg004:125C                 jnz     short loc_BB0F
seg004:125E                 dec     ax
seg004:125F
seg004:125F loc_BB0F:                               ; CODE XREF: seg004:125C␘j
seg004:125F                 mov     cs:[bx+di], ax
seg004:1262                 add     bx, 2
seg004:1265                 and     bx, dx
seg004:1267                 mov     ax, word_2847D
seg004:126A                 cmp     ax, bp
seg004:126C                 jnz     short loc_BB1F
seg004:126E                 dec     ax
seg004:126F
seg004:126F loc_BB1F:                               ; CODE XREF: seg004:126C␘j
seg004:126F                 mov     cs:[bx+di], ax
seg004:1272                 add     bx, 2
seg004:1275                 and     bx, dx
seg004:1277                 mov     ax, word_2847B
seg004:127A                 cmp     ax, bp
seg004:127C                 jnz     short loc_BB2F
seg004:127E                 dec     ax
seg004:127F
seg004:127F loc_BB2F:                               ; CODE XREF: seg004:127C␘j
seg004:127F                 mov     cs:[bx+di], ax
seg004:1282                 add     bx, 2
seg004:1285                 and     bx, dx
seg004:1287                 call    sub_BDEC
seg004:128A                 mov     word_207B4, bx
seg004:128E                 mov     word_207B6, bx
seg004:1292
seg004:1292 loc_BB42:                               ; CODE XREF: seg004:12A0␙j
seg004:1292                 pop     di
seg004:1293                 pop     si
seg004:1294                 pop     bp
seg004:1295                 retf
seg004:1296 ; ---------------------------------------------------------------------------
seg004:1296
seg004:1296 loc_BB46:                               ; CODE XREF: seg004:122D␘j
seg004:1296                 mov     byte_2A6F1, 0
seg004:129B                 cmp     byte_2A6BE, 0
seg004:12A0                 jnz     short loc_BB42
seg004:12A2                 cmp     al, 2
seg004:12A4                 jb      short loc_BB79
seg004:12A6                 dec     byte_2849F
seg004:12AA                 jnz     short loc_BBAE
seg004:12AC                 cmp     byte_2A6BF, 0
seg004:12B1                 jnz     short loc_BB7C
seg004:12B3                 sub     ax, ax
seg004:12B5                 push    ax
seg004:12B6                 call    sub_E254
seg004:12BB                 add     sp, 2
seg004:12BE                 cmp     byte_2A6BF, 0
seg004:12C3                 jnz     short loc_BB7C
seg004:12C5                 pop     di
seg004:12C6                 pop     si
seg004:12C7                 pop     bp
seg004:12C8                 retf
seg004:12C9 ; ---------------------------------------------------------------------------
seg004:12C9
seg004:12C9 loc_BB79:                               ; CODE XREF: seg004:12A4␘j
seg004:12C9                 jmp     loc_BC17
seg004:12CC ; ---------------------------------------------------------------------------
seg004:12CC
seg004:12CC loc_BB7C:                               ; CODE XREF: seg004:12B1␘j
seg004:12CC                                         ; seg004:12C3␘j ...
seg004:12CC                 call    sub_7CC4
seg004:12D1                 mov     byte_2A6BF, 0
seg004:12D6                 mov     byte_2849E, 1
seg004:12DB                 mov     bx, word_207B6
seg004:12DF                 add     bx, 2
seg004:12E2                 and     bx, 0FFFh
seg004:12E6                 mov     word_207B4, bx
seg004:12EA                 sub     bx, bx
seg004:12EC                 mov     cx, 8
seg004:12EF
seg004:12EF loc_BB9F:                               ; CODE XREF: seg004:12F8␙j
seg004:12EF                 mov     word ptr [bx-6681h], 0
seg004:12F5                 add     bx, 2
seg004:12F8                 loop    loc_BB9F
seg004:12FA                 pop     di
seg004:12FB                 pop     si
seg004:12FC                 pop     bp
seg004:12FD                 retf
seg004:12FE ; ---------------------------------------------------------------------------
seg004:12FE
seg004:12FE loc_BBAE:                               ; CODE XREF: seg004:12AA␘j
seg004:12FE                 cmp     byte_2AD25, 1
seg004:1303                 jnz     short loc_BBC9
seg004:1305                 mov     ax, word_291DF
seg004:1308                 sub     ax, word_284AB
seg004:130C                 shl     ax, 1
seg004:130E                 shl     ax, 1
seg004:1310                 shl     ax, 1
seg004:1312                 mov     word_29825, ax
seg004:1315                 pop     di
seg004:1316                 pop     si
seg004:1317                 pop     bp
seg004:1318                 retf
seg004:1319 ; ---------------------------------------------------------------------------
seg004:1319
seg004:1319 loc_BBC9:                               ; CODE XREF: seg004:1303␘j
seg004:1319                 mov     bx, word_2AA95
seg004:131D                 mov     al, byte ptr word_20332+1
seg004:1320                 mov     ah, byte ptr word_20334
seg004:1324                 mov     dl, byte ptr word_20336+1
seg004:1328                 mov     dh, byte ptr word_20338
seg004:132C                 or      bx, bx
seg004:132E                 jz      short loc_BBF9
seg004:1330                 mov     cl, [bx-5C7Bh]
seg004:1334                 and     cl, 3Fh
seg004:1337                 cmp     cl, 12h
seg004:133A                 jb      short loc_BBF1
seg004:133C                 cmp     cl, 14h
seg004:133F                 jbe     short loc_BBF9
seg004:1341
seg004:1341 loc_BBF1:                               ; CODE XREF: seg004:133A␘j
seg004:1341                 add     [bx-5B3Bh], ax
seg004:1345                 add     [bx-59FBh], dx
seg004:1349
seg004:1349 loc_BBF9:                               ; CODE XREF: seg004:132E␘j
seg004:1349                                         ; seg004:133F␘j
seg004:1349                 neg     ax
seg004:134B                 add     ax, word_28CDF
seg004:134F                 mov     word_28CDF, ax
seg004:1352                 mov     word_295A5, ax
seg004:1355                 neg     dx
seg004:1357                 add     dx, word_28F5F
seg004:135B                 mov     word_28F5F, dx
seg004:135F                 mov     word_296E5, dx
seg004:1363                 pop     di
seg004:1364                 pop     si
seg004:1365                 pop     bp
seg004:1366                 retf
seg004:1367 ; ---------------------------------------------------------------------------
seg004:1367
seg004:1367 loc_BC17:                               ; CODE XREF: seg004:loc_BB79␘j
seg004:1367                 cmp     byte_207B8, 0
seg004:136C                 call    sub_BD61
seg004:136F                 cmp     bx, word_207B6
seg004:1373                 jnz     short loc_BC90
seg004:1375                 cmp     byte_2A777, 0
seg004:137A                 jnz     short loc_BC69
seg004:137C                 cmp     byte_2A6BF, 0
seg004:1381                 jnz     short loc_BC66
seg004:1383                 mov     byte_28147, 0
seg004:1388                 sub     dx, dx
seg004:138A                 call    sub_E2F7
seg004:138F                 mov     ax, 2Bh ; '+'
seg004:1392                 push    ax
seg004:1393                 call    sub_1688
seg004:1393 ; ---------------------------------------------------------------------------
seg004:1398                 db 83h
seg004:1399                 db 0C4h
seg004:139A ; ---------------------------------------------------------------------------
seg004:139A                 add     al, [bx+si-20C2h]
seg004:139E                 mov     ch, 0
seg004:13A0                 jnz     short loc_BC66
seg004:13A2                 mov     byte_2849E, 0
seg004:13A7                 mov     byte_28477, 0
seg004:13AC                 mov     word_1F16A, 2
seg004:13B2                 pop     di
seg004:13B3                 pop     si
seg004:13B4                 pop     bp
seg004:13B5                 retf
seg004:13B6 ; ---------------------------------------------------------------------------
seg004:13B6
seg004:13B6 loc_BC66:                               ; CODE XREF: seg004:1381␘j
seg004:13B6                                         ; seg004:13A0␘j
seg004:13B6                 jmp     loc_BB7C
seg004:13B9 ; ---------------------------------------------------------------------------
seg004:13B9
seg004:13B9 loc_BC69:                               ; CODE XREF: seg004:137A␘j
seg004:13B9                 mov     byte_2849E, 2
seg004:13BE                 mov     byte_2849F, 14h
seg004:13C3                 cmp     byte_2AD25, 1
seg004:13C8                 jnz     short loc_BC94
seg004:13CA                 mov     ax, word_291DF
seg004:13CD                 sub     ax, 10h
seg004:13D0                 mov     word_291DF, ax
seg004:13D3                 sub     ax, word_284AB
seg004:13D7                 shl     ax, 1
seg004:13D9                 shl     ax, 1
seg004:13DB                 shl     ax, 1
seg004:13DD                 mov     word_29825, ax
seg004:13E0
seg004:13E0 loc_BC90:                               ; CODE XREF: seg004:1373␘j
seg004:13E0                 pop     di
seg004:13E1                 pop     si
seg004:13E2                 pop     bp
seg004:13E3                 retf
seg004:13E4 ; ---------------------------------------------------------------------------
seg004:13E4
seg004:13E4 loc_BC94:                               ; CODE XREF: seg004:13C8␘j
seg004:13E4                 mov     word_28A5F, 10Bh
seg004:13EA                 mov     ax, word_28CDF
seg004:13ED                 mov     dx, word_28F5F
seg004:13F1                 mov     cx, word_291DF
seg004:13F5                 sub     cx, 10h
seg004:13F8                 mov     word_291DF, cx
seg004:13FC                 add     cx, 0Ch
seg004:13FF                 mov     bx, 2
seg004:1402                 call    sub_BD08
seg004:1405                 mov     bx, word_1F1B2
seg004:1409                 shr     bx, 1
seg004:140B                 and     bx, 7Fh
seg004:140E                 sub     bx, 40h ; '@'
seg004:1411                 add     ax, bx
seg004:1413                 mov     bx, word_1F1B2+1
seg004:1417                 and     bx, 7Fh
seg004:141A                 sub     bx, 40h ; '@'
seg004:141D                 add     dx, bx
seg004:141F                 mov     bx, 8
seg004:1422                 call    sub_BD08
seg004:1425                 mov     bx, word_2AA95
seg004:1429                 or      bx, bx
seg004:142B                 jz      short loc_BD04
seg004:142D                 mov     cx, [bx-5B3Bh]
seg004:1431                 mov     word_28CED, cx
seg004:1435                 mov     cx, [bx-59FBh]
seg004:1439                 mov     word_28F6D, cx
seg004:143D                 mov     cx, [bx-58BBh]
seg004:1441                 shr     cx, 1
seg004:1443                 shr     cx, 1
seg004:1445                 shr     cx, 1
seg004:1447                 add     cx, 1Ch
seg004:144A                 mov     word_291ED, cx
seg004:144E                 mov     word_28A6D, 10Bh
seg004:1454
seg004:1454 loc_BD04:                               ; CODE XREF: seg004:142B␘j
seg004:1454                 pop     di
seg004:1455                 pop     si
seg004:1456                 pop     bp
seg004:1457                 retf
seg004:1458
