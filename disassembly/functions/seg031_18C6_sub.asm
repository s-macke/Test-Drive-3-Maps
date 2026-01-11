seg031:18C6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:18C6
seg031:18C6
seg031:18C6 sub_1A726       proc far                ; CODE XREF: sub_1A622+92␘p
seg031:18C6                                         ; sub_1A622+C2␘p
seg031:18C6                 mov     ax, 30h ; '0'
seg031:18C9                 push    ax
seg031:18CA                 push    cs
seg031:18CB                 call    near ptr sub_1A518
seg031:18CE                 add     sp, 2
seg031:18D1                 cmp     word_2BD5A, 10h
seg031:18D6                 jnz     short locret_1A74F
seg031:18D8                 cmp     word_2BD3E, 0
seg031:18DD                 jz      short loc_1A744
seg031:18DF                 mov     ax, 58h ; 'X'
seg031:18E2                 jmp     short loc_1A747
seg031:18E4 ; ---------------------------------------------------------------------------
seg031:18E4
seg031:18E4 loc_1A744:                              ; CODE XREF: sub_1A726+17␘j
seg031:18E4                 mov     ax, 78h ; 'x'
seg031:18E7
seg031:18E7 loc_1A747:                              ; CODE XREF: sub_1A726+1C␘j
seg031:18E7                 push    ax
seg031:18E8                 push    cs
seg031:18E9                 call    near ptr sub_1A518
seg031:18EC                 add     sp, 2
seg031:18EF
seg031:18EF locret_1A74F:                           ; CODE XREF: sub_1A726+10␘j
seg031:18EF                 retf
seg031:18EF sub_1A726       endp
seg031:18EF
seg031:18F0
