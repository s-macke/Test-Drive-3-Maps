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
