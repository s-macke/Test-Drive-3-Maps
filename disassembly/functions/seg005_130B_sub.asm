seg005:130B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:130B
seg005:130B ; Attributes: bp-based frame
seg005:130B
seg005:130B sub_D22B        proc far                ; CODE XREF: sub_1688+574␘P
seg005:130B
seg005:130B arg_0           = word ptr  6
seg005:130B arg_2           = word ptr  8
seg005:130B arg_4           = word ptr  0Ah
seg005:130B arg_6           = word ptr  0Ch
seg005:130B
seg005:130B                 push    bp
seg005:130C                 mov     bp, sp
seg005:130E                 push    ds
seg005:130F                 push    di
seg005:1310                 push    si
seg005:1311                 push    es
seg005:1312                 sub     si, si
seg005:1314                 mov     bx, word_1F17A
seg005:1318                 shl     bx, 1
seg005:131A                 mov     es, word ptr [bx-7028h]
seg005:131E                 mov     cx, [bp+arg_6]
seg005:1321                 sub     cx, [bp+arg_4]
seg005:1324                 inc     cx
seg005:1325                 mov     al, byte ptr word_2D628
seg005:1328                 cmp     al, 13h
seg005:132A                 jnz     short loc_D24F
seg005:132C                 jmp     short loc_D28F
seg005:132C ; ---------------------------------------------------------------------------
seg005:132E                 db 90h
seg005:132F ; ---------------------------------------------------------------------------
seg005:132F
seg005:132F loc_D24F:                               ; CODE XREF: sub_D22B+1F␘j
seg005:132F                 cmp     al, 0Dh
seg005:1331                 jz      short loc_D256
seg005:1333                 jmp     short loc_D2C6
seg005:1333 ; ---------------------------------------------------------------------------
seg005:1335                 align 2
seg005:1336
seg005:1336 loc_D256:                               ; CODE XREF: sub_D22B+26␘j
seg005:1336                 mov     bx, [bp+arg_4]
seg005:1339                 shl     bx, 1
seg005:133B                 shl     bx, 1
seg005:133D                 shl     bx, 1
seg005:133F                 mov     ax, bx
seg005:1341                 shl     bx, 1
seg005:1343                 shl     bx, 1
seg005:1345                 add     ax, bx
seg005:1347                 mov     bx, [bp+arg_0]
seg005:134A                 shr     bx, 1
seg005:134C                 shr     bx, 1
seg005:134E                 shr     bx, 1
seg005:1350                 add     ax, bx
seg005:1352                 mov     di, ax
seg005:1354                 mov     dx, [bp+arg_2]
seg005:1357                 add     dx, 7
seg005:135A                 shr     dx, 1
seg005:135C                 shr     dx, 1
seg005:135E                 shr     dx, 1
seg005:1360                 sub     dx, bx
seg005:1362                 mov     bx, cx
seg005:1364                 mov     cx, dx
seg005:1366                 call    sub_D632
seg005:1369                 pop     es
seg005:136A                 pop     si
seg005:136B                 pop     di
seg005:136C                 pop     ds
seg005:136D                 pop     bp
seg005:136E                 retf
seg005:136F ; ---------------------------------------------------------------------------
seg005:136F
seg005:136F loc_D28F:                               ; CODE XREF: sub_D22B+21␘j
seg005:136F                 mov     bx, [bp+arg_4]
seg005:1372                 xchg    bl, bh
seg005:1374                 mov     ax, bx
seg005:1376                 shr     bx, 1
seg005:1378                 shr     bx, 1
seg005:137A                 add     ax, bx
seg005:137C                 add     ax, [bp+arg_0]
seg005:137F                 mov     di, ax
seg005:1381                 mov     dx, [bp+arg_2]
seg005:1384                 sub     dx, [bp+arg_0]
seg005:1387                 inc     dx
seg005:1388                 mov     ds, word_280BC
seg005:138C                 mov     bx, cx
seg005:138E
seg005:138E loc_D2AE:                               ; CODE XREF: sub_D22B+93␙j
seg005:138E                 push    di
seg005:138F                 mov     cx, dx
seg005:1391                 shr     cx, 1
seg005:1393                 rep movsw
seg005:1395                 jnb     short loc_D2B8
seg005:1397                 movsb
seg005:1398
seg005:1398 loc_D2B8:                               ; CODE XREF: sub_D22B+8A␘j
seg005:1398                 pop     di
seg005:1399                 add     di, 140h
seg005:139D                 dec     bx
seg005:139E                 jnz     short loc_D2AE
seg005:13A0                 pop     es
seg005:13A1                 pop     si
seg005:13A2                 pop     di
seg005:13A3                 pop     ds
seg005:13A4                 pop     bp
seg005:13A5                 retf
seg005:13A6 ; ---------------------------------------------------------------------------
seg005:13A6
seg005:13A6 loc_D2C6:                               ; CODE XREF: sub_D22B+28␘j
seg005:13A6                 mov     bx, cx
seg005:13A8                 mov     di, 3180h
seg005:13AB                 mov     ax, [bp+arg_0]
seg005:13AE                 and     ax, 0FFFCh
seg005:13B1                 shr     ax, 1
seg005:13B3                 add     di, ax
seg005:13B5                 mov     dx, [bp+arg_2]
seg005:13B8                 add     dx, 3
seg005:13BB                 shr     dx, 1
seg005:13BD                 shr     dx, 1
seg005:13BF                 shr     ax, 1
seg005:13C1                 sub     dx, ax
seg005:13C3                 mov     ds, word_280BC
seg005:13C7
seg005:13C7 loc_D2E7:                               ; CODE XREF: sub_D22B+CD␙j
seg005:13C7                 push    di
seg005:13C8                 mov     cx, dx
seg005:13CA                 rep movsw
seg005:13CC                 pop     di
seg005:13CD                 add     di, 2000h
seg005:13D1                 jns     short loc_D2F7
seg005:13D3                 add     di, 80A0h
seg005:13D7
seg005:13D7 loc_D2F7:                               ; CODE XREF: sub_D22B+C6␘j
seg005:13D7                 dec     bx
seg005:13D8                 jnz     short loc_D2E7
seg005:13DA                 pop     es
seg005:13DB                 pop     si
seg005:13DC                 pop     di
seg005:13DD                 pop     ds
seg005:13DE                 pop     bp
seg005:13DF                 retf
seg005:13DF sub_D22B        endp
seg005:13DF
seg005:13E0
