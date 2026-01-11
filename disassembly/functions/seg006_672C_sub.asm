seg006:672C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:672C
seg006:672C
seg006:672C sub_1457C       proc near               ; CODE XREF: sub_146A6+F7␙p
seg006:672C                 mov     bp, [bx+498Eh]
seg006:6730                 mov     cx, [si+498Eh]
seg006:6734                 mov     dx, [di+498Eh]
seg006:6738                 mov     ax, [bx+560Eh]
seg006:673C                 mov     bx, [si+560Eh]
seg006:6740                 mov     word_2AA86, ax
seg006:6743                 sub     bx, ax
seg006:6745                 mov     word_2AAAD, 0
seg006:674B                 mov     word_2AAAF, 0
seg006:6751                 inc     bx
seg006:6752                 mov     word_2AAAB, bx
seg006:6756                 dec     bx
seg006:6757                 cmp     dx, cx
seg006:6759                 js      short loc_145AD
seg006:675B                 xchg    cx, dx
seg006:675D
seg006:675D loc_145AD:                              ; CODE XREF: sub_1457C+2D␘j
seg006:675D                 mov     ax, dx
seg006:675F                 sub     ax, bp
seg006:6761                 neg     ax
seg006:6763                 cwd
seg006:6764                 idiv    bx
seg006:6766                 mov     word_2AA9D, ax
seg006:6769                 mov     ax, cx
seg006:676B                 sub     ax, bp
seg006:676D                 neg     ax
seg006:676F                 cwd
seg006:6770                 idiv    bx
seg006:6772                 mov     word_2AA9F, ax
seg006:6775                 mov     si, bp
seg006:6777                 call    sub_11EA0
seg006:677A                 retn
seg006:677A sub_1457C       endp
seg006:677A
seg006:677B ; ---------------------------------------------------------------------------
seg006:677B ; START OF FUNCTION CHUNK FOR sub_144FA
seg006:677B
seg006:677B loc_145CB:                              ; CODE XREF: sub_144FA+80␘j
seg006:677B                 mov     ax, [si+560Eh]
seg006:677F                 cmp     ax, [bx+560Eh]
seg006:6783                 jnz     short loc_14622
seg006:6783 ; END OF FUNCTION CHUNK FOR sub_144FA
seg006:6785
