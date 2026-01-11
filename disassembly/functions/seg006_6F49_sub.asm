seg006:6F49 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6F49
seg006:6F49
seg006:6F49 sub_14D99       proc near               ; CODE XREF: sub_153B8+DE␙p
seg006:6F49                 push    si
seg006:6F4A                 push    bp
seg006:6F4B                 push    es
seg006:6F4C                 push    di
seg006:6F4D                 mov     bx, word_28484
seg006:6F51                 add     bx, 1000h
seg006:6F55                 xchg    bl, bh
seg006:6F57                 and     bx, 0E0h
seg006:6F5B                 shr     bx, 1
seg006:6F5D                 shr     bx, 1
seg006:6F5F                 mov     ax, bx
seg006:6F61                 shr     bx, 1
seg006:6F63                 shr     bx, 1
seg006:6F65                 add     bx, ax
seg006:6F67                 mov     si, bx
seg006:6F69                 mov     al, byte ptr word_28488+1
seg006:6F6C                 shr     al, 1
seg006:6F6E                 shr     al, 1
seg006:6F70                 mov     bl, byte ptr word_28486+1
seg006:6F74                 sub     bh, bh
seg006:6F76                 shr     bx, 1
seg006:6F78                 shr     bx, 1
seg006:6F7A                 neg     al
seg006:6F7C                 add     al, 0Fh
seg006:6F7E                 sub     ah, ah
seg006:6F80                 shl     ax, 1
seg006:6F82                 shl     ax, 1
seg006:6F84                 shl     ax, 1
seg006:6F86                 shl     ax, 1
seg006:6F88                 shl     ax, 1
seg006:6F8A                 add     bx, ax
seg006:6F8C                 shl     bx, 1
seg006:6F8E                 mov     ax, [bx-6A83h]
seg006:6F92                 cmp     byte_2A6C7, 0
seg006:6F97                 jnz     short loc_14E10
seg006:6F99                 cmp     al, 77h ; 'w'
seg006:6F9B                 jnb     short loc_14E10
seg006:6F9D                 cmp     al, 70h ; 'p'
seg006:6F9F                 jb      short loc_14DF5
seg006:6FA1                 cmp     al, 73h ; 's'
seg006:6FA3                 jbe     short loc_14E10
seg006:6FA5
seg006:6FA5 loc_14DF5:                              ; CODE XREF: sub_14D99+56␘j
seg006:6FA5                 push    bx
seg006:6FA6                 mov     bx, word_28484
seg006:6FAA                 add     bh, 20h ; ' '
seg006:6FAD                 xchg    bl, bh
seg006:6FAF                 and     bx, 0C0h
seg006:6FB3                 shr     bx, 1
seg006:6FB5                 shr     bx, 1
seg006:6FB7                 mov     si, bx
seg006:6FB9                 shr     bx, 1
seg006:6FBB                 shr     bx, 1
seg006:6FBD                 add     si, bx
seg006:6FBF                 pop     bx
seg006:6FC0
seg006:6FC0 loc_14E10:                              ; CODE XREF: sub_14D99+4E␘j
seg006:6FC0                                         ; sub_14D99+52␘j ...
seg006:6FC0                 cmp     word_2AD1E, bx
seg006:6FC4                 jnz     short loc_14E3D
seg006:6FC6                 cmp     word_2AD20, si
seg006:6FCA                 jnz     short loc_14E3D
seg006:6FCC                 sub     ah, ah
seg006:6FCE                 cmp     al, byte_285B5
seg006:6FD2                 jz      short loc_14E34
seg006:6FD4                 inc     ah
seg006:6FD6                 cmp     al, byte_285B6
seg006:6FDA                 jz      short loc_14E34
seg006:6FDC                 inc     ah
seg006:6FDE                 cmp     al, byte_285B7
seg006:6FE2                 jnz     short loc_14E38
seg006:6FE4
seg006:6FE4 loc_14E34:                              ; CODE XREF: sub_14D99+89␘j
seg006:6FE4                                         ; sub_14D99+91␘j
seg006:6FE4                 mov     byte_1FB54, ah
seg006:6FE8
seg006:6FE8 loc_14E38:                              ; CODE XREF: sub_14D99+99␘j
seg006:6FE8                 pop     di
seg006:6FE9                 pop     es
seg006:6FEA                 pop     bp
seg006:6FEB                 pop     si
seg006:6FEC                 retn
seg006:6FED ; ---------------------------------------------------------------------------
seg006:6FED
seg006:6FED loc_14E3D:                              ; CODE XREF: sub_14D99+7B␘j
seg006:6FED                                         ; sub_14D99+81␘j
seg006:6FED                 mov     word_2ACBC, 0FFFFh
seg006:6FF3                 mov     word_2ACBE, 0FFFFh
seg006:6FF9                 mov     word_2ACC0, 0FFFFh
seg006:6FFF                 mov     byte_2AA3F, 1
seg006:7004                 mov     word_2AD1E, bx
seg006:7008                 mov     word_2AD20, si
seg006:700C                 mov     byte_2AD0D, 1
seg006:7011                 call    sub_14D84
seg006:7014                 mov     word_2AAC2, 0
seg006:701A                 mov     word_2AAC4, 0
seg006:7020                 mov     byte_2AD0B, 0
seg006:7025                 mov     ax, [bx-6A83h]
seg006:7029                 mov     cx, 0Ah
seg006:702C                 cmp     byte_1FAA3, ch
seg006:7030                 jnz     short loc_14E9C
seg006:7032                 mov     dl, byte_2A6C7
seg006:7036                 cmp     dl, 1
seg006:7039                 ja      short loc_14E9F
seg006:703B                 mov     cx, 6
seg006:703E                 jz      short loc_14E9F
seg006:7040                 cmp     al, 77h ; 'w'
seg006:7042                 jnb     short loc_14E9F
seg006:7044                 cmp     al, 70h ; 'p'
seg006:7046                 jb      short loc_14E9C
seg006:7048                 cmp     al, 73h ; 's'
seg006:704A                 jbe     short loc_14E9F
seg006:704C
seg006:704C loc_14E9C:                              ; CODE XREF: sub_14D99+E7␘j
seg006:704C                                         ; sub_14D99+FD␘j
seg006:704C                 mov     cx, 3
seg006:704F
seg006:704F loc_14E9F:                              ; CODE XREF: sub_14D99+F0␘j
seg006:704F                                         ; sub_14D99+F5␘j ...
seg006:704F                 mov     dh, byte ptr word_28486+1
seg006:7053                 mov     dl, byte ptr word_28488+1
seg006:7057                 and     dx, 7C3Ch
seg006:705B                 mov     si, word_2AD20
seg006:705F
seg006:705F loc_14EAF:                              ; CODE XREF: sub_14D99+133␙j
seg006:705F                 push    cx
seg006:7060                 mov     bp, si
seg006:7062                 add     bp, 6EE4h
seg006:7066                 mov     cl, cs:[bp+0]
seg006:706A                 sub     ch, ch
seg006:706C                 inc     si
seg006:706D                 push    si
seg006:706E                 mov     si, cx
seg006:7070                 shl     si, 1
seg006:7072                 shl     si, 1
seg006:7074                 add     si, 6E80h
seg006:7078                 jmp     short loc_14EDF
seg006:707A ; ---------------------------------------------------------------------------
seg006:707A
seg006:707A loc_14ECA:                              ; CODE XREF: sub_14D99+228␙j
seg006:707A                 pop     si
seg006:707B                 pop     cx
seg006:707C                 loop    loc_14EAF
seg006:707E                 mov     ax, word_2AAC4
seg006:7081                 mov     word_2AAC8, ax
seg006:7084                 mov     ax, word_2AAC2
seg006:7087                 mov     word_2AAC6, ax
seg006:708A                 pop     di
seg006:708B                 pop     es
seg006:708C                 pop     bp
seg006:708D                 pop     si
seg006:708E                 retn
seg006:708F ; ---------------------------------------------------------------------------
seg006:708F
seg006:708F loc_14EDF:                              ; CODE XREF: sub_14D99+12F␘j
seg006:708F                 push    dx
seg006:7090                 push    bx
seg006:7091                 shr     bx, 1
seg006:7093                 add     dh, cs:[si]
seg006:7096                 and     dh, 7Ch
seg006:7099                 inc     si
seg006:709A                 add     dl, cs:[si]
seg006:709D                 and     dl, 3Ch
seg006:70A0                 inc     si
seg006:70A1                 mov     ax, cs:[si]
seg006:70A4                 mov     ch, al
seg006:70A6                 and     al, 1Fh
seg006:70A8                 mov     cl, bl
seg006:70AA                 add     cl, al
seg006:70AC                 and     cl, 1Fh
seg006:70AF                 and     bl, 0E0h
seg006:70B2                 or      bl, cl
seg006:70B4                 xor     al, ch
seg006:70B6                 add     bx, ax
seg006:70B8                 and     bx, 1FFh
seg006:70BC                 sub     cx, cx
seg006:70BE                 mov     word_2AD10, cx
seg006:70C2                 shl     bx, 1
seg006:70C4                 mov     ax, [bx-6A83h]
seg006:70C8                 mov     ch, ah
seg006:70CA                 and     cx, 3F00h
seg006:70CE                 mov     word_2AD18, cx
seg006:70D2                 mov     ch, ah
seg006:70D4                 and     ch, 0C0h
seg006:70D7                 mov     byte_28456, ch
seg006:70DB                 mov     byte_2AD22, 0
seg006:70E0                 mov     ch, dl
seg006:70E2                 add     ch, 2
seg006:70E5                 mov     word_2AD16, cx
seg006:70E9                 mov     ch, dh
seg006:70EB                 add     ch, 2
seg006:70EE                 mov     word_2AD14, cx
seg006:70F2                 sub     ah, ah
seg006:70F4                 call    sub_14FC4
seg006:70F7                 mov     si, word_2945F
seg006:70FB                 mov     di, word_29463
seg006:70FF                 shl     di, 1
seg006:7101                 sub     di, 2
seg006:7104                 shl     si, 1
seg006:7106
seg006:7106 loc_14F56:                              ; CODE XREF: sub_14D99+1CD␙j
seg006:7106                                         ; sub_14D99+1E2␙j ...
seg006:7106                 sub     si, 2
seg006:7109                 cmp     si, di
seg006:710B                 jl      short loc_14FBF
seg006:710D                 mov     bx, [si-5B3Bh]
seg006:7111                 and     bh, 7Ch
seg006:7114                 cmp     bh, dh
seg006:7116                 jnz     short loc_14F56
seg006:7118                 mov     bx, [si-5B3Bh]
seg006:711C                 mov     word_2AD14, bx
seg006:7120                 mov     bx, [si-59FBh]
seg006:7124                 mov     cx, bx
seg006:7126                 and     bh, 3Ch
seg006:7129                 cmp     bh, dl
seg006:712B                 jnz     short loc_14F56
seg006:712D                 mov     word_2AD16, cx
seg006:7131                 mov     cx, [si-58BBh]
seg006:7135                 shr     cx, 1
seg006:7137                 shr     cx, 1
seg006:7139                 shr     cx, 1
seg006:713B                 mov     word_2AD18, cx
seg006:713F                 mov     ax, [si-5C7Bh]
seg006:7143                 test    ah, 30h
seg006:7146                 jnz     short loc_14F56
seg006:7148                 and     al, 3Fh
seg006:714A                 jz      short loc_14F56
seg006:714C                 mov     cx, [si-577Bh]
seg006:7150                 and     ch, 0C0h
seg006:7153                 mov     byte_28456, ch
seg006:7157                 mov     cx, [si-563Bh]
seg006:715B                 mov     byte_2AD22, ch
seg006:715F                 mov     cx, si
seg006:7161                 add     cx, 2
seg006:7164                 mov     word_2AD10, cx
seg006:7168                 mov     ah, 1
seg006:716A                 call    sub_14FC4
seg006:716D                 jmp     short loc_14F56
seg006:716F ; ---------------------------------------------------------------------------
seg006:716F
seg006:716F loc_14FBF:                              ; CODE XREF: sub_14D99+1C2␘j
seg006:716F                 pop     bx
seg006:7170                 pop     dx
seg006:7171                 jmp     loc_14ECA
seg006:7171 sub_14D99       endp
seg006:7171
seg006:7174
