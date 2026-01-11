seg005:1761 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1761
seg005:1761 ; Attributes: bp-based frame
seg005:1761
seg005:1761 sub_D681        proc far                ; CODE XREF: sub_92AC+4C␘P
seg005:1761
seg005:1761 arg_0           = word ptr  6
seg005:1761 arg_2           = word ptr  8
seg005:1761 arg_4           = word ptr  0Ah
seg005:1761
seg005:1761                 push    bp
seg005:1762                 mov     bp, sp
seg005:1764                 push    bp
seg005:1765                 push    si
seg005:1766                 push    di
seg005:1767                 push    es
seg005:1768                 mov     ax, word_280BC
seg005:176B                 mov     es, ax
seg005:176D                 mov     si, [bp+arg_0]
seg005:1770                 mov     ax, [bp+arg_4]
seg005:1773                 xchg    al, ah
seg005:1775                 mov     di, ax
seg005:1777                 shr     ax, 1
seg005:1779                 shr     ax, 1
seg005:177B                 add     di, ax
seg005:177D                 mov     bx, [bp+arg_2]
seg005:1780                 sub     bp, bp
seg005:1782                 sub     ch, ch
seg005:1784
seg005:1784 loc_D6A4:                               ; CODE XREF: sub_D681+54␙j
seg005:1784                 lodsb
seg005:1785                 mov     ah, al
seg005:1787                 mov     cl, [si]
seg005:1789                 inc     si
seg005:178A                 add     bp, cx
seg005:178C                 cmp     al, 0Fh
seg005:178E                 jz      short loc_D6DD
seg005:1790                 cmp     bp, 140h
seg005:1794                 jbe     short loc_D6CB
seg005:1796                 sub     bp, 140h
seg005:179A                 sub     cx, bp
seg005:179C                 shr     cl, 1
seg005:179E                 jnb     short loc_D6C1
seg005:17A0                 stosb
seg005:17A1
seg005:17A1 loc_D6C1:                               ; CODE XREF: sub_D681+3D␘j
seg005:17A1                 jz      short loc_D6C5
seg005:17A3                 rep stosw
seg005:17A5
seg005:17A5 loc_D6C5:                               ; CODE XREF: sub_D681:loc_D6C1␘j
seg005:17A5                 sub     di, 280h
seg005:17A9                 mov     cx, bp
seg005:17AB
seg005:17AB loc_D6CB:                               ; CODE XREF: sub_D681+33␘j
seg005:17AB                 shr     cl, 1
seg005:17AD                 jnb     short loc_D6D0
seg005:17AF                 stosb
seg005:17B0
seg005:17B0 loc_D6D0:                               ; CODE XREF: sub_D681+4C␘j
seg005:17B0                 jz      short loc_D6D4
seg005:17B2                 rep stosw
seg005:17B4
seg005:17B4 loc_D6D4:                               ; CODE XREF: sub_D681:loc_D6D0␘j
seg005:17B4                                         ; sub_D681+72␙j
seg005:17B4                 dec     bx
seg005:17B5                 jnz     short loc_D6A4
seg005:17B7                 pop     es
seg005:17B8                 pop     di
seg005:17B9                 pop     si
seg005:17BA                 pop     bp
seg005:17BB                 pop     bp
seg005:17BC                 retf
seg005:17BD ; ---------------------------------------------------------------------------
seg005:17BD
seg005:17BD loc_D6DD:                               ; CODE XREF: sub_D681+2D␘j
seg005:17BD                 cmp     bp, 140h
seg005:17C1                 jbe     short loc_D6F1
seg005:17C3                 sub     bp, 140h
seg005:17C7                 sub     cx, bp
seg005:17C9                 add     di, cx
seg005:17CB                 sub     di, 280h
seg005:17CF                 mov     cx, bp
seg005:17D1
seg005:17D1 loc_D6F1:                               ; CODE XREF: sub_D681+60␘j
seg005:17D1                 add     di, cx
seg005:17D3                 jmp     short loc_D6D4
seg005:17D3 sub_D681        endp
seg005:17D3
seg005:17D5
