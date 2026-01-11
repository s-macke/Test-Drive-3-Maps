seg006:3E61 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:3E61
seg006:3E61
seg006:3E61 sub_11CB1       proc near               ; CODE XREF: sub_11408+12E␘p
seg006:3E61                                         ; sub_11B8B+47␘p ...
seg006:3E61                 mov     dx, ax
seg006:3E63                 sub     dx, cx
seg006:3E65                 cmp     dx, 8000h
seg006:3E69                 jnz     short loc_11CBC
seg006:3E6B                 retn
seg006:3E6C ; ---------------------------------------------------------------------------
seg006:3E6C
seg006:3E6C loc_11CBC:                              ; CODE XREF: sub_11CB1+8␘j
seg006:3E6C                 sub     dx, dx
seg006:3E6E                 mov     word_2AAAD, dx
seg006:3E72                 mov     word_2AAAF, dx
seg006:3E76                 mov     byte_2AA99, dl
seg006:3E7A                 mov     word_2844C, dx
seg006:3E7E                 mov     word_2844E, dx
seg006:3E82                 mov     word_2AAB1, ax
seg006:3E85                 mov     word_2AAB3, cx
seg006:3E89                 mov     word_2AA9D, dx
seg006:3E8D                 mov     word_2AA9F, dx
seg006:3E91                 mov     byte_28456, dl
seg006:3E95                 mov     dx, [bx+560Eh]
seg006:3E99                 mov     bx, [si+560Eh]
seg006:3E9D                 mov     si, ax
seg006:3E9F                 mov     bp, cx
seg006:3EA1                 cmp     dx, bx
seg006:3EA3                 jle     short loc_11CFB
seg006:3EA5                 xchg    bx, dx
seg006:3EA7                 inc     byte_28456
seg006:3EAB
seg006:3EAB loc_11CFB:                              ; CODE XREF: sub_11CB1+42␘j
seg006:3EAB                 sub     ax, ax
seg006:3EAD                 or      dx, dx
seg006:3EAF                 js      short loc_11D39
seg006:3EB1                 jz      short loc_11D39
seg006:3EB3                 mov     ax, dx
seg006:3EB5                 inc     ax
seg006:3EB6                 mov     word_2AAAB, ax
seg006:3EB9                 mov     byte_2AA99, 3
seg006:3EBE                 sub     bx, dx
seg006:3EC0                 mov     word_2AAAD, bx
seg006:3EC4                 or      bx, bx
seg006:3EC6                 jz      short loc_11D64
seg006:3EC8                 mov     ax, bp
seg006:3ECA                 sub     ax, si
seg006:3ECC                 cmp     byte_28456, 0
seg006:3ED1                 jnz     short loc_11D25
seg006:3ED3                 neg     ax
seg006:3ED5
seg006:3ED5 loc_11D25:                              ; CODE XREF: sub_11CB1+70␘j
seg006:3ED5                 cwd
seg006:3ED6                 idiv    bx
seg006:3ED8                 cmp     ax, word_2844E
seg006:3EDC                 jle     short loc_11D32
seg006:3EDE                 xchg    ax, word_2844E
seg006:3EE2
seg006:3EE2 loc_11D32:                              ; CODE XREF: sub_11CB1+7B␘j
seg006:3EE2                 mov     word_2844C, ax
seg006:3EE5                 call    sub_11EA0
seg006:3EE8                 retn
seg006:3EE9 ; ---------------------------------------------------------------------------
seg006:3EE9
seg006:3EE9 loc_11D39:                              ; CODE XREF: sub_11CB1+4E␘j
seg006:3EE9                                         ; sub_11CB1+50␘j
seg006:3EE9                 mov     word_2AA86, dx
seg006:3EED                 sub     bx, dx
seg006:3EEF                 inc     bx
seg006:3EF0                 mov     word_2AAAB, bx
seg006:3EF4                 dec     bx
seg006:3EF5                 jz      short loc_11D64
seg006:3EF7                 mov     ax, bp
seg006:3EF9                 sub     ax, si
seg006:3EFB                 cmp     byte_28456, 0
seg006:3F00                 jnz     short loc_11D54
seg006:3F02                 neg     ax
seg006:3F04
seg006:3F04 loc_11D54:                              ; CODE XREF: sub_11CB1+9F␘j
seg006:3F04                 cwd
seg006:3F05                 idiv    bx
seg006:3F07                 cmp     ax, word_2AA9F
seg006:3F0B                 jle     short loc_11D61
seg006:3F0D                 xchg    ax, word_2AA9F
seg006:3F11
seg006:3F11 loc_11D61:                              ; CODE XREF: sub_11CB1+AA␘j
seg006:3F11                 mov     word_2AA9D, ax
seg006:3F14
seg006:3F14 loc_11D64:                              ; CODE XREF: sub_11CB1+65␘j
seg006:3F14                                         ; sub_11CB1+94␘j
seg006:3F14                 call    sub_11EA0
seg006:3F17                 retn
seg006:3F17 sub_11CB1       endp
seg006:3F17
seg006:3F18
