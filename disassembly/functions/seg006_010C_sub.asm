seg006:010C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:010C
seg006:010C
seg006:010C sub_DF5C        proc near               ; CODE XREF: sub_DF8E:loc_DF97␙p
seg006:010C                                         ; sub_E684:loc_E6BA␙p ...
seg006:010C                 cmp     byte_28477, 0
seg006:0111                 jnz     short locret_DF8D
seg006:0113                 mov     byte_2A6F1, 1
seg006:0118                 mov     al, byte_2D854
seg006:011B                 cmp     byte_2A6C1, al
seg006:011F                 jnb     short locret_DF8D
seg006:0121                 inc     byte_2A6C1
seg006:0125                 cmp     byte_2A6C1, 2
seg006:012A                 jb      short loc_DF88
seg006:012C                 mov     dx, word_20312
seg006:0130                 jnz     short loc_DF84
seg006:0132                 shl     dx, 1
seg006:0134
seg006:0134 loc_DF84:                               ; CODE XREF: sub_DF5C+24␘j
seg006:0134                 mov     byte_2A6C0, dl
seg006:0138
seg006:0138 loc_DF88:                               ; CODE XREF: sub_DF5C+1E␘j
seg006:0138                 call    sub_DFCB
seg006:013D
seg006:013D locret_DF8D:                            ; CODE XREF: sub_DF5C+5␘j
seg006:013D                                         ; sub_DF5C+13␘j
seg006:013D                 retn
seg006:013D sub_DF5C        endp
seg006:013D
seg006:013E
