seg006:0DAD ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0DAD
seg006:0DAD
seg006:0DAD sub_EBFD        proc near               ; CODE XREF: sub_154A1:loc_1554B␙p
seg006:0DAD                 cmp     byte_2A777, 0
seg006:0DB2                 jnz     short locret_EC4C
seg006:0DB4                 mov     byte_2A777, 1
seg006:0DB9                 sub     ax, ax
seg006:0DBB                 push    ax
seg006:0DBC                 call    sub_1E040
seg006:0DC1                 add     sp, 2
seg006:0DC4                 mov     byte_28468, 10h
seg006:0DC9                 mov     word_2AA95, 0
seg006:0DCF                 mov     dx, word_2AA93
seg006:0DD3                 mov     bx, word_29461
seg006:0DD7                 shl     bx, 1
seg006:0DD9                 jmp     short loc_EC47
seg006:0DD9 ; ---------------------------------------------------------------------------
seg006:0DDB                 align 2
seg006:0DDC
seg006:0DDC loc_EC2C:                               ; CODE XREF: sub_EBFD+4D␙j
seg006:0DDC                 mov     cx, [bx-4D7Bh]
seg006:0DE0                 or      cx, cx
seg006:0DE2                 jz      short loc_EC47
seg006:0DE4                 mov     di, [bx-4EBBh]
seg006:0DE8                 cmp     dx, di
seg006:0DEA                 jb      short loc_EC47
seg006:0DEC                 add     di, cx
seg006:0DEE                 cmp     dx, di
seg006:0DF0                 jnb     short loc_EC47
seg006:0DF2                 mov     word_2AA95, bx
seg006:0DF6                 retn
seg006:0DF7 ; ---------------------------------------------------------------------------
seg006:0DF7
seg006:0DF7 loc_EC47:                               ; CODE XREF: sub_EBFD+2C␘j
seg006:0DF7                                         ; sub_EBFD+35␘j ...
seg006:0DF7                 sub     bx, 2
seg006:0DFA                 jnz     short loc_EC2C
seg006:0DFC
seg006:0DFC locret_EC4C:                            ; CODE XREF: sub_EBFD+5␘j
seg006:0DFC                 retn
seg006:0DFC sub_EBFD        endp
seg006:0DFC
