seg031:0704 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0704
seg031:0704
seg031:0704 sub_19564       proc near               ; CODE XREF: sub_19525+17␘p
seg031:0704                                         ; sub_19525+24␘p
seg031:0704                 mov     bx, 0F0h ; '='
seg031:0707                 cmp     [bp+6], bx
seg031:070A                 jbe     short loc_19573
seg031:070C                 mov     bx, [bp+6]
seg031:070F                 inc     bx
seg031:0710                 and     bx, 0FFFEh
seg031:0713
seg031:0713 loc_19573:                              ; CODE XREF: sub_19564+6␘j
seg031:0713                 mov     [bp-2], bx
seg031:0716                 xor     ax, ax
seg031:0718                 push    ds
seg031:0719                 push    ax
seg031:071A                 push    ax
seg031:071B                 lea     cx, [bx+0Eh]
seg031:071E                 push    cx
seg031:071F                 mov     al, 2
seg031:0721                 push    ax
seg031:0722                 call    sub_1AC16
seg031:0727                 add     sp, 8
seg031:072A                 cmp     dx, 0FFFFh
seg031:072D                 jz      short loc_195D0
seg031:072F                 mov     ax, dx
seg031:0731                 xchg    dx, word_2B5B4
seg031:0735                 mov     word_2B5B6, ax
seg031:0738                 cmp     ax, word_2B5BA
seg031:073C                 jbe     short loc_195A1
seg031:073E                 mov     word_2B5BA, ax
seg031:0741
seg031:0741 loc_195A1:                              ; CODE XREF: sub_19564+38␘j
seg031:0741                 or      dx, dx
seg031:0743                 jz      short loc_195AA
seg031:0745                 mov     ds, dx
seg031:0747                 mov     word_1F0E8, ax
seg031:074A
seg031:074A loc_195AA:                              ; CODE XREF: sub_19564+3F␘j
seg031:074A                 mov     bx, [bp-2]
seg031:074D                 mov     ds, ax
seg031:074F                 xor     ax, ax
seg031:0751                 mov     word_1F0E8, ax
seg031:0754                 dec     ax
seg031:0755                 dec     ax
seg031:0756                 mov     [bx+0Ch], ax
seg031:0759                 mov     ax, 0Ah
seg031:075C                 mov     word_1F0E0, ax
seg031:075F                 mov     word_1F0E2, ax
seg031:0762                 lea     ax, [bx+1]
seg031:0765                 mov     word_1F0EA, ax
seg031:0768                 add     ax, 0Dh
seg031:076B                 mov     word_1F0E6, ax
seg031:076E                 mov     ax, ds
seg031:0770
seg031:0770 loc_195D0:                              ; CODE XREF: sub_19564+29␘j
seg031:0770                 pop     ds
seg031:0771                 retn
seg031:0771 sub_19564       endp
seg031:0771
seg031:0772
