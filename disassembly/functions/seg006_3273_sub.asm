seg006:3273 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:3273
seg006:3273
seg006:3273 sub_110C3       proc near               ; CODE XREF: sub_10F0A+1C␘p
seg006:3273                 sub     ah, ah
seg006:3275                 cmp     byte_28477, ah
seg006:3279                 jnz     short locret_11114
seg006:327B                 mov     si, word_2849A
seg006:327F                 shl     si, 1
seg006:3281                 jmp     short loc_11140
seg006:3283 ; ---------------------------------------------------------------------------
seg006:3283
seg006:3283 loc_110D3:                              ; CODE XREF: sub_110C3+80␙j
seg006:3283                 mov     ax, [si-77F2h]
seg006:3287                 cmp     ax, word_285BB
seg006:328B                 jnb     short locret_11114
seg006:328D                 mov     bx, [si-7592h]
seg006:3291                 mov     ax, [bx-6681h]
seg006:3295                 and     ah, 0E0h
seg006:3298                 jz      short loc_11140
seg006:329A                 cmp     ah, 60h ; '`'
seg006:329D                 ja      short loc_11146
seg006:329F                 jnz     short loc_11115
seg006:32A1                 mov     cx, word_20376
seg006:32A5                 or      cx, cx
seg006:32A7                 jns     short loc_110FB
seg006:32A9                 neg     cx
seg006:32AB
seg006:32AB loc_110FB:                              ; CODE XREF: sub_110C3+34␘j
seg006:32AB                 cmp     cx, 14h
seg006:32AE                 jnb     short loc_11104
seg006:32B0                 call    sub_ECA2
seg006:32B3                 retn
seg006:32B4 ; ---------------------------------------------------------------------------
seg006:32B4
seg006:32B4 loc_11104:                              ; CODE XREF: sub_110C3+3B␘j
seg006:32B4                 cmp     al, 10h
seg006:32B6                 jnz     short loc_1110F
seg006:32B8                 cmp     byte_2ACC2, 30h ; '0'
seg006:32BD                 jb      short locret_11114
seg006:32BF
seg006:32BF loc_1110F:                              ; CODE XREF: sub_110C3+43␘j
seg006:32BF                 mov     byte_2AA92, 1
seg006:32C4
seg006:32C4 locret_11114:                           ; CODE XREF: sub_110C3+6␘j
seg006:32C4                                         ; sub_110C3+18␘j ...
seg006:32C4                 retn
seg006:32C5 ; ---------------------------------------------------------------------------
seg006:32C5
seg006:32C5 loc_11115:                              ; CODE XREF: sub_110C3+2C␘j
seg006:32C5                 mov     byte_2AA91, 1
seg006:32CA                 push    ax
seg006:32CB                 mov     ax, 3
seg006:32CE                 call    sub_D045
seg006:32D3                 pop     ax
seg006:32D4                 mov     byte_28468, 5
seg006:32D9                 or      word ptr [bx-6681h], 1
seg006:32DE                 cmp     ah, 20h ; ' '
seg006:32E1                 ja      short loc_1113B
seg006:32E3                 mov     word ptr [bx-6681h], 1Fh
seg006:32E9                 jmp     short loc_11140
seg006:32EB ; ---------------------------------------------------------------------------
seg006:32EB
seg006:32EB loc_1113B:                              ; CODE XREF: sub_110C3+6E␘j
seg006:32EB                 call    sub_EBA7
seg006:32F0
seg006:32F0 loc_11140:                              ; CODE XREF: sub_110C3+E␘j
seg006:32F0                                         ; sub_110C3+25␘j ...
seg006:32F0                 sub     si, 2
seg006:32F3                 jns     short loc_110D3
seg006:32F5                 retn
seg006:32F6 ; ---------------------------------------------------------------------------
seg006:32F6
seg006:32F6 loc_11146:                              ; CODE XREF: sub_110C3+2A␘j
seg006:32F6                 cmp     ah, 0A0h ; 'á'
seg006:32F9                 jb      short loc_11174
seg006:32FB                 mov     cx, 0Dh
seg006:32FE                 jz      short loc_11168
seg006:3300                 mov     cx, 18h
seg006:3303                 cmp     ah, 0E0h ; 'a'
seg006:3306                 jb      short loc_11168
seg006:3308                 mov     word ptr [bx-6681h], 0
seg006:330E                 mov     ax, 0Dh
seg006:3311                 call    sub_D045
seg006:3316                 jmp     short loc_11140
seg006:3318 ; ---------------------------------------------------------------------------
seg006:3318
seg006:3318 loc_11168:                              ; CODE XREF: sub_110C3+8B␘j
seg006:3318                                         ; sub_110C3+93␘j
seg006:3318                 mov     word ptr [bx-6681h], 0
seg006:331E                 mov     word_28474, cx
seg006:3322                 jmp     short loc_11140
seg006:3324 ; ---------------------------------------------------------------------------
seg006:3324
seg006:3324 loc_11174:                              ; CODE XREF: sub_110C3+86␘j
seg006:3324                 mov     word ptr [bx-6681h], 0
seg006:332A                 mov     ax, word_1F1B2
seg006:332D                 sub     dl, dl
seg006:332F                 test    byte ptr word_1F1B4, 8
seg006:3334                 jz      short loc_11188
seg006:3336                 mov     dl, 0C0h ; '+'
seg006:3338
seg006:3338 loc_11188:                              ; CODE XREF: sub_110C3+C1␘j
seg006:3338                 push    si
seg006:3339                 call    sub_124C8
seg006:333C                 pop     si
seg006:333D                 jmp     short loc_11140
seg006:333D sub_110C3       endp
seg006:333D
seg006:333F
