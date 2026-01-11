seg006:268C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:268C
seg006:268C
seg006:268C sub_104DC       proc near               ; CODE XREF: sub_10455+5C␘p
seg006:268C                 mov     byte_2A9C2, al
seg006:268F                 mov     cl, byte_285AB
seg006:2693                 sub     ch, ch
seg006:2695                 shl     cx, 1
seg006:2697                 mov     bx, ax
seg006:2699                 mov     ah, [bx-6B13h]
seg006:269D                 and     ah, 7
seg006:26A0                 jz      short loc_10515
seg006:26A2                 cmp     ah, 2
seg006:26A5                 jnb     short locret_10514
seg006:26A7                 mov     byte_2A9C1, 0
seg006:26AC                 mov     byte_2A9C0, 17h
seg006:26B1                 mov     bx, di
seg006:26B3                 add     di, cx
seg006:26B5                 mov     cl, byte_285AB
seg006:26B9
seg006:26B9 loc_10509:                              ; CODE XREF: sub_104DC+33␙j
seg006:26B9                 mov     es:[bx], di
seg006:26BC                 add     bx, 2
seg006:26BF                 loop    loc_10509
seg006:26C1                 call    sub_10566
seg006:26C4
seg006:26C4 locret_10514:                           ; CODE XREF: sub_104DC+19␘j
seg006:26C4                 retn
seg006:26C5 ; ---------------------------------------------------------------------------
seg006:26C5
seg006:26C5 loc_10515:                              ; CODE XREF: sub_104DC+14␘j
seg006:26C5                 mov     bx, di
seg006:26C7                 add     di, cx
seg006:26C9                 mov     word_2A9D3, 0FFFFh
seg006:26CF                 sub     ah, ah
seg006:26D1
seg006:26D1 loc_10521:                              ; CODE XREF: sub_104DC+87␙j
seg006:26D1                 mov     es:[bx], di
seg006:26D4                 push    bx
seg006:26D5                 push    ax
seg006:26D6                 mov     bl, ah
seg006:26D8                 sub     bh, bh
seg006:26DA                 mov     ah, [bx-46B7h]
seg006:26DE                 mov     byte_2A9C0, ah
seg006:26E2                 mov     byte_2A9C1, 0
seg006:26E7                 push    di
seg006:26E8                 call    sub_10566
seg006:26EB                 mov     bx, word_2A9CD
seg006:26EF                 mov     ax, es:[bx]
seg006:26F2                 cmp     ax, word_2A9D3
seg006:26F6                 jnz     short loc_10554
seg006:26F8                 pop     di
seg006:26F9                 pop     ax
seg006:26FA                 pop     bx
seg006:26FB                 mov     cx, es:[bx-2]
seg006:26FF                 mov     es:[bx], cx
seg006:2702                 jmp     short loc_1055A
seg006:2704 ; ---------------------------------------------------------------------------
seg006:2704
seg006:2704 loc_10554:                              ; CODE XREF: sub_104DC+6A␘j
seg006:2704                 mov     word_2A9D3, ax
seg006:2707                 pop     ax
seg006:2708                 pop     ax
seg006:2709                 pop     bx
seg006:270A
seg006:270A loc_1055A:                              ; CODE XREF: sub_104DC+76␘j
seg006:270A                 inc     ah
seg006:270C                 add     bx, 2
seg006:270F                 cmp     ah, byte_285AB
seg006:2713                 jb      short loc_10521
seg006:2715                 retn
seg006:2715 sub_104DC       endp
seg006:2715
seg006:2716
