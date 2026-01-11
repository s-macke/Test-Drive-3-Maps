seg004:003F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:003F
seg004:003F ; Attributes: bp-based frame
seg004:003F
seg004:003F sub_A8EF        proc far                ; CODE XREF: sub_1DAA+79␘P
seg004:003F                                         ; sub_1DAA+2D2␘P ...
seg004:003F
seg004:003F arg_2           = word ptr  6
seg004:003F arg_4           = word ptr  8
seg004:003F arg_6           = word ptr  0Ah
seg004:003F arg_8           = word ptr  0Ch
seg004:003F
seg004:003F                 mov     byte_2AD29, 1
seg004:0044                 mov     word_207A0, 102h
seg004:004A                 mov     word_207A2, 0
seg004:0050                 mov     word_207A4, 9
seg004:0056                 mov     word_207A6, 200h
seg004:005C                 mov     word_207B2, 0
seg004:0062                 push    bp
seg004:0063                 mov     bp, sp
seg004:0065                 push    di
seg004:0066                 push    si
seg004:0067                 push    ds
seg004:0068                 push    es
seg004:0069                 mov     ax, [bp+arg_2]
seg004:006C                 mov     word ptr dword_2038C, ax
seg004:006F                 mov     ax, [bp+arg_4]
seg004:0072                 mov     word ptr dword_2038C+2, ax
seg004:0075                 mov     ax, [bp+arg_6]
seg004:0078                 mov     di, ax
seg004:007A                 mov     word ptr dword_20390, ax
seg004:007D                 mov     ax, [bp+arg_8]
seg004:0080                 mov     es, ax
seg004:0082                 mov     word ptr dword_20390+2, ax
seg004:0085                 call    sub_A9E8
seg004:0088
seg004:0088 loc_A938:                               ; CODE XREF: sub_A8EF+74␙j
seg004:0088                                         ; sub_A8EF:loc_A9E5␙j
seg004:0088                 call    sub_AA04
seg004:008B                 cmp     ax, 101h
seg004:008E                 jnz     short loc_A946
seg004:0090                 pop     es
seg004:0091                 pop     ds
seg004:0092                 pop     si
seg004:0093                 pop     di
seg004:0094                 pop     bp
seg004:0095                 retf
seg004:0096 ; ---------------------------------------------------------------------------
seg004:0096
seg004:0096 loc_A946:                               ; CODE XREF: sub_A8EF+4F␘j
seg004:0096                 cmp     ax, 100h
seg004:0099                 jnz     short loc_A965
seg004:009B                 call    sub_AA72
seg004:009E                 call    sub_AA04
seg004:00A1                 mov     word_2079A, ax
seg004:00A4                 mov     word_2079C, ax
seg004:00A7                 mov     byte_207A9, al
seg004:00AA                 mov     byte_207A8, al
seg004:00AD                 mov     al, byte_207A9
seg004:00B0                 call    sub_AA85
seg004:00B3                 jmp     short loc_A938
seg004:00B5 ; ---------------------------------------------------------------------------
seg004:00B5
seg004:00B5 loc_A965:                               ; CODE XREF: sub_A8EF+5A␘j
seg004:00B5                 mov     word_2079A, ax
seg004:00B8                 mov     word_2079E, ax
seg004:00BB                 mov     es, word_20798
seg004:00BF                 cmp     ax, word_207A0
seg004:00C3                 jl      short loc_A983
seg004:00C5                 mov     ax, word_2079C
seg004:00C8                 mov     word_2079A, ax
seg004:00CB                 mov     al, byte_207A8
seg004:00CE                 push    ax
seg004:00CF                 inc     word_207A2
seg004:00D3
seg004:00D3 loc_A983:                               ; CODE XREF: sub_A8EF+84␘j
seg004:00D3                                         ; sub_A8EF+B2␙j
seg004:00D3                 cmp     word_2079A, 0FFh
seg004:00D9                 jle     short loc_A9A3
seg004:00DB                 mov     bx, word_2079A
seg004:00DF                 call    sub_AA91
seg004:00E2                 mov     al, es:[bx+2]
seg004:00E6                 push    ax
seg004:00E7                 inc     word_207A2
seg004:00EB                 mov     ax, es:[bx]
seg004:00EE                 mov     word_2079A, ax
seg004:00F1                 jmp     short loc_A983
seg004:00F3 ; ---------------------------------------------------------------------------
seg004:00F3
seg004:00F3 loc_A9A3:                               ; CODE XREF: sub_A8EF+9A␘j
seg004:00F3                 push    ds
seg004:00F4                 pop     es
seg004:00F5                 assume es:dseg
seg004:00F5                 mov     ax, word_2079A
seg004:00F8                 mov     byte_207A8, al
seg004:00FB                 mov     byte_207A9, al
seg004:00FE                 push    ax
seg004:00FF                 inc     word_207A2
seg004:0103                 mov     cx, word_207A2
seg004:0107                 jcxz    short loc_A9BF
seg004:0109
seg004:0109 loc_A9B9:                               ; CODE XREF: sub_A8EF+CE␙j
seg004:0109                 pop     ax
seg004:010A                 call    sub_AA85
seg004:010D                 loop    loc_A9B9
seg004:010F
seg004:010F loc_A9BF:                               ; CODE XREF: sub_A8EF+C8␘j
seg004:010F                 mov     word_207A2, cx
seg004:0113                 call    sub_AA98
seg004:0116                 mov     ax, word_2079E
seg004:0119                 mov     word_2079C, ax
seg004:011C                 mov     bx, word_207A0
seg004:0120                 cmp     bx, word_207A6
seg004:0124                 jl      short loc_A9E5
seg004:0126                 cmp     word_207A4, 0Ch
seg004:012B                 jz      short loc_A9E5
seg004:012D                 inc     word_207A4
seg004:0131                 shl     word_207A6, 1
seg004:0135
seg004:0135 loc_A9E5:                               ; CODE XREF: sub_A8EF+E5␘j
seg004:0135                                         ; sub_A8EF+EC␘j
seg004:0135                 jmp     loc_A938
seg004:0135 sub_A8EF        endp
seg004:0135
seg004:0138
