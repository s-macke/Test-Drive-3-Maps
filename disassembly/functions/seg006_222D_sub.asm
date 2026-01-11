seg006:222D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:222D
seg006:222D ; Attributes: bp-based frame
seg006:222D
seg006:222D sub_1007D       proc far                ; CODE XREF: sub_94F4+11F0␘P
seg006:222D                                         ; sub_94F4+120C␘P
seg006:222D
seg006:222D arg_0           = word ptr  6
seg006:222D
seg006:222D                 push    bp
seg006:222E                 mov     bp, sp
seg006:2230                 mov     ax, [bp+arg_0]
seg006:2233                 mul     word_202E0
seg006:2237                 shr     ax, 1
seg006:2239                 shr     ax, 1
seg006:223B                 mul     word_2DAD8
seg006:223F                 mov     cx, 0FAh ; '·'
seg006:2242                 div     cx
seg006:2244                 mul     word_20318
seg006:2248                 mov     cx, word_20376
seg006:224C                 cmp     cx, dx
seg006:224E                 jbe     short loc_100A6
seg006:2250                 div     cx
seg006:2252                 shr     ax, 1
seg006:2254                 pop     bp
seg006:2255                 retf
seg006:2256 ; ---------------------------------------------------------------------------
seg006:2256
seg006:2256 loc_100A6:                              ; CODE XREF: sub_1007D+21␘j
seg006:2256                 mov     ax, 7FFFh
seg006:2259                 pop     bp
seg006:225A                 retf
seg006:225A sub_1007D       endp
seg006:225A
seg006:225B
