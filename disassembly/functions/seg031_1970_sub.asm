seg031:1970 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1970
seg031:1970 ; Attributes: bp-based frame
seg031:1970
seg031:1970 sub_1A7D0       proc far                ; CODE XREF: sub_19F08+AB␘p
seg031:1970
seg031:1970 arg_0           = byte ptr  6
seg031:1970
seg031:1970                 push    bp
seg031:1971                 mov     bp, sp
seg031:1973                 sub     sp, 2
seg031:1976                 push    si
seg031:1977                 mov     si, 0C4C2h
seg031:197A                 mov     cl, [bp+arg_0]
seg031:197D                 jmp     short loc_1A7E1
seg031:197D ; ---------------------------------------------------------------------------
seg031:197F                 align 2
seg031:1980
seg031:1980 loc_1A7E0:                              ; CODE XREF: sub_1A7D0+18␙j
seg031:1980                 inc     si
seg031:1981
seg031:1981 loc_1A7E1:                              ; CODE XREF: sub_1A7D0+D␘j
seg031:1981                 cmp     byte ptr [si], 0
seg031:1984                 jz      short loc_1A7F0
seg031:1986                 cmp     cl, [si]
seg031:1988                 jnz     short loc_1A7E0
seg031:198A                 mov     ax, 1
seg031:198D                 jmp     short loc_1A7F2
seg031:198D ; ---------------------------------------------------------------------------
seg031:198F                 align 2
seg031:1990
seg031:1990 loc_1A7F0:                              ; CODE XREF: sub_1A7D0+14␘j
seg031:1990                 sub     ax, ax
seg031:1992
seg031:1992 loc_1A7F2:                              ; CODE XREF: sub_1A7D0+1D␘j
seg031:1992                 pop     si
seg031:1993                 mov     sp, bp
seg031:1995                 pop     bp
seg031:1996                 retf
seg031:1996 sub_1A7D0       endp
seg031:1996
seg031:1996 ; ---------------------------------------------------------------------------
seg031:1997                 align 2
seg031:1998
