seg033:0ABB ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0ABB
seg033:0ABB
seg033:0ABB sub_1EA4B       proc near               ; CODE XREF: seg033:0A7D␘p
seg033:0ABB                 push    bx
seg033:0ABC                 push    cx
seg033:0ABD                 push    dx
seg033:0ABE                 push    si
seg033:0ABF                 push    bp
seg033:0AC0                 mov     ax, 6000h
seg033:0AC3                 call    sub_1E7F9
seg033:0AC6                 call    sub_1ED12
seg033:0AC9                 mov     dx, 221h
seg033:0ACC                 cmp     bl, 6
seg033:0ACF                 jl      short loc_1EA67
seg033:0AD1                 add     dx, 2
seg033:0AD4                 sub     bl, 6
seg033:0AD7
seg033:0AD7 loc_1EA67:                              ; CODE XREF: sub_1EA4B+14␘j
seg033:0AD7                 mov     bp, ax
seg033:0AD9                 mov     al, 8
seg033:0ADB                 add     al, bl
seg033:0ADD                 out     dx, al
seg033:0ADE                 dec     dx
seg033:0ADF                 mov     ax, bp
seg033:0AE1                 out     dx, al
seg033:0AE2                 inc     dx
seg033:0AE3                 mov     si, bx
seg033:0AE5                 shr     bl, 1
seg033:0AE7                 mov     al, bl
seg033:0AE9                 add     al, 10h
seg033:0AEB                 out     dx, al
seg033:0AEC                 dec     dx
seg033:0AED                 mov     al, cl
seg033:0AEF                 mov     ah, [bx-356Bh]
seg033:0AF3                 test    si, 1
seg033:0AF7                 jz      short loc_1EA92
seg033:0AF9                 mov     cl, 4
seg033:0AFB                 shl     al, cl
seg033:0AFD                 and     ah, 0Fh
seg033:0B00                 jmp     short loc_1EA95
seg033:0B02 ; ---------------------------------------------------------------------------
seg033:0B02
seg033:0B02 loc_1EA92:                              ; CODE XREF: sub_1EA4B+3C␘j
seg033:0B02                 and     ah, 0F0h
seg033:0B05
seg033:0B05 loc_1EA95:                              ; CODE XREF: sub_1EA4B+45␘j
seg033:0B05                 or      al, ah
seg033:0B07                 mov     [bx-356Bh], al
seg033:0B0B                 out     dx, al
seg033:0B0C                 pop     bp
seg033:0B0D                 pop     si
seg033:0B0E                 pop     dx
seg033:0B0F                 pop     cx
seg033:0B10                 pop     bx
seg033:0B11                 retn
seg033:0B11 sub_1EA4B       endp
seg033:0B11
seg033:0B12 ; ---------------------------------------------------------------------------
seg033:0B12                 push    bx
seg033:0B13                 push    cx
seg033:0B14                 push    dx
seg033:0B15                 sub     ch, 15h
seg033:0B18
seg033:0B18 loc_1EAA8:                              ; CODE XREF: seg033:0B1D␙j
seg033:0B18                 jns     short loc_1EAAF
seg033:0B1A                 add     ch, 0Ch
seg033:0B1D                 jmp     short loc_1EAA8
seg033:0B1F ; ---------------------------------------------------------------------------
seg033:0B1F
seg033:0B1F loc_1EAAF:                              ; CODE XREF: seg033:loc_1EAA8␘j
seg033:0B1F                 test    byte_2BA73, 1
seg033:0B24                 jnz     short loc_1EABC
seg033:0B26                 cmp     ch, [bx-373Dh]
seg033:0B2A                 jnz     short loc_1EAE7
seg033:0B2C
seg033:0B2C loc_1EABC:                              ; CODE XREF: seg033:0B24␘j
seg033:0B2C                 mov     dx, 221h
seg033:0B2F                 cmp     bl, 6
seg033:0B32                 jl      short loc_1EACA
seg033:0B34                 add     dx, 2
seg033:0B37                 sub     bl, 6
seg033:0B3A
seg033:0B3A loc_1EACA:                              ; CODE XREF: seg033:0B32␘j
seg033:0B3A                 mov     al, 14h
seg033:0B3C                 out     dx, al
seg033:0B3D                 dec     dx
seg033:0B3E                 mov     al, [bx-3571h]
seg033:0B42                 not     al
seg033:0B44                 and     al, byte_2BB6E
seg033:0B48                 mov     byte_2BB6E, al
seg033:0B4B                 out     dx, al
seg033:0B4C                 mov     word ptr [si-378Dh], 0
seg033:0B52                 mov     byte ptr [bx-373Dh], 0
seg033:0B57
seg033:0B57 loc_1EAE7:                              ; CODE XREF: seg033:0B2A␘j
seg033:0B57                 pop     dx
seg033:0B58                 pop     cx
seg033:0B59                 pop     bx
seg033:0B5A                 retn
seg033:0B5B
