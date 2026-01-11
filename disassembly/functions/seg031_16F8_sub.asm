seg031:16F8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:16F8
seg031:16F8 ; Attributes: bp-based frame
seg031:16F8
seg031:16F8 sub_1A558       proc far                ; CODE XREF: sub_1A36E+C2␘p
seg031:16F8                                         ; sub_1A36E+DF␘p ...
seg031:16F8
seg031:16F8 arg_0           = word ptr  6
seg031:16F8
seg031:16F8                 push    bp
seg031:16F9                 mov     bp, sp
seg031:16FB                 sub     sp, 2
seg031:16FE                 push    di
seg031:16FF                 push    si
seg031:1700                 cmp     word_2BD50, 0
seg031:1705                 jnz     short loc_1A5B2
seg031:1707                 mov     si, [bp+arg_0]
seg031:170A                 or      si, si
seg031:170C                 jle     short loc_1A5B2
seg031:170E                 jmp     short loc_1A587
seg031:1710 ; ---------------------------------------------------------------------------
seg031:1710
seg031:1710 loc_1A570:                              ; CODE XREF: sub_1A558+3D␙j
seg031:1710                 push    word_2BD3A
seg031:1714                 push    word_2BD5C
seg031:1718                 call    sub_19AEE
seg031:171D                 add     sp, 4
seg031:1720
seg031:1720 loc_1A580:                              ; CODE XREF: sub_1A558+4A␙j
seg031:1720                 inc     ax
seg031:1721                 jnz     short loc_1A587
seg031:1723                 inc     word_2BD50
seg031:1727
seg031:1727 loc_1A587:                              ; CODE XREF: sub_1A558+16␘j
seg031:1727                                         ; sub_1A558+29␘j
seg031:1727                 mov     ax, si
seg031:1729                 dec     si
seg031:172A                 or      ax, ax
seg031:172C                 jle     short loc_1A5A4
seg031:172E                 mov     bx, word_2BD3A
seg031:1732                 dec     word ptr [bx+2]
seg031:1735                 js      short loc_1A570
seg031:1737                 mov     al, byte ptr word_2BD5C
seg031:173A                 mov     di, [bx]
seg031:173C                 inc     word ptr [bx]
seg031:173E                 mov     [di], al
seg031:1740                 sub     ah, ah
seg031:1742                 jmp     short loc_1A580
seg031:1744 ; ---------------------------------------------------------------------------
seg031:1744
seg031:1744 loc_1A5A4:                              ; CODE XREF: sub_1A558+34␘j
seg031:1744                 cmp     word_2BD50, 0
seg031:1749                 jnz     short loc_1A5B2
seg031:174B                 mov     ax, [bp+arg_0]
seg031:174E                 add     word_2BD4E, ax
seg031:1752
seg031:1752 loc_1A5B2:                              ; CODE XREF: sub_1A558+D␘j
seg031:1752                                         ; sub_1A558+14␘j ...
seg031:1752                 pop     si
seg031:1753                 pop     di
seg031:1754                 mov     sp, bp
seg031:1756                 pop     bp
seg031:1757                 retf
seg031:1757 sub_1A558       endp
seg031:1757
seg031:1758
