seg006:225B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:225B
seg006:225B
seg006:225B sub_100AB       proc near               ; CODE XREF: sub_153B8+1B␙p
seg006:225B                 cmp     byte_28477, 0
seg006:2260                 jz      short loc_100B3
seg006:2262                 retn
seg006:2263 ; ---------------------------------------------------------------------------
seg006:2263
seg006:2263 loc_100B3:                              ; CODE XREF: sub_100AB+5␘j
seg006:2263                 mov     ax, 1
seg006:2266                 cmp     byte_2B9E6, 0
seg006:226B                 jz      short loc_100D9
seg006:226D                 mov     bx, ax
seg006:226F                 mov     bl, [bx-6F7Eh]
seg006:2273                 or      bl, bl
seg006:2275                 js      short locret_100D8
seg006:2277                 cmp     [bx-3505h], al
seg006:227B                 jnz     short locret_100D8
seg006:227D                 push    bx
seg006:227E                 cli
seg006:227F                 call    sub_1E078
seg006:2284                 sti
seg006:2285                 add     sp, 2
seg006:2288
seg006:2288 locret_100D8:                           ; CODE XREF: sub_100AB+1A␘j
seg006:2288                                         ; sub_100AB+20␘j
seg006:2288                 retn
seg006:2289 ; ---------------------------------------------------------------------------
seg006:2289
seg006:2289 loc_100D9:                              ; CODE XREF: sub_100AB+10␘j
seg006:2289                 push    ax
seg006:228A                 call    sub_D045
seg006:228F                 pop     bx
seg006:2290                 mov     al, bl
seg006:2292                 mov     cx, word_2037C
seg006:2296                 cmp     cx, 5DCh
seg006:229A                 jb      short loc_100F3
seg006:229C                 mov     cx, 5DCh
seg006:229F                 mov     word_2037C, cx
seg006:22A3
seg006:22A3 loc_100F3:                              ; CODE XREF: sub_100AB+3F␘j
seg006:22A3                 shl     cx, 1
seg006:22A5                 shl     cx, 1
seg006:22A7                 add     cx, 1300h
seg006:22AB                 test    word_28472, 20h
seg006:22B1                 jnz     short loc_10107
seg006:22B3                 add     cx, 400h
seg006:22B7
seg006:22B7 loc_10107:                              ; CODE XREF: sub_100AB+56␘j
seg006:22B7                 mov     bl, [bx-6F7Eh]
seg006:22BB                 or      bl, bl
seg006:22BD                 js      short locret_10130
seg006:22BF                 cmp     [bx-3505h], al
seg006:22C3                 jnz     short locret_10130
seg006:22C5                 mov     byte_283D2, ch
seg006:22C9                 shl     bx, 1
seg006:22CB                 and     cx, 0FF80h
seg006:22CE                 or      ax, 40h
seg006:22D1                 cli
seg006:22D2                 mov     ax, [bx-378Dh]
seg006:22D6                 and     ax, 7Fh
seg006:22D9                 or      ax, cx
seg006:22DB                 mov     [bx-378Dh], cx
seg006:22DF                 sti
seg006:22E0
seg006:22E0 locret_10130:                           ; CODE XREF: sub_100AB+62␘j
seg006:22E0                                         ; sub_100AB+68␘j
seg006:22E0                 retn
seg006:22E0 sub_100AB       endp
seg006:22E0
seg006:22E1
