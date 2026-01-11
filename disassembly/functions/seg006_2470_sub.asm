seg006:2470 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2470
seg006:2470
seg006:2470 sub_102C0       proc near               ; CODE XREF: sub_1022A+24␘p
seg006:2470                 sub     bx, bx
seg006:2472                 mov     cx, 60h ; '`'
seg006:2475                 sub     di, di
seg006:2477
seg006:2477 loc_102C7:                              ; CODE XREF: sub_102C0+12␙j
seg006:2477                 mov     [bx-4823h], di
seg006:247B                 add     bx, 2
seg006:247E                 add     di, 140h
seg006:2482                 loop    loc_102C7
seg006:2484                 sub     bx, bx
seg006:2486                 mov     cx, 13h
seg006:2489                 sub     di, di
seg006:248B
seg006:248B loc_102DB:                              ; CODE XREF: sub_102C0+25␙j
seg006:248B                 mov     [bx-4763h], di
seg006:248F                 add     bx, 2
seg006:2492                 add     di, 58h ; 'X'
seg006:2495                 loop    loc_102DB
seg006:2497                 retn
seg006:2497 sub_102C0       endp
seg006:2497
seg006:2498
