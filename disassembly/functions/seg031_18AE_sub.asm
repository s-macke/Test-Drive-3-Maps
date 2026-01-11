seg031:18AE ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:18AE
seg031:18AE
seg031:18AE sub_1A70E       proc far                ; CODE XREF: sub_1A622+84␘p
seg031:18AE                                         ; sub_1A622+B1␘p
seg031:18AE                 cmp     word_2BD42, 0
seg031:18B3                 jz      short loc_1A71A
seg031:18B5                 mov     ax, 2Bh ; '+'
seg031:18B8                 jmp     short loc_1A71D
seg031:18BA ; ---------------------------------------------------------------------------
seg031:18BA
seg031:18BA loc_1A71A:                              ; CODE XREF: sub_1A70E+5␘j
seg031:18BA                 mov     ax, 20h ; ' '
seg031:18BD
seg031:18BD loc_1A71D:                              ; CODE XREF: sub_1A70E+A␘j
seg031:18BD                 push    ax
seg031:18BE                 push    cs
seg031:18BF                 call    near ptr sub_1A518
seg031:18C2                 add     sp, 2
seg031:18C5                 retf
seg031:18C5 sub_1A70E       endp
seg031:18C5
seg031:18C6
