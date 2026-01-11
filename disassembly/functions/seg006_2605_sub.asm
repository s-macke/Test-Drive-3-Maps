seg006:2605 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2605
seg006:2605
seg006:2605 sub_10455       proc far                ; CODE XREF: sub_70AE+1D7␘P
seg006:2605                                         ; sub_83E0+6B␘P
seg006:2605                 push    si
seg006:2606                 push    di
seg006:2607                 push    es
seg006:2608                 mov     ax, ds
seg006:260A                 mov     es, ax
seg006:260C                 assume es:dseg
seg006:260C                 mov     di, word_214EE
seg006:2610                 add     di, 240Ch
seg006:2614                 mov     dx, word_214F0
seg006:2618                 add     dx, 240Ch
seg006:261C                 mov     si, dx
seg006:261E                 call    sub_1043A
seg006:2621                 mov     ax, word_2D82C
seg006:2624                 shr     ax, 1
seg006:2626                 shr     ax, 1
seg006:2628                 shr     ax, 1
seg006:262A                 shr     ax, 1
seg006:262C                 inc     ax
seg006:262D                 add     ax, word_2D82E
seg006:2631                 mov     word_2A9D5, ax
seg006:2634                 mov     bl, byte_285AB
seg006:2638                 sub     bh, bh
seg006:263A                 dec     bx
seg006:263B                 mov     al, [bx-46B7h]
seg006:263F                 mov     byte_2A9F7, al
seg006:2642                 sub     bx, bx
seg006:2644                 mov     di, 40h ; '@'
seg006:2647                 mov     es, word_2A9D5
seg006:264B                 assume es:nothing
seg006:264B                 mov     cx, 0D000h
seg006:264E                 mov     word_2A9CF, cx
seg006:2652
seg006:2652 loc_104A2:                              ; CODE XREF: sub_10455+70␙j
seg006:2652                 shl     bx, 1
seg006:2654                 mov     es:[bx], di
seg006:2657                 shr     bx, 1
seg006:2659                 push    bx
seg006:265A                 or      bx, bx
seg006:265C                 jz      short loc_104BF
seg006:265E                 mov     ax, bx
seg006:2660                 push    di
seg006:2661                 call    sub_104DC
seg006:2664                 pop     bx
seg006:2665                 cmp     di, bx
seg006:2667                 jb      short loc_104CB
seg006:2669                 cmp     di, word_2A9CF
seg006:266D                 ja      short loc_104CB
seg006:266F
seg006:266F loc_104BF:                              ; CODE XREF: sub_10455+57␘j
seg006:266F                 pop     bx
seg006:2670                 inc     bx
seg006:2671                 cmp     bx, word_214F2
seg006:2675                 jb      short loc_104A2
seg006:2677                 pop     es
seg006:2678                 pop     di
seg006:2679                 pop     si
seg006:267A                 retf
seg006:267B ; ---------------------------------------------------------------------------
seg006:267B
seg006:267B loc_104CB:                              ; CODE XREF: sub_10455+62␘j
seg006:267B                                         ; sub_10455+68␘j
seg006:267B                 pop     bx
seg006:267C                 pop     es
seg006:267D                 pop     di
seg006:267E                 pop     si
seg006:267F                 mov     ax, 1Ah
seg006:2682                 push    ax
seg006:2683                 call    sub_1688
seg006:2688                 add     sp, 2
seg006:268B                 retf
seg006:268B sub_10455       endp
seg006:268B
seg006:268C
