seg006:6529 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6529
seg006:6529
seg006:6529 sub_14379       proc near               ; CODE XREF: sub_1176A:loc_118AA␘p
seg006:6529                 mov     bp, si
seg006:652B                 rol     si, 1
seg006:652D                 rol     si, 1
seg006:652F                 rol     si, 1
seg006:6531                 rol     si, 1
seg006:6533                 rol     si, 1
seg006:6535                 and     si, 3
seg006:6538                 mov     al, [si-6B1Bh]
seg006:653C                 sub     ah, ah
seg006:653E                 mov     si, ax
seg006:6540                 mov     cx, [bx+6F0Eh]
seg006:6544                 mov     ax, 1FFh
seg006:6547                 cmp     si, cx
seg006:6549                 jnb     short loc_143A8
seg006:654B                 mov     dx, si
seg006:654D                 sub     ax, ax
seg006:654F                 div     cx
seg006:6551                 rol     ax, 1
seg006:6553                 xchg    al, ah
seg006:6555                 and     ah, 1
seg006:6558
seg006:6558 loc_143A8:                              ; CODE XREF: sub_14379+20␘j
seg006:6558                 mov     si, ax
seg006:655A                 shl     si, 1
seg006:655C                 add     si, 1172h
seg006:6560                 mov     ax, cs:[si]
seg006:6563                 shr     ax, 1
seg006:6565                 shr     ax, 1
seg006:6567                 shr     ax, 1
seg006:6569                 shr     ax, 1
seg006:656B                 shr     ax, 1
seg006:656D                 mov     cx, ax
seg006:656F                 mov     di, [bx+560Eh]
seg006:6573                 sub     di, ax
seg006:6575                 mov     word_2AA86, di
seg006:6579                 shl     ax, 1
seg006:657B                 jz      short locret_143EF
seg006:657D                 mov     word_2AAAB, ax
seg006:6580                 shr     bx, 1
seg006:6582                 mov     si, word_2945F
seg006:6586                 shl     si, 1
seg006:6588                 jmp     short loc_143EA
seg006:658A ; ---------------------------------------------------------------------------
seg006:658A
seg006:658A loc_143DA:                              ; CODE XREF: sub_14379+74␙j
seg006:658A                 mov     ax, [si-513Bh]
seg006:658E                 cmp     ax, bx
seg006:6590                 ja      short loc_143EA
seg006:6592                 add     ax, [si-4FFBh]
seg006:6596                 cmp     ax, bx
seg006:6598                 jnb     short loc_143F0
seg006:659A
seg006:659A loc_143EA:                              ; CODE XREF: sub_14379+5F␘j
seg006:659A                                         ; sub_14379+67␘j
seg006:659A                 sub     si, 2
seg006:659D                 jns     short loc_143DA
seg006:659F
seg006:659F locret_143EF:                           ; CODE XREF: sub_14379+52␘j
seg006:659F                 retn
seg006:65A0 ; ---------------------------------------------------------------------------
seg006:65A0
seg006:65A0 loc_143F0:                              ; CODE XREF: sub_14379+6F␘j
seg006:65A0                 shl     bx, 1
seg006:65A2                 mov     ax, [si-577Bh]
seg006:65A6                 sub     al, al
seg006:65A8                 test    bp, 2000h
seg006:65AC                 jnz     short loc_14401
seg006:65AE                 add     ah, 40h ; '@'
seg006:65B1
seg006:65B1 loc_14401:                              ; CODE XREF: sub_14379+83␘j
seg006:65B1                 sub     ax, word_28484
seg006:65B5                 sub     ax, [bx+498Eh]
seg006:65B9                 add     ah, byte_2AA83
seg006:65BD                 and     ah, 7Fh
seg006:65C0                 cmp     ax, 4000h
seg006:65C3                 jnz     short loc_14416
seg006:65C5                 dec     ax
seg006:65C6
seg006:65C6 loc_14416:                              ; CODE XREF: sub_14379+9A␘j
seg006:65C6                 test    ah, 40h
seg006:65C9                 jz      short loc_14420
seg006:65CB                 neg     ax
seg006:65CD                 add     ax, 8000h
seg006:65D0
seg006:65D0 loc_14420:                              ; CODE XREF: sub_14379+A0␘j
seg006:65D0                 xchg    al, ah
seg006:65D2                 rol     ax, 1
seg006:65D4                 rol     ax, 1
seg006:65D6                 and     ax, 0FEh
seg006:65D9                 mov     bp, ax
seg006:65DB                 add     bp, 0E6Eh
seg006:65DF                 mov     bp, cs:[bp+0]
seg006:65E3                 mov     ax, 30h ; '0'
seg006:65E6                 cmp     cx, 0Ch
seg006:65E9                 jb      short loc_1443E
seg006:65EB                 mov     ax, 38h ; '8'
seg006:65EE
seg006:65EE loc_1443E:                              ; CODE XREF: sub_14379+C0␘j
seg006:65EE                 dec     cx
seg006:65EF                 js      short loc_14445
seg006:65F1                 jz      short loc_14445
seg006:65F3                 div     cl
seg006:65F5
seg006:65F5 loc_14445:                              ; CODE XREF: sub_14379+C6␘j
seg006:65F5                                         ; sub_14379+C8␘j
seg006:65F5                 add     ah, 10h
seg006:65F8                 cmp     ah, 20h ; ' '
seg006:65FB                 jb      short loc_1444F
seg006:65FD                 inc     al
seg006:65FF
seg006:65FF loc_1444F:                              ; CODE XREF: sub_14379+D2␘j
seg006:65FF                 sub     ah, ah
seg006:6601                 mul     bp
seg006:6603                 mov     ax, dx
seg006:6605                 mov     word_2AA9F, ax
seg006:6608                 inc     cx
seg006:6609                 mul     cl
seg006:660B                 mov     word_2AA9D, ax
seg006:660E                 cmp     cx, 0Ch
seg006:6611                 jnb     short loc_14465
seg006:6613                 shl     cx, 1
seg006:6615
seg006:6615 loc_14465:                              ; CODE XREF: sub_14379+E8␘j
seg006:6615                 shl     cx, 1
seg006:6617                 shl     cx, 1
seg006:6619                 mov     ax, cx
seg006:661B                 mul     bp
seg006:661D                 mov     si, [bx+498Eh]
seg006:6621                 mov     bp, si
seg006:6623                 sub     si, dx
seg006:6625                 add     bp, dx
seg006:6627                 call    sub_120A7
seg006:662A                 retn
seg006:662A sub_14379       endp
seg006:662A
seg006:662B
