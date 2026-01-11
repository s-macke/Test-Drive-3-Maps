seg031:1B78 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1B78
seg031:1B78
seg031:1B78 sub_1A9D8       proc far                ; CODE XREF: sub_1A930+82␘p
seg031:1B78                                         ; sub_1A930+8D␘p ...
seg031:1B78                 push    ax
seg031:1B79                 push    bx
seg031:1B7A                 push    cx
seg031:1B7B                 mov     cx, di
seg031:1B7D                 sub     cx, dx
seg031:1B7F                 jcxz    short loc_1A9F1
seg031:1B81                 mov     bx, [bp+6]
seg031:1B84                 mov     ah, 40h
seg031:1B86                 int     21h             ; DOS - 2+ - WRITE TO FILE WITH HANDLE
seg031:1B86                                         ; BX = file handle, CX = number of bytes to write, DS:DX -> buffer
seg031:1B88                 jb      short loc_1A9F7
seg031:1B8A                 add     [bp-2], ax
seg031:1B8D                 or      ax, ax
seg031:1B8F                 jz      short loc_1A9F7
seg031:1B91
seg031:1B91 loc_1A9F1:                              ; CODE XREF: sub_1A9D8+7␘j
seg031:1B91                 pop     cx
seg031:1B92                 pop     bx
seg031:1B93                 pop     ax
seg031:1B94                 mov     di, dx
seg031:1B96                 retn
seg031:1B97 ; ---------------------------------------------------------------------------
seg031:1B97
seg031:1B97 loc_1A9F7:                              ; CODE XREF: sub_1A9D8+10␘j
seg031:1B97                                         ; sub_1A9D8+17␘j
seg031:1B97                 add     sp, 8
seg031:1B9A                 jnb     short loc_1AA00
seg031:1B9C                 mov     ah, 9
seg031:1B9E                 jmp     short loc_1AA1E
seg031:1BA0 ; ---------------------------------------------------------------------------
seg031:1BA0
seg031:1BA0 loc_1AA00:                              ; CODE XREF: sub_1A9D8+22␘j
seg031:1BA0                 test    byte ptr [bx-3C9Eh], 40h
seg031:1BA5                 jz      short loc_1AA12
seg031:1BA7                 mov     bx, [bp+8]
seg031:1BAA                 cmp     byte ptr [bx], 1Ah
seg031:1BAD                 jnz     short loc_1AA12
seg031:1BAF                 clc
seg031:1BB0                 jmp     short loc_1AA1E
seg031:1BB2 ; ---------------------------------------------------------------------------
seg031:1BB2
seg031:1BB2 loc_1AA12:                              ; CODE XREF: sub_1A9D8+2D␘j
seg031:1BB2                                         ; sub_1A9D8+35␘j
seg031:1BB2                 stc
seg031:1BB3                 mov     ax, 1C00h
seg031:1BB6                 jmp     short loc_1AA1E
seg031:1BB8 ; ---------------------------------------------------------------------------
seg031:1BB8
seg031:1BB8 loc_1AA18:                              ; CODE XREF: sub_1A930+85␘j
seg031:1BB8                                         ; sub_1A930:loc_1A9D1␘j
seg031:1BB8                 mov     ax, [bp-2]
seg031:1BBB                 sub     ax, [bp-4]
seg031:1BBE
seg031:1BBE loc_1AA1E:                              ; CODE XREF: sub_1A9D8+26␘j
seg031:1BBE                                         ; sub_1A9D8+38␘j ...
seg031:1BBE                 mov     sp, [bp-8]
seg031:1BC1                 pop     si
seg031:1BC2                 pop     di
seg031:1BC3
seg031:1BC3 loc_1AA23:                              ; CODE XREF: sub_1A930+10D␙j
seg031:1BC3                                         ; sub_1A930+111␙j ...
seg031:1BC3                 jmp     loc_1AE03
seg031:1BC3 sub_1A9D8       endp
seg031:1BC3
seg031:1BC6 ; ---------------------------------------------------------------------------
seg031:1BC6 ; START OF FUNCTION CHUNK FOR sub_1A930
seg031:1BC6
seg031:1BC6 loc_1AA26:                              ; CODE XREF: sub_1A930:loc_1A9CF␘j
seg031:1BC6                 mov     cx, [bp+arg_4]
seg031:1BC9                 or      cx, cx
seg031:1BCB                 jnz     short loc_1AA32
seg031:1BCD                 mov     ax, cx
seg031:1BCF                 jmp     loc_1AE03
seg031:1BD2 ; ---------------------------------------------------------------------------
seg031:1BD2
seg031:1BD2 loc_1AA32:                              ; CODE XREF: sub_1A930+FB␘j
seg031:1BD2                 mov     dx, [bp+8]
seg031:1BD5                 mov     ah, 40h
seg031:1BD7                 int     21h             ; DOS - 2+ - WRITE TO FILE WITH HANDLE
seg031:1BD7                                         ; BX = file handle, CX = number of bytes to write, DS:DX -> buffer
seg031:1BD9                 jnb     short loc_1AA3F
seg031:1BDB                 mov     ah, 9
seg031:1BDD                 jmp     short loc_1AA23
seg031:1BDF ; ---------------------------------------------------------------------------
seg031:1BDF
seg031:1BDF loc_1AA3F:                              ; CODE XREF: sub_1A930+109␘j
seg031:1BDF                 or      ax, ax
seg031:1BE1                 jnz     short loc_1AA23
seg031:1BE3                 test    byte ptr [bx-3C9Eh], 40h
seg031:1BE8                 jz      short loc_1AA54
seg031:1BEA                 mov     bx, dx
seg031:1BEC                 cmp     byte ptr [bx], 1Ah
seg031:1BEF                 jnz     short loc_1AA54
seg031:1BF1                 clc
seg031:1BF2                 jmp     short loc_1AA23
seg031:1BF4 ; ---------------------------------------------------------------------------
seg031:1BF4
seg031:1BF4 loc_1AA54:                              ; CODE XREF: sub_1A930+118␘j
seg031:1BF4                                         ; sub_1A930+11F␘j
seg031:1BF4                 stc
seg031:1BF5                 mov     ax, 1C00h
seg031:1BF8                 jmp     short loc_1AA23
seg031:1BF8 ; END OF FUNCTION CHUNK FOR sub_1A930
seg031:1BFA
