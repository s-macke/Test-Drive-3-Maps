seg006:48D8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:48D8
seg006:48D8
seg006:48D8 sub_12728       proc near               ; CODE XREF: sub_1238C+14␘p
seg006:48D8                 mov     bl, byte_2AC66
seg006:48DC                 or      bl, bl
seg006:48DE                 jnz     short loc_1273B
seg006:48E0                 cmp     byte_2AC65, 0
seg006:48E5                 jz      short loc_12753
seg006:48E7                 inc     bl
seg006:48E9                 jmp     short loc_1274F
seg006:48EB ; ---------------------------------------------------------------------------
seg006:48EB
seg006:48EB loc_1273B:                              ; CODE XREF: sub_12728+6␘j
seg006:48EB                 js      short loc_12746
seg006:48ED                 inc     bl
seg006:48EF                 cmp     bl, 5
seg006:48F2                 jb      short loc_1274F
seg006:48F4                 mov     bl, 84h ; 'ä'
seg006:48F6
seg006:48F6 loc_12746:                              ; CODE XREF: sub_12728:loc_1273B␘j
seg006:48F6                 dec     bl
seg006:48F8                 cmp     bl, 80h ; 'Ç'
seg006:48FB                 jnz     short loc_1274F
seg006:48FD                 sub     bl, bl
seg006:48FF
seg006:48FF loc_1274F:                              ; CODE XREF: sub_12728+11␘j
seg006:48FF                                         ; sub_12728+1A␘j ...
seg006:48FF                 mov     byte_2AC66, bl
seg006:4903
seg006:4903 loc_12753:                              ; CODE XREF: sub_12728+D␘j
seg006:4903                 mov     cl, bl
seg006:4905                 and     bx, 7
seg006:4908                 shl     bx, 1
seg006:490A                 mov     si, bx
seg006:490C                 sub     bx, 2
seg006:490F                 or      cl, cl
seg006:4911                 jns     short loc_12769
seg006:4913                 add     bx, 2
seg006:4916                 add     si, 2
seg006:4919
seg006:4919 loc_12769:                              ; CODE XREF: sub_12728+39␘j
seg006:4919                 mov     cx, 40h ; '@'
seg006:491C                 mov     ax, [bx-6BCDh]
seg006:4920                 mov     dx, [si-6BCDh]
seg006:4924                 sub     si, si
seg006:4926
seg006:4926 loc_12776:                              ; CODE XREF: sub_12728+65␙j
seg006:4926                 cmp     [si-4501h], ax
seg006:492A                 jg      short loc_1278A
seg006:492C                 cmp     [si-4501h], dx
seg006:4930                 jl      short loc_1278A
seg006:4932                 shr     si, 1
seg006:4934                 mov     [si-45C1h], ch
seg006:4938                 shl     si, 1
seg006:493A
seg006:493A loc_1278A:                              ; CODE XREF: sub_12728+52␘j
seg006:493A                                         ; sub_12728+58␘j
seg006:493A                 add     si, 2
seg006:493D                 loop    loc_12776
seg006:493F                 call    sub_1254A
seg006:4942                 mov     bl, byte_2AC66
seg006:4946                 and     bx, 7
seg006:4949                 shl     bx, 1
seg006:494B                 shl     bx, 1
seg006:494D                 mov     ax, bx
seg006:494F                 shl     bx, 1
seg006:4951                 add     bx, ax
seg006:4953                 mov     si, 0C68h
seg006:4956                 mov     cx, 6
seg006:4959
seg006:4959 loc_127A9:                              ; CODE XREF: sub_12728+C8␙j
seg006:4959                 mov     ax, [bx-6C09h]
seg006:495D                 add     bx, 2
seg006:4960                 mov     dx, ax
seg006:4962                 xchg    al, ah
seg006:4964                 sub     ah, ah
seg006:4966                 sub     dh, dh
seg006:4968                 shl     dx, 1
seg006:496A                 shl     dx, 1
seg006:496C                 shl     dx, 1
seg006:496E                 shl     dx, 1
seg006:4970                 shl     dx, 1
seg006:4972                 cmp     byte_2A6C6, 0
seg006:4977                 jz      short loc_127D0
seg006:4979                 sub     ax, 10h
seg006:497C                 sub     dx, 500h
seg006:4980
seg006:4980 loc_127D0:                              ; CODE XREF: sub_12728+9F␘j
seg006:4980                 cmp     ax, word_2AABE
seg006:4984                 jge     short loc_127D9
seg006:4986                 mov     word_2AABE, ax
seg006:4989
seg006:4989 loc_127D9:                              ; CODE XREF: sub_12728+AC␘j
seg006:4989                 mov     [si+560Eh], ax
seg006:498D                 mov     [si+561Ah], ax
seg006:4991                 mov     [si+498Eh], dx
seg006:4995                 add     dx, word_284D3
seg006:4999                 mov     [si+499Ah], dx
seg006:499D                 add     si, 2
seg006:49A0                 loop    loc_127A9
seg006:49A2                 mov     word_2AA9B, 0
seg006:49A8                 mov     ax, 707h
seg006:49AB                 push    ax
seg006:49AC                 call    sub_1297C
seg006:49AF                 add     sp, 2
seg006:49B2                 retn
seg006:49B2 sub_12728       endp
seg006:49B2
seg006:49B3
