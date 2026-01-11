seg006:2716 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2716
seg006:2716
seg006:2716 sub_10566       proc near               ; CODE XREF: sub_104DC+35␘p
seg006:2716                                         ; sub_104DC+5C␘p
seg006:2716                 call    sub_10B82
seg006:2719                 mov     cl, byte_2A9C2
seg006:271D                 sub     ch, ch
seg006:271F                 shl     cx, 1
seg006:2721                 shl     cx, 1
seg006:2723                 shl     cx, 1
seg006:2725                 mov     si, cx
seg006:2727                 mov     ax, [si+240Ch]
seg006:272B                 mov     byte_2846C, al
seg006:272E                 mov     byte_2846D, ah
seg006:2732                 xchg    al, ah
seg006:2734                 sub     ah, ah
seg006:2736                 mov     es:[di], al
seg006:2739                 inc     di
seg006:273A                 mov     word_2A9CD, di
seg006:273E                 add     di, 2
seg006:2741                 mov     word_2A9CB, di
seg006:2745                 add     di, ax
seg006:2747                 mov     cx, [si+2410h]
seg006:274B                 add     cx, 240Ch
seg006:274F                 mov     si, [si+240Eh]
seg006:2753                 add     si, 240Ch
seg006:2757                 cmp     byte_2A9C1, 1
seg006:275C                 jb      short loc_105B3
seg006:275E                 call    sub_10A92
seg006:2761                 jmp     short locret_105B6
seg006:2763 ; ---------------------------------------------------------------------------
seg006:2763
seg006:2763 loc_105B3:                              ; CODE XREF: sub_10566+46␘j
seg006:2763                 call    sub_10A20
seg006:2766
seg006:2766 locret_105B6:                           ; CODE XREF: sub_10566+4B␘j
seg006:2766                 retn
seg006:2766 sub_10566       endp
seg006:2766
seg006:2767
