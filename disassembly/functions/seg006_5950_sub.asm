seg006:5950 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:5950
seg006:5950
seg006:5950 sub_137A0       proc near               ; CODE XREF: sub_12A2C+6␘p
seg006:5950                 sub     ax, ax
seg006:5952                 mov     bx, word_29461
seg006:5956                 shl     bx, 1
seg006:5958                 jmp     short loc_137D5
seg006:595A ; ---------------------------------------------------------------------------
seg006:595A
seg006:595A loc_137AA:                              ; CODE XREF: sub_137A0+38␙j
seg006:595A                 mov     dx, [bx-5C7Bh]
seg006:595E                 test    dh, 20h
seg006:5961                 jz      short loc_137D5
seg006:5963                 cmp     [bx-54FBh], ax
seg006:5967                 jz      short loc_137D5
seg006:5969                 and     dh, 90h
seg006:596C                 cmp     dh, 90h ; 'É'
seg006:596F                 jnz     short loc_137CF
seg006:5971                 and     word ptr [bx-5C7Bh], 0EFFFh
seg006:5977                 or      word ptr [bx-5C7Bh], 800h
seg006:597D                 jmp     short loc_137D5
seg006:597F ; ---------------------------------------------------------------------------
seg006:597F
seg006:597F loc_137CF:                              ; CODE XREF: sub_137A0+1F␘j
seg006:597F                 and     word ptr [bx-5C7Bh], 6FFFh
seg006:5985
seg006:5985 loc_137D5:                              ; CODE XREF: sub_137A0+8␘j
seg006:5985                                         ; sub_137A0+11␘j ...
seg006:5985                 sub     bx, 2
seg006:5988                 jnz     short loc_137AA
seg006:598A                 mov     bx, word_29461
seg006:598E                 shl     bx, 1
seg006:5990                 jmp     short loc_137FF
seg006:5992 ; ---------------------------------------------------------------------------
seg006:5992
seg006:5992 loc_137E2:                              ; CODE XREF: sub_137A0+62␙j
seg006:5992                 mov     cx, [bx-5C7Bh]
seg006:5996                 test    ch, 20h
seg006:5999                 jz      short loc_137FF
seg006:599B                 and     cl, 3Fh
seg006:599E                 cmp     cl, 12h
seg006:59A1                 jb      short loc_137F8
seg006:59A3                 cmp     cl, 14h
seg006:59A6                 jbe     short loc_137FF
seg006:59A8
seg006:59A8 loc_137F8:                              ; CODE XREF: sub_137A0+51␘j
seg006:59A8                 mov     si, bx
seg006:59AA
seg006:59AA loc_137FA:                              ; CODE XREF: sub_137A0+80␙j
seg006:59AA                                         ; sub_137A0+90␙j ...
seg006:59AA                 sub     si, 2
seg006:59AD                 jns     short loc_13805
seg006:59AF
seg006:59AF loc_137FF:                              ; CODE XREF: sub_137A0+40␘j
seg006:59AF                                         ; sub_137A0+49␘j ...
seg006:59AF                 sub     bx, 2
seg006:59B2                 jnz     short loc_137E2
seg006:59B4                 retn
seg006:59B5 ; ---------------------------------------------------------------------------
seg006:59B5
seg006:59B5 loc_13805:                              ; CODE XREF: sub_137A0+5D␘j
seg006:59B5                 mov     ax, [bx-5B3Bh]
seg006:59B9                 mov     cx, [bx-59FBh]
seg006:59BD                 mov     dx, [bx-58BBh]
seg006:59C1                 shr     dx, 1
seg006:59C3                 shr     dx, 1
seg006:59C5                 shr     dx, 1
seg006:59C7                 or      si, si
seg006:59C9                 jz      short loc_13822
seg006:59CB                 cmp     word ptr [si-4D7Bh], 0
seg006:59D0                 jz      short loc_137FA
seg006:59D2
seg006:59D2 loc_13822:                              ; CODE XREF: sub_137A0+79␘j
seg006:59D2                 mov     di, [si-5B3Bh]
seg006:59D6                 sub     di, ax
seg006:59D8                 jns     short loc_1382C
seg006:59DA                 neg     di
seg006:59DC
seg006:59DC loc_1382C:                              ; CODE XREF: sub_137A0+88␘j
seg006:59DC                 cmp     di, word_285BD
seg006:59E0                 jnb     short loc_137FA
seg006:59E2                 mov     di, [si-59FBh]
seg006:59E6                 sub     di, cx
seg006:59E8                 jns     short loc_1383C
seg006:59EA                 neg     di
seg006:59EC
seg006:59EC loc_1383C:                              ; CODE XREF: sub_137A0+98␘j
seg006:59EC                 cmp     di, word_285BD
seg006:59F0                 jnb     short loc_137FA
seg006:59F2                 mov     di, [si-58BBh]
seg006:59F6                 shr     di, 1
seg006:59F8                 shr     di, 1
seg006:59FA                 shr     di, 1
seg006:59FC                 sub     di, dx
seg006:59FE                 jns     short loc_13852
seg006:5A00                 neg     di
seg006:5A02
seg006:5A02 loc_13852:                              ; CODE XREF: sub_137A0+AE␘j
seg006:5A02                 cmp     di, word_285BD
seg006:5A06                 jnb     short loc_137FA
seg006:5A08                 mov     byte_28458, 0
seg006:5A0D                 push    bx
seg006:5A0E                 mov     word_28450, si
seg006:5A12                 mov     si, [bx-5C7Bh]
seg006:5A16                 and     si, 3Fh
seg006:5A19                 cmp     si, 3
seg006:5A1C                 ja      short loc_13889
seg006:5A1E                 mov     ax, ds
seg006:5A20                 mov     es, ax
seg006:5A22                 assume es:dseg
seg006:5A22                 cmp     si, 2
seg006:5A25                 mov     si, 0D9B4h
seg006:5A28                 ja      short loc_1389A
seg006:5A2A                 mov     si, 0D0CCh
seg006:5A2D                 jz      short loc_1389A
seg006:5A2F                 mov     si, word_2C194
seg006:5A33                 mov     es, word_2C196
seg006:5A37                 assume es:nothing
seg006:5A37                 jmp     short loc_1389A
seg006:5A39 ; ---------------------------------------------------------------------------
seg006:5A39
seg006:5A39 loc_13889:                              ; CODE XREF: sub_137A0+CC␘j
seg006:5A39                 shl     si, 1
seg006:5A3B                 mov     es, word_2D83E
seg006:5A3F                 add     si, word_2D83C
seg006:5A43                 mov     si, es:[si]
seg006:5A46                 add     si, word_2D83C
seg006:5A4A
seg006:5A4A loc_1389A:                              ; CODE XREF: sub_137A0+D8␘j
seg006:5A4A                                         ; sub_137A0+DD␘j ...
seg006:5A4A                 mov     cx, es:[si]
seg006:5A4D                 xchg    cl, ch
seg006:5A4F                 add     si, 2
seg006:5A52                 mov     ax, es:[si]
seg006:5A55                 or      ah, ah
seg006:5A57                 jz      short loc_13921
seg006:5A59                 add     al, ch
seg006:5A5B                 sub     ch, ch
seg006:5A5D                 shl     cx, 1
seg006:5A5F                 add     si, cx
seg006:5A61                 add     si, cx
seg006:5A63                 add     si, cx
seg006:5A65                 mov     cl, ah
seg006:5A67                 sub     ch, ch
seg006:5A69                 sub     ah, ah
seg006:5A6B                 shl     ax, 1
seg006:5A6D                 shl     ax, 1
seg006:5A6F                 shl     ax, 1
seg006:5A71                 add     si, 6
seg006:5A74                 add     si, ax
seg006:5A76
seg006:5A76 loc_138C6:                              ; CODE XREF: sub_137A0+178␙j
seg006:5A76                 mov     ax, [bx-563Bh]
seg006:5A7A                 mov     byte_2AD22, ah
seg006:5A7E                 mov     ax, [bx-577Bh]
seg006:5A82                 mov     byte_28456, ah
seg006:5A86                 push    cx
seg006:5A87                 push    bx
seg006:5A88                 push    bx
seg006:5A89                 mov     bx, 2
seg006:5A8C                 call    sub_1531F
seg006:5A8F                 add     si, bx
seg006:5A91                 mov     bx, es:[si]
seg006:5A94                 mov     word_2844E, bx
seg006:5A98                 add     si, 2
seg006:5A9B                 pop     bx
seg006:5A9C                 add     ax, [bx-5B3Bh]
seg006:5AA0                 mov     word_2ACAE, ax
seg006:5AA3                 add     cx, [bx-59FBh]
seg006:5AA7                 mov     word_2ACB0, cx
seg006:5AAB                 mov     ax, [bx-58BBh]
seg006:5AAF                 shr     ax, 1
seg006:5AB1                 shr     ax, 1
seg006:5AB3                 shr     ax, 1
seg006:5AB5                 add     dx, ax
seg006:5AB7                 mov     word_2ACB2, dx
seg006:5ABB                 push    si
seg006:5ABC                 mov     bx, word_28450
seg006:5AC0                 push    es
seg006:5AC1                 call    sub_139BE
seg006:5AC4                 pop     es
seg006:5AC5                 pop     si
seg006:5AC6                 pop     bx
seg006:5AC7                 pop     cx
seg006:5AC8                 loop    loc_138C6
seg006:5ACA                 mov     al, byte_28458
seg006:5ACD                 or      al, al
seg006:5ACF                 jnz     short loc_13929
seg006:5AD1
seg006:5AD1 loc_13921:                              ; CODE XREF: sub_137A0+107␘j
seg006:5AD1                 mov     si, word_28450
seg006:5AD5                 pop     bx
seg006:5AD6                 jmp     loc_137FA
seg006:5AD9 ; ---------------------------------------------------------------------------
seg006:5AD9
seg006:5AD9 loc_13929:                              ; CODE XREF: sub_137A0+17F␘j
seg006:5AD9                 mov     si, word_28450
seg006:5ADD                 pop     bx
seg006:5ADE                 test    al, 1
seg006:5AE0                 jnz     short loc_139A4
seg006:5AE2                 mov     word_2844C, 9000h
seg006:5AE8                 test    al, 2
seg006:5AEA                 jnz     short loc_13942
seg006:5AEC                 mov     word_2844C, 8000h
seg006:5AF2
seg006:5AF2 loc_13942:                              ; CODE XREF: sub_137A0+19A␘j
seg006:5AF2                 mov     cx, [si-5B3Bh]
seg006:5AF6                 sub     cx, [bx-5B3Bh]
seg006:5AFA                 mov     dx, [si-59FBh]
seg006:5AFE                 sub     dx, [bx-59FBh]
seg006:5B02                 call    sub_FFCA
seg006:5B05                 mov     word_2844E, ax
seg006:5B08                 mov     ax, [bx-54FBh]
seg006:5B0C                 mov     cl, ah
seg006:5B0E                 cbw
seg006:5B0F                 xchg    ax, cx
seg006:5B10                 cbw
seg006:5B11                 mov     dx, ax
seg006:5B13                 call    sub_FFCA
seg006:5B16                 sub     ax, word_2844E
seg006:5B1A                 add     ah, 8
seg006:5B1D                 cmp     ah, 10h
seg006:5B20                 jb      short loc_1399A
seg006:5B22                 mov     ax, [si-54FBh]
seg006:5B26                 mov     cl, ah
seg006:5B28                 cbw
seg006:5B29                 xchg    ax, cx
seg006:5B2A                 cbw
seg006:5B2B                 mov     dx, ax
seg006:5B2D                 call    sub_FFCA
seg006:5B30                 sub     ax, word_2844E
seg006:5B34                 add     ah, 88h ; 'ê'
seg006:5B37                 cmp     ah, 10h
seg006:5B3A                 jnb     short loc_13997
seg006:5B3C                 mov     ax, word_2844C
seg006:5B3F                 or      si, si
seg006:5B41                 jz      short loc_13997
seg006:5B43                 or      [si-5C7Bh], ax
seg006:5B47
seg006:5B47 loc_13997:                              ; CODE XREF: sub_137A0+1EA␘j
seg006:5B47                                         ; sub_137A0+1F1␘j
seg006:5B47                 jmp     loc_137FA
seg006:5B4A ; ---------------------------------------------------------------------------
seg006:5B4A
seg006:5B4A loc_1399A:                              ; CODE XREF: sub_137A0+1D0␘j
seg006:5B4A                 mov     ax, word_2844C
seg006:5B4D                 or      [bx-5C7Bh], ax
seg006:5B51                 jmp     loc_137FA
seg006:5B54 ; ---------------------------------------------------------------------------
seg006:5B54
seg006:5B54 loc_139A4:                              ; CODE XREF: sub_137A0+190␘j
seg006:5B54                 or      word ptr [bx-5C7Bh], 9000h
seg006:5B5A                 or      si, si
seg006:5B5C                 jz      short loc_139B7
seg006:5B5E                 or      word ptr [si-5C7Bh], 9000h
seg006:5B64
seg006:5B64 loc_139B4:                              ; CODE XREF: sub_137A0+21C␙j
seg006:5B64                 jmp     loc_137FA
seg006:5B67 ; ---------------------------------------------------------------------------
seg006:5B67
seg006:5B67 loc_139B7:                              ; CODE XREF: sub_137A0+20C␘j
seg006:5B67                 or      byte_2AA92, 1
seg006:5B6C                 jmp     short loc_139B4
seg006:5B6C sub_137A0       endp
seg006:5B6C
seg006:5B6E
