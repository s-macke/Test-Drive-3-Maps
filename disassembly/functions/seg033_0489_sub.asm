seg033:0489 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0489
seg033:0489
seg033:0489 sub_1E419       proc near               ; CODE XREF: seg033:0408␘p
seg033:0489                 mov     al, byte_2B6C8
seg033:048C                 and     al, 0EFh
seg033:048E                 or      al, al
seg033:0490                 jz      short locret_1E469
seg033:0492                 dec     byte_2B951
seg033:0496                 jns     short locret_1E469
seg033:0498                 mov     ah, al
seg033:049A                 and     al, 0Fh
seg033:049C                 mov     byte_2B951, al
seg033:049F                 test    ah, 80h
seg033:04A2                 jnz     short locret_1E469
seg033:04A4                 test    al, 20h
seg033:04A6                 jnz     short loc_1E454
seg033:04A8                 sub     byte_2B6C4, 1
seg033:04AD                 cmp     byte_2B6C4, 81h ; 'ü'
seg033:04B2                 jnz     short locret_1E469
seg033:04B4                 mov     byte_2B6C8, 0
seg033:04B9                 mov     byte_2B928, 1
seg033:04BE                 call    sub_1DF92
seg033:04C1                 jmp     short locret_1E469
seg033:04C1 ; ---------------------------------------------------------------------------
seg033:04C3                 align 2
seg033:04C4
seg033:04C4 loc_1E454:                              ; CODE XREF: sub_1E419+1D␘j
seg033:04C4                 mov     al, byte_2B6C4
seg033:04C7                 inc     al
seg033:04C9                 cmp     al, byte_2B952
seg033:04CD                 jg      short loc_1E464
seg033:04CF                 mov     byte_2B6C4, al
seg033:04D2                 jmp     short locret_1E469
seg033:04D4 ; ---------------------------------------------------------------------------
seg033:04D4
seg033:04D4 loc_1E464:                              ; CODE XREF: sub_1E419+44␘j
seg033:04D4                 and     byte_2B6C8, 0DFh
seg033:04D9
seg033:04D9 locret_1E469:                           ; CODE XREF: sub_1E419+7␘j
seg033:04D9                                         ; sub_1E419+D␘j ...
seg033:04D9                 retn
seg033:04D9 sub_1E419       endp
seg033:04D9
seg033:04DA ; ---------------------------------------------------------------------------
seg033:04DA
seg033:04DA loc_1E46A:                              ; CODE XREF: seg033:04EB␙j
seg033:04DA                 cmp     bl, 0Dh
seg033:04DD                 ja      short locret_1E473
seg033:04DF                 call    off_2B9EE
seg033:04E3
seg033:04E3 locret_1E473:                           ; CODE XREF: seg033:04DD␘j
seg033:04E3                 retn
seg033:04E4 ; ---------------------------------------------------------------------------
seg033:04E4                 cmp     bl, 0Dh
seg033:04E7                 ja      short locret_1E4C1
seg033:04E9                 or      dl, dl
seg033:04EB                 jz      short loc_1E46A
seg033:04ED                 mov     byte_2B9E5, 1
seg033:04F2                 mov     bl, [bx-37B7h]
seg033:04F6                 mov     al, [bx-3942h]
seg033:04FA                 cbw
seg033:04FB                 sub     dh, dh
seg033:04FD                 add     ax, dx
seg033:04FF                 js      short loc_1E49B
seg033:0501                 cmp     ax, 7Fh ; '␡'
seg033:0504                 jl      short loc_1E49D
seg033:0506                 mov     ax, 7Fh ; '␡'
seg033:0509                 jmp     short loc_1E49D
seg033:050B ; ---------------------------------------------------------------------------
seg033:050B
seg033:050B loc_1E49B:                              ; CODE XREF: seg033:04FF␘j
seg033:050B                 sub     ax, ax
seg033:050D
seg033:050D loc_1E49D:                              ; CODE XREF: seg033:0504␘j
seg033:050D                                         ; seg033:0509␘j
seg033:050D                 mov     dx, ax
seg033:050F                 mov     al, byte_2B6C4
seg033:0512                 cbw
seg033:0513                 add     ax, dx
seg033:0515                 js      short loc_1E4B1
seg033:0517                 cmp     ax, 7Fh ; '␡'
seg033:051A                 jl      short loc_1E4B3
seg033:051C                 mov     ax, 7Fh ; '␡'
seg033:051F                 jmp     short loc_1E4B3
seg033:0521 ; ---------------------------------------------------------------------------
seg033:0521
seg033:0521 loc_1E4B1:                              ; CODE XREF: seg033:0515␘j
seg033:0521                 mov     al, 1
seg033:0523
seg033:0523 loc_1E4B3:                              ; CODE XREF: seg033:051A␘j
seg033:0523                                         ; seg033:051F␘j
seg033:0523                 mov     dl, al
seg033:0525                 mov     bx, word_2B9E3
seg033:0529                 sub     cl, cl
seg033:052B                 mov     dh, 40h ; '@'
seg033:052D                 call    off_2B9EC
seg033:0531
seg033:0531 locret_1E4C1:                           ; CODE XREF: seg033:04E7␘j
seg033:0531                 retn
seg033:0532 ; ---------------------------------------------------------------------------
seg033:0532                 and     bl, 3
seg033:0535                 test    byte_2B6C8, 80h
seg033:053A                 jz      short loc_1E4DB
seg033:053C                 mov     byte_2B928, 1
seg033:0541                 mov     byte_2B6C8, 0
seg033:0546                 call    sub_1DF92
seg033:0549                 jmp     short locret_1E51C
seg033:054B ; ---------------------------------------------------------------------------
seg033:054B
seg033:054B loc_1E4DB:                              ; CODE XREF: seg033:053A␘j
seg033:054B                 or      ch, ch
seg033:054D                 jnz     short loc_1E4EC
seg033:054F                 mov     [si-379Bh], di
seg033:0553                 mov     al, byte_2B927
seg033:0556                 mov     [si-3795h], ax
seg033:055A                 jmp     short locret_1E51C
seg033:055C ; ---------------------------------------------------------------------------
seg033:055C
seg033:055C loc_1E4EC:                              ; CODE XREF: seg033:054D␘j
seg033:055C                 mov     ax, [si-37A7h]
seg033:0560                 or      ax, ax
seg033:0562                 jnz     short loc_1E509
seg033:0564                 mov     ax, [si-379Bh]
seg033:0568                 or      ax, ax
seg033:056A                 jz      short locret_1E51C
seg033:056C                 mov     al, ch
seg033:056E                 cbw
seg033:056F                 mov     [si-37A7h], ax
seg033:0573                 mov     [si-37A1h], di
seg033:0577                 jmp     short loc_1E50D
seg033:0579 ; ---------------------------------------------------------------------------
seg033:0579
seg033:0579 loc_1E509:                              ; CODE XREF: seg033:0562␘j
seg033:0579                 cmp     al, 1
seg033:057B                 jz      short loc_1E518
seg033:057D
seg033:057D loc_1E50D:                              ; CODE XREF: seg033:0577␘j
seg033:057D                 mov     di, [si-379Bh]
seg033:0581                 mov     ax, [si-3795h]
seg033:0585                 mov     byte_2B927, al
seg033:0588
seg033:0588 loc_1E518:                              ; CODE XREF: seg033:057B␘j
seg033:0588                 dec     word ptr [si-37A7h]
seg033:058C
seg033:058C locret_1E51C:                           ; CODE XREF: seg033:0549␘j
seg033:058C                                         ; seg033:055A␘j ...
seg033:058C                 retn
seg033:058D ; ---------------------------------------------------------------------------
seg033:058D                 test    byte_2B6C8, 80h
seg033:0592                 jz      short locret_1E531
seg033:0594                 mov     byte_2B928, 1
seg033:0599                 mov     byte_2B6C8, 0
seg033:059E                 call    sub_1DF92
seg033:05A1
seg033:05A1 locret_1E531:                           ; CODE XREF: seg033:0592␘j
seg033:05A1                 retn
seg033:05A2 ; ---------------------------------------------------------------------------
seg033:05A2                 cmp     bl, 0Dh
seg033:05A5                 ja      short locret_1E53F
seg033:05A7                 mov     [bx-37B7h], ch
seg033:05AB                 call    off_2B9F0
seg033:05AF
seg033:05AF locret_1E53F:                           ; CODE XREF: seg033:05A5␘j
seg033:05AF                 retn
seg033:05B0 ; ---------------------------------------------------------------------------
seg033:05B0                 mov     ax, [si-37A1h]
seg033:05B4                 or      ax, ax
seg033:05B6                 jz      short locret_1E54A
seg033:05B8                 mov     di, ax
seg033:05BA
seg033:05BA locret_1E54A:                           ; CODE XREF: seg033:05B6␘j
seg033:05BA                 retn
seg033:05BB ; ---------------------------------------------------------------------------
seg033:05BB                 cli
seg033:05BC                 push    bx
seg033:05BD                 call    off_2B9FA
seg033:05C1                 add     sp, 2
seg033:05C4                 sti
seg033:05C5                 retn
seg033:05C6 ; ---------------------------------------------------------------------------
seg033:05C6                 mov     al, byte_2B927
seg033:05C9                 cmp     al, 0FCh ; 'n'
seg033:05CB                 jnz     short locret_1E56A
seg033:05CD                 mov     byte_2B928, 1
seg033:05D2                 mov     byte_2B6C8, 0
seg033:05D7                 call    sub_1DF92
seg033:05DA
seg033:05DA locret_1E56A:                           ; CODE XREF: seg033:05CB␘j
seg033:05DA                 retn
seg033:05DB
