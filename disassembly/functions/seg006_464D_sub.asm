seg006:464D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:464D
seg006:464D
seg006:464D sub_1249D       proc near               ; CODE XREF: sub_123A8+6C␘p
seg006:464D                                         ; sub_123A8+9C␘p
seg006:464D                 mov     ax, word_1F1B4
seg006:4650                 mov     bl, byte ptr word_1F1B2
seg006:4654                 shr     bl, 1
seg006:4656                 shr     bl, 1
seg006:4658                 sub     bh, bh
seg006:465A                 and     bl, 7
seg006:465D                 cmp     bx, si
seg006:465F                 jnb     short loc_124B4
seg006:4661                 call    sub_124C8
seg006:4664
seg006:4664 loc_124B4:                              ; CODE XREF: sub_1249D+12␘j
seg006:4664                 mov     ax, word_1F1B2
seg006:4667                 mov     bl, byte ptr word_1F1B4
seg006:466B                 sub     bh, bh
seg006:466D                 and     bl, 7
seg006:4670                 cmp     bx, si
seg006:4672                 jnb     short locret_124C7
seg006:4674                 call    sub_124C8
seg006:4677
seg006:4677 locret_124C7:                           ; CODE XREF: sub_1249D+25␘j
seg006:4677                 retn
seg006:4677 sub_1249D       endp
seg006:4677
seg006:4678
