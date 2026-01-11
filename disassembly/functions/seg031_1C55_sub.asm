seg031:1C55 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1C55
seg031:1C55
seg031:1C55 sub_1AAB5       proc near               ; CODE XREF: sub_195D2+D␘p
seg031:1C55                                         ; sub_1AA6C+3D␘p
seg031:1C55
seg031:1C55 ; FUNCTION CHUNK AT seg031:1C52 SIZE 00000003 BYTES
seg031:1C55
seg031:1C55                 inc     cx
seg031:1C56                 jz      short loc_1AAB2
seg031:1C58                 and     cl, 0FEh
seg031:1C5B                 cmp     cx, 0FFEEh
seg031:1C5E                 jnb     short loc_1AAB2
seg031:1C60                 mov     si, [bx+2]
seg031:1C63                 cld
seg031:1C64                 lodsw
seg031:1C65                 mov     di, si
seg031:1C67                 test    al, 1
seg031:1C69                 jz      short loc_1AB0D
seg031:1C6B
seg031:1C6B loc_1AACB:                              ; CODE XREF: sub_1AAB5+2E␙j
seg031:1C6B                 dec     ax
seg031:1C6C                 cmp     ax, cx
seg031:1C6E                 jnb     short loc_1AAE5
seg031:1C70                 mov     dx, ax
seg031:1C72                 add     si, ax
seg031:1C74                 lodsw
seg031:1C75                 test    al, 1
seg031:1C77                 jz      short loc_1AB0D
seg031:1C79                 add     ax, dx
seg031:1C7B                 add     ax, 2
seg031:1C7E                 mov     si, di
seg031:1C80                 mov     [si-2], ax
seg031:1C83                 jmp     short loc_1AACB
seg031:1C85 ; ---------------------------------------------------------------------------
seg031:1C85
seg031:1C85 loc_1AAE5:                              ; CODE XREF: sub_1AAB5+19␘j
seg031:1C85                                         ; sub_1AAB5+71␙j
seg031:1C85                 mov     di, si
seg031:1C87                 jz      short loc_1AAF5
seg031:1C89                 add     di, cx
seg031:1C8B                 mov     [si-2], cx
seg031:1C8E                 sub     ax, cx
seg031:1C90                 dec     ax
seg031:1C91                 mov     [di], ax
seg031:1C93                 jmp     short loc_1AAFA
seg031:1C95 ; ---------------------------------------------------------------------------
seg031:1C95
seg031:1C95 loc_1AAF5:                              ; CODE XREF: sub_1AAB5+32␘j
seg031:1C95                 add     di, cx
seg031:1C97                 dec     byte ptr [si-2]
seg031:1C9A
seg031:1C9A loc_1AAFA:                              ; CODE XREF: sub_1AAB5+3E␘j
seg031:1C9A                 mov     ax, si
seg031:1C9C                 mov     dx, ds
seg031:1C9E                 mov     cx, ss
seg031:1CA0                 cmp     dx, cx
seg031:1CA2                 jz      short loc_1AB09
seg031:1CA4                 mov     es:word_2B5B6, ds
seg031:1CA9
seg031:1CA9 loc_1AB09:                              ; CODE XREF: sub_1AAB5+4D␘j
seg031:1CA9                 mov     [bx+2], di
seg031:1CAC                 retn
seg031:1CAD ; ---------------------------------------------------------------------------
seg031:1CAD
seg031:1CAD loc_1AB0D:                              ; CODE XREF: sub_1AAB5+14␘j
seg031:1CAD                                         ; sub_1AAB5+22␘j
seg031:1CAD                 mov     es:byte_2B5BC, 2
seg031:1CB3
seg031:1CB3 loc_1AB13:                              ; CODE XREF: sub_1AAB5+6A␙j
seg031:1CB3                                         ; sub_1AAB5+7A␙j
seg031:1CB3                 cmp     ax, 0FFFEh
seg031:1CB6                 jz      short loc_1AB3D
seg031:1CB8                 mov     di, si
seg031:1CBA                 add     si, ax
seg031:1CBC
seg031:1CBC loc_1AB1C:                              ; CODE XREF: sub_1AAB5+A9␙j
seg031:1CBC                                         ; sub_1AAB5+CC␙j
seg031:1CBC                 lodsw
seg031:1CBD                 test    al, 1
seg031:1CBF                 jz      short loc_1AB13
seg031:1CC1                 mov     di, si
seg031:1CC3
seg031:1CC3 loc_1AB23:                              ; CODE XREF: sub_1AAB5+86␙j
seg031:1CC3                 dec     ax
seg031:1CC4                 cmp     ax, cx
seg031:1CC6                 jnb     short loc_1AAE5
seg031:1CC8                 mov     dx, ax
seg031:1CCA                 add     si, ax
seg031:1CCC                 lodsw
seg031:1CCD                 test    al, 1
seg031:1CCF                 jz      short loc_1AB13
seg031:1CD1                 add     ax, dx
seg031:1CD3                 add     ax, 2
seg031:1CD6                 mov     si, di
seg031:1CD8                 mov     [si-2], ax
seg031:1CDB                 jmp     short loc_1AB23
seg031:1CDD ; ---------------------------------------------------------------------------
seg031:1CDD
seg031:1CDD loc_1AB3D:                              ; CODE XREF: sub_1AAB5+61␘j
seg031:1CDD                 mov     ax, [bx+8]
seg031:1CE0                 or      ax, ax
seg031:1CE2                 jz      short loc_1AB48
seg031:1CE4                 mov     ds, ax
seg031:1CE6                 jmp     short loc_1AB5C
seg031:1CE8 ; ---------------------------------------------------------------------------
seg031:1CE8
seg031:1CE8 loc_1AB48:                              ; CODE XREF: sub_1AAB5+8D␘j
seg031:1CE8                 dec     es:byte_2B5BC
seg031:1CED                 jz      short loc_1AB60
seg031:1CEF                 mov     ax, ds
seg031:1CF1                 mov     di, ss
seg031:1CF3                 cmp     ax, di
seg031:1CF5                 jz      short loc_1AB5C
seg031:1CF7                 mov     ds, es:word_2B5B2
seg031:1CFC
seg031:1CFC loc_1AB5C:                              ; CODE XREF: sub_1AAB5+91␘j
seg031:1CFC                                         ; sub_1AAB5+A0␘j
seg031:1CFC                 mov     si, [bx]
seg031:1CFE                 jmp     short loc_1AB1C
seg031:1D00 ; ---------------------------------------------------------------------------
seg031:1D00
seg031:1D00 loc_1AB60:                              ; CODE XREF: sub_1AAB5+98␘j
seg031:1D00                 mov     si, [bx+6]
seg031:1D03                 xor     ax, ax
seg031:1D05                 call    sub_1ABD2
seg031:1D08                 cmp     ax, si
seg031:1D0A                 jz      short loc_1AB79
seg031:1D0C                 and     al, 1
seg031:1D0E                 inc     ax
seg031:1D0F                 inc     ax
seg031:1D10                 cbw
seg031:1D11                 call    sub_1ABD2
seg031:1D14                 jz      short loc_1AB83
seg031:1D16                 dec     byte ptr [di-2]
seg031:1D19
seg031:1D19 loc_1AB79:                              ; CODE XREF: sub_1AAB5+B5␘j
seg031:1D19                 call    sub_1AB98
seg031:1D1C                 jz      short loc_1AB83
seg031:1D1E                 xchg    ax, si
seg031:1D1F                 dec     si
seg031:1D20                 dec     si
seg031:1D21                 jmp     short loc_1AB1C
seg031:1D23 ; ---------------------------------------------------------------------------
seg031:1D23
seg031:1D23 loc_1AB83:                              ; CODE XREF: sub_1AAB5:loc_1AAB2␘j
seg031:1D23                                         ; sub_1AAB5+BF␘j ...
seg031:1D23                 mov     ax, ds
seg031:1D25                 mov     cx, ss
seg031:1D27                 cmp     ax, cx
seg031:1D29                 jz      short loc_1AB8F
seg031:1D2B                 mov     es:word_2B5B6, ax
seg031:1D2F
seg031:1D2F loc_1AB8F:                              ; CODE XREF: sub_1AAB5+D4␘j
seg031:1D2F                 mov     ax, [bx]
seg031:1D31                 mov     [bx+2], ax
seg031:1D34                 xor     ax, ax
seg031:1D36                 cwd
seg031:1D37                 retn
seg031:1D37 sub_1AAB5       endp
seg031:1D37
seg031:1D38
