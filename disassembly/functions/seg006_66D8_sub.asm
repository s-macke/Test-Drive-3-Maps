seg006:66D8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:66D8
seg006:66D8
seg006:66D8 sub_14528       proc near               ; CODE XREF: sub_146A6+8B␙p
seg006:66D8                 mov     cx, [bx+498Eh]
seg006:66DC                 mov     dx, [si+498Eh]
seg006:66E0                 mov     ax, [di+498Eh]
seg006:66E4                 cmp     ax, dx
seg006:66E6                 js      short loc_14548
seg006:66E8                 cmp     ax, cx
seg006:66EA                 js      short loc_14558
seg006:66EC                 cmp     cx, dx
seg006:66EE                 js      short loc_14544
seg006:66F0                 mov     cx, ax
seg006:66F2                 jmp     short loc_14558
seg006:66F4 ; ---------------------------------------------------------------------------
seg006:66F4
seg006:66F4 loc_14544:                              ; CODE XREF: sub_14528+16␘j
seg006:66F4                 mov     dx, ax
seg006:66F6                 jmp     short loc_14556
seg006:66F8 ; ---------------------------------------------------------------------------
seg006:66F8
seg006:66F8 loc_14548:                              ; CODE XREF: sub_14528+E␘j
seg006:66F8                 cmp     ax, cx
seg006:66FA                 jns     short loc_14556
seg006:66FC                 cmp     cx, dx
seg006:66FE                 js      short loc_14554
seg006:6700                 mov     dx, ax
seg006:6702                 jmp     short loc_14558
seg006:6704 ; ---------------------------------------------------------------------------
seg006:6704
seg006:6704 loc_14554:                              ; CODE XREF: sub_14528+26␘j
seg006:6704                 mov     cx, ax
seg006:6706
seg006:6706 loc_14556:                              ; CODE XREF: sub_14528+1E␘j
seg006:6706                                         ; sub_14528+22␘j
seg006:6706                 xchg    cx, dx
seg006:6708
seg006:6708 loc_14558:                              ; CODE XREF: sub_14528+12␘j
seg006:6708                                         ; sub_14528+1A␘j ...
seg006:6708                 mov     bp, cx
seg006:670A                 mov     si, dx
seg006:670C                 mov     ax, [bx+560Eh]
seg006:6710                 mov     word_2AA86, ax
seg006:6713                 sub     cx, cx
seg006:6715                 mov     word_2AAAD, cx
seg006:6719                 mov     word_2AAAF, cx
seg006:671D                 inc     cx
seg006:671E                 mov     word_2AAAB, cx
seg006:6722                 call    sub_11EA0
seg006:6725                 retn
seg006:6725 sub_14528       endp
seg006:6725
seg006:6726 ; ---------------------------------------------------------------------------
seg006:6726 ; START OF FUNCTION CHUNK FOR sub_144FA
seg006:6726
seg006:6726 loc_14576:                              ; CODE XREF: sub_144FA+2C␘j
seg006:6726                 cmp     ax, [si+560Eh]
seg006:672A                 jnz     short loc_145CB
seg006:672A ; END OF FUNCTION CHUNK FOR sub_144FA
seg006:672C
