seg006:013E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:013E
seg006:013E
seg006:013E sub_DF8E        proc near               ; CODE XREF: seg006:0984␙p
seg006:013E                 mov     cl, byte_2D895
seg006:0142                 cmp     cl, 1
seg006:0145                 jnz     short loc_DF9B
seg006:0147
seg006:0147 loc_DF97:                               ; CODE XREF: sub_DF8E+18␙j
seg006:0147                 call    sub_DF5C
seg006:014A                 retn
seg006:014B ; ---------------------------------------------------------------------------
seg006:014B
seg006:014B loc_DF9B:                               ; CODE XREF: sub_DF8E+7␘j
seg006:014B                 mov     ch, byte_2A6C1
seg006:014F                 mov     ah, byte_2D854
seg006:0153                 cmp     ch, 2
seg006:0156                 jb      short loc_DF97
seg006:0158                 mov     al, cl
seg006:015A                 add     al, 2
seg006:015C                 cmp     ch, al
seg006:015E                 jb      short loc_DFBA
seg006:0160                 add     al, cl
seg006:0162                 cmp     al, ah
seg006:0164                 ja      short locret_DFCA
seg006:0166                 cmp     ch, al
seg006:0168                 jnb     short locret_DFCA
seg006:016A
seg006:016A loc_DFBA:                               ; CODE XREF: sub_DF8E+20␘j
seg006:016A                 mov     byte_2A6C1, al
seg006:016D                 mov     dx, word_20312
seg006:0171                 mov     byte_2A6C0, dl
seg006:0175                 call    sub_DFCB
seg006:017A
seg006:017A locret_DFCA:                            ; CODE XREF: sub_DF8E+26␘j
seg006:017A                                         ; sub_DF8E+2A␘j
seg006:017A                 retn
seg006:017A sub_DF8E        endp
seg006:017A
seg006:017B
