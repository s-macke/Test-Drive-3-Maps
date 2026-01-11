seg006:743D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:743D
seg006:743D
seg006:743D sub_1528D       proc near               ; CODE XREF: sub_12F6F+AE␘p
seg006:743D                                         ; sub_12F6F+F1␘p ...
seg006:743D                 push    bx
seg006:743E                 mov     ax, word_2AD14
seg006:7441                 shl     ax, 1
seg006:7443                 shl     ax, 1
seg006:7445                 mov     word_2AD1A, ax
seg006:7448                 mov     ax, word_2AD16
seg006:744B                 shl     ax, 1
seg006:744D                 shl     ax, 1
seg006:744F                 mov     word_2AD1C, ax
seg006:7452                 mov     ax, word_2AAC4
seg006:7455                 mov     word_2844A, ax
seg006:7458                 mov     bp, ax
seg006:745A                 cmp     ax, 630h
seg006:745D                 jnb     short loc_152BA
seg006:745F                 mov     di, ax
seg006:7461                 shl     di, 1
seg006:7463                 add     ax, cx
seg006:7465                 cmp     ax, 630h
seg006:7468                 jb      short loc_152D6
seg006:746A
seg006:746A loc_152BA:                              ; CODE XREF: sub_1528D+20␘j
seg006:746A                 mov     byte_2AD0C, 1
seg006:746F                 mov     bx, word_2AD10
seg006:7473                 sub     bx, 2
seg006:7476                 js      short loc_152D4
seg006:7478                 mov     word ptr [bx-513Bh], 0
seg006:747E                 mov     word ptr [bx-4FFBh], 0
seg006:7484
seg006:7484 loc_152D4:                              ; CODE XREF: sub_1528D+39␘j
seg006:7484                 pop     bx
seg006:7485                 retn
seg006:7486 ; ---------------------------------------------------------------------------
seg006:7486
seg006:7486 loc_152D6:                              ; CODE XREF: sub_1528D+2B␘j
seg006:7486                 mov     word_2AAC4, ax
seg006:7489                 mov     bx, word_2AD10
seg006:748D                 sub     bx, 2
seg006:7490                 js      short loc_152EA
seg006:7492                 mov     [bx-513Bh], bp
seg006:7496                 mov     [bx-4FFBh], cx
seg006:749A
seg006:749A loc_152EA:                              ; CODE XREF: sub_1528D+53␘j
seg006:749A                 mov     bx, cx
seg006:749C                 shl     bx, 1
seg006:749E
seg006:749E loc_152EE:                              ; CODE XREF: sub_1528D+8A␙j
seg006:749E                 call    sub_1531F
seg006:74A1                 sub     si, bx
seg006:74A3                 sub     si, bx
seg006:74A5                 add     dx, word_2AD18
seg006:74A9                 mov     [di+240Eh], dx
seg006:74AD                 add     ax, word_2AD1A
seg006:74B1                 mov     [di+308Eh], ax
seg006:74B5                 add     cx, word_2AD1C
seg006:74B9                 mov     [di+3D0Eh], cx
seg006:74BD                 add     si, 2
seg006:74C0                 add     di, 2
seg006:74C3                 dec     byte_28457
seg006:74C7                 jnz     short loc_152EE
seg006:74C9                 add     si, bx
seg006:74CB                 add     si, bx
seg006:74CD                 pop     bx
seg006:74CE                 retn
seg006:74CE sub_1528D       endp
seg006:74CE
seg006:74CF
