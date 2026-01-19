seg032:0C95 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0C95
seg032:0C95
seg032:0C95 sub_1BE35       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:0C95                                         ; DATA XREF: dseg:C5AA␙o
seg032:0C95                 test    byte ptr word_2BEEC+1, 9
seg032:0C9A                 jz      short loc_1BE21
seg032:0C9C                 mov     ax, 7
seg032:0C9F                 mov     bx, 0BF8h
seg032:0CA2                 jmp     short loc_1BDCF
seg032:0CA2 sub_1BE35       endp
seg032:0CA2
