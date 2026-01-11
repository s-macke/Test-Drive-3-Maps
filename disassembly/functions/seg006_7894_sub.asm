seg006:7894 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7894
seg006:7894
seg006:7894 sub_156E4       proc near               ; CODE XREF: sub_112E8:loc_113FD␘p
seg006:7894                 mov     es, word_2D8AA
seg006:7898                 mov     bx, 2
seg006:789B                 mov     di, word_2AAC2
seg006:789F                 dec     di
seg006:78A0                 shl     di, 1
seg006:78A2                 mov     si, word_2BF7E
seg006:78A6                 add     di, si
seg006:78A8                 push    si
seg006:78A9                 push    di
seg006:78AA                 call    sub_15701
seg006:78AD                 add     sp, 4
seg006:78B0                 retn
seg006:78B0 sub_156E4       endp
seg006:78B0
seg006:78B1
