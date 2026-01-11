seg006:3F18 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:3F18
seg006:3F18
seg006:3F18 sub_11D68       proc far                ; CODE XREF: sub_83E0+6␘P
seg006:3F18                                         ; seg006:02ED␘P
seg006:3F18                 push    di
seg006:3F19                 mov     ax, 1FE0h
seg006:3F1C                 mov     bx, 10h
seg006:3F1F                 mov     cx, 56h ; 'V'
seg006:3F22                 mov     dx, 38h ; '8'
seg006:3F25                 cmp     byte_1FAA3, 0
seg006:3F2A                 jnz     short loc_11D9A
seg006:3F2C                 mov     ax, 27E0h
seg006:3F2F                 mov     bx, 14h
seg006:3F32                 mov     cx, 60h ; '`'
seg006:3F35                 mov     dx, 38h ; '8'
seg006:3F38                 cmp     byte_2A6C6, bh
seg006:3F3C                 jz      short loc_11D9A
seg006:3F3E                 mov     ax, 1DE0h
seg006:3F41                 mov     bx, 0Fh
seg006:3F44                 mov     cx, 40h ; '@'
seg006:3F47                 mov     dx, 28h ; '('
seg006:3F4A
seg006:3F4A loc_11D9A:                              ; CODE XREF: sub_11D68+12␘j
seg006:3F4A                                         ; sub_11D68+24␘j
seg006:3F4A                 mov     word_2AA79, dx
seg006:3F4E                 mov     word_2AA7B, cx
seg006:3F52                 xchg    cl, ch
seg006:3F54                 mov     dx, cx
seg006:3F56                 shr     dx, 1
seg006:3F58                 shr     dx, 1
seg006:3F5A                 add     cx, dx
seg006:3F5C                 mov     word_2AA7D, cx
seg006:3F60                 mov     byte_2AA83, bl
seg006:3F64                 mov     cx, 7500h
seg006:3F67                 add     ch, bl
seg006:3F69                 mov     word_2AD27, cx
seg006:3F6D                 mov     word_2AA7F, ax
seg006:3F70                 push    bx
seg006:3F71                 mov     bx, 0B9EEh
seg006:3F74                 mov     cx, ax
seg006:3F76                 add     cx, 20h ; ' '
seg006:3F79                 mov     dx, cx
seg006:3F7B                 add     dx, 8000h
seg006:3F7F                 mov     di, [bx]
seg006:3F81                 mov     cs:[di], cx
seg006:3F84                 mov     di, [bx+1Ch]
seg006:3F87                 mov     cs:[di], cx
seg006:3F8A                 mov     di, [bx+26h]
seg006:3F8D                 mov     cs:[di], cx
seg006:3F90                 mov     di, [bx+2]
seg006:3F93                 mov     cs:[di], dx
seg006:3F96                 mov     di, [bx+1Eh]
seg006:3F99                 mov     cs:[di], dx
seg006:3F9C                 mov     di, [bx+28h]
seg006:3F9F                 mov     cs:[di], dx
seg006:3FA2                 mov     di, [bx+4]
seg006:3FA5                 mov     cs:[di], ax
seg006:3FA8                 mov     di, [bx+20h]
seg006:3FAB                 mov     cs:[di], ax
seg006:3FAE                 mov     di, [bx+2Ah]
seg006:3FB1                 mov     cs:[di], ax
seg006:3FB4                 mov     di, [bx+6]
seg006:3FB7                 mov     cs:[di], cx
seg006:3FBA                 mov     di, [bx+22h]
seg006:3FBD                 mov     cs:[di], cx
seg006:3FC0                 mov     di, [bx+2Ch]
seg006:3FC3                 mov     cs:[di], cx
seg006:3FC6                 mov     di, [bx+8]
seg006:3FC9                 mov     cs:[di], ax
seg006:3FCC                 mov     di, [bx+24h]
seg006:3FCF                 mov     cs:[di], ax
seg006:3FD2                 mov     di, [bx+2Eh]
seg006:3FD5                 mov     cs:[di], ax
seg006:3FD8                 mov     di, [bx+0Ah]
seg006:3FDB                 mov     cs:[di], ax
seg006:3FDE                 mov     di, [bx+0Ch]
seg006:3FE1                 sub     dx, 20h ; ' '
seg006:3FE4                 mov     cs:[di], dx
seg006:3FE7                 mov     di, [bx+0Eh]
seg006:3FEA                 mov     cs:[di], ax
seg006:3FED                 mov     di, [bx+10h]
seg006:3FF0                 mov     cs:[di], ax
seg006:3FF3                 mov     di, [bx+12h]
seg006:3FF6                 mov     cs:[di], ax
seg006:3FF9                 mov     di, [bx+14h]
seg006:3FFC                 mov     cs:[di], cx
seg006:3FFF                 mov     di, [bx+16h]
seg006:4002                 mov     cs:[di], cx
seg006:4005                 shr     cx, 1
seg006:4007                 mov     word_2AA81, cx
seg006:400B                 shr     cx, 1
seg006:400D                 shr     cx, 1
seg006:400F                 shr     cx, 1
seg006:4011                 shr     cx, 1
seg006:4013                 mov     di, [bx+18h]
seg006:4016                 mov     cs:[di], cx
seg006:4019                 mov     di, [bx+1Ah]
seg006:401C                 mov     cs:[di], cx
seg006:401F                 mov     bx, 0B6B9h
seg006:4022                 pop     ax
seg006:4023                 xchg    al, ah
seg006:4025                 mov     cx, ax
seg006:4027                 mov     dx, ax
seg006:4029                 mov     di, ax
seg006:402B                 add     cx, 4000h
seg006:402F                 add     dx, 8000h
seg006:4033                 add     di, 0C000h
seg006:4037                 mov     [bx], ax
seg006:4039                 mov     [bx+2], dx
seg006:403C                 mov     [bx+4], dx
seg006:403F                 mov     [bx+6], ax
seg006:4042                 mov     [bx+8], cx
seg006:4045                 mov     [bx+0Ah], cx
seg006:4048                 mov     [bx+0Ch], di
seg006:404B                 mov     [bx+0Eh], di
seg006:404E                 pop     di
seg006:404F                 retf
seg006:404F sub_11D68       endp
seg006:404F
seg006:4050
