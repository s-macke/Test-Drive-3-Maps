seg006:453C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:453C
seg006:453C
seg006:453C sub_1238C       proc near               ; CODE XREF: sub_154A1:loc_1554E␙p
seg006:453C                 push    si
seg006:453D                 push    di
seg006:453E                 push    es
seg006:453F                 push    bp
seg006:4540                 call    sub_123A8
seg006:4543                 cmp     byte_28477, 0
seg006:4548                 jnz     short loc_123A3
seg006:454A                 call    sub_12803
seg006:454D                 call    sub_128BF
seg006:4550                 call    sub_12728
seg006:4553
seg006:4553 loc_123A3:                              ; CODE XREF: sub_1238C+C␘j
seg006:4553                 pop     bp
seg006:4554                 pop     es
seg006:4555                 pop     di
seg006:4556                 pop     si
seg006:4557                 retn
seg006:4557 sub_1238C       endp
seg006:4557
seg006:4558
