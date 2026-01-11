seg006:23B3 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:23B3
seg006:23B3
seg006:23B3 sub_10203       proc far                ; CODE XREF: sub_0+6C␘P
seg006:23B3                 mov     ax, word_2BF4C
seg006:23B6                 shr     ax, 1
seg006:23B8                 shr     ax, 1
seg006:23BA                 shr     ax, 1
seg006:23BC                 shr     ax, 1
seg006:23BE                 inc     ax
seg006:23BF                 add     ax, word_2BF4E
seg006:23C3                 mov     word_280BC, ax
seg006:23C6                 mov     ax, word_2DACC
seg006:23C9                 shr     ax, 1
seg006:23CB                 shr     ax, 1
seg006:23CD                 shr     ax, 1
seg006:23CF                 shr     ax, 1
seg006:23D1                 inc     ax
seg006:23D2                 add     ax, word_2DACE
seg006:23D6                 mov     word_280BE, ax
seg006:23D9                 retf
seg006:23D9 sub_10203       endp
seg006:23D9
seg006:23DA
