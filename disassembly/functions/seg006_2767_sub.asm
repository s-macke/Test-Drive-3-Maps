seg006:2767 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2767
seg006:2767
seg006:2767 sub_105B7       proc near               ; CODE XREF: sub_10F0A+96␙p
seg006:2767                 push    bx
seg006:2768                 push    es
seg006:2769                 mov     es, word_2A9D5
seg006:276D                 mov     word_2A9D7, es
seg006:2771                 mov     cx, bx
seg006:2773                 mov     bl, byte_2A9C2
seg006:2777                 sub     bh, bh
seg006:2779                 mov     si, bx
seg006:277B                 mov     al, [si-6B13h]
seg006:277F                 and     al, 7
seg006:2781                 cmp     al, 2
seg006:2783                 jb      short loc_105D9
seg006:2785                 jz      short loc_105D8
seg006:2787                 dec     si
seg006:2788
seg006:2788 loc_105D8:                              ; CODE XREF: sub_105B7+1E␘j
seg006:2788                 dec     si
seg006:2789
seg006:2789 loc_105D9:                              ; CODE XREF: sub_105B7+1C␘j
seg006:2789                 shl     si, 1
seg006:278B                 mov     si, es:[si]
seg006:278E                 mov     bl, byte_2A9C0
seg006:2792                 cmp     bl, byte_2A9F7
seg006:2796                 jbe     short loc_105EC
seg006:2798                 mov     bl, byte_2A9F7
seg006:279C
seg006:279C loc_105EC:                              ; CODE XREF: sub_105B7+2F␘j
seg006:279C                 mov     bl, [bx-46E8h]
seg006:27A0                 shl     bx, 1
seg006:27A2                 add     si, bx
seg006:27A4                 mov     bx, cx
seg006:27A6                 mov     si, es:[si]
seg006:27A9                 mov     al, es:[si]
seg006:27AC                 sub     ah, ah
seg006:27AE                 inc     si
seg006:27AF                 mov     word_2A9D1, ax
seg006:27B2                 mov     ax, es:[si]
seg006:27B5                 or      al, al
seg006:27B7                 jz      short loc_10643
seg006:27B9                 or      ah, ah
seg006:27BB                 jz      short loc_10643
seg006:27BD                 mov     byte_2846C, al
seg006:27C0                 mov     byte_2846D, ah
seg006:27C4                 mov     byte ptr word_2A9C5, ah
seg006:27C8                 shl     bx, 1
seg006:27CA                 mov     dx, [bx-7462h]
seg006:27CE                 shr     bx, 1
seg006:27D0                 add     si, 2
seg006:27D3                 mov     word_2A9CB, si
seg006:27D7                 mov     di, si
seg006:27D9                 add     si, word_2A9D1
seg006:27DD                 test    byte_2A9BF, 80h
seg006:27E2                 jnz     short loc_10646
seg006:27E4                 shl     dx, 1
seg006:27E6                 shl     dx, 1
seg006:27E8                 rol     dx, 1
seg006:27EA                 xchg    dl, dh
seg006:27EC                 mov     word_2846A, dx
seg006:27F0                 call    sub_10840
seg006:27F3
seg006:27F3 loc_10643:                              ; CODE XREF: sub_105B7+50␘j
seg006:27F3                                         ; sub_105B7+54␘j
seg006:27F3                 pop     es
seg006:27F4                 pop     bx
seg006:27F5                 retn
seg006:27F6 ; ---------------------------------------------------------------------------
seg006:27F6
seg006:27F6 loc_10646:                              ; CODE XREF: sub_105B7+7B␘j
seg006:27F6                 sub     dx, word_2AD27
seg006:27FA                 sar     dx, 1
seg006:27FC                 sar     dx, 1
seg006:27FE                 sar     dx, 1
seg006:2800                 sar     dx, 1
seg006:2802                 sar     dx, 1
seg006:2804                 sar     dx, 1
seg006:2806                 neg     dx
seg006:2808                 add     dx, 58h ; 'X'
seg006:280B                 mov     word_2846A, dx
seg006:280F                 call    sub_10665
seg006:2812                 pop     es
seg006:2813                 pop     bx
seg006:2814                 retn
seg006:2814 sub_105B7       endp
seg006:2814
seg006:2815
