seg006:7982 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7982
seg006:7982 ; Attributes: bp-based frame
seg006:7982
seg006:7982 sub_157D2       proc near               ; CODE XREF: sub_112E8+10C␘p
seg006:7982                                         ; sub_15701:loc_15750␘p ...
seg006:7982
seg006:7982 arg_0           = word ptr  4
seg006:7982 arg_2           = word ptr  6
seg006:7982
seg006:7982                 push    bp
seg006:7983                 mov     bp, sp
seg006:7985                 mov     bx, 2
seg006:7988                 mov     di, [bp+arg_0]
seg006:798B                 add     di, bx
seg006:798D                 mov     si, [bp+arg_2]
seg006:7990
seg006:7990 loc_157E0:                              ; CODE XREF: sub_157D2+76␙j
seg006:7990                 push    bp
seg006:7991                 mov     bp, di
seg006:7993                 sub     bp, bx
seg006:7995                 sub     bp, bx
seg006:7997                 push    ds
seg006:7998                 mov     ax, es
seg006:799A                 mov     ds, ax
seg006:799C                 mov     dx, [si]
seg006:799E                 add     si, bx
seg006:79A0                 jmp     short loc_15804
seg006:79A2 ; ---------------------------------------------------------------------------
seg006:79A2
seg006:79A2 loc_157F2:                              ; CODE XREF: sub_157D2+34␙j
seg006:79A2                 lodsw
seg006:79A3                 cmp     dx, ax
seg006:79A5                 ja      short loc_1584C
seg006:79A7                 xchg    ax, dx
seg006:79A8                 lodsw
seg006:79A9                 cmp     dx, ax
seg006:79AB                 ja      short loc_1584C
seg006:79AD                 xchg    ax, dx
seg006:79AE                 lodsw
seg006:79AF                 cmp     dx, ax
seg006:79B1                 ja      short loc_1584C
seg006:79B3                 xchg    ax, dx
seg006:79B4
seg006:79B4 loc_15804:                              ; CODE XREF: sub_157D2+1E␘j
seg006:79B4                 cmp     si, bp
seg006:79B6                 jl      short loc_157F2
seg006:79B8                 jmp     short loc_15810
seg006:79BA ; ---------------------------------------------------------------------------
seg006:79BA
seg006:79BA loc_1580A:                              ; CODE XREF: sub_157D2+40␙j
seg006:79BA                 lodsw
seg006:79BB                 cmp     dx, ax
seg006:79BD                 ja      short loc_1584C
seg006:79BF                 xchg    ax, dx
seg006:79C0
seg006:79C0 loc_15810:                              ; CODE XREF: sub_157D2+36␘j
seg006:79C0                 cmp     si, di
seg006:79C2                 jb      short loc_1580A
seg006:79C4                 pop     ds
seg006:79C5                 pop     bp
seg006:79C6                 pop     bp
seg006:79C7                 retn
seg006:79C8 ; ---------------------------------------------------------------------------
seg006:79C8
seg006:79C8 loc_15818:                              ; CODE XREF: sub_157D2+5A␙j
seg006:79C8                 lodsw
seg006:79C9                 cmp     dx, ax
seg006:79CB                 ja      short loc_1584C
seg006:79CD                 xchg    ax, dx
seg006:79CE                 lodsw
seg006:79CF                 cmp     dx, ax
seg006:79D1                 ja      short loc_1584C
seg006:79D3                 xchg    ax, dx
seg006:79D4                 lodsw
seg006:79D5                 cmp     dx, ax
seg006:79D7                 ja      short loc_1584C
seg006:79D9
seg006:79D9 loc_15829:                              ; CODE XREF: sub_157D2+93␙j
seg006:79D9                 xchg    ax, dx
seg006:79DA                 cmp     si, bp
seg006:79DC                 jb      short loc_15818
seg006:79DE                 jmp     short loc_15836
seg006:79E0 ; ---------------------------------------------------------------------------
seg006:79E0
seg006:79E0 loc_15830:                              ; CODE XREF: sub_157D2+66␙j
seg006:79E0                 lodsw
seg006:79E1                 cmp     dx, ax
seg006:79E3                 ja      short loc_1584C
seg006:79E5                 xchg    ax, dx
seg006:79E6
seg006:79E6 loc_15836:                              ; CODE XREF: sub_157D2+5C␘j
seg006:79E6                 cmp     si, di
seg006:79E8                 jb      short loc_15830
seg006:79EA                 mov     di, cx
seg006:79EC                 pop     ds
seg006:79ED                 pop     bp
seg006:79EE                 mov     si, [bp+arg_2]
seg006:79F1                 mov     ax, si
seg006:79F3                 add     ax, 4
seg006:79F6                 cmp     di, ax
seg006:79F8                 ja      short loc_157E0
seg006:79FA                 pop     bp
seg006:79FB                 retn
seg006:79FC ; ---------------------------------------------------------------------------
seg006:79FC
seg006:79FC loc_1584C:                              ; CODE XREF: sub_157D2+23␘j
seg006:79FC                                         ; sub_157D2+29␘j ...
seg006:79FC                 sub     si, bx
seg006:79FE                 mov     cx, si
seg006:7A00                 mov     ax, [si]
seg006:7A02                 xchg    ax, [si-2]
seg006:7A05                 mov     [si], ax
seg006:7A07                 sub     si, 0C82h
seg006:7A0B                 mov     dx, [si]
seg006:7A0D                 xchg    dx, [bx+si]
seg006:7A0F                 mov     [si], dx
seg006:7A11                 mov     si, cx
seg006:7A13                 add     si, bx
seg006:7A15                 jmp     short loc_15829
seg006:7A15 sub_157D2       endp
seg006:7A15
seg006:7A17
