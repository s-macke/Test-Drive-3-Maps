seg032:015C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:015C
seg032:015C
seg032:015C sub_1B2FC       proc near               ; CODE XREF: sub_1B1FC+19␘p
seg032:015C                                         ; seg032:00F5␘p
seg032:015C                 push    bx
seg032:015D                 mov     bx, word_2BDAD
seg032:0161                 sub     bx, word_2BDA9
seg032:0165                 inc     bx
seg032:0166                 call    sub_1B655
seg032:0169                 mov     word_2BDA5, ax
seg032:016C                 pop     ax
seg032:016D                 mov     bx, word_2BDAF
seg032:0171                 sub     bx, word_2BDAB
seg032:0175                 inc     bx
seg032:0176                 call    sub_1B655
seg032:0179                 mov     word_2BDA7, ax
seg032:017C                 mov     byte_2BDB1, 0
seg032:0181                 call    sub_1B325
seg032:0184                 retn
seg032:0184 sub_1B2FC       endp
seg032:0184
seg032:0185
