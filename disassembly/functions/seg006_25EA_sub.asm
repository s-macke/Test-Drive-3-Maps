seg006:25EA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:25EA
seg006:25EA
seg006:25EA sub_1043A       proc near               ; CODE XREF: sub_10455+19␙p
seg006:25EA                 sub     bh, bh
seg006:25EC                 mov     ax, word_2D628
seg006:25EF                 cmp     al, 13h
seg006:25F1                 jnz     short loc_10444
seg006:25F3                 retn
seg006:25F4 ; ---------------------------------------------------------------------------
seg006:25F4
seg006:25F4 loc_10444:                              ; CODE XREF: sub_1043A+7␘j
seg006:25F4                                         ; sub_1043A+18␙j
seg006:25F4                 mov     al, [di]
seg006:25F6                 cmp     al, 10h
seg006:25F8                 jb      short loc_1044F
seg006:25FA                 mov     bl, al
seg006:25FC                 mov     al, [bx+si-10h]
seg006:25FF
seg006:25FF loc_1044F:                              ; CODE XREF: sub_1043A+E␘j
seg006:25FF                 stosb
seg006:2600                 cmp     di, dx
seg006:2602                 jb      short loc_10444
seg006:2604                 retn
seg006:2604 sub_1043A       endp
seg006:2604
seg006:2605
