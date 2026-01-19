seg032:1AF7 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:1AF7
seg032:1AF7
seg032:1AF7 sub_1CC97       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:1AF7                                         ; DATA XREF: dseg:C5BE␙o
seg032:1AF7                 mov     bx, 16BAh
seg032:1AFA                 test    byte ptr word_2BEEC+1, 10h
seg032:1AFF                 jz      short loc_1CCE7
seg032:1B01                 test    byte_2BEE8, 2
seg032:1B06                 jz      short loc_1CCE7
seg032:1B08                 mov     word_2BEF6, 50h ; 'P'
seg032:1B0E                 mov     word_2BEF8, 0FFB0h
seg032:1B14                 mov     word_2BEFA, 0
seg032:1B1A                 jmp     short loc_1CCCE
seg032:1B1A sub_1CC97       endp
seg032:1B1A
