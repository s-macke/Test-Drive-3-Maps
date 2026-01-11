seg006:336D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:336D
seg006:336D
seg006:336D sub_111BD       proc near               ; CODE XREF: sub_1118F+1D␘p
seg006:336D                 mov     ax, word_284AD
seg006:3370                 mov     es, word_2D8AA
seg006:3374                 mov     si, word_2BF7E
seg006:3378                 mov     dx, word_2AAC2
seg006:337C                 shl     dx, 1
seg006:337E                 add     dx, si
seg006:3380                 jmp     short loc_111E8
seg006:3382 ; ---------------------------------------------------------------------------
seg006:3382
seg006:3382 loc_111D2:                              ; CODE XREF: sub_111BD+2D␙j
seg006:3382                 cmp     ax, es:[si]
seg006:3385                 jb      short locret_111EC
seg006:3387                 push    ax
seg006:3388                 mov     word_2844A, si
seg006:338C                 push    dx
seg006:338D                 jmp     short loc_111ED
seg006:338F ; ---------------------------------------------------------------------------
seg006:338F
seg006:338F loc_111DF:                              ; CODE XREF: sub_111BD:loc_112C2␙j
seg006:338F                 pop     dx
seg006:3390                 mov     si, word_2844A
seg006:3394                 pop     ax
seg006:3395                 add     si, 2
seg006:3398
seg006:3398 loc_111E8:                              ; CODE XREF: sub_111BD+13␘j
seg006:3398                 cmp     si, dx
seg006:339A                 jb      short loc_111D2
seg006:339C
seg006:339C locret_111EC:                           ; CODE XREF: sub_111BD+18␘j
seg006:339C                 retn
seg006:339D ; ---------------------------------------------------------------------------
seg006:339D
seg006:339D loc_111ED:                              ; CODE XREF: sub_111BD+20␘j
seg006:339D                 mov     di, si
seg006:339F                 sub     di, 0C80h
seg006:33A3                 mov     bp, es:[di]
seg006:33A6                 mov     dx, es:[bp+0]
seg006:33AA                 add     bp, 6
seg006:33AD                 mov     cx, es:[bp+0]
seg006:33B1                 and     cx, 0F800h
seg006:33B5                 jz      short loc_11285
seg006:33B7                 shr     ch, 1
seg006:33B9                 shr     ch, 1
seg006:33BB                 shr     ch, 1
seg006:33BD                 cmp     ch, 18h
seg006:33C0                 jb      short loc_11229
seg006:33C2                 cmp     ch, 1Bh
seg006:33C5                 ja      short loc_11285
seg006:33C7                 cmp     ch, 1Bh
seg006:33CA                 jz      short loc_11226
seg006:33CC                 cmp     ch, 1Ah
seg006:33CF                 jnz     short loc_11226
seg006:33D1                 call    sub_1225C
seg006:33D4                 jmp     short loc_11285
seg006:33D6 ; ---------------------------------------------------------------------------
seg006:33D6
seg006:33D6 loc_11226:                              ; CODE XREF: sub_111BD+5D␘j
seg006:33D6                                         ; sub_111BD+62␘j
seg006:33D6                 call    sub_122FD
seg006:33D9
seg006:33D9 loc_11229:                              ; CODE XREF: sub_111BD+53␘j
seg006:33D9                 cmp     ch, 15h
seg006:33DC                 ja      short loc_11285
seg006:33DE                 cmp     ch, 0Fh
seg006:33E1                 jnb     short loc_11285
seg006:33E3                 cmp     ch, 2
seg006:33E6                 ja      short loc_11285
seg006:33E8                 mov     cl, ch
seg006:33EA                 rol     dh, 1
seg006:33EC                 rol     dh, 1
seg006:33EE                 and     dh, 3
seg006:33F1                 sub     bp, 6
seg006:33F4                 mov     si, 0FFFFh
seg006:33F7                 sub     di, di
seg006:33F9
seg006:33F9 loc_11249:                              ; CODE XREF: sub_111BD+AB␙j
seg006:33F9                 mov     bx, es:[bp+0]
seg006:33FD                 and     bx, 7FFh
seg006:3401                 shl     bx, 1
seg006:3403                 mov     ax, [bx+240Eh]
seg006:3407                 cmp     ax, di
seg006:3409                 jbe     short loc_1125D
seg006:340B                 mov     di, ax
seg006:340D
seg006:340D loc_1125D:                              ; CODE XREF: sub_111BD+9C␘j
seg006:340D                 cmp     ax, si
seg006:340F                 jnb     short loc_11263
seg006:3411                 mov     si, ax
seg006:3413
seg006:3413 loc_11263:                              ; CODE XREF: sub_111BD+A2␘j
seg006:3413                 add     bp, 2
seg006:3416                 dec     dh
seg006:3418                 jns     short loc_11249
seg006:341A                 mov     ax, word_291DF
seg006:341D                 mov     bp, ax
seg006:341F                 mov     dx, word_284AF
seg006:3423                 sub     ax, dx
seg006:3425                 jns     short loc_11279
seg006:3427                 sub     ax, ax
seg006:3429
seg006:3429 loc_11279:                              ; CODE XREF: sub_111BD+B8␘j
seg006:3429                 add     bp, dx
seg006:342B                 cmp     si, bp
seg006:342D                 ja      short loc_11283
seg006:342F                 cmp     di, ax
seg006:3431                 jnb     short loc_11285
seg006:3433
seg006:3433 loc_11283:                              ; CODE XREF: sub_111BD+C0␘j
seg006:3433                 sub     cl, cl
seg006:3435
seg006:3435 loc_11285:                              ; CODE XREF: sub_111BD+48␘j
seg006:3435                                         ; sub_111BD+58␘j ...
seg006:3435                 or      cl, cl
seg006:3437                 jz      short loc_112C2
seg006:3439                 cmp     ch, 1
seg006:343C                 jnz     short loc_112A1
seg006:343E                 mov     ax, word_20376
seg006:3441                 or      ax, ax
seg006:3443                 jns     short loc_11297
seg006:3445                 neg     ax
seg006:3447
seg006:3447 loc_11297:                              ; CODE XREF: sub_111BD+D6␘j
seg006:3447                 cmp     ax, 14h
seg006:344A                 jnb     short loc_112A1
seg006:344C                 call    sub_ECA2
seg006:344F                 jmp     short loc_112C2
seg006:3451 ; ---------------------------------------------------------------------------
seg006:3451
seg006:3451 loc_112A1:                              ; CODE XREF: sub_111BD+CF␘j
seg006:3451                                         ; sub_111BD+DD␘j
seg006:3451                 mov     byte_2AA92, cl
seg006:3455                 mov     byte_2AA98, ch
seg006:3459                 mov     si, word_2844A
seg006:345D                 sub     si, 0C80h
seg006:3461                 mov     ax, es:[si]
seg006:3464                 sub     ax, word_2D8A8
seg006:3468                 sub     dx, dx
seg006:346A                 mov     cx, 0Ah
seg006:346D                 div     cx
seg006:346F                 mov     word_2AA93, ax
seg006:3472
seg006:3472 loc_112C2:                              ; CODE XREF: sub_111BD+CA␘j
seg006:3472                                         ; sub_111BD+E2␘j
seg006:3472                 jmp     loc_111DF
seg006:3472 sub_111BD       endp
seg006:3472
seg006:3475
