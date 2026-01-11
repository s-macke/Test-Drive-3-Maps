seg031:1E24 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1E24
seg031:1E24
seg031:1E24 sub_1AC84       proc near               ; CODE XREF: sub_1AC16+18␘p
seg031:1E24                                         ; sub_1AC16+31␘p
seg031:1E24                 mov     cx, [bp+0Eh]
seg031:1E27                 mov     si, di
seg031:1E29
seg031:1E29 loc_1AC89:                              ; CODE XREF: sub_1AC84+11␙j
seg031:1E29                 cmp     [si+2], cx
seg031:1E2C                 jz      short loc_1AC9A
seg031:1E2E                 add     si, 4
seg031:1E31                 cmp     si, 0C338h
seg031:1E35                 jnz     short loc_1AC89
seg031:1E37                 stc
seg031:1E38                 jmp     short locret_1ACD9
seg031:1E3A ; ---------------------------------------------------------------------------
seg031:1E3A
seg031:1E3A loc_1AC9A:                              ; CODE XREF: sub_1AC84+8␘j
seg031:1E3A                 mov     bx, dx
seg031:1E3C                 add     bx, [si]
seg031:1E3E                 jb      short locret_1ACD9
seg031:1E40                 mov     dx, bx
seg031:1E42                 mov     es, cx
seg031:1E44                 cmp     si, di
seg031:1E46                 jnz     short loc_1ACAE
seg031:1E48                 cmp     word_2B3C2, bx
seg031:1E4C                 jnb     short loc_1ACD4
seg031:1E4E
seg031:1E4E loc_1ACAE:                              ; CODE XREF: sub_1AC84+22␘j
seg031:1E4E                 add     bx, 0Fh
seg031:1E51                 rcr     bx, 1
seg031:1E53                 shr     bx, 1
seg031:1E55                 shr     bx, 1
seg031:1E57                 shr     bx, 1
seg031:1E59                 cmp     si, di
seg031:1E5B                 jnz     short loc_1ACC6
seg031:1E5D                 add     bx, cx
seg031:1E5F                 mov     ax, word_2B439
seg031:1E62                 sub     bx, ax
seg031:1E64                 mov     es, ax
seg031:1E66
seg031:1E66 loc_1ACC6:                              ; CODE XREF: sub_1AC84+37␘j
seg031:1E66                 mov     ah, 4Ah
seg031:1E68                 int     21h             ; DOS - 2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
seg031:1E68                                         ; ES = segment address of block to change
seg031:1E68                                         ; BX = new size in paragraphs
seg031:1E6A                 jb      short locret_1ACD9
seg031:1E6C                 cmp     si, di
seg031:1E6E                 jnz     short loc_1ACD4
seg031:1E70                 mov     word_2B3C2, dx
seg031:1E74
seg031:1E74 loc_1ACD4:                              ; CODE XREF: sub_1AC84+28␘j
seg031:1E74                                         ; sub_1AC84+4A␘j
seg031:1E74                 xchg    ax, dx
seg031:1E75                 xchg    ax, [si]
seg031:1E77                 mov     dx, cx
seg031:1E79
seg031:1E79 locret_1ACD9:                           ; CODE XREF: sub_1AC84+14␘j
seg031:1E79                                         ; sub_1AC84+1A␘j ...
seg031:1E79                 retn
seg031:1E79 sub_1AC84       endp
seg031:1E79
seg031:1E7A
