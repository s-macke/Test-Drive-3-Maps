seg006:49B3 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:49B3
seg006:49B3
seg006:49B3 sub_12803       proc near               ; CODE XREF: sub_1238C+E␘p
seg006:49B3                 sub     ax, ax
seg006:49B5                 cmp     byte_2A6C2, al
seg006:49B9                 jz      short locret_1281D
seg006:49BB                 cmp     byte_285B3, al
seg006:49BF                 jz      short loc_1281E
seg006:49C1                 cmp     word_2AC5F, ax
seg006:49C5                 jnz     short loc_1281E
seg006:49C7                 cmp     word_2AC61, ax
seg006:49CB                 jnz     short loc_1281E
seg006:49CD
seg006:49CD locret_1281D:                           ; CODE XREF: sub_12803+6␘j
seg006:49CD                 retn
seg006:49CE ; ---------------------------------------------------------------------------
seg006:49CE
seg006:49CE loc_1281E:                              ; CODE XREF: sub_12803+C␘j
seg006:49CE                                         ; sub_12803+12␘j ...
seg006:49CE                 mov     cx, 4
seg006:49D1                 sub     bx, bx
seg006:49D3                 mov     di, 0C60h
seg006:49D6
seg006:49D6 loc_12826:                              ; CODE XREF: sub_12803+4A␙j
seg006:49D6                 mov     ax, [bx-6C25h]
seg006:49DA                 add     bx, 2
seg006:49DD                 mov     dx, [bx-6C25h]
seg006:49E1                 add     bx, 2
seg006:49E4                 cmp     byte_2A6C6, 0
seg006:49E9                 jz      short loc_12842
seg006:49EB                 sub     ax, 10h
seg006:49EE                 sub     dx, 500h
seg006:49F2
seg006:49F2 loc_12842:                              ; CODE XREF: sub_12803+36␘j
seg006:49F2                 mov     [di+560Eh], ax
seg006:49F6                 mov     [di+498Eh], dx
seg006:49FA                 add     di, 2
seg006:49FD                 loop    loc_12826
seg006:49FF                 mov     word_2AA9B, 808h
seg006:4A05                 mov     byte_2AA84, 0
seg006:4A0A                 mov     si, 0C60h
seg006:4A0D                 mov     di, 0C62h
seg006:4A10                 mov     bp, 0C64h
seg006:4A13                 mov     bx, 0C66h
seg006:4A16                 mov     ax, ds
seg006:4A18                 mov     es, ax
seg006:4A1A                 assume es:dseg
seg006:4A1A                 mov     word_2AABA, 0BB87h
seg006:4A20                 call    sub_146A6
seg006:4A23                 mov     cx, 4
seg006:4A26                 mov     bx, 8
seg006:4A29                 mov     di, 0C60h
seg006:4A2C
seg006:4A2C loc_1287C:                              ; CODE XREF: sub_12803+A0␙j
seg006:4A2C                 mov     ax, [bx-6C25h]
seg006:4A30                 add     bx, 2
seg006:4A33                 mov     dx, [bx-6C25h]
seg006:4A37                 add     bx, 2
seg006:4A3A                 cmp     byte_2A6C6, 0
seg006:4A3F                 jz      short loc_12898
seg006:4A41                 sub     ax, 10h
seg006:4A44                 sub     dx, 500h
seg006:4A48
seg006:4A48 loc_12898:                              ; CODE XREF: sub_12803+8C␘j
seg006:4A48                 mov     [di+560Eh], ax
seg006:4A4C                 mov     [di+498Eh], dx
seg006:4A50                 add     di, 2
seg006:4A53                 loop    loc_1287C
seg006:4A55                 mov     si, 0C60h
seg006:4A58                 mov     di, 0C62h
seg006:4A5B                 mov     bp, 0C64h
seg006:4A5E                 mov     bx, 0C66h
seg006:4A61                 mov     ax, ds
seg006:4A63                 mov     es, ax
seg006:4A65                 mov     word_2AABA, 0BB87h
seg006:4A6B                 call    sub_146A6
seg006:4A6E                 retn
seg006:4A6E sub_12803       endp
seg006:4A6E
seg006:4A6F
