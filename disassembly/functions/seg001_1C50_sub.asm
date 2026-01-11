seg001:1C50 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1C50
seg001:1C50
seg001:1C50 sub_3990        proc far                ; CODE XREF: sub_1DAA+807␘p
seg001:1C50                                         ; sub_3186+B0␘p ...
seg001:1C50                 cmp     word_2D628, 13h
seg001:1C55                 jnz     short locret_399C
seg001:1C57                 call    sub_CB3E
seg001:1C5C
seg001:1C5C locret_399C:                            ; CODE XREF: sub_3990+5␘j
seg001:1C5C                 retf
seg001:1C5C sub_3990        endp
seg001:1C5C
seg001:1C5C ; ---------------------------------------------------------------------------
seg001:1C5D                 align 2
seg001:1C5E
