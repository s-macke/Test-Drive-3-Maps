seg031:0F9A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0F9A
seg031:0F9A ; Attributes: bp-based frame
seg031:0F9A
seg031:0F9A sub_19DFA       proc far                ; CODE XREF: sub_194CE+31␘P
seg031:0F9A
seg031:0F9A var_2           = word ptr -2
seg031:0F9A arg_0           = word ptr  6
seg031:0F9A arg_2           = word ptr  8
seg031:0F9A
seg031:0F9A                 push    bp
seg031:0F9B                 mov     bp, sp
seg031:0F9D                 sub     sp, 2
seg031:0FA0                 push    si
seg031:0FA1                 cmp     [bp+arg_0], 0
seg031:0FA5                 jz      short loc_19E66
seg031:0FA7                 cmp     [bp+arg_2], 0C3A2h
seg031:0FAC                 jz      short loc_19E15
seg031:0FAE                 cmp     [bp+arg_2], 0C3AAh
seg031:0FB3                 jnz     short loc_19E93
seg031:0FB5
seg031:0FB5 loc_19E15:                              ; CODE XREF: sub_19DFA+12␘j
seg031:0FB5                 mov     bx, [bp+arg_2]
seg031:0FB8                 mov     al, [bx+7]
seg031:0FBB                 cbw
seg031:0FBC                 push    ax
seg031:0FBD                 call    sub_1B0EE
seg031:0FC2                 add     sp, 2
seg031:0FC5                 or      ax, ax
seg031:0FC7                 jz      short loc_19E93
seg031:0FC9                 mov     ax, [bp+arg_2]
seg031:0FCC                 sub     ax, 0C39Ah
seg031:0FCF                 mov     cl, 3
seg031:0FD1                 sar     ax, cl
seg031:0FD3                 mov     cx, ax
seg031:0FD5                 shl     ax, 1
seg031:0FD7                 add     ax, cx
seg031:0FD9                 shl     ax, 1
seg031:0FDB                 add     ax, 0C43Ah
seg031:0FDE                 mov     [bp+var_2], ax
seg031:0FE1                 push    [bp+arg_2]
seg031:0FE4                 call    sub_19E98
seg031:0FE9                 add     sp, 2
seg031:0FEC                 mov     bx, [bp+var_2]
seg031:0FEF                 mov     byte ptr [bx], 0
seg031:0FF2                 mov     word ptr [bx+2], 0
seg031:0FF7                 mov     bx, [bp+arg_2]
seg031:0FFA                 mov     si, bx
seg031:0FFC                 sub     ax, ax
seg031:0FFE                 mov     [si], ax
seg031:1000                 mov     [bx+4], ax
seg031:1003                 jmp     short loc_19E93
seg031:1003 ; ---------------------------------------------------------------------------
seg031:1005                 align 2
seg031:1006
seg031:1006 loc_19E66:                              ; CODE XREF: sub_19DFA+B␘j
seg031:1006                 mov     bx, [bp+arg_2]
seg031:1009                 cmp     word ptr [bx+4], 0CEA4h
seg031:100E                 jz      short loc_19E77
seg031:1010                 cmp     word ptr [bx+4], 0EA80h
seg031:1015                 jnz     short loc_19E93
seg031:1017
seg031:1017 loc_19E77:                              ; CODE XREF: sub_19DFA+74␘j
seg031:1017                 mov     al, [bx+7]
seg031:101A                 cbw
seg031:101B                 push    ax
seg031:101C                 call    sub_1B0EE
seg031:1021                 add     sp, 2
seg031:1024                 or      ax, ax
seg031:1026                 jz      short loc_19E93
seg031:1028                 push    [bp+arg_2]
seg031:102B                 call    sub_19E98
seg031:1030                 add     sp, 2
seg031:1033
seg031:1033 loc_19E93:                              ; CODE XREF: sub_19DFA+19␘j
seg031:1033                                         ; sub_19DFA+2D␘j ...
seg031:1033                 pop     si
seg031:1034                 mov     sp, bp
seg031:1036                 pop     bp
seg031:1037                 retf
seg031:1037 sub_19DFA       endp
seg031:1037
seg031:1038
