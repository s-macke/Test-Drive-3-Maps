seg032:0437 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0437
seg032:0437
seg032:0437 sub_1B5D7       proc near               ; CODE XREF: sub_1BAA7+3F␙p
seg032:0437                 push    si
seg032:0438                 push    es
seg032:0439                 cmp     byte_2B5CC, 1
seg032:043E                 jnz     short loc_1B5E5
seg032:0440                 cmp     ax, 3
seg032:0443                 jbe     short loc_1B5EA
seg032:0445
seg032:0445 loc_1B5E5:                              ; CODE XREF: sub_1B5D7+7␘j
seg032:0445                 mov     ax, 0FFFFh
seg032:0448                 jmp     short loc_1B652
seg032:044A ; ---------------------------------------------------------------------------
seg032:044A
seg032:044A loc_1B5EA:                              ; CODE XREF: sub_1B5D7+C␘j
seg032:044A                 test    byte ptr word_2BEEC, 1Ch
seg032:044F                 jz      short loc_1B609
seg032:0451                 push    ax
seg032:0452                 mov     bx, ax
seg032:0454                 mov     cl, 4
seg032:0456                 shl     bx, cl
seg032:0458                 lea     si, [bx+20Ch]
seg032:045C                 push    cs
seg032:045D                 pop     es
seg032:045E                 assume es:seg032
seg032:045E                 call    off_2B5F1
seg032:0462                 pop     ax
seg032:0463                 xchg    al, byte_2BD5E
seg032:0467                 jmp     short loc_1B652
seg032:0469 ; ---------------------------------------------------------------------------
seg032:0469
seg032:0469 loc_1B609:                              ; CODE XREF: sub_1B5D7+18␘j
seg032:0469                 sub     bx, bx
seg032:046B                 mov     es, bx
seg032:046D                 assume es:seg000
seg032:046D                 mov     ah, byte ptr es:loc_463+3
seg032:0472                 push    ax
seg032:0473                 mov     bh, 1
seg032:0475                 mov     bl, al
seg032:0477                 and     bl, 1
seg032:047A                 push    bp
seg032:047B                 push    si
seg032:047C                 push    di
seg032:047D                 mov     ah, 0Bh
seg032:047F                 int     10h             ; - VIDEO - SET COLOR PALETTE
seg032:047F                                         ; BH = 00h, BL = border color
seg032:047F                                         ; BH = 01h, BL = palette (0-3)
seg032:0481                 pop     di
seg032:0482                 pop     si
seg032:0483                 pop     bp
seg032:0484                 pop     ax
seg032:0485                 push    ax
seg032:0486                 and     al, 2
seg032:0488                 mov     cl, 3
seg032:048A                 shl     al, cl
seg032:048C                 mov     bl, al
seg032:048E                 and     ah, 0Fh
seg032:0491                 or      bl, ah
seg032:0493                 mov     bh, 0
seg032:0495                 push    bp
seg032:0496                 push    si
seg032:0497                 push    di
seg032:0498                 mov     ah, 0Bh
seg032:049A                 int     10h             ; - VIDEO - SET COLOR PALETTE
seg032:049A                                         ; BH = 00h, BL = border color
seg032:049A                                         ; BH = 01h, BL = palette (0-3)
seg032:049C                 pop     di
seg032:049D                 pop     si
seg032:049E                 pop     bp
seg032:049F                 pop     ax
seg032:04A0                 mov     cl, 4
seg032:04A2                 sar     ah, cl
seg032:04A4                 mov     al, ah
seg032:04A6                 and     al, 1
seg032:04A8                 shl     al, 1
seg032:04AA                 and     ah, 2
seg032:04AD                 shr     ah, 1
seg032:04AF                 or      al, ah
seg032:04B1                 cbw
seg032:04B2
seg032:04B2 loc_1B652:                              ; CODE XREF: sub_1B5D7+11␘j
seg032:04B2                                         ; sub_1B5D7+30␘j
seg032:04B2                 pop     es
seg032:04B3                 assume es:nothing
seg032:04B3                 pop     si
seg032:04B4                 retn
seg032:04B4 sub_1B5D7       endp
seg032:04B4
seg032:04B5
