seg032:04EE ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:04EE
seg032:04EE
seg032:04EE sub_1B68E       proc near               ; CODE XREF: sub_1BE13-40␙p
seg032:04EE                                         ; sub_1BFA1+1C␙p ...
seg032:04EE                 push    si
seg032:04EF                 push    di
seg032:04F0                 push    es
seg032:04F1                 push    ds
seg032:04F2                 push    ds
seg032:04F3                 pop     es
seg032:04F4                 assume es:dseg
seg032:04F4                 cmp     cx, 27h ; '''
seg032:04F7                 jnz     short loc_1B6A6
seg032:04F9                 push    cx
seg032:04FA                 mov     di, 0C522h
seg032:04FD                 mov     cx, 17h
seg032:0500                 mov     ax, 6F4h
seg032:0503                 rep stosw
seg032:0505                 pop     cx
seg032:0506
seg032:0506 loc_1B6A6:                              ; CODE XREF: sub_1B68E+9␘j
seg032:0506                 mov     di, 0C4ECh
seg032:0509                 push    cs
seg032:050A                 pop     ds
seg032:050B                 assume ds:seg032
seg032:050B                 mov     si, bx
seg032:050D                 cld
seg032:050E                 rep movsb
seg032:0510                 push    es
seg032:0511                 pop     ds
seg032:0512                 assume ds:dseg
seg032:0512                 mov     al, byte_2B5DD
seg032:0515                 call    off_2B60E
seg032:0519                 mov     byte_2BE56, 0
seg032:051E                 pop     ds
seg032:051F                 pop     es
seg032:0520                 assume es:nothing
seg032:0520                 pop     di
seg032:0521                 pop     si
seg032:0522                 retn
seg032:0522 sub_1B68E       endp
seg032:0522
seg032:0523 ; ---------------------------------------------------------------------------
seg032:0523                 push    si
seg032:0524                 push    es
seg032:0525                 push    bp
seg032:0526                 mov     byte_2BE60, 1
seg032:052B                 cmp     ax, cx
seg032:052D                 jle     short loc_1B6D2
seg032:052F                 xchg    ax, cx
seg032:0530                 xchg    bx, dx
seg032:0532
seg032:0532 loc_1B6D2:                              ; CODE XREF: seg032:052D␘j
seg032:0532                 sub     cx, ax
seg032:0534                 sub     dx, bx
seg032:0536                 mov     si, dx
seg032:0538                 jge     short loc_1B6DC
seg032:053A                 neg     si
seg032:053C
seg032:053C loc_1B6DC:                              ; CODE XREF: seg032:0538␘j
seg032:053C                 push    cx
seg032:053D                 push    dx
seg032:053E                 mov     cx, ax
seg032:0540                 mov     dx, bx
seg032:0542                 call    off_2B602
seg032:0546                 call    off_2B616
seg032:054A                 pop     dx
seg032:054B                 pop     cx
seg032:054C                 or      dx, dx
seg032:054E                 mov     dx, word_2B5F5
seg032:0552                 jns     short loc_1B6F6
seg032:0554                 neg     dx
seg032:0556
seg032:0556 loc_1B6F6:                              ; CODE XREF: seg032:0552␘j
seg032:0556                 mov     word_2BE46, dx
seg032:055A                 mov     bp, word ptr dword_2BE38
seg032:055E                 cmp     si, cx
seg032:0560                 jge     short loc_1B725
seg032:0562                 mov     ax, si
seg032:0564                 shl     ax, 1
seg032:0566                 shl     ax, 1
seg032:0568                 mov     word_2BE42, ax
seg032:056B                 sub     ax, cx
seg032:056D                 xchg    ax, si
seg032:056E                 sub     ax, cx
seg032:0570                 shl     ax, 1
seg032:0572                 shl     ax, 1
seg032:0574                 mov     word_2BE44, ax
seg032:0577                 inc     cx
seg032:0578                 mov     ax, word_2BE36
seg032:057B                 mov     bh, al
seg032:057D                 xor     al, al
seg032:057F                 call    off_2B61A
seg032:0583                 jmp     short loc_1B754
seg032:0585 ; ---------------------------------------------------------------------------
seg032:0585
seg032:0585 loc_1B725:                              ; CODE XREF: seg032:0560␘j
seg032:0585                 or      cx, cx
seg032:0587                 jz      short loc_1B74A
seg032:0589                 mov     ax, cx
seg032:058B                 shl     cx, 1
seg032:058D                 shl     cx, 1
seg032:058F                 mov     word_2BE42, cx
seg032:0593                 xchg    cx, si
seg032:0595                 sub     si, cx
seg032:0597                 sub     ax, cx
seg032:0599                 shl     ax, 1
seg032:059B                 shl     ax, 1
seg032:059D                 mov     word_2BE44, ax
seg032:05A0                 inc     cx
seg032:05A1                 mov     ax, word_2BE36
seg032:05A4                 call    off_2B61C
seg032:05A8                 jmp     short loc_1B754
seg032:05AA ; ---------------------------------------------------------------------------
seg032:05AA
seg032:05AA loc_1B74A:                              ; CODE XREF: seg032:0587␘j
seg032:05AA                 mov     cx, si
seg032:05AC                 inc     cx
seg032:05AD                 mov     ax, word_2BE36
seg032:05B0                 call    off_2B61E
seg032:05B4
seg032:05B4 loc_1B754:                              ; CODE XREF: seg032:0583␘j
seg032:05B4                                         ; seg032:05A8␘j
seg032:05B4                 call    off_2B618
seg032:05B8                 pop     bp
seg032:05B9                 pop     es
seg032:05BA                 pop     si
seg032:05BB                 retn
seg032:05BC
