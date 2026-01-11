seg006:038A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:038A
seg006:038A
seg006:038A sub_E1DA        proc near               ; CODE XREF: seg006:036F␘p
seg006:038A                                         ; sub_10131+49␙p
seg006:038A                 mov     al, byte_2A6C7
seg006:038D                 mov     cx, word_2A6D7
seg006:0391                 mov     bx, 700h
seg006:0394                 cmp     al, 1
seg006:0396                 ja      short loc_E1F9
seg006:0398                 and     cx, 5555h
seg006:039C                 mov     bx, 440h
seg006:039F                 cmp     al, 1
seg006:03A1                 jz      short loc_E1F9
seg006:03A3                 and     cx, 0
seg006:03A6                 mov     bx, 300h
seg006:03A9
seg006:03A9 loc_E1F9:                               ; CODE XREF: sub_E1DA+C␘j
seg006:03A9                                         ; sub_E1DA+17␘j
seg006:03A9                 mov     word_2A6C8, bx
seg006:03AD                 mov     word_2AA40, cx
seg006:03B1                 shl     bx, 1
seg006:03B3                 mov     word_2A6CA, bx
seg006:03B7                 shl     bx, 1
seg006:03B9                 mov     word_2A6CC, bx
seg006:03BD                 mov     dx, word_1FBE4
seg006:03C1                 mov     cl, 2
seg006:03C3                 cmp     dl, 3
seg006:03C6                 jb      short loc_E220
seg006:03C8                 inc     cl
seg006:03CA                 cmp     dl, 6
seg006:03CD                 jb      short loc_E220
seg006:03CF                 retn
seg006:03D0 ; ---------------------------------------------------------------------------
seg006:03D0
seg006:03D0 loc_E220:                               ; CODE XREF: sub_E1DA+3C␘j
seg006:03D0                                         ; sub_E1DA+43␘j
seg006:03D0                 mov     ch, 5
seg006:03D2                 mov     dl, cl
seg006:03D4                 mov     bx, word_29461
seg006:03D8                 shl     bx, 1
seg006:03DA                 jmp     short loc_E243
seg006:03DC ; ---------------------------------------------------------------------------
seg006:03DC
seg006:03DC loc_E22C:                               ; CODE XREF: sub_E1DA+77␙j
seg006:03DC                 dec     dl
seg006:03DE                 jns     short loc_E243
seg006:03E0                 mov     ax, [bx-5C7Bh]
seg006:03E4                 and     ax, 3Fh
seg006:03E7                 cmp     al, 12h
seg006:03E9                 jb      short loc_E23F
seg006:03EB                 cmp     al, 14h
seg006:03ED                 jbe     short loc_E243
seg006:03EF
seg006:03EF loc_E23F:                               ; CODE XREF: sub_E1DA+5F␘j
seg006:03EF                 mov     [bx-5C7Bh], ax
seg006:03F3
seg006:03F3 loc_E243:                               ; CODE XREF: sub_E1DA+50␘j
seg006:03F3                                         ; sub_E1DA+54␘j ...
seg006:03F3                 dec     ch
seg006:03F5                 jnz     short loc_E24B
seg006:03F7                 mov     ch, 4
seg006:03F9                 mov     dl, cl
seg006:03FB
seg006:03FB loc_E24B:                               ; CODE XREF: sub_E1DA+6B␘j
seg006:03FB                 sub     bx, 2
seg006:03FE                 cmp     bx, 4
seg006:0401                 ja      short loc_E22C
seg006:0403                 retn
seg006:0403 sub_E1DA        endp
seg006:0403
seg006:0404
