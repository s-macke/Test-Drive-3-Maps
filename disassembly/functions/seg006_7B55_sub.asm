seg006:7B55 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7B55
seg006:7B55
seg006:7B55 sub_159A5       proc near               ; CODE XREF: sub_15867+60␘p
seg006:7B55                 mov     dx, ax
seg006:7B57                 sub     dx, cx
seg006:7B59                 cmp     dx, 8000h
seg006:7B5D                 jnz     short loc_159B0
seg006:7B5F                 retn
seg006:7B60 ; ---------------------------------------------------------------------------
seg006:7B60
seg006:7B60 loc_159B0:                              ; CODE XREF: sub_159A5+8␘j
seg006:7B60                 sub     dx, dx
seg006:7B62                 mov     word_2AAAD, dx
seg006:7B66                 mov     word_2AAAF, dx
seg006:7B6A                 mov     byte_2AA99, dl
seg006:7B6E                 mov     word_2844C, dx
seg006:7B72                 mov     word_2844E, dx
seg006:7B76                 mov     word_2AAB1, ax
seg006:7B79                 mov     word_2AAB3, cx
seg006:7B7D                 mov     word_2AA9D, dx
seg006:7B81                 mov     word_2AA9F, dx
seg006:7B85                 mov     byte_28456, dl
seg006:7B89                 mov     dx, [bx+7B8Eh]
seg006:7B8D                 mov     bx, [si+7B8Eh]
seg006:7B91                 sar     dx, 1
seg006:7B93                 sar     bx, 1
seg006:7B95                 mov     si, ax
seg006:7B97                 mov     bp, cx
seg006:7B99                 cmp     dx, bx
seg006:7B9B                 jle     short loc_159F3
seg006:7B9D                 xchg    bx, dx
seg006:7B9F                 inc     byte_28456
seg006:7BA3
seg006:7BA3 loc_159F3:                              ; CODE XREF: sub_159A5+46␘j
seg006:7BA3                 sub     ax, ax
seg006:7BA5                 or      dx, dx
seg006:7BA7                 js      short loc_15A31
seg006:7BA9                 jz      short loc_15A31
seg006:7BAB                 mov     ax, dx
seg006:7BAD                 inc     ax
seg006:7BAE                 mov     word_2AAAB, ax
seg006:7BB1                 mov     byte_2AA99, 3
seg006:7BB6                 sub     bx, dx
seg006:7BB8                 mov     word_2AAAD, bx
seg006:7BBC                 or      bx, bx
seg006:7BBE                 jz      short loc_15A5C
seg006:7BC0                 mov     ax, bp
seg006:7BC2                 sub     ax, si
seg006:7BC4                 cmp     byte_28456, 0
seg006:7BC9                 jnz     short loc_15A1D
seg006:7BCB                 neg     ax
seg006:7BCD
seg006:7BCD loc_15A1D:                              ; CODE XREF: sub_159A5+74␘j
seg006:7BCD                 cwd
seg006:7BCE                 idiv    bx
seg006:7BD0                 cmp     ax, word_2844E
seg006:7BD4                 jle     short loc_15A2A
seg006:7BD6                 xchg    ax, word_2844E
seg006:7BDA
seg006:7BDA loc_15A2A:                              ; CODE XREF: sub_159A5+7F␘j
seg006:7BDA                 mov     word_2844C, ax
seg006:7BDD                 call    sub_15ADD
seg006:7BE0                 retn
seg006:7BE1 ; ---------------------------------------------------------------------------
seg006:7BE1
seg006:7BE1 loc_15A31:                              ; CODE XREF: sub_159A5+52␘j
seg006:7BE1                                         ; sub_159A5+54␘j
seg006:7BE1                 mov     word_2AA86, dx
seg006:7BE5                 sub     bx, dx
seg006:7BE7                 inc     bx
seg006:7BE8                 mov     word_2AAAB, bx
seg006:7BEC                 dec     bx
seg006:7BED                 jz      short loc_15A5C
seg006:7BEF                 mov     ax, bp
seg006:7BF1                 sub     ax, si
seg006:7BF3                 cmp     byte_28456, 0
seg006:7BF8                 jnz     short loc_15A4C
seg006:7BFA                 neg     ax
seg006:7BFC
seg006:7BFC loc_15A4C:                              ; CODE XREF: sub_159A5+A3␘j
seg006:7BFC                 cwd
seg006:7BFD                 idiv    bx
seg006:7BFF                 cmp     ax, word_2AA9F
seg006:7C03                 jle     short loc_15A59
seg006:7C05                 xchg    ax, word_2AA9F
seg006:7C09
seg006:7C09 loc_15A59:                              ; CODE XREF: sub_159A5+AE␘j
seg006:7C09                 mov     word_2AA9D, ax
seg006:7C0C
seg006:7C0C loc_15A5C:                              ; CODE XREF: sub_159A5+69␘j
seg006:7C0C                                         ; sub_159A5+98␘j
seg006:7C0C                 call    sub_15ADD
seg006:7C0F                 retn
seg006:7C0F sub_159A5       endp
seg006:7C0F
seg006:7C10
