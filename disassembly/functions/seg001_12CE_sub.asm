seg001:12CE ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:12CE
seg001:12CE ; Attributes: bp-based frame
seg001:12CE
seg001:12CE sub_300E        proc far                ; CODE XREF: sub_2C88+1FD␘p
seg001:12CE                                         ; sub_2C88+337␘p
seg001:12CE
seg001:12CE var_4           = word ptr -4
seg001:12CE var_2           = word ptr -2
seg001:12CE arg_0           = word ptr  6
seg001:12CE arg_2           = word ptr  8
seg001:12CE
seg001:12CE                 push    bp
seg001:12CF                 mov     bp, sp
seg001:12D1                 sub     sp, 4
seg001:12D4                 push    si
seg001:12D5                 mov     ax, 0Ah
seg001:12D8                 cwd
seg001:12D9                 push    dx
seg001:12DA                 push    ax
seg001:12DB                 push    [bp+arg_2]
seg001:12DE                 push    [bp+arg_0]
seg001:12E1                 call    sub_1991A
seg001:12E6                 add     al, 30h ; '0'
seg001:12E8                 mov     byte_2DD6D, al
seg001:12EB                 mov     ax, 0Ah
seg001:12EE                 cwd
seg001:12EF                 push    dx
seg001:12F0                 push    ax
seg001:12F1                 mov     ax, 64h ; 'd'
seg001:12F4                 cwd
seg001:12F5                 push    dx
seg001:12F6                 push    ax
seg001:12F7                 push    [bp+arg_2]
seg001:12FA                 push    [bp+arg_0]
seg001:12FD                 call    sub_1991A
seg001:1302                 push    dx
seg001:1303                 push    ax
seg001:1304                 call    sub_198B8
seg001:1309                 add     al, 30h ; '0'
seg001:130B                 mov     byte_2DD6C, al
seg001:130E                 mov     ax, 64h ; 'd'
seg001:1311                 cwd
seg001:1312                 push    dx
seg001:1313                 push    ax
seg001:1314                 mov     ax, 3E8h
seg001:1317                 cwd
seg001:1318                 push    dx
seg001:1319                 push    ax
seg001:131A                 push    [bp+arg_2]
seg001:131D                 push    [bp+arg_0]
seg001:1320                 call    sub_1991A
seg001:1325                 push    dx
seg001:1326                 push    ax
seg001:1327                 call    sub_198B8
seg001:132C                 add     al, 30h ; '0'
seg001:132E                 mov     byte_2DD6B, al
seg001:1331                 mov     ax, 3E8h
seg001:1334                 cwd
seg001:1335                 push    dx
seg001:1336                 push    ax
seg001:1337                 mov     ax, 2710h
seg001:133A                 cwd
seg001:133B                 push    dx
seg001:133C                 push    ax
seg001:133D                 push    [bp+arg_2]
seg001:1340                 push    [bp+arg_0]
seg001:1343                 call    sub_1991A
seg001:1348                 push    dx
seg001:1349                 push    ax
seg001:134A                 call    sub_198B8
seg001:134F                 add     al, 30h ; '0'
seg001:1351                 mov     byte_2DD6A, al
seg001:1354                 mov     ax, 2710h
seg001:1357                 cwd
seg001:1358                 push    dx
seg001:1359                 push    ax
seg001:135A                 mov     ax, 86A0h
seg001:135D                 mov     dx, 1
seg001:1360                 push    dx
seg001:1361                 push    ax
seg001:1362                 push    [bp+arg_2]
seg001:1365                 push    [bp+arg_0]
seg001:1368                 call    sub_1991A
seg001:136D                 push    dx
seg001:136E                 push    ax
seg001:136F                 call    sub_198B8
seg001:1374                 add     al, 30h ; '0'
seg001:1376                 mov     byte_2DD69, al
seg001:1379                 mov     ax, 86A0h
seg001:137C                 mov     dx, 1
seg001:137F                 push    dx
seg001:1380                 push    ax
seg001:1381                 mov     ax, 4240h
seg001:1384                 mov     dx, 0Fh
seg001:1387                 push    dx
seg001:1388                 push    ax
seg001:1389                 push    [bp+arg_2]
seg001:138C                 push    [bp+arg_0]
seg001:138F                 call    sub_1991A
seg001:1394                 push    dx
seg001:1395                 push    ax
seg001:1396                 call    sub_198B8
seg001:139B                 add     al, 30h ; '0'
seg001:139D                 mov     byte_2DD68, al
seg001:13A0                 mov     ax, 4240h
seg001:13A3                 mov     dx, 0Fh
seg001:13A6                 push    dx
seg001:13A7                 push    ax
seg001:13A8                 mov     ax, 9680h
seg001:13AB                 mov     dx, 98h ; 'ÿ'
seg001:13AE                 push    dx
seg001:13AF                 push    ax
seg001:13B0                 push    [bp+arg_2]
seg001:13B3                 push    [bp+arg_0]
seg001:13B6                 call    sub_1991A
seg001:13BB                 push    dx
seg001:13BC                 push    ax
seg001:13BD                 call    sub_198B8
seg001:13C2                 add     al, 30h ; '0'
seg001:13C4                 mov     byte_2DD67, al
seg001:13C7                 mov     ax, 9680h
seg001:13CA                 mov     dx, 98h ; 'ÿ'
seg001:13CD                 push    dx
seg001:13CE                 push    ax
seg001:13CF                 push    [bp+arg_2]
seg001:13D2                 push    [bp+arg_0]
seg001:13D5                 call    sub_198B8
seg001:13DA                 add     al, 30h ; '0'
seg001:13DC                 mov     byte_2DD66, al
seg001:13DF                 mov     [bp+var_2], 0
seg001:13E4                 mov     [bp+var_4], 0
seg001:13E9                 jmp     short loc_3132
seg001:13E9 ; ---------------------------------------------------------------------------
seg001:13EB                 align 2
seg001:13EC
seg001:13EC loc_312C:                               ; CODE XREF: sub_300E+132␙j
seg001:13EC                 inc     [bp+var_2]
seg001:13EF                 inc     [bp+var_4]
seg001:13F2
seg001:13F2 loc_3132:                               ; CODE XREF: sub_300E+11B␘j
seg001:13F2                 cmp     [bp+var_4], 7
seg001:13F6                 jge     short loc_3142
seg001:13F8                 mov     bx, [bp+var_4]
seg001:13FB                 cmp     byte ptr [bx-137Ah], 30h ; '0'
seg001:1400                 jz      short loc_312C
seg001:1402
seg001:1402 loc_3142:                               ; CODE XREF: sub_300E+128␘j
seg001:1402                 mov     [bp+var_4], 0
seg001:1407                 jmp     short loc_315E
seg001:1407 ; ---------------------------------------------------------------------------
seg001:1409                 align 2
seg001:140A
seg001:140A loc_314A:                               ; CODE XREF: sub_300E+154␙j
seg001:140A                 mov     bx, [bp+var_4]
seg001:140D                 mov     si, [bp+var_2]
seg001:1410                 mov     al, [si-137Ah]
seg001:1414                 mov     [bx-1370h], al
seg001:1418                 inc     [bp+var_4]
seg001:141B                 inc     [bp+var_2]
seg001:141E
seg001:141E loc_315E:                               ; CODE XREF: sub_300E+139␘j
seg001:141E                 cmp     [bp+var_2], 8
seg001:1422                 jl      short loc_314A
seg001:1424                 mov     bx, [bp+var_4]
seg001:1427                 mov     byte ptr [bx-1370h], 80h ; 'Ç'
seg001:142C                 sub     ax, ax
seg001:142E                 mov     [bp+var_4], ax
seg001:1431                 push    ax
seg001:1432                 mov     ax, 0EC90h
seg001:1435                 push    ax
seg001:1436                 push    cs
seg001:1437                 call    near ptr sub_3810
seg001:143A                 add     sp, 4
seg001:143D                 mov     [bp+var_4], ax
seg001:1440                 pop     si
seg001:1441                 mov     sp, bp
seg001:1443                 pop     bp
seg001:1444                 retf
seg001:1444 sub_300E        endp
seg001:1444
seg001:1444 ; ---------------------------------------------------------------------------
seg001:1445                 align 2
seg001:1446
