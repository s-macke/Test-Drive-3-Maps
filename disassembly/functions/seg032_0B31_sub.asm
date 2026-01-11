seg032:0B31 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0B31
seg032:0B31
seg032:0B31 sub_1BCD1       proc near               ; CODE XREF: seg032:0B9D␙p
seg032:0B31                 push    bx
seg032:0B32                 push    ax
seg032:0B33                 push    cx
seg032:0B34                 push    dx
seg032:0B35                 push    si
seg032:0B36                 push    di
seg032:0B37                 mov     word_2BE7C, 0FFFFh
seg032:0B3D                 call    sub_1BCE7
seg032:0B40                 pop     di
seg032:0B41                 pop     si
seg032:0B42                 pop     dx
seg032:0B43                 pop     cx
seg032:0B44                 pop     ax
seg032:0B45                 pop     bx
seg032:0B46                 retn
seg032:0B46 sub_1BCD1       endp
seg032:0B46
seg032:0B47
