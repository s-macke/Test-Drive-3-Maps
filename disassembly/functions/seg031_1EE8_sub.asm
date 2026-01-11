seg031:1EE8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1EE8
seg031:1EE8 ; Attributes: bp-based frame
seg031:1EE8
seg031:1EE8 sub_1AD48       proc far                ; CODE XREF: sub_19696+51␘P
seg031:1EE8
seg031:1EE8 arg_0           = word ptr  6
seg031:1EE8 arg_2           = word ptr  8
seg031:1EE8
seg031:1EE8                 push    bp
seg031:1EE9                 mov     bp, sp
seg031:1EEB                 push    si
seg031:1EEC                 push    di
seg031:1EED                 mov     di, [bp+arg_0]
seg031:1EF0                 mov     ax, [di]
seg031:1EF2                 mov     bx, [di+2]
seg031:1EF5                 mov     cx, [di+4]
seg031:1EF8                 mov     dx, [di+6]
seg031:1EFB                 mov     si, [di+8]
seg031:1EFE                 mov     di, [di+0Ah]
seg031:1F01                 int     21h             ; DOS -
seg031:1F03                 push    di
seg031:1F04                 mov     di, [bp+arg_2]
seg031:1F07                 mov     [di], ax
seg031:1F09                 mov     [di+2], bx
seg031:1F0C                 mov     [di+4], cx
seg031:1F0F                 mov     [di+6], dx
seg031:1F12                 mov     [di+8], si
seg031:1F15                 pop     word ptr [di+0Ah]
seg031:1F18                 jb      short loc_1AD7E
seg031:1F1A                 xor     si, si
seg031:1F1C                 jmp     short loc_1AD88
seg031:1F1E ; ---------------------------------------------------------------------------
seg031:1F1E
seg031:1F1E loc_1AD7E:                              ; CODE XREF: sub_1AD48+30␘j
seg031:1F1E                 call    sub_1AE10
seg031:1F23                 mov     si, 1
seg031:1F26                 mov     ax, [di]
seg031:1F28
seg031:1F28 loc_1AD88:                              ; CODE XREF: sub_1AD48+34␘j
seg031:1F28                 mov     [di+0Ch], si
seg031:1F2B                 pop     di
seg031:1F2C                 pop     si
seg031:1F2D                 mov     sp, bp
seg031:1F2F                 pop     bp
seg031:1F30                 retf
seg031:1F30 sub_1AD48       endp
seg031:1F30
seg031:1F30 ; ---------------------------------------------------------------------------
seg031:1F31                 align 2
seg031:1F32
