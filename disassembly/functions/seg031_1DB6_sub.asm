seg031:1DB6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1DB6
seg031:1DB6 ; Attributes: bp-based frame
seg031:1DB6
seg031:1DB6 sub_1AC16       proc far                ; CODE XREF: sub_19564+1E␘P
seg031:1DB6                                         ; sub_1ABF4+E␘P
seg031:1DB6
seg031:1DB6 arg_0           = word ptr  6
seg031:1DB6 arg_2           = word ptr  8
seg031:1DB6 arg_4           = word ptr  0Ah
seg031:1DB6 arg_8           = word ptr  0Eh
seg031:1DB6
seg031:1DB6                 push    bp
seg031:1DB7                 mov     bp, sp
seg031:1DB9                 push    si
seg031:1DBA                 push    di
seg031:1DBB                 push    es
seg031:1DBC                 cmp     [bp+arg_4], 0
seg031:1DC0                 jnz     short loc_1AC5A
seg031:1DC2                 mov     di, 0C2E8h
seg031:1DC5                 mov     dx, [bp+arg_2]
seg031:1DC8                 mov     ax, [bp+arg_0]
seg031:1DCB                 dec     ax
seg031:1DCC                 jnz     short loc_1AC35
seg031:1DCE                 call    sub_1AC84
seg031:1DD1                 jb      short loc_1AC5A
seg031:1DD3                 jmp     short loc_1AC7D
seg031:1DD5 ; ---------------------------------------------------------------------------
seg031:1DD5
seg031:1DD5 loc_1AC35:                              ; CODE XREF: sub_1AC16+16␘j
seg031:1DD5                 mov     si, word_2B418
seg031:1DD9                 dec     ax
seg031:1DDA                 jz      short loc_1AC4D
seg031:1DDC                 cmp     si, di
seg031:1DDE                 jz      short loc_1AC4D
seg031:1DE0                 mov     ax, [si+2]
seg031:1DE3                 mov     [bp+arg_8], ax
seg031:1DE6                 push    si
seg031:1DE7                 call    sub_1AC84
seg031:1DEA                 pop     si
seg031:1DEB                 jnb     short loc_1AC7D
seg031:1DED
seg031:1DED loc_1AC4D:                              ; CODE XREF: sub_1AC16+24␘j
seg031:1DED                                         ; sub_1AC16+28␘j
seg031:1DED                 add     si, 4
seg031:1DF0                 cmp     si, 0C338h
seg031:1DF4                 jnb     short loc_1AC5A
seg031:1DF6                 or      dx, dx
seg031:1DF8                 jnz     short loc_1AC60
seg031:1DFA
seg031:1DFA loc_1AC5A:                              ; CODE XREF: sub_1AC16+A␘j
seg031:1DFA                                         ; sub_1AC16+1B␘j ...
seg031:1DFA                 mov     ax, 0FFFFh
seg031:1DFD                 cwd
seg031:1DFE                 jmp     short loc_1AC7D
seg031:1E00 ; ---------------------------------------------------------------------------
seg031:1E00
seg031:1E00 loc_1AC60:                              ; CODE XREF: sub_1AC16+42␘j
seg031:1E00                 mov     bx, dx
seg031:1E02                 add     bx, 0Fh
seg031:1E05                 rcr     bx, 1
seg031:1E07                 mov     cl, 3
seg031:1E09                 shr     bx, cl
seg031:1E0B                 mov     ah, 48h
seg031:1E0D                 int     21h             ; DOS - 2+ - ALLOCATE MEMORY
seg031:1E0D                                         ; BX = number of 16-byte paragraphs desired
seg031:1E0F                 jb      short loc_1AC5A
seg031:1E11                 xchg    ax, dx
seg031:1E12                 mov     [si], ax
seg031:1E14                 mov     [si+2], dx
seg031:1E17                 mov     word_2B418, si
seg031:1E1B                 xor     ax, ax
seg031:1E1D
seg031:1E1D loc_1AC7D:                              ; CODE XREF: sub_1AC16+1D␘j
seg031:1E1D                                         ; sub_1AC16+35␘j ...
seg031:1E1D                 pop     es
seg031:1E1E                 assume es:nothing
seg031:1E1E                 pop     di
seg031:1E1F                 pop     si
seg031:1E20                 mov     sp, bp
seg031:1E22                 pop     bp
seg031:1E23                 retf
seg031:1E23 sub_1AC16       endp
seg031:1E23
seg031:1E24
