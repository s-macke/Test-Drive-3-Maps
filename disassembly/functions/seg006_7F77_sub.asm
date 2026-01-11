seg006:7F77 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7F77
seg006:7F77
seg006:7F77 sub_15DC7       proc near               ; CODE XREF: sub_15FA2+47␙p
seg006:7F77                 push    es
seg006:7F78                 mov     es, word_280BE
seg006:7F7C                 mov     word_2AAAD, 0
seg006:7F82                 mov     bx, word_2AA86
seg006:7F86                 mov     dx, 0FFE0h
seg006:7F89                 cmp     bx, 13h
seg006:7F8C                 jge     short loc_15E06
seg006:7F8E                 jb      short loc_15E0A
seg006:7F90                 mov     cx, bx
seg006:7F92                 neg     cx
seg006:7F94                 sub     bx, bx
seg006:7F96                 sub     word_2AAAB, cx
seg006:7F9A                 cmp     word_2AAAB, 1
seg006:7F9F                 jl      short loc_15E06
seg006:7FA1                 jz      short loc_15E03
seg006:7FA3                 shr     cx, 1
seg006:7FA5                 jz      short loc_15E08
seg006:7FA7                 jnb     short loc_15DFB
seg006:7FA9                 sub     bp, si
seg006:7FAB
seg006:7FAB loc_15DFB:                              ; CODE XREF: sub_15DC7+30␘j
seg006:7FAB                                         ; sub_15DC7+38␙j
seg006:7FAB                 sub     bp, si
seg006:7FAD                 sub     bp, si
seg006:7FAF                 loop    loc_15DFB
seg006:7FB1                 jmp     short loc_15E0A
seg006:7FB3 ; ---------------------------------------------------------------------------
seg006:7FB3
seg006:7FB3 loc_15E03:                              ; CODE XREF: sub_15DC7+2A␘j
seg006:7FB3                 jmp     loc_15E8B
seg006:7FB6 ; ---------------------------------------------------------------------------
seg006:7FB6
seg006:7FB6 loc_15E06:                              ; CODE XREF: sub_15DC7+15␘j
seg006:7FB6                                         ; sub_15DC7+28␘j
seg006:7FB6                 pop     es
seg006:7FB7                 retn
seg006:7FB8 ; ---------------------------------------------------------------------------
seg006:7FB8
seg006:7FB8 loc_15E08:                              ; CODE XREF: sub_15DC7+2E␘j
seg006:7FB8                 sub     bp, si
seg006:7FBA
seg006:7FBA loc_15E0A:                              ; CODE XREF: sub_15DC7+17␘j
seg006:7FBA                                         ; sub_15DC7+3A␘j
seg006:7FBA                 mov     ax, bx
seg006:7FBC                 shl     bx, 1
seg006:7FBE                 add     ax, word_2AAAB
seg006:7FC2                 sub     ax, 13h
seg006:7FC5                 js      short loc_15E21
seg006:7FC7                 jz      short loc_15E21
seg006:7FC9                 mov     word_2AAAD, si
seg006:7FCD                 sub     word_2AAAB, ax
seg006:7FD1
seg006:7FD1 loc_15E21:                              ; CODE XREF: sub_15DC7+4E␘j
seg006:7FD1                                         ; sub_15DC7+50␘j ...
seg006:7FD1                 mov     ax, bp
seg006:7FD3                 mov     cx, ax
seg006:7FD5                 sub     cx, si
seg006:7FD7                 cmp     ax, cx
seg006:7FD9                 js      short loc_15E2C
seg006:7FDB                 xchg    ax, cx
seg006:7FDC
seg006:7FDC loc_15E2C:                              ; CODE XREF: sub_15DC7+62␘j
seg006:7FDC                 and     ax, dx
seg006:7FDE                 and     cx, dx
seg006:7FE0                 cmp     cx, 0AE0h
seg006:7FE4                 jbe     short loc_15E48
seg006:7FE6                 cmp     cx, 8AE0h
seg006:7FEA                 ja      short loc_15E79
seg006:7FEC                 cmp     ax, 0AE0h
seg006:7FEF                 jbe     short loc_15E45
seg006:7FF1                 cmp     ax, cx
seg006:7FF3                 jbe     short loc_15E79
seg006:7FF5
seg006:7FF5 loc_15E45:                              ; CODE XREF: sub_15DC7+78␘j
seg006:7FF5                 mov     cx, 0AE0h
seg006:7FF8
seg006:7FF8 loc_15E48:                              ; CODE XREF: sub_15DC7+6D␘j
seg006:7FF8                 cmp     ax, 0AE0h
seg006:7FFB                 jbe     short loc_15E54
seg006:7FFD                 cmp     ax, 8000h
seg006:8000                 jbe     short loc_15E79
seg006:8002                 sub     ax, ax
seg006:8004
seg006:8004 loc_15E54:                              ; CODE XREF: sub_15DC7+84␘j
seg006:8004                 sub     cx, ax
seg006:8006                 shl     ax, 1
seg006:8008                 shl     ax, 1
seg006:800A                 rol     ax, 1
seg006:800C                 xchg    al, ah
seg006:800E                 shl     cx, 1
seg006:8010                 shl     cx, 1
seg006:8012                 rol     cx, 1
seg006:8014                 xchg    cl, ch
seg006:8016                 inc     cx
seg006:8017                 mov     di, [bx-4763h]
seg006:801B                 add     di, ax
seg006:801D                 mov     ax, word_2AA9B
seg006:8020                 shr     cx, 1
seg006:8022                 jz      short loc_15E78
seg006:8024                 rep stosw
seg006:8026                 jnb     short loc_15E79
seg006:8028
seg006:8028 loc_15E78:                              ; CODE XREF: sub_15DC7+AB␘j
seg006:8028                 stosb
seg006:8029
seg006:8029 loc_15E79:                              ; CODE XREF: sub_15DC7+73␘j
seg006:8029                                         ; sub_15DC7+7C␘j ...
seg006:8029                 add     bx, 2
seg006:802C                 sub     bp, si
seg006:802E                 dec     word_2AAAB
seg006:8032                 cmp     word_2AAAB, 1
seg006:8037                 ja      short loc_15E21
seg006:8039                 jb      short loc_15E91
seg006:803B
seg006:803B loc_15E8B:                              ; CODE XREF: sub_15DC7:loc_15E03␘j
seg006:803B                 mov     si, word_2AAAD
seg006:803F                 jmp     short loc_15E21
seg006:8041 ; ---------------------------------------------------------------------------
seg006:8041
seg006:8041 loc_15E91:                              ; CODE XREF: sub_15DC7+C2␘j
seg006:8041                 pop     es
seg006:8042                 retn
seg006:8042 sub_15DC7       endp
seg006:8042
seg006:8043
