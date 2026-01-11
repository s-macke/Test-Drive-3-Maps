seg031:19F2 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:19F2
seg031:19F2 ; Attributes: bp-based frame
seg031:19F2
seg031:19F2 sub_1A852       proc near               ; CODE XREF: sub_19196+79␘P
seg031:19F2                                         ; sub_19196+118␘P ...
seg031:19F2
seg031:19F2 var_1           = word ptr -1
seg031:19F2 arg_2           = word ptr  6
seg031:19F2 arg_4           = word ptr  8
seg031:19F2 arg_6           = word ptr  0Ah
seg031:19F2
seg031:19F2                 push    bp
seg031:19F3                 mov     bp, sp
seg031:19F5                 sub     sp, 2
seg031:19F8                 mov     bx, [bp+arg_2]
seg031:19FB                 cmp     bx, word_2B440
seg031:19FF                 jb      short loc_1A867
seg031:1A01                 stc
seg031:1A02                 mov     ax, 900h
seg031:1A05                 jmp     short loc_1A8C3
seg031:1A07 ; ---------------------------------------------------------------------------
seg031:1A07
seg031:1A07 loc_1A867:                              ; CODE XREF: sub_1A852+D␘j
seg031:1A07                 xor     ax, ax
seg031:1A09                 mov     cx, [bp+arg_6]
seg031:1A0C                 jcxz    short loc_1A8C3
seg031:1A0E                 test    byte ptr [bx-3C9Eh], 2
seg031:1A13                 jnz     short loc_1A8C3
seg031:1A15                 mov     cx, [bp+arg_6]
seg031:1A18                 mov     dx, [bp+arg_4]
seg031:1A1B                 mov     ah, 3Fh
seg031:1A1D                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg031:1A1D                                         ; BX = file handle, CX = number of bytes to read
seg031:1A1D                                         ; DS:DX -> buffer
seg031:1A1F                 jnb     short loc_1A885
seg031:1A21                 mov     ah, 9
seg031:1A23                 jmp     short loc_1A8C3
seg031:1A25 ; ---------------------------------------------------------------------------
seg031:1A25
seg031:1A25 loc_1A885:                              ; CODE XREF: sub_1A852+2D␘j
seg031:1A25                 test    byte ptr [bx-3C9Eh], 80h
seg031:1A2A                 jz      short loc_1A8C3
seg031:1A2C                 and     byte ptr [bx-3C9Eh], 0FBh
seg031:1A31                 push    si
seg031:1A32                 push    di
seg031:1A33                 cld
seg031:1A34                 mov     si, dx
seg031:1A36                 mov     di, dx
seg031:1A38                 mov     cx, ax
seg031:1A3A                 jcxz    short loc_1A8C1
seg031:1A3C                 mov     ah, 0Dh
seg031:1A3E                 cmp     byte ptr [si], 0Ah
seg031:1A41                 jnz     short loc_1A8A8
seg031:1A43                 or      byte ptr [bx-3C9Eh], 4
seg031:1A48
seg031:1A48 loc_1A8A8:                              ; CODE XREF: sub_1A852+4F␘j
seg031:1A48                                         ; sub_1A852:loc_1A8BB␙j
seg031:1A48                 lodsb
seg031:1A49                 cmp     al, ah
seg031:1A4B                 jz      short loc_1A8C6
seg031:1A4D                 cmp     al, 1Ah
seg031:1A4F                 jnz     short loc_1A8B8
seg031:1A51                 or      byte ptr [bx-3C9Eh], 2
seg031:1A56                 jmp     short loc_1A8BD
seg031:1A58 ; ---------------------------------------------------------------------------
seg031:1A58
seg031:1A58 loc_1A8B8:                              ; CODE XREF: sub_1A852+5D␘j
seg031:1A58                                         ; sub_1A852+7E␙j ...
seg031:1A58                 mov     [di], al
seg031:1A5A                 inc     di
seg031:1A5B
seg031:1A5B loc_1A8BB:                              ; CODE XREF: sub_1A852+7C␙j
seg031:1A5B                                         ; sub_1A852+D3␙j
seg031:1A5B                 loop    loc_1A8A8
seg031:1A5D
seg031:1A5D loc_1A8BD:                              ; CODE XREF: sub_1A852+64␘j
seg031:1A5D                 mov     ax, di
seg031:1A5F                 sub     ax, dx
seg031:1A61
seg031:1A61 loc_1A8C1:                              ; CODE XREF: sub_1A852+48␘j
seg031:1A61                                         ; sub_1A852+99␙j ...
seg031:1A61                 pop     di
seg031:1A62                 pop     si
seg031:1A63
seg031:1A63 loc_1A8C3:                              ; CODE XREF: sub_1A852+13␘j
seg031:1A63                                         ; sub_1A852+1A␘j ...
seg031:1A63                 jmp     loc_1AE03
seg031:1A66 ; ---------------------------------------------------------------------------
seg031:1A66
seg031:1A66 loc_1A8C6:                              ; CODE XREF: sub_1A852+59␘j
seg031:1A66                 cmp     cx, 1
seg031:1A69                 jz      short loc_1A8D2
seg031:1A6B                 cmp     byte ptr [si], 0Ah
seg031:1A6E                 jz      short loc_1A8BB
seg031:1A70                 jmp     short loc_1A8B8
seg031:1A72 ; ---------------------------------------------------------------------------
seg031:1A72
seg031:1A72 loc_1A8D2:                              ; CODE XREF: sub_1A852+77␘j
seg031:1A72                 test    byte ptr [bx-3C9Eh], 40h
seg031:1A77                 jz      short loc_1A8F1
seg031:1A79                 mov     ax, 4400h
seg031:1A7C                 int     21h             ; DOS - 2+ - IOCTL - GET DEVICE INFORMATION
seg031:1A7C                                         ; BX = file or device handle
seg031:1A7E                 test    dx, 20h
seg031:1A82                 jnz     short loc_1A8ED
seg031:1A84                 lea     dx, [bp-1]
seg031:1A87                 mov     ah, 3Fh
seg031:1A89                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg031:1A89                                         ; BX = file handle, CX = number of bytes to read
seg031:1A89                                         ; DS:DX -> buffer
seg031:1A8B                 jb      short loc_1A8C1
seg031:1A8D
seg031:1A8D loc_1A8ED:                              ; CODE XREF: sub_1A852+90␘j
seg031:1A8D                                         ; sub_1A852+DB␙j
seg031:1A8D                 mov     al, 0Ah
seg031:1A8F                 jmp     short loc_1A91D
seg031:1A91 ; ---------------------------------------------------------------------------
seg031:1A91
seg031:1A91 loc_1A8F1:                              ; CODE XREF: sub_1A852+85␘j
seg031:1A91                 mov     byte ptr [bp+var_1], 0
seg031:1A95                 lea     dx, [bp+var_1]
seg031:1A98                 mov     ah, 3Fh
seg031:1A9A                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg031:1A9A                                         ; BX = file handle, CX = number of bytes to read
seg031:1A9A                                         ; DS:DX -> buffer
seg031:1A9C                 jb      short loc_1A8C1
seg031:1A9E                 or      ax, ax
seg031:1AA0                 jz      short loc_1A91B
seg031:1AA2                 cmp     [bp+arg_6], 1
seg031:1AA6                 jz      short loc_1A927
seg031:1AA8
seg031:1AA8 loc_1A908:                              ; CODE XREF: sub_1A852+D9␙j
seg031:1AA8                 mov     cx, 0FFFFh
seg031:1AAB                 mov     dx, cx
seg031:1AAD                 mov     ax, 4201h
seg031:1AB0                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:1AB0                                         ; AL = method: offset from present location
seg031:1AB2                 mov     cx, 1
seg031:1AB5                 cmp     byte ptr [bp+var_1], 0Ah
seg031:1AB9                 jz      short loc_1A922
seg031:1ABB
seg031:1ABB loc_1A91B:                              ; CODE XREF: sub_1A852+AE␘j
seg031:1ABB                 mov     al, 0Dh
seg031:1ABD
seg031:1ABD loc_1A91D:                              ; CODE XREF: sub_1A852+9D␘j
seg031:1ABD                 mov     dx, [bp+arg_4]
seg031:1AC0                 jmp     short loc_1A8B8
seg031:1AC2 ; ---------------------------------------------------------------------------
seg031:1AC2
seg031:1AC2 loc_1A922:                              ; CODE XREF: sub_1A852+C7␘j
seg031:1AC2                 mov     dx, [bp+arg_4]
seg031:1AC5                 jmp     short loc_1A8BB
seg031:1AC7 ; ---------------------------------------------------------------------------
seg031:1AC7
seg031:1AC7 loc_1A927:                              ; CODE XREF: sub_1A852+B4␘j
seg031:1AC7                 cmp     byte ptr [bp+var_1], 0Ah
seg031:1ACB                 jnz     short loc_1A908
seg031:1ACD                 jmp     short loc_1A8ED
seg031:1ACD sub_1A852       endp
seg031:1ACD
seg031:1ACD ; ---------------------------------------------------------------------------
seg031:1ACF                 align 2
seg031:1AD0
