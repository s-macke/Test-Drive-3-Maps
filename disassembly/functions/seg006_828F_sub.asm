seg006:828F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:828F
seg006:828F
seg006:828F sub_160DF       proc near               ; CODE XREF: sub_16275+160␙p
seg006:828F                 mov     bp, [bx+498Eh]
seg006:8293                 sub     bp, word_2AD27
seg006:8297                 neg     bp
seg006:8299                 add     bp, 1600h
seg006:829D                 sar     bp, 1
seg006:829F                 mov     cx, [si+498Eh]
seg006:82A3                 sub     cx, word_2AD27
seg006:82A7                 neg     cx
seg006:82A9                 add     cx, 1600h
seg006:82AD                 sar     cx, 1
seg006:82AF                 mov     dx, [di+498Eh]
seg006:82B3                 sub     dx, word_2AD27
seg006:82B7                 neg     dx
seg006:82B9                 add     dx, 1600h
seg006:82BD                 sar     dx, 1
seg006:82BF                 mov     ax, [bx+7B8Eh]
seg006:82C3                 mov     bx, [si+7B8Eh]
seg006:82C7                 mov     word_2AA86, ax
seg006:82CA                 sub     bx, ax
seg006:82CC                 mov     word_2AAAD, 0
seg006:82D2                 mov     word_2AAAF, 0
seg006:82D8                 inc     bx
seg006:82D9                 mov     word_2AAAB, bx
seg006:82DD                 dec     bx
seg006:82DE                 cmp     dx, cx
seg006:82E0                 js      short loc_16134
seg006:82E2                 xchg    cx, dx
seg006:82E4
seg006:82E4 loc_16134:                              ; CODE XREF: sub_160DF+51␘j
seg006:82E4                 mov     ax, dx
seg006:82E6                 sub     ax, bp
seg006:82E8                 neg     ax
seg006:82EA                 cwd
seg006:82EB                 idiv    bx
seg006:82ED                 mov     word_2AA9D, ax
seg006:82F0                 mov     ax, cx
seg006:82F2                 sub     ax, bp
seg006:82F4                 neg     ax
seg006:82F6                 cwd
seg006:82F7                 idiv    bx
seg006:82F9                 mov     word_2AA9F, ax
seg006:82FC                 mov     si, bp
seg006:82FE                 call    sub_15ADD
seg006:8301                 retn
seg006:8301 sub_160DF       endp
seg006:8301
seg006:8302 ; ---------------------------------------------------------------------------
seg006:8302 ; START OF FUNCTION CHUNK FOR sub_1603A
seg006:8302
seg006:8302 loc_16152:                              ; CODE XREF: sub_1603A+A3␘j
seg006:8302                 mov     ax, [si+7B8Eh]
seg006:8306                 cmp     ax, [bx+7B8Eh]
seg006:830A                 jnz     short loc_161CD
seg006:830A ; END OF FUNCTION CHUNK FOR sub_1603A
seg006:830C
