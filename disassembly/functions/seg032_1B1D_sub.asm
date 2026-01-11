seg032:1B1D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:1B1D
seg032:1B1D
seg032:1B1D sub_1CCBD       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:1B1D                                         ; DATA XREF: dseg:C5C0␙o
seg032:1B1D                 mov     bx, 171Eh
seg032:1B20                 test    byte ptr word_2BEEC+1, 10h
seg032:1B25                 jz      short loc_1CCE7
seg032:1B27                 test    byte_2BEE8, 4
seg032:1B2C                 jz      short loc_1CCE7
seg032:1B2E
seg032:1B2E loc_1CCCE:                              ; CODE XREF: sub_1CC97+23␘j
seg032:1B2E                                         ; sub_1CCD6+F␙j
seg032:1B2E                 mov     cx, 64h ; 'd'
seg032:1B31                 call    sub_1B68E
seg032:1B34                 clc
seg032:1B35                 retn
seg032:1B35 sub_1CCBD       endp
seg032:1B35
seg032:1B36
