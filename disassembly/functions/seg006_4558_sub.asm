seg006:4558 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4558
seg006:4558
seg006:4558 sub_123A8       proc near               ; CODE XREF: sub_1238C+4␘p
seg006:4558                 mov     byte_285B4, 1
seg006:455D                 mov     bx, 7800h
seg006:4560                 cmp     byte_2A6C6, 0
seg006:4565                 jz      short loc_123BA
seg006:4567                 mov     bx, 5000h
seg006:456A
seg006:456A loc_123BA:                              ; CODE XREF: sub_123A8+D␘j
seg006:456A                 mov     si, word_2AC61
seg006:456E                 dec     si
seg006:456F                 jns     short loc_123E8
seg006:4571                 mov     si, word_2AC5F
seg006:4575                 dec     si
seg006:4576                 jns     short loc_12418
seg006:4578                 mov     byte_285B4, 0
seg006:457D
seg006:457D loc_123CD:                              ; CODE XREF: sub_123A8+45␙j
seg006:457D                                         ; sub_123A8+75␙j
seg006:457D                 test    byte ptr word_1F1B2, 4
seg006:4582                 jnz     short locret_123E7
seg006:4584                 mov     bl, byte_2AB1E
seg006:4588                 inc     bl
seg006:458A                 and     bl, 3Fh
seg006:458D                 mov     byte_2AB1E, bl
seg006:4591                 sub     bh, bh
seg006:4593                 mov     [bx-45C1h], bh
seg006:4597
seg006:4597 locret_123E7:                           ; CODE XREF: sub_123A8+2A␘j
seg006:4597                 retn
seg006:4598 ; ---------------------------------------------------------------------------
seg006:4598
seg006:4598 loc_123E8:                              ; CODE XREF: sub_123A8+17␘j
seg006:4598                 cmp     word_2AA6D, 0
seg006:459D                 jnz     short loc_123CD
seg006:459F                 mov     es, word_280BC
seg006:45A3                 mov     word_2AABE, 0
seg006:45A9                 mov     al, 0Fh
seg006:45AB                 mov     di, word_1F1B2
seg006:45AF                 call    sub_12476
seg006:45B2                 mov     di, word_1F1B4
seg006:45B6                 mov     si, word_2AC61
seg006:45BA                 dec     si
seg006:45BB                 call    sub_12476
seg006:45BE                 mov     si, word_2AC61
seg006:45C2                 mov     dl, 80h ; 'Ç'
seg006:45C4                 call    sub_1249D
seg006:45C7                 retn
seg006:45C8 ; ---------------------------------------------------------------------------
seg006:45C8
seg006:45C8 loc_12418:                              ; CODE XREF: sub_123A8+1E␘j
seg006:45C8                 cmp     word_2AA6D, 0
seg006:45CD                 jnz     short loc_123CD
seg006:45CF                 mov     es, word_280BC
seg006:45D3                 mov     word_2AABE, 0
seg006:45D9                 mov     al, 7
seg006:45DB                 mov     di, word_1F1B2
seg006:45DF                 call    sub_12448
seg006:45E2                 mov     di, word_1F1B4
seg006:45E6                 mov     si, word_2AC5F
seg006:45EA                 dec     si
seg006:45EB                 call    sub_12448
seg006:45EE                 mov     si, word_2AC5F
seg006:45F2                 mov     dl, 40h ; '@'
seg006:45F4                 call    sub_1249D
seg006:45F7                 retn
seg006:45F7 sub_123A8       endp
seg006:45F7
seg006:45F8
