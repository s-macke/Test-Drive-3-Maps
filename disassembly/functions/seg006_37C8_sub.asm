seg006:37C8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:37C8
seg006:37C8
seg006:37C8 sub_11618       proc near               ; CODE XREF: sub_1118F+10␘p
seg006:37C8                 push    bp
seg006:37C9                 sub     si, si
seg006:37CB                 mov     ax, word_2AAC4
seg006:37CE                 shl     ax, 1
seg006:37D0                 mov     bp, ax
seg006:37D2                 jmp     loc_116C0
seg006:37D5 ; ---------------------------------------------------------------------------
seg006:37D5
seg006:37D5 loc_11625:                              ; CODE XREF: sub_11618+AC␙j
seg006:37D5                 sub     di, di
seg006:37D7                 mov     dx, [si+308Eh]
seg006:37DB                 sub     dx, word_2848D
seg006:37DF                 jns     short loc_11636
seg006:37E1                 neg     dx
seg006:37E3                 mov     di, 6
seg006:37E6
seg006:37E6 loc_11636:                              ; CODE XREF: sub_11618+17␘j
seg006:37E6                 mov     cx, [si+3D0Eh]
seg006:37EA                 sub     cx, word_2848F
seg006:37EE                 jns     short loc_11645
seg006:37F0                 neg     cx
seg006:37F2                 xor     di, 2
seg006:37F5
seg006:37F5 loc_11645:                              ; CODE XREF: sub_11618+26␘j
seg006:37F5                 cmp     dx, cx
seg006:37F7                 jb      short loc_11653
seg006:37F9                 mov     ax, 1FFh
seg006:37FC                 jz      short loc_11666
seg006:37FE                 xchg    cx, dx
seg006:3800                 xor     di, 8
seg006:3803
seg006:3803 loc_11653:                              ; CODE XREF: sub_11618+2F␘j
seg006:3803                 sub     ax, ax
seg006:3805                 or      cx, cx
seg006:3807                 jz      short loc_11666
seg006:3809                 mov     bx, dx
seg006:380B                 div     cx
seg006:380D                 mov     dx, bx
seg006:380F                 rol     ax, 1
seg006:3811                 xchg    al, ah
seg006:3813                 and     ah, 1
seg006:3816
seg006:3816 loc_11666:                              ; CODE XREF: sub_11618+34␘j
seg006:3816                                         ; sub_11618+3F␘j
seg006:3816                 xchg    cx, dx
seg006:3818                 mov     cx, [di-4947h]
seg006:381C                 mov     bx, ax
seg006:381E                 shl     bx, 1
seg006:3820                 add     bx, 1172h
seg006:3824                 mov     di, [di-4957h]
seg006:3828                 add     di, bx
seg006:382A                 mov     bx, cs:[bx]
seg006:382D                 add     cx, cs:[di]
seg006:3830                 sub     cx, word_28484
seg006:3834                 mov     [si+498Eh], cx
seg006:3838                 shr     bx, 1
seg006:383A                 shr     bx, 1
seg006:383C                 shr     bx, 1
seg006:383E                 shr     bx, 1
seg006:3840                 add     bx, 0F72h
seg006:3844                 mov     bx, cs:[bx]
seg006:3847                 sub     ax, ax
seg006:3849                 div     bx
seg006:384B                 mov     [si+6F0Eh], ax
seg006:384F                 mov     dx, [si+240Eh]
seg006:3853                 sub     dx, word_2848A
seg006:3857                 jns     short loc_116AB
seg006:3859                 neg     dx
seg006:385B
seg006:385B loc_116AB:                              ; CODE XREF: sub_11618+8F␘j
seg006:385B                 add     dx, ax
seg006:385D                 mov     [si+628Eh], dx
seg006:3861                 mov     word ptr [si+560Eh], 8000h
seg006:3867                 mov     word ptr [si+7B8Eh], 8000h
seg006:386D                 add     si, 2
seg006:3870
seg006:3870 loc_116C0:                              ; CODE XREF: sub_11618+A␘j
seg006:3870                 cmp     si, bp
seg006:3872                 jnb     short loc_116C7
seg006:3874                 jmp     loc_11625
seg006:3877 ; ---------------------------------------------------------------------------
seg006:3877
seg006:3877 loc_116C7:                              ; CODE XREF: sub_11618+AA␘j
seg006:3877                 pop     bp
seg006:3878                 retn
seg006:3878 sub_11618       endp
seg006:3878
seg006:3879
