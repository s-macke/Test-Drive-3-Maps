seg006:6E18 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6E18
seg006:6E18
seg006:6E18 sub_14C68       proc near               ; CODE XREF: sub_14B5E+6B␘p
seg006:6E18                 sub     cx, cx
seg006:6E1A                 shl     bl, 1
seg006:6E1C                 jnb     short loc_14C71
seg006:6E1E                 add     cl, 2
seg006:6E21
seg006:6E21 loc_14C71:                              ; CODE XREF: sub_14C68+4␘j
seg006:6E21                 shl     bl, 1
seg006:6E23                 jnb     short loc_14C77
seg006:6E25                 inc     cl
seg006:6E27
seg006:6E27 loc_14C77:                              ; CODE XREF: sub_14C68+B␘j
seg006:6E27                 mov     byte_28469, cl
seg006:6E2B                 sub     bh, bh
seg006:6E2D                 push    bx
seg006:6E2E                 add     bx, 0E6Eh
seg006:6E32                 mov     ax, cs:[bx]
seg006:6E35                 pop     bx
seg006:6E36                 mov     al, dl
seg006:6E38                 mul     ah
seg006:6E3A                 mov     al, ah
seg006:6E3C                 sub     ah, ah
seg006:6E3E                 neg     ax
seg006:6E40                 shl     ax, 1
seg006:6E42                 mov     cx, ax
seg006:6E44                 neg     bx
seg006:6E46                 add     bx, 100h
seg006:6E4A                 add     bx, 0E6Eh
seg006:6E4E                 mov     ax, cs:[bx]
seg006:6E51                 mov     al, dl
seg006:6E53                 mul     ah
seg006:6E55                 mov     al, ah
seg006:6E57                 sub     ah, ah
seg006:6E59                 neg     ax
seg006:6E5B                 shl     ax, 1
seg006:6E5D                 mov     dx, ax
seg006:6E5F                 cmp     byte_28469, 1
seg006:6E64                 jb      short locret_14CCF
seg006:6E66                 jnz     short loc_14CBE
seg006:6E68                 xchg    cx, dx
seg006:6E6A                 neg     dx
seg006:6E6C                 jmp     short locret_14CCF
seg006:6E6E ; ---------------------------------------------------------------------------
seg006:6E6E
seg006:6E6E loc_14CBE:                              ; CODE XREF: sub_14C68+4E␘j
seg006:6E6E                 cmp     byte_28469, 2
seg006:6E73                 jnz     short loc_14CCB
seg006:6E75                 neg     cx
seg006:6E77                 neg     dx
seg006:6E79                 jmp     short locret_14CCF
seg006:6E7B ; ---------------------------------------------------------------------------
seg006:6E7B
seg006:6E7B loc_14CCB:                              ; CODE XREF: sub_14C68+5B␘j
seg006:6E7B                 xchg    cx, dx
seg006:6E7D                 neg     cx
seg006:6E7F
seg006:6E7F locret_14CCF:                           ; CODE XREF: sub_14C68+4C␘j
seg006:6E7F                                         ; sub_14C68+54␘j ...
seg006:6E7F                 retn
seg006:6E7F sub_14C68       endp
seg006:6E7F
seg006:6E7F ; ---------------------------------------------------------------------------
seg006:6E80                 db 0F8h, 8, 0DEh, 1, 0FCh, 8, 0DFh, 1, 0, 8, 0C0h, 1, 4
seg006:6E80                 db 8, 0C1h, 1, 2 dup(8), 0C2h, 1, 0F8h, 4, 0FEh, 1, 0FCh
seg006:6E80                 db 4, 0FFh, 1, 0, 4, 0E0h, 1, 2 dup(4), 0E1h, 1, 8, 4
seg006:6E80                 db 0E2h, 1, 0F8h, 0, 1Eh, 0, 0FCh, 0, 1Fh, 5 dup(0), 4
seg006:6E80                 db 0, 1, 0, 8, 0, 2, 0, 0F8h, 0FCh, 3Eh, 0, 2 dup(0FCh)
seg006:6E80                 db 3Fh, 2 dup(0), 0FCh, 20h, 0, 4, 0FCh, 21h, 0, 8, 0FCh
seg006:6E80                 db 22h, 0, 2 dup(0F8h), 5Eh, 0, 0FCh, 0F8h, 5Fh, 2 dup(0)
seg006:6E80                 db 0F8h, 40h, 0, 4, 0F8h, 41h, 0, 8, 0F8h, 42h, 0, 0Ch
seg006:6E80                 db 7, 2, 11h, 0Bh, 0Dh, 6, 8, 1, 3, 0Ch, 8, 10h, 7, 0Dh
seg006:6E80                 db 0Bh, 11h, 3, 9, 4, 0Ch, 0Dh, 0Eh, 0Bh, 7, 11h, 8, 12h
seg006:6E80                 db 9, 13h, 0Ch, 12h, 6, 0Dh, 11h, 7, 0Bh, 13h, 17h, 18h
seg006:6E80                 db 0Ch, 11h, 16h, 7, 0Dh, 0Bh, 12h, 10h, 17h, 15h, 0Ch
seg006:6E80                 db 10h, 8, 11h, 0Bh, 0Dh, 7, 15h, 0Fh, 14h, 0Ch, 0Bh, 0Ah
seg006:6E80                 db 0Dh, 11h, 7, 10h, 6, 0Fh, 5, 0Ch, 6, 12h, 0Bh, 7, 11h
seg006:6E80                 db 0Dh, 5, 1, 0
seg006:6F34
