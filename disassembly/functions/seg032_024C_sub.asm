seg032:024C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:024C
seg032:024C
seg032:024C sub_1B3EC       proc near               ; CODE XREF: seg032:0009␘p
seg032:024C                                         ; sub_1B1FC+3␘p ...
seg032:024C                 call    nullsub_3
seg032:0251                 cmp     byte_2B5CC, 0
seg032:0256                 jz      short locret_1B409
seg032:0258                 cmp     byte_2BDB3, 0
seg032:025D                 jz      short loc_1B407
seg032:025F                 call    sub_1B42B
seg032:0262                 mov     byte_2BDB3, 0
seg032:0267
seg032:0267 loc_1B407:                              ; CODE XREF: sub_1B3EC+11␘j
seg032:0267                 or      sp, sp
seg032:0269
seg032:0269 locret_1B409:                           ; CODE XREF: sub_1B3EC+A␘j
seg032:0269                 retn
seg032:0269 sub_1B3EC       endp
seg032:0269
seg032:026A
