seg006:44AD ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:44AD
seg006:44AD
seg006:44AD sub_122FD       proc near               ; CODE XREF: sub_111BD:loc_11226␘p
seg006:44AD                 push    bx
seg006:44AE                 push    cx
seg006:44AF                 mov     al, ch
seg006:44B1                 push    ax
seg006:44B2                 mov     ax, es:[di]
seg006:44B5                 sub     ax, word_2D8A8
seg006:44B9                 sub     dx, dx
seg006:44BB                 mov     bx, 0Ah
seg006:44BE                 div     bx
seg006:44C0                 mov     dx, ax
seg006:44C2                 pop     ax
seg006:44C3                 mov     bx, word_2945F
seg006:44C7                 shl     bx, 1
seg006:44C9                 jmp     short loc_12384
seg006:44C9 ; ---------------------------------------------------------------------------
seg006:44CB                 align 2
seg006:44CC
seg006:44CC loc_1231C:                              ; CODE XREF: sub_122FD+8A␙j
seg006:44CC                 mov     cx, [bx-4D7Bh]
seg006:44D0                 or      cx, cx
seg006:44D2                 jz      short loc_12384
seg006:44D4                 mov     di, [bx-4EBBh]
seg006:44D8                 cmp     dx, di
seg006:44DA                 jb      short loc_12384
seg006:44DC                 add     di, cx
seg006:44DE                 cmp     dx, di
seg006:44E0                 jnb     short loc_12384
seg006:44E2                 mov     ah, [bx-5C7Bh]
seg006:44E6                 or      ah, 1
seg006:44E9                 cmp     al, 19h
seg006:44EB                 ja      short loc_12343
seg006:44ED                 mov     ah, 0Bh
seg006:44EF                 jz      short loc_12343
seg006:44F1                 mov     ah, 9
seg006:44F3
seg006:44F3 loc_12343:                              ; CODE XREF: sub_122FD+3E␘j
seg006:44F3                                         ; sub_122FD+42␘j
seg006:44F3                 mov     [bx-5C7Bh], ah
seg006:44F7                 mov     word_2AD1E, 0FFFFh
seg006:44FD                 and     ah, 3Fh
seg006:4500                 cmp     ax, 391Bh
seg006:4503                 mov     ax, 5
seg006:4506                 jnz     short loc_1236D
seg006:4508                 mov     word ptr [bx-5C7Bh], 3039h
seg006:450E                 mov     word ptr [bx-54FBh], 0
seg006:4514                 mov     word ptr [bx-527Bh], 0
seg006:451A                 mov     ax, 12h
seg006:451D
seg006:451D loc_1236D:                              ; CODE XREF: sub_122FD+59␘j
seg006:451D                 call    sub_D045
seg006:4522                 mov     byte_28468, 5
seg006:4527                 mov     byte_2AA91, 5
seg006:452C                 call    sub_EBA7
seg006:4531                 pop     cx
seg006:4532                 pop     bx
seg006:4533                 retn
seg006:4534 ; ---------------------------------------------------------------------------
seg006:4534
seg006:4534 loc_12384:                              ; CODE XREF: sub_122FD+1C␘j
seg006:4534                                         ; sub_122FD+25␘j ...
seg006:4534                 sub     bx, 2
seg006:4537                 jnz     short loc_1231C
seg006:4539                 pop     cx
seg006:453A                 pop     bx
seg006:453B                 retn
seg006:453B sub_122FD       endp
seg006:453B
seg006:453C
