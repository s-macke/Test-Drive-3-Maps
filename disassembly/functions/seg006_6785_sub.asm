seg006:6785 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6785
seg006:6785
seg006:6785 sub_145D5       proc near               ; CODE XREF: sub_146A6+BF␙p
seg006:6785                 mov     bp, [di+498Eh]
seg006:6789                 mov     cx, [bx+498Eh]
seg006:678D                 mov     dx, [si+498Eh]
seg006:6791                 mov     ax, [bx+560Eh]
seg006:6795                 mov     bx, [di+560Eh]
seg006:6799                 mov     word_2AA86, ax
seg006:679C                 sub     bx, ax
seg006:679E                 mov     word_2AAAD, 0
seg006:67A4                 mov     word_2AAAF, 0
seg006:67AA                 inc     bx
seg006:67AB                 mov     word_2AAAB, bx
seg006:67AF                 dec     bx
seg006:67B0                 cmp     dx, cx
seg006:67B2                 js      short loc_14606
seg006:67B4                 xchg    cx, dx
seg006:67B6
seg006:67B6 loc_14606:                              ; CODE XREF: sub_145D5+2D␘j
seg006:67B6                 mov     si, dx
seg006:67B8                 mov     ax, dx
seg006:67BA                 sub     ax, bp
seg006:67BC                 cwd
seg006:67BD                 idiv    bx
seg006:67BF                 mov     word_2AA9D, ax
seg006:67C2                 mov     ax, cx
seg006:67C4                 sub     ax, bp
seg006:67C6                 cwd
seg006:67C7                 idiv    bx
seg006:67C9                 mov     word_2AA9F, ax
seg006:67CC                 mov     bp, cx
seg006:67CE                 call    sub_11EA0
seg006:67D1                 retn
seg006:67D1 sub_145D5       endp
seg006:67D1
seg006:67D2 ; ---------------------------------------------------------------------------
seg006:67D2 ; START OF FUNCTION CHUNK FOR sub_144FA
seg006:67D2
seg006:67D2 loc_14622:                              ; CODE XREF: sub_144FA+D9␘j
seg006:67D2                 mov     bp, [bx+498Eh]
seg006:67D6                 mov     cx, [si+498Eh]
seg006:67DA                 mov     dx, [di+498Eh]
seg006:67DE                 mov     ax, [bx+560Eh]
seg006:67E2                 mov     bx, [si+560Eh]
seg006:67E6                 mov     word_2AAB1, cx
seg006:67EA                 mov     word_2AAB3, cx
seg006:67EE                 mov     word_2AA86, ax
seg006:67F1                 sub     bx, ax
seg006:67F3                 inc     bx
seg006:67F4                 mov     word_2AAAB, bx
seg006:67F8                 dec     bx
seg006:67F9                 mov     ax, [di+560Eh]
seg006:67FD                 sub     ax, word_2AA86
seg006:6801                 mov     word_2AAAF, 0
seg006:6807                 mov     si, ax
seg006:6809                 sub     ax, bx
seg006:680B                 mov     di, ax
seg006:680D                 mov     word_2AAAD, ax
seg006:6810                 mov     ax, dx
seg006:6812                 sub     ax, cx
seg006:6814                 push    dx
seg006:6815                 neg     ax
seg006:6817                 cwd
seg006:6818                 idiv    di
seg006:681A                 mov     word_2844E, ax
seg006:681D                 mov     byte_2AA99, 2
seg006:6822                 pop     ax
seg006:6823                 sub     ax, bp
seg006:6825                 neg     ax
seg006:6827                 cwd
seg006:6828                 idiv    si
seg006:682A                 mov     word_2AA9D, ax
seg006:682D                 mov     ax, cx
seg006:682F                 sub     ax, bp
seg006:6831                 neg     ax
seg006:6833                 cwd
seg006:6834                 idiv    bx
seg006:6836                 cmp     ax, word_2AA9D
seg006:683A                 jle     short loc_1469D
seg006:683C                 xchg    ax, word_2AA9D
seg006:6840                 mov     bx, word_2844E
seg006:6844                 mov     word_2844C, bx
seg006:6848                 mov     byte_2AA99, 1
seg006:684D
seg006:684D loc_1469D:                              ; CODE XREF: sub_144FA+190␘j
seg006:684D                 mov     word_2AA9F, ax
seg006:6850                 mov     si, bp
seg006:6852                 call    sub_11EA0
seg006:6855                 retn
seg006:6855 ; END OF FUNCTION CHUNK FOR sub_144FA
seg006:6856
