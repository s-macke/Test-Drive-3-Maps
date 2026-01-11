seg005:1700 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1700
seg005:1700
seg005:1700 sub_D620        proc near               ; CODE XREF: sub_D300+FE␘p
seg005:1700                                         ; sub_D300+10A␘p ...
seg005:1700                 lodsw
seg005:1701                 mov     bx, ax
seg005:1703                 lodsw
seg005:1704                 xchg    bl, ah
seg005:1706                 shl     ax, cl
seg005:1708                 or      ax, bx
seg005:170A                 xchg    al, ah
seg005:170C                 stosw
seg005:170D                 dec     ch
seg005:170F                 jnz     short sub_D620
seg005:1711                 retn
seg005:1711 sub_D620        endp
seg005:1711
seg005:1712
