seg006:6F34 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6F34
seg006:6F34
seg006:6F34 sub_14D84       proc near               ; CODE XREF: sub_14D99+C8␙p
seg006:6F34                 push    bx
seg006:6F35                 mov     bx, 13Eh
seg006:6F38                 sub     ax, ax
seg006:6F3A
seg006:6F3A loc_14D8A:                              ; CODE XREF: sub_14D84+11␙j
seg006:6F3A                 mov     [bx-4FFBh], ax
seg006:6F3E                 mov     [bx-4D7Bh], ax
seg006:6F42                 sub     bx, 2
seg006:6F45                 jns     short loc_14D8A
seg006:6F47                 pop     bx
seg006:6F48                 retn
seg006:6F48 sub_14D84       endp
seg006:6F48
seg006:6F49
