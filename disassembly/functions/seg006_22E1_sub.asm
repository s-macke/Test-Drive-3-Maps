seg006:22E1 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:22E1
seg006:22E1
seg006:22E1 sub_10131       proc far                ; CODE XREF: sub_7EFE:loc_7F3E␘P
seg006:22E1                                         ; sub_1022A+27␙P
seg006:22E1                 push    si
seg006:22E2                 push    di
seg006:22E3                 push    es
seg006:22E4                 cmp     byte_2A9BD, 0
seg006:22E9                 jnz     short loc_10142
seg006:22EB                 cmp     byte_2A777, 0
seg006:22F0                 jz      short loc_10175
seg006:22F2
seg006:22F2 loc_10142:                              ; CODE XREF: sub_10131+8␘j
seg006:22F2                 mov     ax, word_2A9B5
seg006:22F5                 mov     word_28CDF, ax
seg006:22F8                 mov     word_295A5, ax
seg006:22FB                 mov     ax, word_2A9B7
seg006:22FE                 mov     word_28F5F, ax
seg006:2301                 mov     word_296E5, ax
seg006:2304                 mov     ax, word_2A9B9
seg006:2307                 mov     word_291DF, ax
seg006:230A                 sub     ax, word_284AB
seg006:230E                 shl     ax, 1
seg006:2310                 shl     ax, 1
seg006:2312                 shl     ax, 1
seg006:2314                 mov     word_29825, ax
seg006:2317                 mov     ax, word_2A9BB
seg006:231A                 mov     word_2847D, ax
seg006:231D                 sub     ah, 40h ; '@'
seg006:2320                 mov     al, ah
seg006:2322                 mov     word_29965, ax
seg006:2325
seg006:2325 loc_10175:                              ; CODE XREF: sub_10131+F␘j
seg006:2325                 call    sub_102E8
seg006:232A                 call    sub_E1DA
seg006:232D                 sub     ax, ax
seg006:232F                 mov     bx, 0FFFFh
seg006:2332                 mov     word_28472, ax
seg006:2335                 mov     byte_2A778, al
seg006:2338                 mov     byte_2A9BD, al
seg006:233B                 mov     byte_2A6BE, al
seg006:233E                 mov     byte_2A6BF, al
seg006:2341                 mov     byte_2A6EE, al
seg006:2344                 mov     byte_2AA90, al
seg006:2347                 mov     byte_2ACC2, al
seg006:234A                 mov     byte_2ACC3, al
seg006:234D                 mov     byte_2847F, al
seg006:2350                 mov     byte_2ACC6, al
seg006:2353                 mov     byte_2A6F2, al
seg006:2356                 mov     byte_2A6EF, al
seg006:2359                 mov     byte_2A6F0, al
seg006:235C                 mov     byte_2A6C0, al
seg006:235F                 mov     word_28479, ax
seg006:2362                 mov     word_2ACC7, ax
seg006:2365                 mov     byte_2849E, al
seg006:2368                 mov     byte_2AA92, al
seg006:236B                 mov     byte_2A777, al
seg006:236E                 mov     byte_28477, al
seg006:2371                 mov     byte_28468, al
seg006:2374                 mov     word_2849A, ax
seg006:2377                 mov     byte_2A6F1, al
seg006:237A                 mov     byte_2A6F3, bl
seg006:237E                 mov     byte_2A6F9, bl
seg006:2382                 mov     byte_2AC66, al
seg006:2385                 mov     byte_2ACB8, 1
seg006:238A                 mov     byte_2A6C1, 1
seg006:238F                 mov     byte_2AA97, 32h ; '2'
seg006:2394                 mov     di, 3Fh ; '?'
seg006:2397
seg006:2397 loc_101E7:                              ; CODE XREF: sub_10131+BB␙j
seg006:2397                 mov     [di-45C1h], al
seg006:239B                 dec     di
seg006:239C                 jns     short loc_101E7
seg006:239E                 mov     cx, 9
seg006:23A1                 sub     bx, bx
seg006:23A3
seg006:23A3 loc_101F3:                              ; CODE XREF: sub_10131+C9␙j
seg006:23A3                 mov     [bx-6681h], ax
seg006:23A7                 add     bx, 2
seg006:23AA                 loop    loc_101F3
seg006:23AC                 call    sub_13E9E
seg006:23AF                 pop     es
seg006:23B0                 assume es:nothing
seg006:23B0                 pop     di
seg006:23B1                 pop     si
seg006:23B2                 retf
seg006:23B2 sub_10131       endp
seg006:23B2
seg006:23B3
