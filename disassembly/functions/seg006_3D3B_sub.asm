seg006:3D3B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:3D3B
seg006:3D3B
seg006:3D3B sub_11B8B       proc near               ; CODE XREF: sub_1176A:loc_11A70␘p
seg006:3D3B                 mov     ax, [bx+498Eh]
seg006:3D3F                 mov     cx, [si+498Eh]
seg006:3D43                 mov     dx, [di+498Eh]
seg006:3D47                 cmp     ax, cx
seg006:3D49                 jbe     short loc_11B9E
seg006:3D4B                 xchg    ax, cx
seg006:3D4C                 xchg    bx, si
seg006:3D4E
seg006:3D4E loc_11B9E:                              ; CODE XREF: sub_11B8B+E␘j
seg006:3D4E                 cmp     cx, dx
seg006:3D50                 jbe     short loc_11BA6
seg006:3D52                 xchg    cx, dx
seg006:3D54                 xchg    si, di
seg006:3D56
seg006:3D56 loc_11BA6:                              ; CODE XREF: sub_11B8B+15␘j
seg006:3D56                 cmp     ax, cx
seg006:3D58                 jbe     short loc_11BAD
seg006:3D5A                 xchg    ax, cx
seg006:3D5B                 xchg    bx, si
seg006:3D5D
seg006:3D5D loc_11BAD:                              ; CODE XREF: sub_11B8B+1D␘j
seg006:3D5D                 mov     word_2AAA1, bx
seg006:3D61                 mov     word_2AAA3, si
seg006:3D65                 mov     word_2AAA5, di
seg006:3D69                 cmp     ax, 2800h
seg006:3D6C                 jnb     short loc_11BDA
seg006:3D6E                 mov     dl, byte_2AAB9
seg006:3D72                 or      dl, dl
seg006:3D74                 jz      short loc_11BD7
seg006:3D76                 mov     word_2AABE, 0
seg006:3D7C                 mov     word_2AA86, 0
seg006:3D82                 call    sub_11CB1
seg006:3D85                 jmp     short loc_11BDA
seg006:3D87 ; ---------------------------------------------------------------------------
seg006:3D87
seg006:3D87 loc_11BD7:                              ; CODE XREF: sub_11B8B+39␘j
seg006:3D87                 call    sub_11C38
seg006:3D8A
seg006:3D8A loc_11BDA:                              ; CODE XREF: sub_11B8B+31␘j
seg006:3D8A                                         ; sub_11B8B+4A␘j
seg006:3D8A                 mov     bx, word_2AAA3
seg006:3D8E                 mov     si, word_2AAA5
seg006:3D92                 mov     ax, [bx+498Eh]
seg006:3D96                 cmp     ax, 2800h
seg006:3D99                 jnb     short loc_11C0B
seg006:3D9B                 mov     cx, [si+498Eh]
seg006:3D9F                 mov     dl, byte_2AAB9
seg006:3DA3                 or      dl, dl
seg006:3DA5                 jz      short loc_11C08
seg006:3DA7                 mov     word_2AABE, 0
seg006:3DAD                 mov     word_2AA86, 0
seg006:3DB3                 call    sub_11CB1
seg006:3DB6                 jmp     short loc_11C0B
seg006:3DB8 ; ---------------------------------------------------------------------------
seg006:3DB8
seg006:3DB8 loc_11C08:                              ; CODE XREF: sub_11B8B+6A␘j
seg006:3DB8                 call    sub_11C38
seg006:3DBB
seg006:3DBB loc_11C0B:                              ; CODE XREF: sub_11B8B+5E␘j
seg006:3DBB                                         ; sub_11B8B+7B␘j
seg006:3DBB                 mov     bx, word_2AAA5
seg006:3DBF                 mov     si, word_2AAA1
seg006:3DC3                 mov     ax, [bx+498Eh]
seg006:3DC7                 mov     cx, [si+498Eh]
seg006:3DCB                 mov     dl, byte_2AAB9
seg006:3DCF                 or      dl, dl
seg006:3DD1                 jz      short loc_11C34
seg006:3DD3                 mov     word_2AABE, 0
seg006:3DD9                 mov     word_2AA86, 0
seg006:3DDF                 call    sub_11CB1
seg006:3DE2                 jmp     short locret_11C37
seg006:3DE4 ; ---------------------------------------------------------------------------
seg006:3DE4
seg006:3DE4 loc_11C34:                              ; CODE XREF: sub_11B8B+96␘j
seg006:3DE4                 call    sub_11C38
seg006:3DE7
seg006:3DE7 locret_11C37:                           ; CODE XREF: sub_11B8B+A7␘j
seg006:3DE7                 retn
seg006:3DE7 sub_11B8B       endp
seg006:3DE7
seg006:3DE8
