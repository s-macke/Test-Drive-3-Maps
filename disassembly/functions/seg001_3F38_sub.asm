seg001:3F38 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:3F38
seg001:3F38 ; Attributes: bp-based frame
seg001:3F38
seg001:3F38 sub_5C78        proc far                ; CODE XREF: sub_0:loc_6A2␘P
seg001:3F38                 push    bp
seg001:3F39                 mov     bp, sp
seg001:3F3B                 sub     sp, 2
seg001:3F3E                 mov     byte_280DC, 0
seg001:3F43                 mov     ax, 1
seg001:3F46                 mov     word_1F17A, ax
seg001:3F49                 push    ax
seg001:3F4A                 call    far ptr sub_16BB0
seg001:3F4F                 add     sp, 2
seg001:3F52                 sub     ax, ax
seg001:3F54                 push    ax
seg001:3F55                 call    far ptr sub_16A93
seg001:3F5A                 add     sp, 2
seg001:3F5D                 mov     ax, 5
seg001:3F60                 push    ax
seg001:3F61                 sub     ax, ax
seg001:3F63                 push    ax
seg001:3F64                 mov     ax, 13Fh
seg001:3F67                 push    ax
seg001:3F68                 sub     ax, ax
seg001:3F6A                 push    ax
seg001:3F6B                 call    far ptr sub_172BD
seg001:3F70                 add     sp, 8
seg001:3F73                 mov     ax, word_1FBE2
seg001:3F76                 mov     cl, 3
seg001:3F78                 shl     ax, cl
seg001:3F7A                 add     ax, 0A34h
seg001:3F7D                 push    ax
seg001:3F7E                 mov     ax, 0ADCh
seg001:3F81                 push    ax
seg001:3F82                 call    sub_195EA
seg001:3F87                 add     sp, 4
seg001:3F8A                 mov     ax, 10F3h
seg001:3F8D                 push    ax
seg001:3F8E                 mov     ax, 0AE4h
seg001:3F91                 push    ax
seg001:3F92                 call    sub_195EA
seg001:3F97                 add     sp, 4
seg001:3F9A                 mov     al, byte_1FBEA
seg001:3F9D                 sub     ah, ah
seg001:3F9F                 mov     bx, ax
seg001:3FA1                 shl     bx, 1
seg001:3FA3                 add     bx, ax
seg001:3FA5                 shl     bx, 1
seg001:3FA7                 mov     al, [bx+0B1Eh]
seg001:3FAB                 mov     byte_1FBC3, al
seg001:3FAE                 mov     ax, 0ADAh
seg001:3FB1                 push    ax
seg001:3FB2                 call    sub_CA8
seg001:3FB7                 add     sp, 2
seg001:3FBA                 mov     ax, 10F8h
seg001:3FBD                 push    ax
seg001:3FBE                 mov     ax, 0AE5h
seg001:3FC1                 push    ax
seg001:3FC2                 call    sub_195EA
seg001:3FC7                 add     sp, 4
seg001:3FCA                 push    word_2BF4E
seg001:3FCE                 push    word_2BF4C
seg001:3FD2                 mov     ax, 0ADAh
seg001:3FD5                 push    ax
seg001:3FD6                 call    sub_E26
seg001:3FDB                 add     sp, 6
seg001:3FDE                 mov     ax, 240Ch
seg001:3FE1                 push    ds
seg001:3FE2                 push    ax
seg001:3FE3                 push    word_2BF4E
seg001:3FE7                 push    word_2BF4C
seg001:3FEB                 call    sub_A8EF
seg001:3FF0                 add     sp, 8
seg001:3FF3                 sub     ax, ax
seg001:3FF5                 push    ax
seg001:3FF6                 mov     ax, 4Ah ; 'J'
seg001:3FF9                 push    ax
seg001:3FFA                 sub     ax, ax
seg001:3FFC                 push    ax
seg001:3FFD                 mov     ax, 140h
seg001:4000                 push    ax
seg001:4001                 mov     al, byte_1FBEA
seg001:4004                 sub     ah, ah
seg001:4006                 mov     bx, ax
seg001:4008                 shl     bx, 1
seg001:400A                 add     bx, ax
seg001:400C                 shl     bx, 1
seg001:400E                 push    word ptr [bx+0B1Ch]
seg001:4012                 mov     ax, 240Ch
seg001:4015                 push    ax
seg001:4016                 push    cs
seg001:4017                 call    near ptr sub_7696
seg001:401A                 add     sp, 0Ch
seg001:401D                 mov     byte_1FBC5, 41h ; 'A'
seg001:4022                 push    word_2BF4E
seg001:4026                 push    word_2BF4C
seg001:402A                 mov     ax, 0ADAh
seg001:402D                 push    ax
seg001:402E                 call    sub_E26
seg001:4033                 add     sp, 6
seg001:4036                 mov     ax, 240Ch
seg001:4039                 push    ds
seg001:403A                 push    ax
seg001:403B                 push    word_2BF4E
seg001:403F                 push    word_2BF4C
seg001:4043                 call    sub_A8EF
seg001:4048                 add     sp, 8
seg001:404B                 mov     ax, 1
seg001:404E                 push    ax
seg001:404F                 mov     ax, 37h ; '7'
seg001:4052                 push    ax
seg001:4053                 sub     ax, ax
seg001:4055                 push    ax
seg001:4056                 mov     ax, 140h
seg001:4059                 push    ax
seg001:405A                 mov     al, byte_1FBEA
seg001:405D                 sub     ah, ah
seg001:405F                 mov     bx, ax
seg001:4061                 shl     bx, 1
seg001:4063                 add     bx, ax
seg001:4065                 shl     bx, 1
seg001:4067                 push    word ptr [bx+0B1Ah]
seg001:406B                 mov     ax, 240Ch
seg001:406E                 push    ax
seg001:406F                 push    cs
seg001:4070                 call    near ptr sub_7696
seg001:4073                 mov     sp, bp
seg001:4075                 pop     bp
seg001:4076                 retf
seg001:4076 sub_5C78        endp
seg001:4076
seg001:4076 ; ---------------------------------------------------------------------------
seg001:4077                 align 2
seg001:4078
