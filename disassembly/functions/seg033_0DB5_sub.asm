seg033:0DB5 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0DB5
seg033:0DB5 ; Attributes: bp-based frame
seg033:0DB5
seg033:0DB5 sub_1ED45       proc far                ; CODE XREF: sub_D045+AD␘P
seg033:0DB5
seg033:0DB5 arg_0           = word ptr  6
seg033:0DB5 arg_2           = word ptr  8
seg033:0DB5
seg033:0DB5                 push    bp
seg033:0DB6                 mov     bp, sp
seg033:0DB8                 push    si
seg033:0DB9                 push    bx
seg033:0DBA                 push    cx
seg033:0DBB                 push    dx
seg033:0DBC                 test    byte_2B6C6, 4
seg033:0DC1                 jnz     short loc_1ED56
seg033:0DC3                 jmp     loc_1EDD8
seg033:0DC6 ; ---------------------------------------------------------------------------
seg033:0DC6
seg033:0DC6 loc_1ED56:                              ; CODE XREF: sub_1ED45+C␘j
seg033:0DC6                 or      byte_2B6C7, 4
seg033:0DCB                 mov     dx, 3
seg033:0DCE                 mov     cx, 8
seg033:0DD1                 sub     ah, ah
seg033:0DD3
seg033:0DD3 loc_1ED63:                              ; CODE XREF: sub_1ED45+28␙j
seg033:0DD3                 mov     bx, cx
seg033:0DD5                 mov     al, [bx-38B2h]
seg033:0DD9                 cmp     al, 9
seg033:0DDB                 jb      short loc_1ED6F
seg033:0DDD                 loop    loc_1ED63
seg033:0DDF
seg033:0DDF loc_1ED6F:                              ; CODE XREF: sub_1ED45+26␘j
seg033:0DDF                 mov     cx, ax
seg033:0DE1                 mov     bx, cx
seg033:0DE3                 or      cx, cx
seg033:0DE5                 jz      short loc_1ED93
seg033:0DE7                 cmp     dl, [bx-374Dh]
seg033:0DEB                 jnz     short loc_1ED93
seg033:0DED                 dec     bx
seg033:0DEE                 dec     dx
seg033:0DEF                 cmp     dl, [bx-374Dh]
seg033:0DF3                 jnz     short loc_1ED93
seg033:0DF5                 mov     al, [bx-372Dh]
seg033:0DF9                 mov     ah, [bx-372Ch]
seg033:0DFD                 cmp     al, ah
seg033:0DFF                 jl      short loc_1ED93
seg033:0E01                 inc     bx
seg033:0E02                 inc     dx
seg033:0E03
seg033:0E03 loc_1ED93:                              ; CODE XREF: sub_1ED45+30␘j
seg033:0E03                                         ; sub_1ED45+36␘j ...
seg033:0E03                 mov     ax, [bp+arg_2]
seg033:0E06                 cmp     [bx-372Dh], al
seg033:0E0A                 jg      short loc_1EDD8
seg033:0E0C                 mov     si, bx
seg033:0E0E                 shl     si, 1
seg033:0E10                 mov     byte_2BA73, 1
seg033:0E15                 mov     ch, [bx-373Dh]
seg033:0E19                 call    off_2B9EE
seg033:0E1D                 mov     byte_2BA73, 0
seg033:0E22                 mov     [bx-374Dh], dl
seg033:0E26                 mov     ax, [bp+arg_2]
seg033:0E29                 mov     [bx-372Dh], al
seg033:0E2D                 mov     si, dx
seg033:0E2F                 dec     si
seg033:0E30                 mov     [si-34BFh], bl
seg033:0E34                 shl     si, 1
seg033:0E36                 mov     ax, [bp+arg_0]
seg033:0E39                 mov     [si-34D1h], ax
seg033:0E3D                 mov     ax, 1
seg033:0E40                 mov     [si-34D7h], ax
seg033:0E44                 mov     ax, bx
seg033:0E46                 jmp     short loc_1EDDB
seg033:0E48 ; ---------------------------------------------------------------------------
seg033:0E48
seg033:0E48 loc_1EDD8:                              ; CODE XREF: sub_1ED45+E␘j
seg033:0E48                                         ; sub_1ED45+55␘j
seg033:0E48                 mov     ax, 0FFFFh
seg033:0E4B
seg033:0E4B loc_1EDDB:                              ; CODE XREF: sub_1ED45+91␘j
seg033:0E4B                 pop     dx
seg033:0E4C                 pop     cx
seg033:0E4D                 pop     bx
seg033:0E4E                 pop     si
seg033:0E4F                 pop     bp
seg033:0E50                 retf
seg033:0E50 sub_1ED45       endp
seg033:0E50
seg033:0E51
