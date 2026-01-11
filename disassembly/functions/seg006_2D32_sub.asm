seg006:2D32 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2D32
seg006:2D32
seg006:2D32 sub_10B82       proc near               ; CODE XREF: sub_10566␘p
seg006:2D32                 mov     ah, byte_2A9C0
seg006:2D36                 cmp     ah, 18h
seg006:2D39                 jb      short loc_10B9E
seg006:2D3B                 sub     ah, 18h
seg006:2D3E                 inc     byte_2A9C1
seg006:2D42                 cmp     ah, 18h
seg006:2D45                 jb      short loc_10B9E
seg006:2D47                 inc     byte_2A9C1
seg006:2D4B                 sub     ah, 18h
seg006:2D4E
seg006:2D4E loc_10B9E:                              ; CODE XREF: sub_10B82+7␘j
seg006:2D4E                                         ; sub_10B82+13␘j
seg006:2D4E                 sub     bx, bx
seg006:2D50                 cmp     ah, 18h
seg006:2D53                 jnb     short loc_10BB4
seg006:2D55                 neg     ah
seg006:2D57                 add     ah, 17h
seg006:2D5A                 mov     bl, ah
seg006:2D5C                 shl     bl, 1
seg006:2D5E                 shl     bl, 1
seg006:2D60                 add     bl, ah
seg006:2D62                 shl     bx, 1
seg006:2D64
seg006:2D64 loc_10BB4:                              ; CODE XREF: sub_10B82+21␘j
seg006:2D64                 add     bx, 24FAh
seg006:2D68                 mov     cx, cs:[bx]
seg006:2D6B                 mov     word_2A9D9, cx
seg006:2D6F                 mov     word_2A9E0, cx
seg006:2D73                 mov     byte ptr word_2A9E0+1, ch
seg006:2D77                 mov     word_2A9E7, cx
seg006:2D7B                 mov     byte ptr word_2A9E7+1, ch
seg006:2D7F                 mov     word_2A9EE, cx
seg006:2D83                 mov     byte ptr word_2A9EE+1, ch
seg006:2D87                 add     bx, 2
seg006:2D8A                 mov     cx, cs:[bx]
seg006:2D8D                 mov     word_2A9DB, cx
seg006:2D91                 mov     word_2A9E2, cx
seg006:2D95                 mov     word_2A9E9, cx
seg006:2D99                 mov     word_2A9F0, cx
seg006:2D9D                 add     bx, 2
seg006:2DA0                 mov     cx, cs:[bx]
seg006:2DA3                 mov     word_2A9DD, cx
seg006:2DA7                 mov     word_2A9E4, cx
seg006:2DAB                 mov     word_2A9EB, cx
seg006:2DAF                 mov     byte_2A9F2, cl
seg006:2DB3                 add     bx, 2
seg006:2DB6                 mov     cx, cs:[bx]
seg006:2DB9                 mov     byte_2A9DF, cl
seg006:2DBD                 mov     byte_2A9E6, cl
seg006:2DC1                 mov     byte_2A9ED, cl
seg006:2DC5                 cmp     ah, 18h
seg006:2DC8                 jb      short loc_10C41
seg006:2DCA                 sub     ah, 18h
seg006:2DCD                 mov     byte_2A9C1, 3
seg006:2DD2                 sub     bx, bx
seg006:2DD4                 cmp     ah, 18h
seg006:2DD7                 jnb     short loc_10C3A
seg006:2DD9                 neg     ah
seg006:2DDB                 add     ah, 17h
seg006:2DDE                 sub     bh, bh
seg006:2DE0                 mov     bl, ah
seg006:2DE2                 shl     bl, 1
seg006:2DE4                 shl     bl, 1
seg006:2DE6                 add     bl, ah
seg006:2DE8                 shl     bx, 1
seg006:2DEA
seg006:2DEA loc_10C3A:                              ; CODE XREF: sub_10B82+A5␘j
seg006:2DEA                 add     bx, 2500h
seg006:2DEE                 mov     cx, cs:[bx]
seg006:2DF1
seg006:2DF1 loc_10C41:                              ; CODE XREF: sub_10B82+96␘j
seg006:2DF1                 mov     byte_2A9F4, ch
seg006:2DF5                 add     bx, 2
seg006:2DF8                 mov     cx, cs:[bx]
seg006:2DFB                 mov     word_2A9F5, cx
seg006:2DFF                 retn
seg006:2DFF sub_10B82       endp
seg006:2DFF
seg006:2E00
