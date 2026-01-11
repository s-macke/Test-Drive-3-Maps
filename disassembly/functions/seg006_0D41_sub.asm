seg006:0D41 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0D41
seg006:0D41
seg006:0D41 sub_EB91        proc near               ; CODE XREF: sub_94F4:loc_9BE6␘P
seg006:0D41                 cmp     word_1FBE4, 3
seg006:0D46                 jb      short locret_EBFC
seg006:0D48                 cmp     byte_2AA97, 0
seg006:0D4D                 jnz     short locret_EBFC
seg006:0D4F                 mov     ax, word_1F1B2
seg006:0D52                 test    ah, 0F8h
seg006:0D55                 jz      short loc_EBE2
seg006:0D55 sub_EB91        endp
seg006:0D55
seg006:0D57
