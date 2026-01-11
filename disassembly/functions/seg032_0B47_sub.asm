seg032:0B47 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0B47
seg032:0B47
seg032:0B47 sub_1BCE7       proc near               ; CODE XREF: sub_1BCD1+C␘p
seg032:0B47                 mov     word ptr unk_2BECC, 0
seg032:0B4D                 call    sub_1D0BB
seg032:0B50                 jnz     short loc_1BCF3
seg032:0B52                 retn
seg032:0B53 ; ---------------------------------------------------------------------------
seg032:0B53
seg032:0B53 loc_1BCF3:                              ; CODE XREF: sub_1BCE7+9␘j
seg032:0B53                 call    sub_1D0B0
seg032:0B56                 mov     word_2BEDA, cx
seg032:0B5A                 mov     word_2BEDC, dx
seg032:0B5E                 xor     ax, ax
seg032:0B60                 mov     word_2BEBE, ax
seg032:0B63                 mov     word_2BEC2, ax
seg032:0B66                 mov     word_2BEC6, ax
seg032:0B69                 mov     word_2BEC8, ax
seg032:0B6C                 mov     word_2BEC0, cx
seg032:0B70                 mov     word_2BEC4, dx
seg032:0B70 sub_1BCE7       endp
seg032:0B70
seg032:0B74
