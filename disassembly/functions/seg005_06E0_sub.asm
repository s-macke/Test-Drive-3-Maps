seg005:06E0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:06E0
seg005:06E0
seg005:06E0 sub_C600        proc far                ; CODE XREF: sub_1688:loc_1ABF␘P
seg005:06E0                                         ; sub_1C3E+23␘P
seg005:06E0                 call    sub_C58C
seg005:06E5                 mov     cx, word_1F19E
seg005:06E9                 shl     cx, 1
seg005:06EB                 shl     cx, 1
seg005:06ED                 cmp     cx, word_1F1A2
seg005:06F1                 jnb     short loc_C617
seg005:06F3                 mov     word_1F1A2, cx
seg005:06F7
seg005:06F7 loc_C617:                               ; CODE XREF: sub_C600+11␘j
seg005:06F7                 mov     cx, word_1F1A8
seg005:06FB                 shl     cx, 1
seg005:06FD                 shl     cx, 1
seg005:06FF                 cmp     cx, word_1F1AC
seg005:0703                 jnb     short locret_C629
seg005:0705                 mov     word_1F1AC, cx
seg005:0709
seg005:0709 locret_C629:                            ; CODE XREF: sub_C600+23␘j
seg005:0709                 retf
seg005:0709 sub_C600        endp
seg005:0709
seg005:070A
