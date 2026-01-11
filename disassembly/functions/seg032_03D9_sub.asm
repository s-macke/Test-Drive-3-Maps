seg032:03D9 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:03D9
seg032:03D9
seg032:03D9 sub_1B579       proc near               ; CODE XREF: seg032:009B␘p
seg032:03D9                                         ; sub_1BAA7+5F␙p
seg032:03D9                 mov     bh, byte_2B5D7
seg032:03DD                 or      ah, ah
seg032:03DF                 jnz     short loc_1B58F
seg032:03E1                 mov     bl, bh
seg032:03E3                 cmp     byte_2B5CC, ah
seg032:03E7                 jnz     short loc_1B58B
seg032:03E9                 mov     bl, 1Fh
seg032:03EB
seg032:03EB loc_1B58B:                              ; CODE XREF: sub_1B579+E␘j
seg032:03EB                 cmp     al, bl
seg032:03ED                 jbe     short loc_1B593
seg032:03EF
seg032:03EF loc_1B58F:                              ; CODE XREF: sub_1B579+6␘j
seg032:03EF                 mov     al, bh
seg032:03F1                 xor     ah, ah
seg032:03F3
seg032:03F3 loc_1B593:                              ; CODE XREF: sub_1B579+14␘j
seg032:03F3                 xchg    al, byte_2BD68
seg032:03F7                 push    ax
seg032:03F8                 call    sub_1B59D
seg032:03FB                 pop     ax
seg032:03FC                 retn
seg032:03FC sub_1B579       endp
seg032:03FC
seg032:03FD
