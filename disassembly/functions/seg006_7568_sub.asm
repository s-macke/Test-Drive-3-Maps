seg006:7568 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7568
seg006:7568
seg006:7568 sub_153B8       proc far                ; CODE XREF: sub_3186+2A9␘P
seg006:7568                                         ; sub_3186:loc_3452␘P ...
seg006:7568                 push    si
seg006:7569                 push    di
seg006:756A                 push    bp
seg006:756B                 push    es
seg006:756C                 inc     word_2AD23
seg006:7570                 mov     byte_2AA92, 0
seg006:7575                 mov     word_2AA93, 0FFFFh
seg006:757B                 call    sub_EC6D
seg006:7580                 call    sub_E684
seg006:7583                 call    sub_100AB
seg006:7586                 cmp     byte_1FAA3, 0
seg006:758B                 jnz     short loc_153E0
seg006:758D                 call    sub_E7E9
seg006:7590
seg006:7590 loc_153E0:                              ; CODE XREF: sub_153B8+23␘j
seg006:7590                 inc     byte_28470
seg006:7594                 cmp     byte_28478, 0
seg006:7599                 jnz     short loc_153FC
seg006:759B                 cmp     byte_28477, 0
seg006:75A0                 jnz     short loc_153F7
seg006:75A2                 call    sub_94F4
seg006:75A7
seg006:75A7 loc_153F7:                              ; CODE XREF: sub_153B8+38␘j
seg006:75A7                 call    far ptr loc_BAC8
seg006:75AC
seg006:75AC loc_153FC:                              ; CODE XREF: sub_153B8+31␘j
seg006:75AC                 call    sub_14B5E
seg006:75AF                 mov     ax, word_2847D
seg006:75B2                 mov     bx, word_2847B
seg006:75B6                 mov     dl, byte_2847F
seg006:75BA                 mov     cx, word_291DF
seg006:75BE                 cmp     byte_28477, 0
seg006:75C3                 jz      short loc_1544B
seg006:75C5                 mov     ah, byte_28497
seg006:75C9                 sub     al, al
seg006:75CB                 cmp     byte_207B8, al
seg006:75CF                 jnz     short loc_1543F
seg006:75D1                 mov     bx, word_2847D
seg006:75D5                 sub     bh, ah
seg006:75D7                 jns     short loc_15432
seg006:75D9                 cmp     bh, 0F0h ; '='
seg006:75DC                 jnb     short loc_1543F
seg006:75DE                 mov     bh, 0FEh ; '¦'
seg006:75E0                 jmp     short loc_15439
seg006:75E2 ; ---------------------------------------------------------------------------
seg006:75E2
seg006:75E2 loc_15432:                              ; CODE XREF: sub_153B8+6F␘j
seg006:75E2                 cmp     bh, 10h
seg006:75E5                 jbe     short loc_1543F
seg006:75E7                 mov     bh, 2
seg006:75E9
seg006:75E9 loc_15439:                              ; CODE XREF: sub_153B8+78␘j
seg006:75E9                 add     byte_28497, bh
seg006:75ED                 add     ah, bh
seg006:75EF
seg006:75EF loc_1543F:                              ; CODE XREF: sub_153B8+67␘j
seg006:75EF                                         ; sub_153B8+74␘j ...
seg006:75EF                 mov     bx, word_28491
seg006:75F3                 mov     cx, word_28493
seg006:75F7                 mov     dl, byte_28499
seg006:75FB
seg006:75FB loc_1544B:                              ; CODE XREF: sub_153B8+5B␘j
seg006:75FB                 mov     word_28484, ax
seg006:75FE                 add     bx, word_2AA79
seg006:7602                 mov     word_28482, bx
seg006:7606                 mov     byte_2848C, dl
seg006:760A                 mov     word_2848A, cx
seg006:760E                 mov     bx, word_285A5
seg006:7612                 or      bx, bx
seg006:7614                 jns     short loc_15468
seg006:7616                 neg     bx
seg006:7618
seg006:7618 loc_15468:                              ; CODE XREF: sub_153B8+AC␘j
seg006:7618                 or      ax, ax
seg006:761A                 jns     short loc_1546E
seg006:761C                 neg     bx
seg006:761E
seg006:761E loc_1546E:                              ; CODE XREF: sub_153B8+B2␘j
seg006:761E                 mov     word_285A5, bx
seg006:7622                 mov     bx, word_285A3
seg006:7626                 or      bx, bx
seg006:7628                 jns     short loc_1547C
seg006:762A                 neg     bx
seg006:762C
seg006:762C loc_1547C:                              ; CODE XREF: sub_153B8+C0␘j
seg006:762C                 sub     ax, 4000h
seg006:762F                 jns     short loc_15483
seg006:7631                 neg     bx
seg006:7633
seg006:7633 loc_15483:                              ; CODE XREF: sub_153B8+C7␘j
seg006:7633                 mov     word_285A3, bx
seg006:7637                 mov     ax, 1
seg006:763A                 mov     word_1F17A, ax
seg006:763D                 push    ax
seg006:763E                 call    far ptr sub_16BB0
seg006:7643                 add     sp, 2
seg006:7646                 call    sub_14D99
seg006:7649                 call    sub_1118F
seg006:764C                 pop     es
seg006:764D                 pop     bp
seg006:764E                 pop     di
seg006:764F                 pop     si
seg006:7650                 retf
seg006:7650 sub_153B8       endp
seg006:7650
seg006:7651
