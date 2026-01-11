seg006:830C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:830C
seg006:830C
seg006:830C sub_1615C       proc near               ; CODE XREF: sub_16275+105␙p
seg006:830C                 mov     bp, [di+498Eh]
seg006:8310                 sub     bp, word_2AD27
seg006:8314                 neg     bp
seg006:8316                 add     bp, 1600h
seg006:831A                 sar     bp, 1
seg006:831C                 mov     cx, [bx+498Eh]
seg006:8320                 sub     cx, word_2AD27
seg006:8324                 neg     cx
seg006:8326                 add     cx, 1600h
seg006:832A                 sar     cx, 1
seg006:832C                 mov     dx, [si+498Eh]
seg006:8330                 sub     dx, word_2AD27
seg006:8334                 neg     dx
seg006:8336                 add     dx, 1600h
seg006:833A                 sar     dx, 1
seg006:833C                 mov     ax, [bx+7B8Eh]
seg006:8340                 mov     bx, [di+7B8Eh]
seg006:8344                 mov     word_2AA86, ax
seg006:8347                 sub     bx, ax
seg006:8349                 mov     word_2AAAD, 0
seg006:834F                 mov     word_2AAAF, 0
seg006:8355                 inc     bx
seg006:8356                 mov     word_2AAAB, bx
seg006:835A                 dec     bx
seg006:835B                 cmp     dx, cx
seg006:835D                 js      short loc_161B1
seg006:835F                 xchg    cx, dx
seg006:8361
seg006:8361 loc_161B1:                              ; CODE XREF: sub_1615C+51␘j
seg006:8361                 mov     si, dx
seg006:8363                 mov     ax, dx
seg006:8365                 sub     ax, bp
seg006:8367                 cwd
seg006:8368                 idiv    bx
seg006:836A                 mov     word_2AA9D, ax
seg006:836D                 mov     ax, cx
seg006:836F                 sub     ax, bp
seg006:8371                 cwd
seg006:8372                 idiv    bx
seg006:8374                 mov     word_2AA9F, ax
seg006:8377                 mov     bp, cx
seg006:8379                 call    sub_15ADD
seg006:837C                 retn
seg006:837C sub_1615C       endp
seg006:837C
seg006:837D ; ---------------------------------------------------------------------------
seg006:837D ; START OF FUNCTION CHUNK FOR sub_1603A
seg006:837D
seg006:837D loc_161CD:                              ; CODE XREF: sub_1603A+120␘j
seg006:837D                 mov     bp, [bx+498Eh]
seg006:8381                 sub     bp, word_2AD27
seg006:8385                 neg     bp
seg006:8387                 add     bp, 1600h
seg006:838B                 sar     bp, 1
seg006:838D                 mov     cx, [si+498Eh]
seg006:8391                 sub     cx, word_2AD27
seg006:8395                 neg     cx
seg006:8397                 add     cx, 1600h
seg006:839B                 sar     cx, 1
seg006:839D                 mov     dx, [di+498Eh]
seg006:83A1                 sub     dx, word_2AD27
seg006:83A5                 neg     dx
seg006:83A7                 add     dx, 1600h
seg006:83AB                 sar     dx, 1
seg006:83AD                 mov     ax, [bx+7B8Eh]
seg006:83B1                 mov     bx, [si+7B8Eh]
seg006:83B5                 mov     word_2AAB1, cx
seg006:83B9                 mov     word_2AAB3, cx
seg006:83BD                 mov     word_2AA86, ax
seg006:83C0                 sub     bx, ax
seg006:83C2                 inc     bx
seg006:83C3                 mov     word_2AAAB, bx
seg006:83C7                 dec     bx
seg006:83C8                 mov     ax, [di+7B8Eh]
seg006:83CC                 sub     ax, word_2AA86
seg006:83D0                 mov     word_2AAAF, 0
seg006:83D6                 mov     si, ax
seg006:83D8                 sub     ax, bx
seg006:83DA                 mov     di, ax
seg006:83DC                 mov     word_2AAAD, ax
seg006:83DF                 mov     ax, dx
seg006:83E1                 sub     ax, cx
seg006:83E3                 push    dx
seg006:83E4                 neg     ax
seg006:83E6                 cwd
seg006:83E7                 idiv    di
seg006:83E9                 mov     word_2844E, ax
seg006:83EC                 mov     byte_2AA99, 2
seg006:83F1                 pop     ax
seg006:83F2                 sub     ax, bp
seg006:83F4                 neg     ax
seg006:83F6                 cwd
seg006:83F7                 idiv    si
seg006:83F9                 mov     word_2AA9D, ax
seg006:83FC                 mov     ax, cx
seg006:83FE                 sub     ax, bp
seg006:8400                 neg     ax
seg006:8402                 cwd
seg006:8403                 idiv    bx
seg006:8405                 cmp     ax, word_2AA9D
seg006:8409                 jle     short loc_1626C
seg006:840B                 xchg    ax, word_2AA9D
seg006:840F                 mov     bx, word_2844E
seg006:8413                 mov     word_2844C, bx
seg006:8417                 mov     byte_2AA99, 1
seg006:841C
seg006:841C loc_1626C:                              ; CODE XREF: sub_1603A+21F␘j
seg006:841C                 mov     word_2AA9F, ax
seg006:841F                 mov     si, bp
seg006:8421                 call    sub_15ADD
seg006:8424                 retn
seg006:8424 ; END OF FUNCTION CHUNK FOR sub_1603A
seg006:8425
