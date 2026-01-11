seg006:629D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:629D
seg006:629D
seg006:629D sub_140ED       proc near               ; CODE XREF: sub_154A1:loc_154C1␙p
seg006:629D                 mov     cx, word_2AA6F
seg006:62A1                 or      cx, cx
seg006:62A3                 jnz     short loc_140FE
seg006:62A5                 mov     cx, word_2AA71
seg006:62A9                 mov     word_2AA6F, cx
seg006:62AD                 retn
seg006:62AE ; ---------------------------------------------------------------------------
seg006:62AE
seg006:62AE loc_140FE:                              ; CODE XREF: sub_140ED+6␘j
seg006:62AE                 mov     word_2AA71, cx
seg006:62B2                 sub     cx, cx
seg006:62B4                 mov     bx, word_2AA73
seg006:62B8                 mov     si, word_2AA75
seg006:62BC                 mov     di, word_2AA77
seg006:62C0                 mov     ax, [bx+240Eh]
seg006:62C4                 cmp     ax, [si+240Eh]
seg006:62C8                 jnz     short loc_14125
seg006:62CA                 cmp     ax, [di+240Eh]
seg006:62CE                 jnz     short loc_14125
seg006:62D0                 sub     ax, ax
seg006:62D2                 jmp     loc_142AA
seg006:62D5 ; ---------------------------------------------------------------------------
seg006:62D5
seg006:62D5 loc_14125:                              ; CODE XREF: sub_140ED+2B␘j
seg006:62D5                                         ; sub_140ED+31␘j
seg006:62D5                 mov     ax, [si+308Eh]
seg006:62D9                 cmp     ax, [bx+308Eh]
seg006:62DD                 jz      short loc_1418D
seg006:62DF                 ja      short loc_14133
seg006:62E1                 xchg    bx, di
seg006:62E3
seg006:62E3 loc_14133:                              ; CODE XREF: sub_140ED+42␘j
seg006:62E3                 cmp     ax, [di+308Eh]
seg006:62E7                 jz      short loc_1418B
seg006:62E9                 jb      short loc_1413D
seg006:62EB                 xchg    si, di
seg006:62ED
seg006:62ED loc_1413D:                              ; CODE XREF: sub_140ED+4C␘j
seg006:62ED                 mov     ax, [si+308Eh]
seg006:62F1                 cmp     ax, [bx+308Eh]
seg006:62F5                 jz      short loc_1418D
seg006:62F7                 ja      short loc_1414B
seg006:62F9                 xchg    bx, si
seg006:62FB
seg006:62FB loc_1414B:                              ; CODE XREF: sub_140ED+5A␘j
seg006:62FB                 mov     bp, [di+308Eh]
seg006:62FF                 sub     bp, [bx+308Eh]
seg006:6303                 mov     ax, [si+308Eh]
seg006:6307                 sub     ax, [bx+308Eh]
seg006:630B                 mov     cx, [di+240Eh]
seg006:630F                 sub     cx, [bx+240Eh]
seg006:6313                 imul    cx
seg006:6315                 idiv    bp
seg006:6317                 add     ax, [bx+240Eh]
seg006:631B                 mov     word_2844A, ax
seg006:631E                 mov     ax, [si+308Eh]
seg006:6322                 sub     ax, [bx+308Eh]
seg006:6326                 mov     cx, [di+3D0Eh]
seg006:632A                 sub     cx, [bx+3D0Eh]
seg006:632E                 imul    cx
seg006:6330                 idiv    bp
seg006:6332                 add     ax, [bx+3D0Eh]
seg006:6336                 mov     word_2844C, ax
seg006:6339                 jmp     short loc_1419B
seg006:633B ; ---------------------------------------------------------------------------
seg006:633B
seg006:633B loc_1418B:                              ; CODE XREF: sub_140ED+4A␘j
seg006:633B                 xchg    di, bx
seg006:633D
seg006:633D loc_1418D:                              ; CODE XREF: sub_140ED+40␘j
seg006:633D                                         ; sub_140ED+58␘j
seg006:633D                 mov     ax, [bx+240Eh]
seg006:6341                 mov     word_2844A, ax
seg006:6344                 mov     ax, [bx+3D0Eh]
seg006:6348                 mov     word_2844C, ax
seg006:634B
seg006:634B loc_1419B:                              ; CODE XREF: sub_140ED+9C␘j
seg006:634B                 sub     cx, cx
seg006:634D                 mov     dx, [si+240Eh]
seg006:6351                 sub     dx, word_2844A
seg006:6355                 jz      short loc_141D8
seg006:6357                 mov     ax, dx
seg006:6359                 jns     short loc_141AD
seg006:635B                 neg     ax
seg006:635D
seg006:635D loc_141AD:                              ; CODE XREF: sub_140ED+BC␘j
seg006:635D                 mov     cx, 7FFFh
seg006:6360                 mov     bp, [si+3D0Eh]
seg006:6364                 sub     bp, word_2844C
seg006:6368                 jz      short loc_141D8
seg006:636A                 mov     cx, bp
seg006:636C                 jns     short loc_141C0
seg006:636E                 neg     cx
seg006:6370
seg006:6370 loc_141C0:                              ; CODE XREF: sub_140ED+CF␘j
seg006:6370                 shr     cx, 1
seg006:6372                 cmp     ax, cx
seg006:6374                 jb      short loc_141D2
seg006:6376                 mov     cx, 7FFFh
seg006:6379                 xor     dx, bp
seg006:637B                 jns     short loc_141D8
seg006:637D                 mov     cx, 8001h
seg006:6380                 jmp     short loc_141D8
seg006:6382 ; ---------------------------------------------------------------------------
seg006:6382
seg006:6382 loc_141D2:                              ; CODE XREF: sub_140ED+D7␘j
seg006:6382                 sub     ax, ax
seg006:6384                 idiv    bp
seg006:6386                 mov     cx, ax
seg006:6388
seg006:6388 loc_141D8:                              ; CODE XREF: sub_140ED+B8␘j
seg006:6388                                         ; sub_140ED+CB␘j ...
seg006:6388                 mov     word_2844E, cx
seg006:638C                 mov     ax, [si+3D0Eh]
seg006:6390                 cmp     ax, [bx+3D0Eh]
seg006:6394                 jz      short loc_14244
seg006:6396                 ja      short loc_141EA
seg006:6398                 xchg    bx, di
seg006:639A
seg006:639A loc_141EA:                              ; CODE XREF: sub_140ED+F9␘j
seg006:639A                 cmp     ax, [di+3D0Eh]
seg006:639E                 jz      short loc_14242
seg006:63A0                 jb      short loc_141F4
seg006:63A2                 xchg    si, di
seg006:63A4
seg006:63A4 loc_141F4:                              ; CODE XREF: sub_140ED+103␘j
seg006:63A4                 mov     ax, [si+3D0Eh]
seg006:63A8                 cmp     ax, [bx+3D0Eh]
seg006:63AC                 jz      short loc_14244
seg006:63AE                 ja      short loc_14202
seg006:63B0                 xchg    bx, si
seg006:63B2
seg006:63B2 loc_14202:                              ; CODE XREF: sub_140ED+111␘j
seg006:63B2                 mov     bp, [di+3D0Eh]
seg006:63B6                 sub     bp, [bx+3D0Eh]
seg006:63BA                 mov     ax, [si+3D0Eh]
seg006:63BE                 sub     ax, [bx+3D0Eh]
seg006:63C2                 mov     cx, [di+240Eh]
seg006:63C6                 sub     cx, [bx+240Eh]
seg006:63CA                 imul    cx
seg006:63CC                 idiv    bp
seg006:63CE                 add     ax, [bx+240Eh]
seg006:63D2                 mov     word_2844A, ax
seg006:63D5                 mov     ax, [si+3D0Eh]
seg006:63D9                 sub     ax, [bx+3D0Eh]
seg006:63DD                 mov     cx, [di+308Eh]
seg006:63E1                 sub     cx, [bx+308Eh]
seg006:63E5                 imul    cx
seg006:63E7                 idiv    bp
seg006:63E9                 add     ax, [bx+308Eh]
seg006:63ED                 mov     word_2844C, ax
seg006:63F0                 jmp     short loc_14252
seg006:63F2 ; ---------------------------------------------------------------------------
seg006:63F2
seg006:63F2 loc_14242:                              ; CODE XREF: sub_140ED+101␘j
seg006:63F2                 xchg    di, bx
seg006:63F4
seg006:63F4 loc_14244:                              ; CODE XREF: sub_140ED+F7␘j
seg006:63F4                                         ; sub_140ED+10F␘j
seg006:63F4                 mov     ax, [bx+240Eh]
seg006:63F8                 mov     word_2844A, ax
seg006:63FB                 mov     ax, [bx+308Eh]
seg006:63FF                 mov     word_2844C, ax
seg006:6402
seg006:6402 loc_14252:                              ; CODE XREF: sub_140ED+153␘j
seg006:6402                 sub     cx, cx
seg006:6404                 mov     dx, [si+240Eh]
seg006:6408                 sub     dx, word_2844A
seg006:640C                 jz      short loc_1428F
seg006:640E                 mov     ax, dx
seg006:6410                 jns     short loc_14264
seg006:6412                 neg     ax
seg006:6414
seg006:6414 loc_14264:                              ; CODE XREF: sub_140ED+173␘j
seg006:6414                 mov     cx, 7FFFh
seg006:6417                 mov     bp, [si+308Eh]
seg006:641B                 sub     bp, word_2844C
seg006:641F                 jz      short loc_1428F
seg006:6421                 mov     cx, bp
seg006:6423                 jns     short loc_14277
seg006:6425                 neg     cx
seg006:6427
seg006:6427 loc_14277:                              ; CODE XREF: sub_140ED+186␘j
seg006:6427                 shr     cx, 1
seg006:6429                 cmp     ax, cx
seg006:642B                 jb      short loc_14289
seg006:642D                 mov     cx, 7FFFh
seg006:6430                 xor     dx, bp
seg006:6432                 jns     short loc_1428F
seg006:6434                 mov     cx, 8001h
seg006:6437                 jmp     short loc_1428F
seg006:6439 ; ---------------------------------------------------------------------------
seg006:6439
seg006:6439 loc_14289:                              ; CODE XREF: sub_140ED+18E␘j
seg006:6439                 sub     ax, ax
seg006:643B                 idiv    bp
seg006:643D                 mov     cx, ax
seg006:643F
seg006:643F loc_1428F:                              ; CODE XREF: sub_140ED+16F␘j
seg006:643F                                         ; sub_140ED+182␘j ...
seg006:643F                 mov     ax, word_2844E
seg006:6442                 sar     cx, 1
seg006:6444                 sar     ax, 1
seg006:6446                 mov     al, ah
seg006:6448                 cbw
seg006:6449                 xchg    ax, cx
seg006:644A                 mov     al, ah
seg006:644C                 cbw
seg006:644D                 neg     ax
seg006:644F                 mov     dx, word_2847D
seg006:6453                 mov     byte_28456, dh
seg006:6457                 call    sub_142D0
seg006:645A
seg006:645A loc_142AA:                              ; CODE XREF: sub_140ED+35␘j
seg006:645A                 call    sub_14332
seg006:645D                 mov     byte_2ACC6, al
seg006:6460                 sub     dx, dx
seg006:6462                 sub     cx, word_2847B
seg006:6466                 jz      short loc_142CB
seg006:6468                 mov     dx, 18h
seg006:646B                 jns     short loc_142C5
seg006:646D                 neg     dx
seg006:646F                 cmp     cx, dx
seg006:6471                 jle     short loc_142CB
seg006:6473                 jg      short loc_142C9
seg006:6475
seg006:6475 loc_142C5:                              ; CODE XREF: sub_140ED+1CE␘j
seg006:6475                 cmp     cx, dx
seg006:6477                 jnb     short loc_142CB
seg006:6479
seg006:6479 loc_142C9:                              ; CODE XREF: sub_140ED+1D6␘j
seg006:6479                 mov     dx, cx
seg006:647B
seg006:647B loc_142CB:                              ; CODE XREF: sub_140ED+1C9␘j
seg006:647B                                         ; sub_140ED+1D4␘j ...
seg006:647B                 mov     word_2ACC7, dx
seg006:647F                 retn
seg006:647F sub_140ED       endp
seg006:647F
seg006:6480
