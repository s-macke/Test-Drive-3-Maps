seg006:0E52 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0E52
seg006:0E52
seg006:0E52 sub_ECA2        proc near               ; CODE XREF: sub_110C3+3D␙p
seg006:0E52                                         ; sub_111BD+DF␙p ...
seg006:0E52                 push    bx
seg006:0E53                 push    cx
seg006:0E54                 mov     byte_28468, 4
seg006:0E59                 mov     cx, 6
seg006:0E5C                 sub     bx, bx
seg006:0E5E
seg006:0E5E loc_ECAE:                               ; CODE XREF: sub_ECA2+17␙j
seg006:0E5E                 mov     ax, [bx+1282h]
seg006:0E62                 mov     [bx+125Eh], ax
seg006:0E66                 add     bx, 2
seg006:0E69                 loop    loc_ECAE
seg006:0E6B                 pop     cx
seg006:0E6C                 pop     bx
seg006:0E6D                 retn
seg006:0E6D sub_ECA2        endp
seg006:0E6D
