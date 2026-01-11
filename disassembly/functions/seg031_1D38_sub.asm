seg031:1D38 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1D38
seg031:1D38
seg031:1D38 sub_1AB98       proc near               ; CODE XREF: sub_1AAB5:loc_1AB79␘p
seg031:1D38                 push    cx
seg031:1D39                 mov     ax, [di-2]
seg031:1D3C                 test    al, 1
seg031:1D3E                 jz      short loc_1ABA3
seg031:1D40                 sub     cx, ax
seg031:1D42                 dec     cx
seg031:1D43
seg031:1D43 loc_1ABA3:                              ; CODE XREF: sub_1AB98+6␘j
seg031:1D43                 inc     cx
seg031:1D44                 inc     cx
seg031:1D45                 mov     dx, 7FFFh
seg031:1D48
seg031:1D48 loc_1ABA8:                              ; CODE XREF: sub_1AB98+19␙j
seg031:1D48                 cmp     dx, es:word_2B5B8
seg031:1D4D                 jbe     short loc_1ABB3
seg031:1D4F                 shr     dx, 1
seg031:1D51                 jnz     short loc_1ABA8
seg031:1D53
seg031:1D53 loc_1ABB3:                              ; CODE XREF: sub_1AB98+15␘j
seg031:1D53                                         ; sub_1AB98+34␙j
seg031:1D53                 mov     ax, cx
seg031:1D55                 add     ax, si
seg031:1D57                 jb      short loc_1ABCE
seg031:1D59                 add     ax, dx
seg031:1D5B                 jb      short loc_1ABCA
seg031:1D5D                 not     dx
seg031:1D5F                 and     ax, dx
seg031:1D61                 sub     ax, si
seg031:1D63                 call    sub_1ABD2
seg031:1D66                 jnz     short loc_1ABD0
seg031:1D68                 not     dx
seg031:1D6A
seg031:1D6A loc_1ABCA:                              ; CODE XREF: sub_1AB98+23␘j
seg031:1D6A                 shr     dx, 1
seg031:1D6C                 jnz     short loc_1ABB3
seg031:1D6E
seg031:1D6E loc_1ABCE:                              ; CODE XREF: sub_1AB98+1F␘j
seg031:1D6E                 xor     ax, ax
seg031:1D70
seg031:1D70 loc_1ABD0:                              ; CODE XREF: sub_1AB98+2E␘j
seg031:1D70                 pop     cx
seg031:1D71                 retn
seg031:1D71 sub_1AB98       endp
seg031:1D71
seg031:1D72
