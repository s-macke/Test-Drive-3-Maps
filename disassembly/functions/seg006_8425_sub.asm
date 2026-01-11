seg006:8425 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:8425
seg006:8425
seg006:8425 sub_16275       proc near               ; CODE XREF: sub_1176A:loc_11AA6␘p
seg006:8425                 mov     cx, 6
seg006:8428                 mov     ax, [bx+7B8Eh]
seg006:842C                 cmp     ax, [si+7B8Eh]
seg006:8430                 jle     short loc_16286
seg006:8432                 xchg    bx, si
seg006:8434                 sub     cx, cx
seg006:8436
seg006:8436 loc_16286:                              ; CODE XREF: sub_16275+B␘j
seg006:8436                 mov     ax, [si+7B8Eh]
seg006:843A                 cmp     ax, [di+7B8Eh]
seg006:843E                 jle     short loc_16292
seg006:8440                 xchg    si, di
seg006:8442
seg006:8442 loc_16292:                              ; CODE XREF: sub_16275+19␘j
seg006:8442                 mov     ax, [di+7B8Eh]
seg006:8446                 cmp     ax, [bp+7B8Eh]
seg006:844A                 jle     short loc_1629E
seg006:844C                 xchg    di, bp
seg006:844E
seg006:844E loc_1629E:                              ; CODE XREF: sub_16275+25␘j
seg006:844E                 mov     ax, [bx+7B8Eh]
seg006:8452                 cmp     ax, [si+7B8Eh]
seg006:8456                 jle     short loc_162AD
seg006:8458                 xchg    bx, si
seg006:845A                 mov     cx, 2
seg006:845D
seg006:845D loc_162AD:                              ; CODE XREF: sub_16275+31␘j
seg006:845D                 mov     ax, [si+7B8Eh]
seg006:8461                 cmp     ax, [di+7B8Eh]
seg006:8465                 jle     short loc_162B9
seg006:8467                 xchg    si, di
seg006:8469
seg006:8469 loc_162B9:                              ; CODE XREF: sub_16275+40␘j
seg006:8469                 mov     ax, [bx+7B8Eh]
seg006:846D                 cmp     ax, [si+7B8Eh]
seg006:8471                 jle     short loc_162C8
seg006:8473                 xchg    bx, si
seg006:8475                 mov     cx, 4
seg006:8478
seg006:8478 loc_162C8:                              ; CODE XREF: sub_16275+4C␘j
seg006:8478                 mov     word_2AABC, cx
seg006:847C                 mov     ax, [bx+7B8Eh]
seg006:8480                 cmp     ax, [bp+7B8Eh]
seg006:8484                 jnz     short loc_16327
seg006:8486                 mov     cx, [bx+498Eh]
seg006:848A                 sub     cx, word_2AD27
seg006:848E                 neg     cx
seg006:8490                 add     cx, 1600h
seg006:8494                 sar     cx, 1
seg006:8496                 mov     dx, [si+498Eh]
seg006:849A                 sub     dx, word_2AD27
seg006:849E                 neg     dx
seg006:84A0                 add     dx, 1600h
seg006:84A4                 sar     dx, 1
seg006:84A6                 mov     ax, [di+498Eh]
seg006:84AA                 sub     ax, word_2AD27
seg006:84AE                 neg     ax
seg006:84B0                 add     ax, 1600h
seg006:84B3                 sar     ax, 1
seg006:84B5                 cmp     ax, dx
seg006:84B7                 js      short loc_16313
seg006:84B9                 cmp     ax, cx
seg006:84BB                 js      short loc_16321
seg006:84BD                 cmp     cx, dx
seg006:84BF                 js      short loc_1631B
seg006:84C1                 jns     short loc_1631F
seg006:84C3
seg006:84C3 loc_16313:                              ; CODE XREF: sub_16275+92␘j
seg006:84C3                 cmp     ax, cx
seg006:84C5                 jns     short loc_16321
seg006:84C7                 cmp     cx, dx
seg006:84C9                 js      short loc_1631F
seg006:84CB
seg006:84CB loc_1631B:                              ; CODE XREF: sub_16275+9A␘j
seg006:84CB                 xchg    si, di
seg006:84CD                 jmp     short loc_16321
seg006:84CF ; ---------------------------------------------------------------------------
seg006:84CF
seg006:84CF loc_1631F:                              ; CODE XREF: sub_16275+9C␘j
seg006:84CF                                         ; sub_16275+A4␘j
seg006:84CF                 xchg    bx, di
seg006:84D1
seg006:84D1 loc_16321:                              ; CODE XREF: sub_16275+96␘j
seg006:84D1                                         ; sub_16275+A0␘j ...
seg006:84D1                 mov     di, bp
seg006:84D3                 call    sub_16068
seg006:84D6                 retn
seg006:84D7 ; ---------------------------------------------------------------------------
seg006:84D7
seg006:84D7 loc_16327:                              ; CODE XREF: sub_16275+5F␘j
seg006:84D7                 cmp     ax, [di+7B8Eh]
seg006:84DB                 jnz     short loc_1637E
seg006:84DD                 mov     cx, [bx+498Eh]
seg006:84E1                 sub     cx, word_2AD27
seg006:84E5                 neg     cx
seg006:84E7                 add     cx, 1600h
seg006:84EB                 sar     cx, 1
seg006:84ED                 mov     dx, [si+498Eh]
seg006:84F1                 sub     dx, word_2AD27
seg006:84F5                 neg     dx
seg006:84F7                 add     dx, 1600h
seg006:84FB                 sar     dx, 1
seg006:84FD                 mov     ax, [di+498Eh]
seg006:8501                 sub     ax, word_2AD27
seg006:8505                 neg     ax
seg006:8507                 add     ax, 1600h
seg006:850A                 sar     ax, 1
seg006:850C                 cmp     ax, dx
seg006:850E                 js      short loc_1636A
seg006:8510                 cmp     ax, cx
seg006:8512                 js      short loc_16378
seg006:8514                 cmp     cx, dx
seg006:8516                 js      short loc_16372
seg006:8518                 jns     short loc_16376
seg006:851A
seg006:851A loc_1636A:                              ; CODE XREF: sub_16275+E9␘j
seg006:851A                 cmp     ax, cx
seg006:851C                 jns     short loc_16378
seg006:851E                 cmp     cx, dx
seg006:8520                 js      short loc_16376
seg006:8522
seg006:8522 loc_16372:                              ; CODE XREF: sub_16275+F1␘j
seg006:8522                 xchg    si, di
seg006:8524                 jmp     short loc_16378
seg006:8526 ; ---------------------------------------------------------------------------
seg006:8526
seg006:8526 loc_16376:                              ; CODE XREF: sub_16275+F3␘j
seg006:8526                                         ; sub_16275+FB␘j
seg006:8526                 xchg    bx, di
seg006:8528
seg006:8528 loc_16378:                              ; CODE XREF: sub_16275+ED␘j
seg006:8528                                         ; sub_16275+F7␘j ...
seg006:8528                 mov     di, bp
seg006:852A                 call    sub_1615C
seg006:852D                 retn
seg006:852E ; ---------------------------------------------------------------------------
seg006:852E
seg006:852E loc_1637E:                              ; CODE XREF: sub_16275+B6␘j
seg006:852E                 mov     ax, [si+7B8Eh]
seg006:8532                 cmp     ax, [bp+7B8Eh]
seg006:8536                 jnz     short loc_163D9
seg006:8538                 mov     cx, [bp+498Eh]
seg006:853C                 sub     cx, word_2AD27
seg006:8540                 neg     cx
seg006:8542                 add     cx, 1600h
seg006:8546                 sar     cx, 1
seg006:8548                 mov     dx, [si+498Eh]
seg006:854C                 sub     dx, word_2AD27
seg006:8550                 neg     dx
seg006:8552                 add     dx, 1600h
seg006:8556                 sar     dx, 1
seg006:8558                 mov     ax, [di+498Eh]
seg006:855C                 sub     ax, word_2AD27
seg006:8560                 neg     ax
seg006:8562                 add     ax, 1600h
seg006:8565                 sar     ax, 1
seg006:8567                 cmp     ax, dx
seg006:8569                 js      short loc_163C5
seg006:856B                 cmp     ax, cx
seg006:856D                 js      short loc_163D3
seg006:856F                 cmp     cx, dx
seg006:8571                 js      short loc_163CD
seg006:8573                 jns     short loc_163D1
seg006:8575
seg006:8575 loc_163C5:                              ; CODE XREF: sub_16275+144␘j
seg006:8575                 cmp     ax, cx
seg006:8577                 jns     short loc_163D3
seg006:8579                 cmp     cx, dx
seg006:857B                 js      short loc_163D1
seg006:857D
seg006:857D loc_163CD:                              ; CODE XREF: sub_16275+14C␘j
seg006:857D                 xchg    si, di
seg006:857F                 jmp     short loc_163D3
seg006:8581 ; ---------------------------------------------------------------------------
seg006:8581
seg006:8581 loc_163D1:                              ; CODE XREF: sub_16275+14E␘j
seg006:8581                                         ; sub_16275+156␘j
seg006:8581                 xchg    bp, di
seg006:8583
seg006:8583 loc_163D3:                              ; CODE XREF: sub_16275+148␘j
seg006:8583                                         ; sub_16275+152␘j ...
seg006:8583                 mov     di, bp
seg006:8585                 call    sub_160DF
seg006:8588                 retn
seg006:8589 ; ---------------------------------------------------------------------------
seg006:8589
seg006:8589 loc_163D9:                              ; CODE XREF: sub_16275+111␘j
seg006:8589                 cmp     ax, [bx+7B8Eh]
seg006:858D                 jz      short loc_163E2
seg006:858F                 jmp     loc_164EC
seg006:8592 ; ---------------------------------------------------------------------------
seg006:8592
seg006:8592 loc_163E2:                              ; CODE XREF: sub_16275+168␘j
seg006:8592                 mov     ax, [di+498Eh]
seg006:8596                 sub     ax, word_2AD27
seg006:859A                 neg     ax
seg006:859C                 add     ax, 1600h
seg006:859F                 sar     ax, 1
seg006:85A1                 mov     word_2AAB1, ax
seg006:85A4                 mov     cx, [bp+498Eh]
seg006:85A8                 sub     cx, word_2AD27
seg006:85AC                 neg     cx
seg006:85AE                 add     cx, 1600h
seg006:85B2                 sar     cx, 1
seg006:85B4                 mov     word_2AAB3, cx
seg006:85B8                 sub     ax, cx
seg006:85BA                 cwd
seg006:85BB                 mov     cx, [bp+7B8Eh]
seg006:85BF                 sub     cx, [di+7B8Eh]
seg006:85C3                 jz      short loc_16417
seg006:85C5                 idiv    cx
seg006:85C7
seg006:85C7 loc_16417:                              ; CODE XREF: sub_16275+19E␘j
seg006:85C7                 mov     word_2844C, ax
seg006:85CA                 mov     word_2844E, ax
seg006:85CD                 push    bp
seg006:85CE                 mov     byte_28456, 0
seg006:85D3                 mov     cx, word_2AABC
seg006:85D7                 mov     dx, word_2AABA
seg006:85DB                 add     cx, 2
seg006:85DE                 and     cx, 7
seg006:85E1                 mov     bp, cx
seg006:85E3                 add     bp, dx
seg006:85E5                 mov     ax, es:[bp+0]
seg006:85E9                 and     ax, 7FFh
seg006:85EC                 shl     ax, 1
seg006:85EE                 cmp     di, ax
seg006:85F0                 jz      short loc_1645D
seg006:85F2                 sub     cx, 4
seg006:85F5                 and     cx, 7
seg006:85F8                 mov     bp, cx
seg006:85FA                 add     bp, dx
seg006:85FC                 mov     ax, es:[bp+0]
seg006:8600                 and     ax, 7FFh
seg006:8603                 shl     ax, 1
seg006:8605                 cmp     di, ax
seg006:8607                 jz      short loc_1645D
seg006:8609                 inc     byte_28456
seg006:860D
seg006:860D loc_1645D:                              ; CODE XREF: sub_16275+1CB␘j
seg006:860D                                         ; sub_16275+1E2␘j
seg006:860D                 pop     bp
seg006:860E                 mov     cx, [bx+498Eh]
seg006:8612                 sub     cx, word_2AD27
seg006:8616                 neg     cx
seg006:8618                 add     cx, 1600h
seg006:861C                 sar     cx, 1
seg006:861E                 mov     dx, [si+498Eh]
seg006:8622                 sub     dx, word_2AD27
seg006:8626                 neg     dx
seg006:8628                 add     dx, 1600h
seg006:862C                 sar     dx, 1
seg006:862E                 mov     ax, [bx+7B8Eh]
seg006:8632                 mov     bx, [di+7B8Eh]
seg006:8636                 mov     bp, [bp+7B8Eh]
seg006:863A                 mov     word_2AA86, ax
seg006:863D                 sub     bx, ax
seg006:863F                 mov     word_2AAAF, 0
seg006:8645                 mov     byte_2AA99, 1
seg006:864A                 inc     bx
seg006:864B                 mov     word_2AAAB, bx
seg006:864F                 dec     bx
seg006:8650                 sub     bp, ax
seg006:8652                 mov     ax, bp
seg006:8654                 sub     ax, bx
seg006:8656                 mov     word_2AAAD, ax
seg006:8659                 cmp     dx, cx
seg006:865B                 js      short loc_164B4
seg006:865D                 xchg    cx, dx
seg006:865F                 xor     byte_28456, 1
seg006:8664
seg006:8664 loc_164B4:                              ; CODE XREF: sub_16275+236␘j
seg006:8664                 mov     si, dx
seg006:8666                 cmp     byte_28456, 0
seg006:866B                 jnz     short loc_164CE
seg006:866D                 mov     ax, word_2AAB1
seg006:8670                 xchg    ax, word_2AAB3
seg006:8674                 mov     word_2AAB1, ax
seg006:8677                 xchg    bx, bp
seg006:8679                 mov     byte_2AA99, 2
seg006:867E
seg006:867E loc_164CE:                              ; CODE XREF: sub_16275+246␘j
seg006:867E                 mov     ax, si
seg006:8680                 sub     ax, word_2AAB1
seg006:8684                 cwd
seg006:8685                 idiv    bx
seg006:8687                 mov     word_2AA9D, ax
seg006:868A                 mov     ax, cx
seg006:868C                 sub     ax, word_2AAB3
seg006:8690                 cwd
seg006:8691                 idiv    bp
seg006:8693                 mov     word_2AA9F, ax
seg006:8696                 mov     bp, cx
seg006:8698                 call    sub_15ADD
seg006:869B                 retn
seg006:869C ; ---------------------------------------------------------------------------
seg006:869C
seg006:869C loc_164EC:                              ; CODE XREF: sub_16275+16A␘j
seg006:869C                 mov     ax, [bx+7B8Eh]
seg006:86A0                 mov     word_2AA86, ax
seg006:86A3                 mov     dx, [si+7B8Eh]
seg006:86A7                 sub     dx, ax
seg006:86A9                 mov     word_28452, dx
seg006:86AD                 inc     dx
seg006:86AE                 mov     word_2AAAB, dx
seg006:86B2                 dec     dx
seg006:86B3                 mov     cx, [di+7B8Eh]
seg006:86B7                 sub     cx, ax
seg006:86B9                 mov     word_28454, cx
seg006:86BD                 sub     cx, dx
seg006:86BF                 mov     word_2AAAD, cx
seg006:86C3                 mov     cx, [bp+7B8Eh]
seg006:86C7                 sub     cx, ax
seg006:86C9                 mov     word_2844A, cx
seg006:86CD                 sub     cx, dx
seg006:86CF                 sub     cx, word_2AAAD
seg006:86D3                 mov     word_2AAAF, cx
seg006:86D7                 push    bp
seg006:86D8                 mov     byte_28456, 0
seg006:86DD                 mov     cx, word_2AABC
seg006:86E1                 mov     dx, word_2AABA
seg006:86E5                 add     cx, 2
seg006:86E8                 and     cx, 7
seg006:86EB                 mov     bp, cx
seg006:86ED                 add     bp, dx
seg006:86EF                 mov     ax, es:[bp+0]
seg006:86F3                 and     ax, 7FFh
seg006:86F6                 shl     ax, 1
seg006:86F8                 cmp     di, ax
seg006:86FA                 jz      short loc_16567
seg006:86FC                 sub     cx, 4
seg006:86FF                 and     cx, 7
seg006:8702                 mov     bp, cx
seg006:8704                 add     bp, dx
seg006:8706                 mov     ax, es:[bp+0]
seg006:870A                 and     ax, 7FFh
seg006:870D                 shl     ax, 1
seg006:870F                 cmp     di, ax
seg006:8711                 jz      short loc_16567
seg006:8713                 inc     byte_28456
seg006:8717
seg006:8717 loc_16567:                              ; CODE XREF: sub_16275+2D5␘j
seg006:8717                                         ; sub_16275+2EC␘j
seg006:8717                 pop     bp
seg006:8718                 mov     dx, [si+498Eh]
seg006:871C                 sub     dx, word_2AD27
seg006:8720                 neg     dx
seg006:8722                 add     dx, 1600h
seg006:8726                 sar     dx, 1
seg006:8728                 mov     cx, [di+498Eh]
seg006:872C                 sub     cx, word_2AD27
seg006:8730                 neg     cx
seg006:8732                 add     cx, 1600h
seg006:8736                 sar     cx, 1
seg006:8738                 mov     ax, [bx+498Eh]
seg006:873C                 sub     ax, word_2AD27
seg006:8740                 neg     ax
seg006:8742                 add     ax, 1600h
seg006:8745                 sar     ax, 1
seg006:8747                 mov     word_28450, ax
seg006:874A                 mov     bx, [bp+498Eh]
seg006:874E                 sub     bx, word_2AD27
seg006:8752                 neg     bx
seg006:8754                 add     bx, 1600h
seg006:8758                 sar     bx, 1
seg006:875A                 mov     ax, [si+7B8Eh]
seg006:875E                 cmp     ax, [di+7B8Eh]
seg006:8762                 jnz     short loc_165E0
seg006:8764                 mov     ax, [di+498Eh]
seg006:8768                 sub     ax, word_2AD27
seg006:876C                 neg     ax
seg006:876E                 add     ax, 1600h
seg006:8771                 sar     ax, 1
seg006:8773                 push    dx
seg006:8774                 mov     dx, [si+498Eh]
seg006:8778                 sub     dx, word_2AD27
seg006:877C                 neg     dx
seg006:877E                 add     dx, 1600h
seg006:8782                 sar     dx, 1
seg006:8784                 cmp     ax, dx
seg006:8786                 pop     dx
seg006:8787                 jns     short loc_165DD
seg006:8789                 xchg    si, di
seg006:878B                 xchg    dx, cx
seg006:878D
seg006:878D loc_165DD:                              ; CODE XREF: sub_16275+362␘j
seg006:878D                 jmp     short loc_16622
seg006:878D ; ---------------------------------------------------------------------------
seg006:878F                 align 2
seg006:8790
seg006:8790 loc_165E0:                              ; CODE XREF: sub_16275+33D␘j
seg006:8790                 cmp     dx, bx
seg006:8792                 jz      short loc_165FE
seg006:8794                 js      short loc_165FE
seg006:8796                 cmp     bx, cx
seg006:8798                 jz      short loc_165EC
seg006:879A                 jns     short loc_16612
seg006:879C
seg006:879C loc_165EC:                              ; CODE XREF: sub_16275+373␘j
seg006:879C                 cmp     byte_28456, 0
seg006:87A1                 jz      short loc_165F6
seg006:87A3
seg006:87A3 loc_165F3:                              ; CODE XREF: sub_16275+3A2␙j
seg006:87A3                 jmp     loc_167A3
seg006:87A6 ; ---------------------------------------------------------------------------
seg006:87A6
seg006:87A6 loc_165F6:                              ; CODE XREF: sub_16275+37C␘j
seg006:87A6                 cmp     dx, cx
seg006:87A8                 jz      short loc_16622
seg006:87AA                 js      short loc_16622
seg006:87AC                 jns     short loc_16619
seg006:87AE
seg006:87AE loc_165FE:                              ; CODE XREF: sub_16275+36D␘j
seg006:87AE                                         ; sub_16275+36F␘j
seg006:87AE                 cmp     bx, cx
seg006:87B0                 js      short loc_1661B
seg006:87B2                 cmp     byte_28456, 0
seg006:87B7                 jz      short loc_1660C
seg006:87B9
seg006:87B9 loc_16609:                              ; CODE XREF: sub_16275+3AB␙j
seg006:87B9                 jmp     loc_1671B
seg006:87BC ; ---------------------------------------------------------------------------
seg006:87BC
seg006:87BC loc_1660C:                              ; CODE XREF: sub_16275+392␘j
seg006:87BC                 cmp     dx, cx
seg006:87BE                 jz      short loc_16622
seg006:87C0                 js      short loc_16622
seg006:87C2
seg006:87C2 loc_16612:                              ; CODE XREF: sub_16275+375␘j
seg006:87C2                 cmp     byte_28456, 0
seg006:87C7                 jnz     short loc_165F3
seg006:87C9
seg006:87C9 loc_16619:                              ; CODE XREF: sub_16275+387␘j
seg006:87C9                 jmp     short loc_16622
seg006:87CB ; ---------------------------------------------------------------------------
seg006:87CB
seg006:87CB loc_1661B:                              ; CODE XREF: sub_16275+38B␘j
seg006:87CB                 cmp     byte_28456, 0
seg006:87D0                 jnz     short loc_16609
seg006:87D2
seg006:87D2 loc_16622:                              ; CODE XREF: sub_16275:loc_165DD␘j
seg006:87D2                                         ; sub_16275+383␘j ...
seg006:87D2                 mov     byte_2AA99, 1
seg006:87D7                 mov     byte_2AA9A, 2
seg006:87DC                 mov     word_2AAB1, dx
seg006:87E0                 mov     word_2AAB3, cx
seg006:87E4                 mov     ax, word_28450
seg006:87E7                 sub     ax, dx
seg006:87E9                 cwd
seg006:87EA                 idiv    word_28452
seg006:87EE                 mov     word_2AA9D, ax
seg006:87F1                 mov     ax, word_28450
seg006:87F4                 sub     ax, cx
seg006:87F6                 cwd
seg006:87F7                 idiv    word_28454
seg006:87FB                 cmp     ax, word_2AA9D
seg006:87FF                 js      short loc_16677
seg006:8801                 xchg    ax, word_2AA9D
seg006:8805                 mov     dx, word_2AAB1
seg006:8809                 xchg    dx, word_2AAB3
seg006:880D                 mov     word_2AAB1, dx
seg006:8811                 mov     dx, word_28452
seg006:8815                 xchg    dx, word_28454
seg006:8819                 mov     word_28452, dx
seg006:881D                 mov     byte_2AA99, 2
seg006:8822                 mov     byte_2AA9A, 1
seg006:8827
seg006:8827 loc_16677:                              ; CODE XREF: sub_16275+3DA␘j
seg006:8827                 mov     word_2AA9F, ax
seg006:882A                 mov     ax, word_2AAB1
seg006:882D                 sub     ax, bx
seg006:882F                 cwd
seg006:8830                 mov     cx, word_2844A
seg006:8834                 sub     cx, word_28452
seg006:8838                 jz      short loc_1668C
seg006:883A                 idiv    cx
seg006:883C
seg006:883C loc_1668C:                              ; CODE XREF: sub_16275+413␘j
seg006:883C                 mov     word_2844C, ax
seg006:883F                 mov     ax, word_2AAB3
seg006:8842                 sub     ax, bx
seg006:8844                 cwd
seg006:8845                 mov     cx, word_2844A
seg006:8849                 sub     cx, word_28454
seg006:884D                 jz      short loc_166A1
seg006:884F                 idiv    cx
seg006:8851
seg006:8851 loc_166A1:                              ; CODE XREF: sub_16275+428␘j
seg006:8851                 mov     word_2844E, ax
seg006:8854                 mov     ax, word_2AAAD
seg006:8857                 or      ax, ax
seg006:8859                 jnz     short loc_166C9
seg006:885B                 mov     byte_2AA99, 3
seg006:8860                 xchg    ax, word_2AAAF
seg006:8864                 mov     word_2AAAD, ax
seg006:8867                 mov     ax, word_2AA9D
seg006:886A                 sub     ax, word_2844C
seg006:886E                 js      short loc_166D3
seg006:8870                 mov     ax, word_2844E
seg006:8873                 sub     ax, word_2AA9F
seg006:8877                 js      short loc_166F7
seg006:8879
seg006:8879 loc_166C9:                              ; CODE XREF: sub_16275+434␘j
seg006:8879                                         ; sub_16275+480␙j ...
seg006:8879                 mov     si, word_28450
seg006:887D                 mov     bp, si
seg006:887F                 call    sub_15ADD
seg006:8882                 retn
seg006:8883 ; ---------------------------------------------------------------------------
seg006:8883
seg006:8883 loc_166D3:                              ; CODE XREF: sub_16275+449␘j
seg006:8883                 mov     byte_2AA99, 2
seg006:8888                 mov     ax, word_28450
seg006:888B                 mov     dx, [bp+498Eh]
seg006:888F                 sub     dx, word_2AD27
seg006:8893                 neg     dx
seg006:8895                 add     dx, 1600h
seg006:8899                 sar     dx, 1
seg006:889B                 sub     ax, dx
seg006:889D                 cwd
seg006:889E                 idiv    word_2844A
seg006:88A2                 mov     word_2AA9D, ax
seg006:88A5                 jmp     short loc_166C9
seg006:88A7 ; ---------------------------------------------------------------------------
seg006:88A7
seg006:88A7 loc_166F7:                              ; CODE XREF: sub_16275+452␘j
seg006:88A7                 mov     byte_2AA99, 1
seg006:88AC                 mov     ax, word_28450
seg006:88AF                 mov     dx, [bp+498Eh]
seg006:88B3                 sub     dx, word_2AD27
seg006:88B7                 neg     dx
seg006:88B9                 add     dx, 1600h
seg006:88BD                 sar     dx, 1
seg006:88BF                 sub     ax, dx
seg006:88C1                 cwd
seg006:88C2                 idiv    word_2844A
seg006:88C6                 mov     word_2AA9F, ax
seg006:88C9                 jmp     short loc_166C9
seg006:88CB ; ---------------------------------------------------------------------------
seg006:88CB
seg006:88CB loc_1671B:                              ; CODE XREF: sub_16275:loc_16609␘j
seg006:88CB                 mov     ax, word_2AAAD
seg006:88CE                 or      ax, ax
seg006:88D0                 jnz     short loc_16731
seg006:88D2                 xchg    ax, word_2AAAF
seg006:88D6                 mov     word_2AAAD, ax
seg006:88D9                 cmp     dx, cx
seg006:88DB                 js      short loc_1672F
seg006:88DD                 xchg    dx, cx
seg006:88DF
seg006:88DF loc_1672F:                              ; CODE XREF: sub_16275+4B6␘j
seg006:88DF                 mov     cx, bx
seg006:88E1
seg006:88E1 loc_16731:                              ; CODE XREF: sub_16275+4AB␘j
seg006:88E1                 mov     word_2AAB1, dx
seg006:88E5                 mov     word_2AAB5, cx
seg006:88E9                 mov     word_2AAB3, dx
seg006:88ED                 mov     word_2AAB7, cx
seg006:88F1                 mov     ax, word_28450
seg006:88F4                 sub     ax, dx
seg006:88F6                 cwd
seg006:88F7                 idiv    word_28452
seg006:88FB                 mov     word_2AA9D, ax
seg006:88FE                 mov     ax, word_28450
seg006:8901                 sub     ax, bx
seg006:8903                 cwd
seg006:8904                 idiv    word_2844A
seg006:8908                 mov     dl, 1
seg006:890A                 cmp     ax, word_2AA9D
seg006:890E                 js      short loc_16766
seg006:8910                 xchg    ax, word_2AA9D
seg006:8914                 inc     dl
seg006:8916
seg006:8916 loc_16766:                              ; CODE XREF: sub_16275+4E9␘j
seg006:8916                 mov     word_2AA9F, ax
seg006:8919                 mov     byte_2AA99, dl
seg006:891D                 mov     byte_2AA9A, dl
seg006:8921                 mov     ax, word_2AAB1
seg006:8924                 sub     ax, cx
seg006:8926                 cwd
seg006:8927                 mov     cx, word_2AAAD
seg006:892B                 idiv    cx
seg006:892D                 mov     word_2844C, ax
seg006:8930                 mov     word_2844E, ax
seg006:8933                 mov     ax, word_2AAB5
seg006:8936                 sub     ax, bx
seg006:8938                 cwd
seg006:8939                 mov     cx, word_2AAAF
seg006:893D                 or      cx, cx
seg006:893F                 jz      short loc_16793
seg006:8941                 idiv    cx
seg006:8943
seg006:8943 loc_16793:                              ; CODE XREF: sub_16275+51A␘j
seg006:8943                 mov     word_2AAA7, ax
seg006:8946                 mov     word_2AAA9, ax
seg006:8949                 mov     si, word_28450
seg006:894D                 mov     bp, si
seg006:894F                 call    sub_15ADD
seg006:8952                 retn
seg006:8953 ; ---------------------------------------------------------------------------
seg006:8953
seg006:8953 loc_167A3:                              ; CODE XREF: sub_16275:loc_165F3␘j
seg006:8953                 mov     ax, word_2AAAD
seg006:8956                 or      ax, ax
seg006:8958                 jnz     short loc_167B9
seg006:895A                 xchg    ax, word_2AAAF
seg006:895E                 mov     word_2AAAD, ax
seg006:8961                 cmp     dx, cx
seg006:8963                 jns     short loc_167B7
seg006:8965                 xchg    dx, cx
seg006:8967
seg006:8967 loc_167B7:                              ; CODE XREF: sub_16275+53E␘j
seg006:8967                 mov     cx, bx
seg006:8969
seg006:8969 loc_167B9:                              ; CODE XREF: sub_16275+533␘j
seg006:8969                 mov     word_2AAB3, dx
seg006:896D                 mov     word_2AAB7, cx
seg006:8971                 mov     word_2AAB1, dx
seg006:8975                 mov     word_2AAB5, cx
seg006:8979                 mov     ax, word_28450
seg006:897C                 sub     ax, dx
seg006:897E                 cwd
seg006:897F                 idiv    word_28452
seg006:8983                 mov     word_2AA9F, ax
seg006:8986                 mov     ax, word_28450
seg006:8989                 sub     ax, bx
seg006:898B                 cwd
seg006:898C                 idiv    word_2844A
seg006:8990                 mov     dl, 2
seg006:8992                 cmp     ax, word_2AA9F
seg006:8996                 jns     short loc_167EE
seg006:8998                 xchg    ax, word_2AA9F
seg006:899C                 dec     dl
seg006:899E
seg006:899E loc_167EE:                              ; CODE XREF: sub_16275+571␘j
seg006:899E                 mov     word_2AA9D, ax
seg006:89A1                 mov     byte_2AA99, dl
seg006:89A5                 mov     byte_2AA9A, dl
seg006:89A9                 mov     ax, word_2AAB3
seg006:89AC                 sub     ax, cx
seg006:89AE                 cwd
seg006:89AF                 mov     cx, word_2AAAD
seg006:89B3                 idiv    cx
seg006:89B5                 mov     word_2844C, ax
seg006:89B8                 mov     word_2844E, ax
seg006:89BB                 mov     ax, word_2AAB7
seg006:89BE                 sub     ax, bx
seg006:89C0                 cwd
seg006:89C1                 mov     cx, word_2AAAF
seg006:89C5                 or      cx, cx
seg006:89C7                 jz      short loc_1681B
seg006:89C9                 idiv    cx
seg006:89CB
seg006:89CB loc_1681B:                              ; CODE XREF: sub_16275+5A2␘j
seg006:89CB                 mov     word_2AAA7, ax
seg006:89CE                 mov     word_2AAA9, ax
seg006:89D1                 mov     si, word_28450
seg006:89D5                 mov     bp, si
seg006:89D7                 call    sub_15ADD
seg006:89DA                 retn
seg006:89DA sub_16275       endp
seg006:89DA
seg006:89DB
