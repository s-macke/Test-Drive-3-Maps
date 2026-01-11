seg002:12F2 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:12F2
seg002:12F2 ; Attributes: bp-based frame
seg002:12F2
seg002:12F2 sub_89C2        proc far                ; CODE XREF: sub_76D6+4C␘p
seg002:12F2                                         ; sub_7ADE+A7␘p
seg002:12F2
seg002:12F2 var_6           = word ptr -6
seg002:12F2 var_4           = word ptr -4
seg002:12F2 var_2           = word ptr -2
seg002:12F2
seg002:12F2                 push    bp
seg002:12F3                 mov     bp, sp
seg002:12F5                 sub     sp, 6
seg002:12F8                 mov     [bp+var_6], 0
seg002:12FD                 cmp     byte_2D62A, 10h
seg002:1302                 jnb     short loc_89DC
seg002:1304                 mov     byte_2DADE, 0
seg002:1309                 jmp     short loc_89E1
seg002:1309 ; ---------------------------------------------------------------------------
seg002:130B                 align 2
seg002:130C
seg002:130C loc_89DC:                               ; CODE XREF: sub_89C2+10␘j
seg002:130C                 mov     byte_2DADE, 1
seg002:1311
seg002:1311 loc_89E1:                               ; CODE XREF: sub_89C2+17␘j
seg002:1311                 cmp     byte_2D62A, 30h ; '0'
seg002:1316                 jbe     short loc_89ED
seg002:1318                 mov     byte_2DADE, 2
seg002:131D
seg002:131D loc_89ED:                               ; CODE XREF: sub_89C2+24␘j
seg002:131D                 mov     al, byte_2D852
seg002:1320                 cmp     byte_2DADE, al
seg002:1324                 jz      short loc_8A43
seg002:1326                 mov     al, byte_2DADE
seg002:1329                 sub     ah, ah
seg002:132B                 or      ax, ax
seg002:132D                 jz      short loc_8A12
seg002:132F                 cmp     ax, 1
seg002:1332                 jz      short loc_8A09
seg002:1334                 cmp     ax, 2
seg002:1337                 jz      short loc_8A22
seg002:1339
seg002:1339 loc_8A09:                               ; CODE XREF: sub_89C2+40␘j
seg002:1339                 mov     ax, 20h ; ' '
seg002:133C                 push    ax
seg002:133D                 mov     ax, 60h ; '`'
seg002:1340                 jmp     short loc_8A18
seg002:1342 ; ---------------------------------------------------------------------------
seg002:1342
seg002:1342 loc_8A12:                               ; CODE XREF: sub_89C2+3B␘j
seg002:1342                 sub     ax, ax
seg002:1344                 push    ax
seg002:1345                 mov     ax, 30h ; '0'
seg002:1348
seg002:1348 loc_8A18:                               ; CODE XREF: sub_89C2+4E␘j
seg002:1348                                         ; sub_89C2+63␙j
seg002:1348                 push    ax
seg002:1349                 push    cs
seg002:134A                 call    near ptr sub_8B36
seg002:134D                 add     sp, 4
seg002:1350                 jmp     short loc_8A28
seg002:1352 ; ---------------------------------------------------------------------------
seg002:1352
seg002:1352 loc_8A22:                               ; CODE XREF: sub_89C2+45␘j
seg002:1352                 sub     ax, ax
seg002:1354                 push    ax
seg002:1355                 jmp     short loc_8A18
seg002:1355 ; ---------------------------------------------------------------------------
seg002:1357                 align 2
seg002:1358
seg002:1358 loc_8A28:                               ; CODE XREF: sub_89C2+5E␘j
seg002:1358                 mov     al, byte_2DADE
seg002:135B                 mov     byte_2D852, al
seg002:135E                 mov     al, 0FFh
seg002:1360                 mov     byte_2DB50, al
seg002:1363                 mov     byte_2BF46, al
seg002:1366                 mov     al, byte_2C198
seg002:1369                 xor     al, 80h
seg002:136B                 mov     byte_2C18D, al
seg002:136E                 mov     [bp+var_6], 1
seg002:1373
seg002:1373 loc_8A43:                               ; CODE XREF: sub_89C2+32␘j
seg002:1373                 mov     al, byte_2D8A7
seg002:1376                 cmp     byte_2D62A, al
seg002:137A                 jnz     short loc_8A4F
seg002:137C                 jmp     loc_8B24
seg002:137F ; ---------------------------------------------------------------------------
seg002:137F
seg002:137F loc_8A4F:                               ; CODE XREF: sub_89C2+88␘j
seg002:137F                 cmp     al, 0FFh
seg002:1381                 jz      short loc_8AB0
seg002:1383                 push    word_2DA70
seg002:1387                 sub     ah, ah
seg002:1389                 mov     cx, ax
seg002:138B                 mov     ax, word_2DA72
seg002:138E                 mul     cx
seg002:1390                 mov     dx, word_2DA72
seg002:1394                 mov     cl, 5
seg002:1396                 shl     dx, cl
seg002:1398                 sub     ax, dx
seg002:139A                 push    ax
seg002:139B                 call    sub_10017
seg002:13A0                 add     sp, 4
seg002:13A3                 mov     ax, word_2DA74
seg002:13A6                 add     ax, word_2844C
seg002:13AA                 mov     [bp+var_2], ax
seg002:13AD                 mov     ax, word_2DA76
seg002:13B0                 sub     ax, word_2844E
seg002:13B4                 mov     [bp+var_4], ax
seg002:13B7                 sub     ax, ax
seg002:13B9                 push    ax
seg002:13BA                 mov     ax, 1
seg002:13BD                 push    ax
seg002:13BE                 mov     ax, [bp+var_4]
seg002:13C1                 add     ax, 4
seg002:13C4                 push    ax
seg002:13C5                 push    [bp+var_2]
seg002:13C8                 mov     ax, 9Ch ; '£'
seg002:13CB                 push    ax
seg002:13CC                 mov     ax, 98h ; 'ÿ'
seg002:13CF                 push    ax
seg002:13D0                 mov     ax, 117h
seg002:13D3                 push    ax
seg002:13D4                 mov     ax, 108h
seg002:13D7                 push    ax
seg002:13D8                 call    far ptr sub_17BE5
seg002:13DD                 add     sp, 10h
seg002:13E0
seg002:13E0 loc_8AB0:                               ; CODE XREF: sub_89C2+8F␘j
seg002:13E0                 push    word_2DA70
seg002:13E4                 mov     al, byte_2D62A
seg002:13E7                 sub     ah, ah
seg002:13E9                 mov     cx, ax
seg002:13EB                 mov     ax, word_2DA72
seg002:13EE                 mul     cx
seg002:13F0                 mov     dx, word_2DA72
seg002:13F4                 mov     cl, 5
seg002:13F6                 shl     dx, cl
seg002:13F8                 sub     ax, dx
seg002:13FA                 push    ax
seg002:13FB                 call    sub_10017
seg002:1400                 add     sp, 4
seg002:1403                 mov     ax, word_2DA74
seg002:1406                 add     ax, word_2844C
seg002:140A                 mov     [bp+var_2], ax
seg002:140D                 mov     ax, word_2DA76
seg002:1410                 sub     ax, word_2844E
seg002:1414                 mov     [bp+var_4], ax
seg002:1417                 mov     ax, 1
seg002:141A                 push    ax
seg002:141B                 sub     ax, ax
seg002:141D                 push    ax
seg002:141E                 mov     ax, 9Ch ; '£'
seg002:1421                 push    ax
seg002:1422                 mov     ax, 108h
seg002:1425                 push    ax
seg002:1426                 mov     ax, [bp+var_4]
seg002:1429                 add     ax, 4
seg002:142C                 push    ax
seg002:142D                 push    [bp+var_4]
seg002:1430                 mov     ax, [bp+var_2]
seg002:1433                 add     ax, 0Fh
seg002:1436                 push    ax
seg002:1437                 push    [bp+var_2]
seg002:143A                 call    far ptr sub_17BE5
seg002:143F                 add     sp, 10h
seg002:1442                 sub     ax, ax
seg002:1444                 mov     word_1F17A, ax
seg002:1447                 push    ax
seg002:1448                 call    far ptr sub_16BB0
seg002:144D                 add     sp, 2
seg002:1450                 push    cs
seg002:1451                 call    near ptr sub_8C0C
seg002:1454
seg002:1454 loc_8B24:                               ; CODE XREF: sub_89C2+8A␘j
seg002:1454                 cmp     [bp+var_6], 0
seg002:1458                 jz      short loc_8B32
seg002:145A                 push    cs
seg002:145B                 call    near ptr sub_8C80
seg002:145E                 push    cs
seg002:145F                 call    near ptr sub_8D70
seg002:1462
seg002:1462 loc_8B32:                               ; CODE XREF: sub_89C2+166␘j
seg002:1462                 mov     sp, bp
seg002:1464                 pop     bp
seg002:1465                 retf
seg002:1465 sub_89C2        endp
seg002:1465
seg002:1466
