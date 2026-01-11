seg006:662B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:662B
seg006:662B
seg006:662B sub_1447B       proc near               ; CODE XREF: sub_1176A+1B5␘p
seg006:662B                                         ; sub_1297C+93␘p ...
seg006:662B                 mov     di, [bx+560Eh]
seg006:662F                 mov     cx, [si+560Eh]
seg006:6633                 mov     si, es:[bp+0]
seg006:6637                 cmp     di, cx
seg006:6639                 jl      short loc_1448E
seg006:663B                 xchg    cx, di
seg006:663D                 xchg    ax, dx
seg006:663E
seg006:663E loc_1448E:                              ; CODE XREF: sub_1447B+E␘j
seg006:663E                 mov     bp, ax
seg006:6640                 sub     ax, dx
seg006:6642                 mov     word_2AA86, di
seg006:6646                 sub     cx, di
seg006:6648                 inc     cx
seg006:6649                 mov     word_2AAAB, cx
seg006:664D                 dec     cx
seg006:664E                 jz      short loc_144A3
seg006:6650                 cwd
seg006:6651                 idiv    cx
seg006:6653
seg006:6653 loc_144A3:                              ; CODE XREF: sub_1447B+23␘j
seg006:6653                 and     si, 1800h
seg006:6657                 jnz     short loc_144AF
seg006:6659                 mov     si, ax
seg006:665B                 call    sub_1218E
seg006:665E                 retn
seg006:665F ; ---------------------------------------------------------------------------
seg006:665F
seg006:665F loc_144AF:                              ; CODE XREF: sub_1447B+2C␘j
seg006:665F                 mov     word_2AA9D, ax
seg006:6662                 mov     word_2AA9F, ax
seg006:6665                 mov     word_2AAAD, 0
seg006:666B                 rol     si, 1
seg006:666D                 rol     si, 1
seg006:666F                 rol     si, 1
seg006:6671                 rol     si, 1
seg006:6673                 rol     si, 1
seg006:6675                 mov     al, [si-6B17h]
seg006:6679                 sub     ah, ah
seg006:667B                 mov     si, ax
seg006:667D                 mov     cx, [bx+6F0Eh]
seg006:6681                 mov     ax, 1FFh
seg006:6684                 cmp     si, cx
seg006:6686                 jnb     short loc_144E5
seg006:6688                 mov     dx, si
seg006:668A                 sub     ax, ax
seg006:668C                 div     cx
seg006:668E                 rol     ax, 1
seg006:6690                 xchg    al, ah
seg006:6692                 and     ah, 1
seg006:6695
seg006:6695 loc_144E5:                              ; CODE XREF: sub_1447B+5B␘j
seg006:6695                 mov     si, ax
seg006:6697                 shl     si, 1
seg006:6699                 add     si, 1172h
seg006:669D                 mov     ax, cs:[si]
seg006:66A0                 mov     si, bp
seg006:66A2                 sub     si, ax
seg006:66A4                 add     bp, ax
seg006:66A6                 call    sub_11EA0
seg006:66A9                 retn
seg006:66A9 sub_1447B       endp
seg006:66A9
seg006:66AA
