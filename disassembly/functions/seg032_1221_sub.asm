seg032:1221 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:1221
seg032:1221
seg032:1221 sub_1C3C1       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:1221                                         ; DATA XREF: dseg:C5BC␙o
seg032:1221                 test    byte ptr word_2BEEC+1, 14h
seg032:1226                 jz      short loc_1C424
seg032:1228                 mov     bx, 1126h
seg032:122B                 cmp     word_2BEEE, 40h ; '@'
seg032:1230                 ja      short loc_1C3D5
seg032:1232                 mov     bx, 118Ah
seg032:1235
seg032:1235 loc_1C3D5:                              ; CODE XREF: sub_1C3B5+A␘j
seg032:1235                                         ; sub_1C3C1+F␘j
seg032:1235                 test    byte ptr word_2BEEC, 0Ch
seg032:123A                 jz      short loc_1C424
seg032:123C                 mov     cx, 64h ; 'd'
seg032:123F                 call    sub_1B68E
seg032:1242                 mov     ax, word_2BEEE
seg032:1245                 div     byte_2B5D9
seg032:1249                 dec     al
seg032:124B                 mov     byte_2B5DC, al
seg032:124E                 clc
seg032:124F                 retn
seg032:124F sub_1C3C1       endp
seg032:124F
seg032:1250
