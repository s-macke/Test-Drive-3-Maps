seg006:46FA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:46FA
seg006:46FA
seg006:46FA sub_1254A       proc near               ; CODE XREF: sub_12728+67␙p
seg006:46FA                 mov     es, word_280BC
seg006:46FE                 sub     si, si
seg006:4700                 mov     cx, 40h ; '@'
seg006:4703
seg006:4703 loc_12553:                              ; CODE XREF: sub_1254A+74␙j
seg006:4703                 mov     dl, [si-45C1h]
seg006:4707                 or      dl, dl
seg006:4709                 jz      short loc_125BD
seg006:470B                 inc     dl
seg006:470D
seg006:470D loc_1255D:                              ; CODE XREF: sub_1254A+26␙j
seg006:470D                 mov     dh, dl
seg006:470F                 and     dh, 3Fh
seg006:4712                 jnz     short loc_12578
seg006:4714                 mov     ax, word_2AC5F
seg006:4717                 or      ax, word_2AC61
seg006:471B                 jnz     short loc_12572
seg006:471D                 sub     dl, 38h ; '8'
seg006:4720                 jmp     short loc_1255D
seg006:4722 ; ---------------------------------------------------------------------------
seg006:4722
seg006:4722 loc_12572:                              ; CODE XREF: sub_1254A+21␘j
seg006:4722                 mov     [si-45C1h], ch
seg006:4726                 jmp     short loc_125BD
seg006:4728 ; ---------------------------------------------------------------------------
seg006:4728
seg006:4728 loc_12578:                              ; CODE XREF: sub_1254A+18␘j
seg006:4728                 mov     [si-45C1h], dl
seg006:472C                 and     dl, 0C0h
seg006:472F                 mov     ax, 606h
seg006:4732                 jz      short loc_12593
seg006:4734                 mov     ax, 0F0Fh
seg006:4737                 cmp     dl, 80h ; 'Ç'
seg006:473A                 jz      short loc_12593
seg006:473C                 mov     ax, 707h
seg006:473F                 jb      short loc_12593
seg006:4741                 sub     ax, ax
seg006:4743
seg006:4743 loc_12593:                              ; CODE XREF: sub_1254A+38␘j
seg006:4743                                         ; sub_1254A+40␘j ...
seg006:4743                 shl     si, 1
seg006:4745                 mov     di, [si-4581h]
seg006:4749                 mov     word_2AABE, 0
seg006:474F                 mov     bx, 77FBh
seg006:4752                 cmp     byte_2A6C6, 0
seg006:4757                 jz      short loc_125B0
seg006:4759                 sub     di, 1428h
seg006:475D                 mov     bx, 4FFBh
seg006:4760
seg006:4760 loc_125B0:                              ; CODE XREF: sub_1254A+5D␘j
seg006:4760                 cmp     dh, 1
seg006:4763                 jbe     short loc_125BA
seg006:4765                 call    sub_12628
seg006:4768                 jmp     short loc_125BD
seg006:476A ; ---------------------------------------------------------------------------
seg006:476A
seg006:476A loc_125BA:                              ; CODE XREF: sub_1254A+69␘j
seg006:476A                 call    sub_125C1
seg006:476D
seg006:476D loc_125BD:                              ; CODE XREF: sub_1254A+F␘j
seg006:476D                                         ; sub_1254A+2C␘j ...
seg006:476D                 inc     si
seg006:476E                 loop    loc_12553
seg006:4770                 retn
seg006:4770 sub_1254A       endp
seg006:4770
seg006:4771
