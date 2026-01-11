seg031:0F16 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0F16
seg031:0F16 ; Attributes: bp-based frame
seg031:0F16
seg031:0F16 sub_19D76       proc far                ; CODE XREF: sub_194CE+12␘P
seg031:0F16
seg031:0F16 var_4           = word ptr -4
seg031:0F16 var_2           = word ptr -2
seg031:0F16 arg_0           = word ptr  6
seg031:0F16
seg031:0F16                 push    bp
seg031:0F17                 mov     bp, sp
seg031:0F19                 sub     sp, 4
seg031:0F1C                 push    si
seg031:0F1D                 mov     si, [bp+arg_0]
seg031:0F20                 inc     word_2B660
seg031:0F24                 cmp     si, 0C3A2h
seg031:0F28                 jnz     short loc_19D92
seg031:0F2A                 mov     [bp+var_2], 0CEA4h
seg031:0F2F                 jmp     short loc_19D9D
seg031:0F2F ; ---------------------------------------------------------------------------
seg031:0F31                 align 2
seg031:0F32
seg031:0F32 loc_19D92:                              ; CODE XREF: sub_19D76+12␘j
seg031:0F32                 cmp     si, 0C3AAh
seg031:0F36                 jnz     short loc_19DBC
seg031:0F38                 mov     [bp+var_2], 0EA80h
seg031:0F3D
seg031:0F3D loc_19D9D:                              ; CODE XREF: sub_19D76+19␘j
seg031:0F3D                 test    byte ptr [si+6], 0Ch
seg031:0F41                 jnz     short loc_19DBC
seg031:0F43                 mov     bx, si
seg031:0F45                 sub     bx, 0C39Ah
seg031:0F49                 mov     cl, 3
seg031:0F4B                 sar     bx, cl
seg031:0F4D                 mov     ax, bx
seg031:0F4F                 shl     bx, 1
seg031:0F51                 add     bx, ax
seg031:0F53                 shl     bx, 1
seg031:0F55                 test    byte ptr [bx-3BC6h], 1
seg031:0F5A                 jz      short loc_19DC0
seg031:0F5C
seg031:0F5C loc_19DBC:                              ; CODE XREF: sub_19D76+20␘j
seg031:0F5C                                         ; sub_19D76+2B␘j
seg031:0F5C                 sub     ax, ax
seg031:0F5E                 jmp     short loc_19DF5
seg031:0F60 ; ---------------------------------------------------------------------------
seg031:0F60
seg031:0F60 loc_19DC0:                              ; CODE XREF: sub_19D76+44␘j
seg031:0F60                 mov     ax, si
seg031:0F62                 sub     ax, 0C39Ah
seg031:0F65                 mov     cl, 3
seg031:0F67                 sar     ax, cl
seg031:0F69                 mov     cx, ax
seg031:0F6B                 shl     ax, 1
seg031:0F6D                 add     ax, cx
seg031:0F6F                 shl     ax, 1
seg031:0F71                 add     ax, 0C43Ah
seg031:0F74                 mov     [bp+var_4], ax
seg031:0F77                 mov     ax, [bp+var_2]
seg031:0F7A                 mov     [si+4], ax
seg031:0F7D                 mov     [si], ax
seg031:0F7F                 mov     bx, [bp+var_4]
seg031:0F82                 mov     ax, 200h
seg031:0F85                 mov     [bx+2], ax
seg031:0F88                 mov     [si+2], ax
seg031:0F8B                 mov     byte ptr [bx], 1
seg031:0F8E                 or      byte ptr [si+6], 2
seg031:0F92                 mov     ax, 1
seg031:0F95
seg031:0F95 loc_19DF5:                              ; CODE XREF: sub_19D76+48␘j
seg031:0F95                 pop     si
seg031:0F96                 mov     sp, bp
seg031:0F98                 pop     bp
seg031:0F99                 retf
seg031:0F99 sub_19D76       endp
seg031:0F99
seg031:0F9A
