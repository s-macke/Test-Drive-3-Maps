seg006:2FE8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2FE8
seg006:2FE8
seg006:2FE8 sub_10E38       proc near               ; CODE XREF: sub_10F0A:loc_10F18␙p
seg006:2FE8                 push    bp
seg006:2FE9                 mov     di, word_2849A
seg006:2FED                 shl     di, 1
seg006:2FEF                 sub     bx, bx
seg006:2FF1                 jmp     short loc_10E4F
seg006:2FF1 ; ---------------------------------------------------------------------------
seg006:2FF3                 align 2
seg006:2FF4
seg006:2FF4 loc_10E44:                              ; CODE XREF: sub_10E38+19␙j
seg006:2FF4                 pop     bp
seg006:2FF5                 retn
seg006:2FF6 ; ---------------------------------------------------------------------------
seg006:2FF6
seg006:2FF6 loc_10E46:                              ; CODE XREF: sub_10E38+27␙j
seg006:2FF6                 mov     word ptr [bx-77F2h], 0FFFFh
seg006:2FFC
seg006:2FFC loc_10E4C:                              ; CODE XREF: sub_10E38+CF␙j
seg006:2FFC                 add     bx, 2
seg006:2FFF
seg006:2FFF loc_10E4F:                              ; CODE XREF: sub_10E38+9␘j
seg006:2FFF                 cmp     bx, di
seg006:3001                 jz      short loc_10E44
seg006:3003                 mov     si, [bx-7592h]
seg006:3007                 sub     bp, bp
seg006:3009                 mov     cx, [si-6681h]
seg006:300D                 or      cl, cl
seg006:300F                 jz      short loc_10E46
seg006:3011                 mov     byte_2A9C2, cl
seg006:3015                 mov     cx, [si-6401h]
seg006:3019                 shl     cx, 1
seg006:301B                 shl     cx, 1
seg006:301D                 sub     cx, word_2848D
seg006:3021                 jns     short loc_10E78
seg006:3023                 neg     cx
seg006:3025                 mov     bp, 6
seg006:3028
seg006:3028 loc_10E78:                              ; CODE XREF: sub_10E38+39␘j
seg006:3028                 mov     dx, [si-6181h]
seg006:302C                 shl     dx, 1
seg006:302E                 shl     dx, 1
seg006:3030                 sub     dx, word_2848F
seg006:3034                 jns     short loc_10E8B
seg006:3036                 neg     dx
seg006:3038                 xor     bp, 2
seg006:303B
seg006:303B loc_10E8B:                              ; CODE XREF: sub_10E38+4C␘j
seg006:303B                 cmp     cx, dx
seg006:303D                 jb      short loc_10E94
seg006:303F                 xchg    cx, dx
seg006:3041                 xor     bp, 8
seg006:3044
seg006:3044 loc_10E94:                              ; CODE XREF: sub_10E38+55␘j
seg006:3044                 xchg    dx, cx
seg006:3046                 mov     ax, 1FFh
seg006:3049                 cmp     dx, cx
seg006:304B                 jz      short loc_10EAC
seg006:304D                 sub     ax, ax
seg006:304F                 or      cx, cx
seg006:3051                 jz      short loc_10EAC
seg006:3053                 div     cx
seg006:3055                 rol     ax, 1
seg006:3057                 xchg    al, ah
seg006:3059                 and     ah, 1
seg006:305C
seg006:305C loc_10EAC:                              ; CODE XREF: sub_10E38+63␘j
seg006:305C                                         ; sub_10E38+69␘j
seg006:305C                 mov     dx, cx
seg006:305E                 shl     ax, 1
seg006:3060                 add     ax, 1172h
seg006:3063                 mov     cx, [bp-4947h]
seg006:3067                 mov     bp, [bp-4957h]
seg006:306B                 add     bp, ax
seg006:306D                 add     cx, cs:[bp+0]
seg006:3071                 sub     cx, word_28484
seg006:3075                 mov     [bx-7462h], cx
seg006:3079                 mov     bp, ax
seg006:307B                 mov     bp, cs:[bp+0]
seg006:307F                 shr     bp, 1
seg006:3081                 shr     bp, 1
seg006:3083                 shr     bp, 1
seg006:3085                 shr     bp, 1
seg006:3087                 add     bp, 0F72h
seg006:308B                 sub     ax, ax
seg006:308D                 div     word ptr cs:[bp+0]
seg006:3091                 mov     dx, [si-5F01h]
seg006:3095                 sub     dx, word_2848A
seg006:3099                 jns     short loc_10EED
seg006:309B                 neg     dx
seg006:309D
seg006:309D loc_10EED:                              ; CODE XREF: sub_10E38+B1␘j
seg006:309D                 add     dx, ax
seg006:309F                 mov     [bx-77F2h], dx
seg006:30A3                 cmp     byte_2A9C2, 8
seg006:30A8                 jbe     short loc_10F03
seg006:30AA                 cmp     ax, word_285B9
seg006:30AE                 jnb     short loc_10F03
seg006:30B0                 mov     ax, word_285B9
seg006:30B3
seg006:30B3 loc_10F03:                              ; CODE XREF: sub_10E38+C0␘j
seg006:30B3                                         ; sub_10E38+C6␘j
seg006:30B3                 mov     [bx-76C2h], ax
seg006:30B7                 jmp     loc_10E4C
seg006:30B7 sub_10E38       endp
seg006:30B7
seg006:30BA
