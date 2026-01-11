seg006:3879 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:3879
seg006:3879
seg006:3879 sub_116C9       proc near               ; CODE XREF: sub_1176A+13D␙p
seg006:3879                                         ; sub_1176A+19D␙p ...
seg006:3879                 push    bp
seg006:387A                 mov     dx, [bx+240Eh]
seg006:387E                 push    bx
seg006:387F                 mov     bx, [bx+6F0Eh]
seg006:3883                 mov     bp, 2
seg006:3886                 sub     dx, word_2848A
seg006:388A                 jns     short loc_116E0
seg006:388C                 neg     dx
seg006:388E                 sub     bp, bp
seg006:3890
seg006:3890 loc_116E0:                              ; CODE XREF: sub_116C9+11␘j
seg006:3890                 cmp     dx, bx
seg006:3892                 jb      short loc_116E9
seg006:3894                 xchg    bx, dx
seg006:3896                 xor     bp, 8
seg006:3899
seg006:3899 loc_116E9:                              ; CODE XREF: sub_116C9+19␘j
seg006:3899                 sub     ax, ax
seg006:389B                 mov     ah, dl
seg006:389D                 mov     dl, dh
seg006:389F                 sub     dh, dh
seg006:38A1                 shl     ax, 1
seg006:38A3                 rcl     dx, 1
seg006:38A5                 cmp     dx, bx
seg006:38A7                 jnb     short loc_1173E
seg006:38A9                 div     bx
seg006:38AB
seg006:38AB loc_116FB:                              ; CODE XREF: sub_116C9+78␙j
seg006:38AB                 mov     bx, 1976h
seg006:38AE                 add     bx, [bp-4957h]
seg006:38B2                 shl     ax, 1
seg006:38B4                 add     bx, ax
seg006:38B6                 mov     ax, cs:[bx]
seg006:38B9                 add     ax, [bp-4967h]
seg006:38BD                 add     ax, word_28482
seg006:38C1                 pop     bx
seg006:38C2                 mov     cl, byte_2848C
seg006:38C6                 or      cl, cl
seg006:38C8                 jz      short loc_11732
seg006:38CA                 mov     ch, cl
seg006:38CC                 jns     short loc_11720
seg006:38CE                 neg     cl
seg006:38D0
seg006:38D0 loc_11720:                              ; CODE XREF: sub_116C9+53␘j
seg006:38D0                 mov     dx, [bx+498Eh]
seg006:38D4                 sub     dx, word_2AA81
seg006:38D8                 sar     dx, cl
seg006:38DA                 or      ch, ch
seg006:38DC                 js      short loc_11730
seg006:38DE                 neg     dx
seg006:38E0
seg006:38E0 loc_11730:                              ; CODE XREF: sub_116C9+63␘j
seg006:38E0                 add     ax, dx
seg006:38E2
seg006:38E2 loc_11732:                              ; CODE XREF: sub_116C9+4F␘j
seg006:38E2                 mov     [bx+560Eh], ax
seg006:38E6                 cmp     ax, word_2AABE
seg006:38EA                 jl      short loc_11743
seg006:38EC                 pop     bp
seg006:38ED                 retn
seg006:38EE ; ---------------------------------------------------------------------------
seg006:38EE
seg006:38EE loc_1173E:                              ; CODE XREF: sub_116C9+2E␘j
seg006:38EE                 mov     ax, 1FFh
seg006:38F1                 jmp     short loc_116FB
seg006:38F3 ; ---------------------------------------------------------------------------
seg006:38F3
seg006:38F3 loc_11743:                              ; CODE XREF: sub_116C9+71␘j
seg006:38F3                 mov     word_2AABE, ax
seg006:38F6                 pop     bp
seg006:38F7                 retn
seg006:38F7 sub_116C9       endp
seg006:38F7
seg006:38F8
