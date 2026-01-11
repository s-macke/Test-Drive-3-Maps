seg031:1AD0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1AD0
seg031:1AD0 ; Attributes: bp-based frame
seg031:1AD0
seg031:1AD0 sub_1A930       proc far                ; CODE XREF: sub_19388+5B␘P
seg031:1AD0                                         ; sub_19388+123␘P ...
seg031:1AD0
seg031:1AD0 var_8           = word ptr -8
seg031:1AD0 var_4           = word ptr -4
seg031:1AD0 var_2           = word ptr -2
seg031:1AD0 arg_2           = word ptr  6
seg031:1AD0 arg_4           = word ptr  0Ah
seg031:1AD0
seg031:1AD0 ; FUNCTION CHUNK AT seg031:1BC6 SIZE 00000034 BYTES
seg031:1AD0
seg031:1AD0                 push    bp
seg031:1AD1                 mov     bp, sp
seg031:1AD3                 sub     sp, 8
seg031:1AD6                 mov     bx, [bp+arg_2]
seg031:1AD9                 cmp     bx, word_2B440
seg031:1ADD                 jb      short loc_1A946
seg031:1ADF                 mov     ax, 900h
seg031:1AE2                 stc
seg031:1AE3
seg031:1AE3 loc_1A943:                              ; CODE XREF: sub_1A930+26␙j
seg031:1AE3                 jmp     loc_1AE03
seg031:1AE6 ; ---------------------------------------------------------------------------
seg031:1AE6
seg031:1AE6 loc_1A946:                              ; CODE XREF: sub_1A930+D␘j
seg031:1AE6                 test    byte ptr [bx-3C9Eh], 20h
seg031:1AEB                 jz      short loc_1A958
seg031:1AED                 mov     ax, 4202h
seg031:1AF0                 xor     cx, cx
seg031:1AF2                 mov     dx, cx
seg031:1AF4                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:1AF4                                         ; AL = method: offset from end of file
seg031:1AF6                 jb      short loc_1A943
seg031:1AF8
seg031:1AF8 loc_1A958:                              ; CODE XREF: sub_1A930+1B␘j
seg031:1AF8                 test    byte ptr [bx-3C9Eh], 80h
seg031:1AFD                 jz      short loc_1A9CF
seg031:1AFF                 mov     dx, [bp+8]
seg031:1B02                 push    ds
seg031:1B03                 pop     es
seg031:1B04                 assume es:dseg
seg031:1B04                 xor     ax, ax
seg031:1B06                 mov     [bp+var_2], ax
seg031:1B09                 mov     [bp+var_4], ax
seg031:1B0C                 cld
seg031:1B0D                 push    di
seg031:1B0E                 push    si
seg031:1B0F                 mov     di, dx
seg031:1B11                 mov     si, dx
seg031:1B13                 mov     [bp+var_8], sp
seg031:1B16                 mov     cx, [bp+arg_4]
seg031:1B19                 jcxz    short loc_1A9D1
seg031:1B1B                 mov     al, 0Ah
seg031:1B1D                 repne scasb
seg031:1B1F                 jnz     short loc_1A9CD
seg031:1B21                 call    sub_1B0D0
seg031:1B26                 cmp     ax, 0A8h ; '¿'
seg031:1B29                 jbe     short loc_1A9D3
seg031:1B2B                 sub     sp, 2
seg031:1B2E                 mov     bx, sp
seg031:1B30                 mov     dx, 200h
seg031:1B33                 cmp     ax, 228h
seg031:1B36                 jnb     short loc_1A99B
seg031:1B38                 mov     dx, 80h ; 'Ç'
seg031:1B3B
seg031:1B3B loc_1A99B:                              ; CODE XREF: sub_1A930+66␘j
seg031:1B3B                 sub     sp, dx
seg031:1B3D                 mov     dx, sp
seg031:1B3F                 mov     di, dx
seg031:1B41                 push    ss
seg031:1B42                 pop     es
seg031:1B43                 mov     cx, [bp+arg_4]
seg031:1B46
seg031:1B46 loc_1A9A6:                              ; CODE XREF: sub_1A930+80␙j
seg031:1B46                 lodsb
seg031:1B47                 cmp     al, 0Ah
seg031:1B49                 jz      short loc_1A9B7
seg031:1B4B
seg031:1B4B loc_1A9AB:                              ; CODE XREF: sub_1A930+96␙j
seg031:1B4B                 cmp     di, bx
seg031:1B4D                 jz      short loc_1A9C8
seg031:1B4F
seg031:1B4F loc_1A9AF:                              ; CODE XREF: sub_1A930+9B␙j
seg031:1B4F                 stosb
seg031:1B50                 loop    loc_1A9A6
seg031:1B52                 call    near ptr sub_1A9D8
seg031:1B55                 jmp     short loc_1AA18
seg031:1B57 ; ---------------------------------------------------------------------------
seg031:1B57
seg031:1B57 loc_1A9B7:                              ; CODE XREF: sub_1A930+79␘j
seg031:1B57                 mov     al, 0Dh
seg031:1B59                 cmp     di, bx
seg031:1B5B                 jnz     short loc_1A9C0
seg031:1B5D                 call    near ptr sub_1A9D8
seg031:1B60
seg031:1B60 loc_1A9C0:                              ; CODE XREF: sub_1A930+8B␘j
seg031:1B60                 stosb
seg031:1B61                 mov     al, 0Ah
seg031:1B63                 inc     [bp+var_4]
seg031:1B66                 jmp     short loc_1A9AB
seg031:1B68 ; ---------------------------------------------------------------------------
seg031:1B68
seg031:1B68 loc_1A9C8:                              ; CODE XREF: sub_1A930+7D␘j
seg031:1B68                 call    near ptr sub_1A9D8
seg031:1B6B                 jmp     short loc_1A9AF
seg031:1B6D ; ---------------------------------------------------------------------------
seg031:1B6D
seg031:1B6D loc_1A9CD:                              ; CODE XREF: sub_1A930+4F␘j
seg031:1B6D                 pop     si
seg031:1B6E                 pop     di
seg031:1B6F
seg031:1B6F loc_1A9CF:                              ; CODE XREF: sub_1A930+2D␘j
seg031:1B6F                 jmp     short loc_1AA26
seg031:1B71 ; ---------------------------------------------------------------------------
seg031:1B71
seg031:1B71 loc_1A9D1:                              ; CODE XREF: sub_1A930+49␘j
seg031:1B71                 jmp     short loc_1AA18
seg031:1B73 ; ---------------------------------------------------------------------------
seg031:1B73
seg031:1B73 loc_1A9D3:                              ; CODE XREF: sub_1A930+59␘j
seg031:1B73                 xor     ax, ax
seg031:1B75                 jmp     loc_18F2B
seg031:1B75 sub_1A930       endp
seg031:1B75
seg031:1B78
