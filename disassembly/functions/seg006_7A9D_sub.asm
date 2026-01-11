seg006:7A9D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7A9D
seg006:7A9D
seg006:7A9D sub_158ED       proc far                ; CODE XREF: sub_92AC+54␘P
seg006:7A9D                                         ; sub_154A1:loc_1555B␘P
seg006:7A9D                 push    es
seg006:7A9E                 push    di
seg006:7A9F                 push    bp
seg006:7AA0                 cmp     byte_2BF82, 0
seg006:7AA5                 jz      short loc_158FB
seg006:7AA7                 pop     bp
seg006:7AA8                 pop     di
seg006:7AA9                 pop     es
seg006:7AAA                 retf
seg006:7AAB ; ---------------------------------------------------------------------------
seg006:7AAB
seg006:7AAB loc_158FB:                              ; CODE XREF: sub_158ED+8␘j
seg006:7AAB                 mov     es, word_280BE
seg006:7AAF                 sub     ax, ax
seg006:7AB1                 cmp     byte_2AD29, al
seg006:7AB5                 jnz     short loc_15913
seg006:7AB7                 cmp     byte_2A6BC, al
seg006:7ABB                 jnz     short loc_15922
seg006:7ABD                 cmp     byte_2A6BB, al
seg006:7AC1                 jz      short loc_15927
seg006:7AC3
seg006:7AC3 loc_15913:                              ; CODE XREF: sub_158ED+18␘j
seg006:7AC3                 mov     byte_2AD29, al
seg006:7AC6                 mov     ax, 707h
seg006:7AC9                 sub     di, di
seg006:7ACB                 mov     cx, 344h
seg006:7ACE                 rep stosw
seg006:7AD0                 jmp     short loc_15927
seg006:7AD2 ; ---------------------------------------------------------------------------
seg006:7AD2
seg006:7AD2 loc_15922:                              ; CODE XREF: sub_158ED+1E␘j
seg006:7AD2                 mov     byte_2A6BB, 1
seg006:7AD7
seg006:7AD7 loc_15927:                              ; CODE XREF: sub_158ED+24␘j
seg006:7AD7                                         ; sub_158ED+33␘j
seg006:7AD7                 mov     di, 108h
seg006:7ADA                 mov     bp, 800h
seg006:7ADD                 mov     dx, 8
seg006:7AE0                 mov     bl, 8
seg006:7AE2                 mov     bh, 3
seg006:7AE4
seg006:7AE4 loc_15934:                              ; CODE XREF: sub_158ED+5D␙j
seg006:7AE4                 mov     es:[di], bl
seg006:7AE7                 inc     di
seg006:7AE8                 mov     es:[di], bp
seg006:7AEB                 add     di, 54h ; 'T'
seg006:7AEE                 mov     es:[di], dx
seg006:7AF1                 add     di, 2
seg006:7AF4                 mov     es:[di], bl
seg006:7AF7                 inc     di
seg006:7AF8                 dec     bh
seg006:7AFA                 jnz     short loc_15934
seg006:7AFC                 mov     bh, 0Ch
seg006:7AFE
seg006:7AFE loc_1594E:                              ; CODE XREF: sub_158ED+6F␙j
seg006:7AFE                 mov     es:[di], dx
seg006:7B01                 add     di, 56h ; 'V'
seg006:7B04                 mov     es:[di], bp
seg006:7B07                 add     di, 2
seg006:7B0A                 dec     bh
seg006:7B0C                 jnz     short loc_1594E
seg006:7B0E                 mov     es:[di], dx
seg006:7B11                 add     di, 2
seg006:7B14                 mov     es:[di], dl
seg006:7B17                 add     di, 53h ; 'S'
seg006:7B1A                 mov     es:[di], dx
seg006:7B1D                 add     di, 2
seg006:7B20                 mov     es:[di], dl
seg006:7B23                 add     di, 2
seg006:7B26                 mov     es, word_280BC
seg006:7B2A                 mov     di, 1229h
seg006:7B2D                 cmp     byte_2A6C6, 0
seg006:7B32                 jz      short loc_15987
seg006:7B34                 sub     di, 28h ; '('
seg006:7B37
seg006:7B37 loc_15987:                              ; CODE XREF: sub_158ED+95␘j
seg006:7B37                 mov     es:[di], dl
seg006:7B3A                 inc     di
seg006:7B3B                 sub     ax, ax
seg006:7B3D                 mov     cx, 2Ah ; '*'
seg006:7B40                 rep stosw
seg006:7B42                 mov     es:[di], dl
seg006:7B45                 add     di, 0ECh ; '8'
seg006:7B49                 mov     ax, 808h
seg006:7B4C                 mov     cx, 2Ah ; '*'
seg006:7B4F                 rep stosw
seg006:7B51                 pop     bp
seg006:7B52                 pop     di
seg006:7B53                 pop     es
seg006:7B54                 retf
seg006:7B54 sub_158ED       endp
seg006:7B54
seg006:7B55
