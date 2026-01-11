seg006:3498 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:3498
seg006:3498
seg006:3498 sub_112E8       proc near               ; CODE XREF: sub_1118F+13␘p
seg006:3498                 push    bp
seg006:3499                 push    es
seg006:349A                 cmp     byte_2AD0D, 0
seg006:349F                 jnz     short loc_112F8
seg006:34A1                 cmp     byte_2AA3F, 0
seg006:34A6                 jz      short loc_11301
seg006:34A8
seg006:34A8 loc_112F8:                              ; CODE XREF: sub_112E8+7␘j
seg006:34A8                 call    sub_112C5
seg006:34AB                 mov     word_2AAC0, 0
seg006:34B1
seg006:34B1 loc_11301:                              ; CODE XREF: sub_112E8+E␘j
seg006:34B1                 mov     es, word_2D8AA
seg006:34B5                 mov     dx, 2
seg006:34B8                 sub     si, si
seg006:34BA                 mov     bp, word_2AAC2
seg006:34BE                 shl     bp, 1
seg006:34C0                 jmp     loc_11392
seg006:34C3 ; ---------------------------------------------------------------------------
seg006:34C3
seg006:34C3 loc_11313:                              ; CODE XREF: sub_112E8+AE␙j
seg006:34C3                 add     si, word_2C1A8
seg006:34C7                 mov     bx, es:[si]
seg006:34CA                 mov     ax, es:[bx]
seg006:34CD                 mov     di, ax
seg006:34CF                 and     di, 7FFh
seg006:34D3                 shl     di, 1
seg006:34D5                 mov     cx, [di+628Eh]
seg006:34D9                 add     bx, dx
seg006:34DB                 mov     di, es:[bx]
seg006:34DE                 shl     di, 1
seg006:34E0                 and     ah, 0E0h
seg006:34E3                 test    ah, 0C0h
seg006:34E6                 jz      short loc_11385
seg006:34E8                 test    ah, 20h
seg006:34EB                 jnz     short loc_11399
seg006:34ED                 add     cx, [di+628Eh]
seg006:34F1                 cmp     ah, 80h ; 'Ç'
seg006:34F4                 jb      short loc_11383
seg006:34F6                 jnz     short loc_11365
seg006:34F8                 add     bx, dx
seg006:34FA                 mov     di, es:[bx]
seg006:34FD                 shl     di, 1
seg006:34FF                 add     cx, [di+628Eh]
seg006:3503                 rcr     cx, 1
seg006:3505                 mov     ax, cx
seg006:3507                 shr     ax, 1
seg006:3509                 shr     ax, 1
seg006:350B                 sub     cx, ax
seg006:350D                 shr     ax, 1
seg006:350F                 shr     ax, 1
seg006:3511                 sub     cx, ax
seg006:3513                 jmp     short loc_11385
seg006:3515 ; ---------------------------------------------------------------------------
seg006:3515
seg006:3515 loc_11365:                              ; CODE XREF: sub_112E8+5E␘j
seg006:3515                 add     bx, dx
seg006:3517                 mov     di, es:[bx]
seg006:351A                 shl     di, 1
seg006:351C                 mov     ax, [di+628Eh]
seg006:3520                 add     bx, dx
seg006:3522                 mov     di, es:[bx]
seg006:3525                 and     di, 7FFh
seg006:3529                 shl     di, 1
seg006:352B                 add     ax, [di+628Eh]
seg006:352F                 add     cx, ax
seg006:3531                 rcr     cx, 1
seg006:3533
seg006:3533 loc_11383:                              ; CODE XREF: sub_112E8+5C␘j
seg006:3533                 shr     cx, 1
seg006:3535
seg006:3535 loc_11385:                              ; CODE XREF: sub_112E8+4E␘j
seg006:3535                                         ; sub_112E8+7B␘j ...
seg006:3535                 add     si, 0C80h
seg006:3539                 mov     es:[si], cx
seg006:353C                 sub     si, word_2BF7E
seg006:3540                 add     si, dx
seg006:3542
seg006:3542 loc_11392:                              ; CODE XREF: sub_112E8+28␘j
seg006:3542                 cmp     si, bp
seg006:3544                 jnb     short loc_113D5
seg006:3546                 jmp     loc_11313
seg006:3549 ; ---------------------------------------------------------------------------
seg006:3549
seg006:3549 loc_11399:                              ; CODE XREF: sub_112E8+53␘j
seg006:3549                 and     ah, 0C0h
seg006:354C                 cmp     ah, 80h ; 'Ç'
seg006:354F                 mov     ax, [di+628Eh]
seg006:3553                 jb      short loc_113CD
seg006:3555                 jz      short loc_113B8
seg006:3557                 cmp     cx, ax
seg006:3559                 jnb     short loc_113AD
seg006:355B                 mov     cx, ax
seg006:355D
seg006:355D loc_113AD:                              ; CODE XREF: sub_112E8+C1␘j
seg006:355D                 add     bx, dx
seg006:355F                 mov     di, es:[bx]
seg006:3562                 shl     di, 1
seg006:3564                 mov     ax, [di+628Eh]
seg006:3568
seg006:3568 loc_113B8:                              ; CODE XREF: sub_112E8+BD␘j
seg006:3568                 cmp     cx, ax
seg006:356A                 jnb     short loc_113BE
seg006:356C                 mov     cx, ax
seg006:356E
seg006:356E loc_113BE:                              ; CODE XREF: sub_112E8+D2␘j
seg006:356E                 add     bx, dx
seg006:3570                 mov     di, es:[bx]
seg006:3573                 and     di, 7FFh
seg006:3577                 shl     di, 1
seg006:3579                 mov     ax, [di+628Eh]
seg006:357D
seg006:357D loc_113CD:                              ; CODE XREF: sub_112E8+BB␘j
seg006:357D                 cmp     cx, ax
seg006:357F                 jnb     short loc_113D3
seg006:3581                 mov     cx, ax
seg006:3583
seg006:3583 loc_113D3:                              ; CODE XREF: sub_112E8+E7␘j
seg006:3583                 jmp     short loc_11385
seg006:3585 ; ---------------------------------------------------------------------------
seg006:3585
seg006:3585 loc_113D5:                              ; CODE XREF: sub_112E8+AC␘j
seg006:3585                 cmp     byte_2AD0D, 0
seg006:358A                 jnz     short loc_113FD
seg006:358C                 cmp     byte_2AA3F, 0
seg006:3591                 jnz     short loc_113FD
seg006:3593                 mov     di, word_2AAC2
seg006:3597                 dec     di
seg006:3598                 shl     di, 1
seg006:359A                 add     di, word_2BF7E
seg006:359E                 mov     si, word_2BF7E
seg006:35A2                 push    si
seg006:35A3                 push    di
seg006:35A4                 call    sub_157D2
seg006:35A7                 add     sp, 4
seg006:35AA                 pop     es
seg006:35AB                 pop     bp
seg006:35AC                 retn
seg006:35AD ; ---------------------------------------------------------------------------
seg006:35AD
seg006:35AD loc_113FD:                              ; CODE XREF: sub_112E8+F2␘j
seg006:35AD                                         ; sub_112E8+F9␘j
seg006:35AD                 call    sub_156E4
seg006:35B0                 mov     byte_2AD0D, 0
seg006:35B5                 pop     es
seg006:35B6                 pop     bp
seg006:35B7                 retn
seg006:35B7 sub_112E8       endp
seg006:35B7
seg006:35B8
