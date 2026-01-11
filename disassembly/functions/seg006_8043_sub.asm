seg006:8043 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:8043
seg006:8043
seg006:8043 sub_15E93       proc near               ; CODE XREF: sub_1176A:loc_118D4␘p
seg006:8043                 mov     bp, si
seg006:8045                 rol     si, 1
seg006:8047                 rol     si, 1
seg006:8049                 rol     si, 1
seg006:804B                 rol     si, 1
seg006:804D                 rol     si, 1
seg006:804F                 and     si, 3
seg006:8052                 mov     al, [si-6B1Bh]
seg006:8056                 sub     ah, ah
seg006:8058                 mov     si, ax
seg006:805A                 mov     cx, [bx+6F0Eh]
seg006:805E                 shl     cx, 1
seg006:8060                 mov     ax, 1FFh
seg006:8063                 cmp     si, cx
seg006:8065                 jnb     short loc_15EC4
seg006:8067                 mov     dx, si
seg006:8069                 sub     ax, ax
seg006:806B                 div     cx
seg006:806D                 rol     ax, 1
seg006:806F                 xchg    al, ah
seg006:8071                 and     ah, 1
seg006:8074
seg006:8074 loc_15EC4:                              ; CODE XREF: sub_15E93+22␘j
seg006:8074                 mov     si, ax
seg006:8076                 shl     si, 1
seg006:8078                 add     si, 1172h
seg006:807C                 mov     ax, cs:[si]
seg006:807F                 shr     ax, 1
seg006:8081                 shr     ax, 1
seg006:8083                 shr     ax, 1
seg006:8085                 shr     ax, 1
seg006:8087                 shr     ax, 1
seg006:8089                 mov     cx, ax
seg006:808B                 mov     di, [bx+7B8Eh]
seg006:808F                 sub     di, ax
seg006:8091                 mov     word_2AA86, di
seg006:8095                 shl     ax, 1
seg006:8097                 jz      short locret_15F0B
seg006:8099                 mov     word_2AAAB, ax
seg006:809C                 shr     bx, 1
seg006:809E                 mov     si, word_2945F
seg006:80A2                 shl     si, 1
seg006:80A4                 jmp     short loc_15F06
seg006:80A6 ; ---------------------------------------------------------------------------
seg006:80A6
seg006:80A6 loc_15EF6:                              ; CODE XREF: sub_15E93+76␙j
seg006:80A6                 mov     ax, [si-513Bh]
seg006:80AA                 cmp     ax, bx
seg006:80AC                 ja      short loc_15F06
seg006:80AE                 add     ax, [si-4FFBh]
seg006:80B2                 cmp     ax, bx
seg006:80B4                 jnb     short loc_15F0C
seg006:80B6
seg006:80B6 loc_15F06:                              ; CODE XREF: sub_15E93+61␘j
seg006:80B6                                         ; sub_15E93+69␘j
seg006:80B6                 sub     si, 2
seg006:80B9                 jns     short loc_15EF6
seg006:80BB
seg006:80BB locret_15F0B:                           ; CODE XREF: sub_15E93+54␘j
seg006:80BB                 retn
seg006:80BC ; ---------------------------------------------------------------------------
seg006:80BC
seg006:80BC loc_15F0C:                              ; CODE XREF: sub_15E93+71␘j
seg006:80BC                 shl     bx, 1
seg006:80BE                 mov     ax, [si-577Bh]
seg006:80C2                 sub     al, al
seg006:80C4                 test    bp, 2000h
seg006:80C8                 jnz     short loc_15F1D
seg006:80CA                 add     ah, 40h ; '@'
seg006:80CD
seg006:80CD loc_15F1D:                              ; CODE XREF: sub_15E93+85␘j
seg006:80CD                 sub     ax, word_28484
seg006:80D1                 sub     ax, [bx+498Eh]
seg006:80D5                 add     ah, 14h
seg006:80D8                 and     ah, 7Fh
seg006:80DB                 cmp     ax, 4000h
seg006:80DE                 jnz     short loc_15F31
seg006:80E0                 dec     ax
seg006:80E1
seg006:80E1 loc_15F31:                              ; CODE XREF: sub_15E93+9B␘j
seg006:80E1                 test    ah, 40h
seg006:80E4                 jz      short loc_15F3B
seg006:80E6                 neg     ax
seg006:80E8                 add     ax, 8000h
seg006:80EB
seg006:80EB loc_15F3B:                              ; CODE XREF: sub_15E93+A1␘j
seg006:80EB                 xchg    al, ah
seg006:80ED                 rol     ax, 1
seg006:80EF                 rol     ax, 1
seg006:80F1                 and     ax, 0FEh
seg006:80F4                 mov     bp, ax
seg006:80F6                 add     bp, 0E6Eh
seg006:80FA                 mov     bp, cs:[bp+0]
seg006:80FE                 mov     ax, 30h ; '0'
seg006:8101                 cmp     cx, 0Ch
seg006:8104                 jb      short loc_15F59
seg006:8106                 mov     ax, 38h ; '8'
seg006:8109
seg006:8109 loc_15F59:                              ; CODE XREF: sub_15E93+C1␘j
seg006:8109                 dec     cx
seg006:810A                 js      short loc_15F60
seg006:810C                 jz      short loc_15F60
seg006:810E                 div     cl
seg006:8110
seg006:8110 loc_15F60:                              ; CODE XREF: sub_15E93+C7␘j
seg006:8110                                         ; sub_15E93+C9␘j
seg006:8110                 add     ah, 10h
seg006:8113                 cmp     ah, 20h ; ' '
seg006:8116                 jb      short loc_15F6A
seg006:8118                 inc     al
seg006:811A
seg006:811A loc_15F6A:                              ; CODE XREF: sub_15E93+D3␘j
seg006:811A                 sub     ah, ah
seg006:811C                 mul     bp
seg006:811E                 mov     ax, dx
seg006:8120                 mov     word_2AA9F, ax
seg006:8123                 inc     cx
seg006:8124                 mul     cl
seg006:8126                 mov     word_2AA9D, ax
seg006:8129                 cmp     cx, 0Ch
seg006:812C                 jnb     short loc_15F80
seg006:812E                 shl     cx, 1
seg006:8130
seg006:8130 loc_15F80:                              ; CODE XREF: sub_15E93+E9␘j
seg006:8130                 shl     cx, 1
seg006:8132                 shl     cx, 1
seg006:8134                 mov     ax, cx
seg006:8136                 mul     bp
seg006:8138                 mov     si, [bx+498Eh]
seg006:813C                 sub     si, word_2AD27
seg006:8140                 neg     si
seg006:8142                 add     si, 1600h
seg006:8146                 sar     si, 1
seg006:8148                 mov     bp, si
seg006:814A                 sub     si, dx
seg006:814C                 add     bp, dx
seg006:814E                 call    sub_15CE2
seg006:8151                 retn
seg006:8151 sub_15E93       endp
seg006:8151
seg006:8152
