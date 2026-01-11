seg006:29F0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:29F0
seg006:29F0
seg006:29F0 sub_10840       proc near               ; CODE XREF: sub_105B7+89␘p
seg006:29F0                 push    es
seg006:29F1                 push    bp
seg006:29F2                 sub     cx, cx
seg006:29F4                 mov     word_2A9C9, cx
seg006:29F8                 mov     cl, byte_2846C
seg006:29FC                 mov     al, cl
seg006:29FE                 shr     al, 1
seg006:2A00                 sub     ah, ah
seg006:2A02                 neg     ax
seg006:2A04                 add     ax, word_2846A
seg006:2A08                 mov     word_2846A, ax
seg006:2A0B                 mov     byte_2A9BE, cl
seg006:2A0F                 cmp     ax, 140h
seg006:2A12                 jnb     short loc_10872
seg006:2A14                 neg     ax
seg006:2A16                 add     ax, 140h
seg006:2A19                 cmp     ax, cx
seg006:2A1B                 jnb     short loc_10889
seg006:2A1D                 mov     byte_2A9BE, al
seg006:2A20                 jmp     short loc_10889
seg006:2A22 ; ---------------------------------------------------------------------------
seg006:2A22
seg006:2A22 loc_10872:                              ; CODE XREF: sub_10840+22␘j
seg006:2A22                 or      ah, 0FEh
seg006:2A25                 add     ax, cx
seg006:2A27                 js      short loc_10886
seg006:2A29                 jz      short loc_10886
seg006:2A2B                 mov     byte_2A9BE, al
seg006:2A2E                 sub     cl, al
seg006:2A30                 mov     word_2A9C9, cx
seg006:2A34                 jmp     short loc_10889
seg006:2A36 ; ---------------------------------------------------------------------------
seg006:2A36
seg006:2A36 loc_10886:                              ; CODE XREF: sub_10840+37␘j
seg006:2A36                                         ; sub_10840+39␘j
seg006:2A36                 pop     bp
seg006:2A37                 pop     es
seg006:2A38                 retn
seg006:2A39 ; ---------------------------------------------------------------------------
seg006:2A39
seg006:2A39 loc_10889:                              ; CODE XREF: sub_10840+2B␘j
seg006:2A39                                         ; sub_10840+30␘j ...
seg006:2A39                 shl     bx, 1
seg006:2A3B                 mov     cx, [bx-76C2h]
seg006:2A3F                 mov     bp, [bx-7592h]
seg006:2A43                 mov     dx, [bp-5F01h]
seg006:2A47                 mov     bp, 2
seg006:2A4A                 sub     dx, word_2848A
seg006:2A4E                 jns     short loc_108A4
seg006:2A50                 neg     dx
seg006:2A52                 sub     bp, bp
seg006:2A54
seg006:2A54 loc_108A4:                              ; CODE XREF: sub_10840+5E␘j
seg006:2A54                 cmp     dx, cx
seg006:2A56                 jb      short loc_108AD
seg006:2A58                 xchg    cx, dx
seg006:2A5A                 xor     bp, 8
seg006:2A5D
seg006:2A5D loc_108AD:                              ; CODE XREF: sub_10840+66␘j
seg006:2A5D                 sub     ax, ax
seg006:2A5F                 or      cx, cx
seg006:2A61                 jz      short loc_108C1
seg006:2A63                 mov     ah, dl
seg006:2A65                 mov     dl, dh
seg006:2A67                 sub     dh, dh
seg006:2A69                 sub     al, al
seg006:2A6B                 shl     ax, 1
seg006:2A6D                 rcl     dx, 1
seg006:2A6F                 div     cx
seg006:2A71
seg006:2A71 loc_108C1:                              ; CODE XREF: sub_10840+71␘j
seg006:2A71                 xchg    bx, dx
seg006:2A73                 mov     bx, 1976h
seg006:2A76                 add     bx, [bp-4957h]
seg006:2A7A                 shl     ax, 1
seg006:2A7C                 add     bx, ax
seg006:2A7E                 mov     ax, cs:[bx]
seg006:2A81                 add     ax, [bp-4967h]
seg006:2A85                 xchg    bx, dx
seg006:2A87                 sub     dx, dx
seg006:2A89                 mov     cl, byte_2848C
seg006:2A8D                 or      cl, cl
seg006:2A8F                 jz      short loc_108F7
seg006:2A91                 mov     ch, cl
seg006:2A93                 jns     short loc_108E7
seg006:2A95                 neg     cl
seg006:2A97
seg006:2A97 loc_108E7:                              ; CODE XREF: sub_10840+A3␘j
seg006:2A97                 mov     dx, [bx-7462h]
seg006:2A9B                 sub     dx, word_2AA81
seg006:2A9F                 sar     dx, cl
seg006:2AA1                 or      ch, ch
seg006:2AA3                 js      short loc_108F7
seg006:2AA5                 neg     dx
seg006:2AA7
seg006:2AA7 loc_108F7:                              ; CODE XREF: sub_10840+9F␘j
seg006:2AA7                                         ; sub_10840+B3␘j
seg006:2AA7                 inc     ax
seg006:2AA8                 add     ax, dx
seg006:2AAA                 sub     ax, word_2A9C5
seg006:2AAE                 add     ax, word_28482
seg006:2AB2                 cmp     ax, word_2AABE
seg006:2AB6                 jge     short loc_1090B
seg006:2AB8                 mov     word_2AABE, ax
seg006:2ABB
seg006:2ABB loc_1090B:                              ; CODE XREF: sub_10840+C6␘j
seg006:2ABB                 shr     bx, 1
seg006:2ABD                 cmp     ax, word_2AA7B
seg006:2AC1                 jge     short loc_10937
seg006:2AC3                 mov     di, word_2A9CB
seg006:2AC7                 mov     dh, es:[di]
seg006:2ACA                 mov     cl, byte_2846C
seg006:2ACE                 sub     ch, ch
seg006:2AD0
seg006:2AD0 loc_10920:                              ; CODE XREF: sub_10840+F5␙j
seg006:2AD0                 or      ax, ax
seg006:2AD2                 jns     short loc_1093A
seg006:2AD4                 dec     dh
seg006:2AD6                 jnz     short loc_1092E
seg006:2AD8                 inc     di
seg006:2AD9                 mov     dh, es:[di]
seg006:2ADC                 add     si, cx
seg006:2ADE
seg006:2ADE loc_1092E:                              ; CODE XREF: sub_10840+E6␘j
seg006:2ADE                 dec     byte_2846D
seg006:2AE2                 jz      short loc_10937
seg006:2AE4                 inc     ax
seg006:2AE5                 jmp     short loc_10920
seg006:2AE7 ; ---------------------------------------------------------------------------
seg006:2AE7
seg006:2AE7 loc_10937:                              ; CODE XREF: sub_10840+D1␘j
seg006:2AE7                                         ; sub_10840+F2␘j
seg006:2AE7                 pop     bp
seg006:2AE8                 pop     es
seg006:2AE9                 retn
seg006:2AEA ; ---------------------------------------------------------------------------
seg006:2AEA
seg006:2AEA loc_1093A:                              ; CODE XREF: sub_10840+E2␘j
seg006:2AEA                 mov     byte_2A9C8, dh
seg006:2AEE                 mov     word_2A9CB, di
seg006:2AF2                 call    sub_10948
seg006:2AF5                 pop     bp
seg006:2AF6                 pop     es
seg006:2AF7                 retn
seg006:2AF7 sub_10840       endp
seg006:2AF7
seg006:2AF8
