seg031:0772 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0772
seg031:0772
seg031:0772 sub_195D2       proc near               ; CODE XREF: sub_19525:loc_19544␘p
seg031:0772                                         ; sub_19525+29␘p
seg031:0772                 mov     ax, ds
seg031:0774                 mov     es, ax
seg031:0776                 assume es:dseg
seg031:0776                 mov     cx, [bp+6]
seg031:0779                 xor     bx, bx
seg031:077B                 mov     ds, word_2B5B6
seg031:077F                 call    sub_1AAB5
seg031:0782                 or      dx, dx
seg031:0784                 mov     cx, es
seg031:0786                 mov     ds, cx
seg031:0788                 retn
seg031:0788 sub_195D2       endp
seg031:0788
seg031:0788 ; ---------------------------------------------------------------------------
seg031:0789                 align 2
seg031:078A
