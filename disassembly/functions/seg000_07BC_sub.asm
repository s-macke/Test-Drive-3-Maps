seg000:07BC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:07BC
seg000:07BC
seg000:07BC sub_7BC         proc far                ; CODE XREF: sub_8DC+12C␙p
seg000:07BC                                         ; sub_1688+180␙p ...
seg000:07BC                 call    sub_3BD4
seg000:07C1                 push    cs
seg000:07C2                 call    near ptr sub_1344
seg000:07C5                 mov     ax, 1
seg000:07C8                 push    ax
seg000:07C9                 call    far ptr sub_16DC6
seg000:07CE                 add     sp, 2
seg000:07D1                 push    word_2DB52
seg000:07D5                 call    sub_18ABD
seg000:07DA                 add     sp, 2
seg000:07DD                 call    sub_16A2D
seg000:07E2                 call    sub_CDA5
seg000:07E7                 sub     ax, ax
seg000:07E9                 push    ax
seg000:07EA                 call    far ptr sub_19004
seg000:07EF                 add     sp, 2
seg000:07F2                 retf
seg000:07F2 sub_7BC         endp
seg000:07F2
seg000:07F2 ; ---------------------------------------------------------------------------
seg000:07F3                 align 2
seg000:07F4                 push    bp
seg000:07F5                 mov     bp, sp
seg000:07F7                 sub     sp, 2
seg000:07FA                 mov     al, [bp+8]
seg000:07FD                 sub     ah, ah
seg000:07FF                 mov     [bp-2], ax
seg000:0802                 or      ax, ax
seg000:0804                 jz      short loc_80B
seg000:0806                 cmp     ax, 2
seg000:0809                 jnz     short loc_840
seg000:080B
seg000:080B loc_80B:                                ; CODE XREF: seg000:0804␘j
seg000:080B                 call    sub_C58A
seg000:0810                 cmp     word ptr [bp-2], 0
seg000:0814                 jnz     short loc_821
seg000:0816                 mov     ax, 23h ; '#'
seg000:0819                 push    ax
seg000:081A                 push    cs
seg000:081B                 call    near ptr sub_1688
seg000:081E                 add     sp, 2
seg000:0821
seg000:0821 loc_821:                                ; CODE XREF: seg000:0814␘j
seg000:0821                 cmp     word ptr [bp-2], 2
seg000:0825                 jnz     short loc_832
seg000:0827                 mov     ax, 24h ; '$'
seg000:082A                 push    ax
seg000:082B                 push    cs
seg000:082C                 call    near ptr sub_1688
seg000:082F                 add     sp, 2
seg000:0832
seg000:0832 loc_832:                                ; CODE XREF: seg000:0825␘j
seg000:0832                 mov     ax, 1
seg000:0835                 push    ax
seg000:0836                 call    sub_19797
seg000:083B                 mov     sp, bp
seg000:083D                 pop     bp
seg000:083E                 retf
seg000:083E ; ---------------------------------------------------------------------------
seg000:083F                 align 2
seg000:0840
seg000:0840 loc_840:                                ; CODE XREF: seg000:0809␘j
seg000:0840                 mov     ax, 5
seg000:0843                 push    ax
seg000:0844                 push    cs
seg000:0845                 call    near ptr sub_84C
seg000:0848                 mov     sp, bp
seg000:084A                 pop     bp
seg000:084B                 retf
seg000:084C
