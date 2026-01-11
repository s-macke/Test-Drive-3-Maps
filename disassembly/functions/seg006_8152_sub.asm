seg006:8152 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:8152
seg006:8152
seg006:8152 sub_15FA2       proc near               ; CODE XREF: sub_1176A+204␘p
seg006:8152                 sub     ax, word_2AD27
seg006:8156                 neg     ax
seg006:8158                 add     ax, 1600h
seg006:815B                 sar     ax, 1
seg006:815D                 sub     dx, word_2AD27
seg006:8161                 neg     dx
seg006:8163                 add     dx, 1600h
seg006:8167                 sar     dx, 1
seg006:8169                 mov     di, [bx+7B8Eh]
seg006:816D                 mov     cx, [si+7B8Eh]
seg006:8171                 mov     si, es:[bp+0]
seg006:8175                 cmp     di, cx
seg006:8177                 jl      short loc_15FCC
seg006:8179                 xchg    cx, di
seg006:817B                 xchg    ax, dx
seg006:817C
seg006:817C loc_15FCC:                              ; CODE XREF: sub_15FA2+25␘j
seg006:817C                 mov     bp, ax
seg006:817E                 sub     ax, dx
seg006:8180                 mov     word_2AA86, di
seg006:8184                 sub     cx, di
seg006:8186                 inc     cx
seg006:8187                 mov     word_2AAAB, cx
seg006:818B                 dec     cx
seg006:818C                 jz      short loc_15FE1
seg006:818E                 cwd
seg006:818F                 idiv    cx
seg006:8191
seg006:8191 loc_15FE1:                              ; CODE XREF: sub_15FA2+3A␘j
seg006:8191                 and     si, 1800h
seg006:8195                 jnz     short loc_15FED
seg006:8197                 mov     si, ax
seg006:8199                 call    sub_15DC7
seg006:819C                 retn
seg006:819D ; ---------------------------------------------------------------------------
seg006:819D
seg006:819D loc_15FED:                              ; CODE XREF: sub_15FA2+43␘j
seg006:819D                 mov     word_2AA9D, ax
seg006:81A0                 mov     word_2AA9F, ax
seg006:81A3                 mov     word_2AAAD, 0
seg006:81A9                 rol     si, 1
seg006:81AB                 rol     si, 1
seg006:81AD                 rol     si, 1
seg006:81AF                 rol     si, 1
seg006:81B1                 rol     si, 1
seg006:81B3                 mov     al, [si-6B17h]
seg006:81B7                 sub     ah, ah
seg006:81B9                 mov     si, ax
seg006:81BB                 mov     cx, [bx+6F0Eh]
seg006:81BF                 shl     cx, 1
seg006:81C1                 mov     ax, 1FFh
seg006:81C4                 cmp     si, cx
seg006:81C6                 jnb     short loc_16025
seg006:81C8                 mov     dx, si
seg006:81CA                 sub     ax, ax
seg006:81CC                 div     cx
seg006:81CE                 rol     ax, 1
seg006:81D0                 xchg    al, ah
seg006:81D2                 and     ah, 1
seg006:81D5
seg006:81D5 loc_16025:                              ; CODE XREF: sub_15FA2+74␘j
seg006:81D5                 mov     si, ax
seg006:81D7                 shl     si, 1
seg006:81D9                 add     si, 1172h
seg006:81DD                 mov     ax, cs:[si]
seg006:81E0                 mov     si, bp
seg006:81E2                 sub     si, ax
seg006:81E4                 add     bp, ax
seg006:81E6                 call    sub_15ADD
seg006:81E9                 retn
seg006:81E9 sub_15FA2       endp
seg006:81E9
seg006:81EA
