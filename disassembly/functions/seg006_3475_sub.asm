seg006:3475 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:3475
seg006:3475
seg006:3475 sub_112C5       proc near               ; CODE XREF: sub_112E8:loc_112F8␙p
seg006:3475                 push    es
seg006:3476                 mov     di, word_2C1A8
seg006:347A                 mov     es, word_2D8AA
seg006:347E                 mov     cx, 190h
seg006:3481                 mov     ax, word_2D8A8
seg006:3484
seg006:3484 loc_112D4:                              ; CODE XREF: sub_112C5+1F␙j
seg006:3484                 stosw
seg006:3485                 add     ax, 0Ah
seg006:3488                 stosw
seg006:3489                 add     ax, 0Ah
seg006:348C                 stosw
seg006:348D                 add     ax, 0Ah
seg006:3490                 stosw
seg006:3491                 add     ax, 0Ah
seg006:3494                 loop    loc_112D4
seg006:3496                 pop     es
seg006:3497                 retn
seg006:3497 sub_112C5       endp
seg006:3497
seg006:3498
