seg001:2E30 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:2E30
seg001:2E30 ; Attributes: bp-based frame
seg001:2E30
seg001:2E30 sub_4B70        proc far                ; CODE XREF: sub_27D0+4AE␘p
seg001:2E30                                         ; sub_663E+A5␙p
seg001:2E30
seg001:2E30 var_4           = word ptr -4
seg001:2E30 var_2           = word ptr -2
seg001:2E30
seg001:2E30                 push    bp
seg001:2E31                 mov     bp, sp
seg001:2E33                 sub     sp, 4
seg001:2E36                 push    cs
seg001:2E37                 call    near ptr sub_4534
seg001:2E3A                 mov     ax, word_1FBE2
seg001:2E3D                 mov     cl, 3
seg001:2E3F                 shl     ax, cl
seg001:2E41                 add     ax, 0A34h
seg001:2E44                 push    ax
seg001:2E45                 mov     ax, 0ADCh
seg001:2E48                 push    ax
seg001:2E49                 call    sub_195EA
seg001:2E4E                 add     sp, 4
seg001:2E51                 mov     ax, 104Fh
seg001:2E54                 push    ax
seg001:2E55                 mov     ax, 0AE3h
seg001:2E58                 push    ax
seg001:2E59                 call    sub_195EA
seg001:2E5E                 add     sp, 4
seg001:2E61                 mov     ax, 1053h
seg001:2E64                 push    ax
seg001:2E65                 mov     ax, 0ADAh
seg001:2E68                 push    ax
seg001:2E69                 call    sub_1916A
seg001:2E6E                 add     sp, 4
seg001:2E71                 mov     word_2D896, ax
seg001:2E74                 mov     [bp+var_4], 0
seg001:2E79                 mov     [bp+var_2], 0
seg001:2E7E
seg001:2E7E loc_4BBE:                               ; CODE XREF: sub_4B70+62␙j
seg001:2E7E                 mov     bx, [bp+var_2]
seg001:2E81                 mov     al, [bx+1EC8h]
seg001:2E85                 sub     ah, ah
seg001:2E87                 xor     [bp+var_4], ax
seg001:2E8A                 inc     [bp+var_2]
seg001:2E8D                 cmp     [bp+var_2], 1C1h
seg001:2E92                 jl      short loc_4BBE
seg001:2E94                 xor     byte ptr [bp+var_4], 5Bh
seg001:2E98                 mov     al, byte ptr [bp+var_4]
seg001:2E9B                 mov     byte_21169, al
seg001:2E9E                 push    word_2D896
seg001:2EA2                 mov     ax, 1C2h
seg001:2EA5                 push    ax
seg001:2EA6                 mov     ax, 1
seg001:2EA9                 push    ax
seg001:2EAA                 mov     ax, 1EC8h
seg001:2EAD                 push    ax
seg001:2EAE                 call    sub_19388
seg001:2EB3                 add     sp, 8
seg001:2EB6                 mov     [bp+var_2], ax
seg001:2EB9                 cmp     ax, 1C2h
seg001:2EBC                 jge     short loc_4C0A
seg001:2EBE                 mov     ax, 3
seg001:2EC1                 push    ax
seg001:2EC2                 call    sub_84C
seg001:2EC7                 add     sp, 2
seg001:2ECA
seg001:2ECA loc_4C0A:                               ; CODE XREF: sub_4B70+8C␘j
seg001:2ECA                 push    word_2D896
seg001:2ECE                 call    sub_190A2
seg001:2ED3                 mov     sp, bp
seg001:2ED5                 pop     bp
seg001:2ED6                 retf
seg001:2ED6 sub_4B70        endp
seg001:2ED6
seg001:2ED6 ; ---------------------------------------------------------------------------
seg001:2ED7                 align 2
seg001:2ED8
