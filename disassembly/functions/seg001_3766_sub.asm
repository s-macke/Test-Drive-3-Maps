seg001:3766 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:3766
seg001:3766 ; Attributes: bp-based frame
seg001:3766
seg001:3766 sub_54A6        proc far                ; CODE XREF: sub_5340+15␘p
seg001:3766                                         ; sub_5340+76␘p
seg001:3766                 push    bp
seg001:3767                 mov     bp, sp
seg001:3769                 sub     sp, 2
seg001:376C                 mov     byte_280DC, 0
seg001:3771                 mov     ax, 1
seg001:3774                 mov     word_1F17A, ax
seg001:3777                 push    ax
seg001:3778                 call    far ptr sub_16BB0
seg001:377D                 add     sp, 2
seg001:3780                 mov     ax, word_1FBE2
seg001:3783                 mov     cl, 3
seg001:3785                 shl     ax, cl
seg001:3787                 add     ax, 0A34h
seg001:378A                 push    ax
seg001:378B                 mov     ax, 0ADCh
seg001:378E                 push    ax
seg001:378F                 call    sub_195EA
seg001:3794                 add     sp, 4
seg001:3797                 mov     ax, 107Bh
seg001:379A                 push    ax
seg001:379B                 mov     ax, 0AE3h
seg001:379E                 push    ax
seg001:379F                 call    sub_195EA
seg001:37A4                 add     sp, 4
seg001:37A7                 push    word_2BF4E
seg001:37AB                 push    word_2BF4C
seg001:37AF                 mov     ax, 0ADAh
seg001:37B2                 push    ax
seg001:37B3                 call    sub_E26
seg001:37B8                 add     sp, 6
seg001:37BB                 mov     ax, 240Ch
seg001:37BE                 push    ds
seg001:37BF                 push    ax
seg001:37C0                 push    word_2BF4E
seg001:37C4                 push    word_2BF4C
seg001:37C8                 call    sub_A8EF
seg001:37CD                 add     sp, 8
seg001:37D0                 push    cs
seg001:37D1                 call    near ptr sub_3990
seg001:37D4                 cmp     word_2D628, 13h
seg001:37D9                 jnz     short loc_554A
seg001:37DB                 sub     ax, ax
seg001:37DD                 mov     word_1F17A, ax
seg001:37E0                 push    ax
seg001:37E1                 call    far ptr sub_16BB0
seg001:37E6                 add     sp, 2
seg001:37E9                 sub     ax, ax
seg001:37EB                 push    ax
seg001:37EC                 call    far ptr sub_16A93
seg001:37F1                 add     sp, 2
seg001:37F4                 mov     ax, 0C7h ; '¦'
seg001:37F7                 push    ax
seg001:37F8                 sub     ax, ax
seg001:37FA                 push    ax
seg001:37FB                 mov     ax, 13Fh
seg001:37FE                 push    ax
seg001:37FF                 sub     ax, ax
seg001:3801                 push    ax
seg001:3802                 call    far ptr sub_172BD
seg001:3807                 add     sp, 8
seg001:380A
seg001:380A loc_554A:                               ; CODE XREF: sub_54A6+73␘j
seg001:380A                 mov     ax, 1
seg001:380D                 mov     word_1F17A, ax
seg001:3810                 push    ax
seg001:3811                 call    far ptr sub_16BB0
seg001:3816                 add     sp, 2
seg001:3819                 sub     ax, ax
seg001:381B                 push    ax
seg001:381C                 call    far ptr sub_16A93
seg001:3821                 add     sp, 2
seg001:3824                 mov     ax, 0C7h ; '¦'
seg001:3827                 push    ax
seg001:3828                 sub     ax, ax
seg001:382A                 push    ax
seg001:382B                 mov     ax, 13Fh
seg001:382E                 push    ax
seg001:382F                 sub     ax, ax
seg001:3831                 push    ax
seg001:3832                 call    far ptr sub_172BD
seg001:3837                 add     sp, 8
seg001:383A                 sub     ax, ax
seg001:383C                 push    ax
seg001:383D                 mov     ax, 20h ; ' '
seg001:3840                 push    ax
seg001:3841                 sub     ax, ax
seg001:3843                 push    ax
seg001:3844                 mov     ax, 140h
seg001:3847                 push    ax
seg001:3848                 push    word_1FBF6
seg001:384C                 mov     ax, 240Ch
seg001:384F                 push    ax
seg001:3850                 push    cs
seg001:3851                 call    near ptr sub_7696
seg001:3854                 add     sp, 0Ch
seg001:3857                 mov     ax, 1080h
seg001:385A                 push    ax
seg001:385B                 mov     ax, 0AE4h
seg001:385E                 push    ax
seg001:385F                 call    sub_195EA
seg001:3864                 add     sp, 4
seg001:3867                 mov     al, byte_1FBFE
seg001:386A                 mov     byte_1FBC3, al
seg001:386D                 mov     ax, 0ADAh
seg001:3870                 push    ax
seg001:3871                 call    sub_CA8
seg001:3876                 add     sp, 2
seg001:3879                 mov     ax, 1085h
seg001:387C                 push    ax
seg001:387D                 mov     ax, 0AE5h
seg001:3880                 push    ax
seg001:3881                 call    sub_195EA
seg001:3886                 add     sp, 4
seg001:3889                 push    word_2BF4E
seg001:388D                 push    word_2BF4C
seg001:3891                 mov     ax, 0ADAh
seg001:3894                 push    ax
seg001:3895                 call    sub_E26
seg001:389A                 add     sp, 6
seg001:389D                 mov     ax, 240Ch
seg001:38A0                 push    ds
seg001:38A1                 push    ax
seg001:38A2                 push    word_2BF4E
seg001:38A6                 push    word_2BF4C
seg001:38AA                 call    sub_A8EF
seg001:38AF                 add     sp, 8
seg001:38B2                 sub     ax, ax
seg001:38B4                 push    ax
seg001:38B5                 mov     ax, 6Bh ; 'k'
seg001:38B8                 push    ax
seg001:38B9                 sub     ax, ax
seg001:38BB                 push    ax
seg001:38BC                 mov     ax, 140h
seg001:38BF                 push    ax
seg001:38C0                 push    word_1FBFC
seg001:38C4                 mov     ax, 240Ch
seg001:38C7                 push    ax
seg001:38C8                 push    cs
seg001:38C9                 call    near ptr sub_7696
seg001:38CC                 add     sp, 0Ch
seg001:38CF                 mov     byte_1FBC5, 41h ; 'A'
seg001:38D4                 push    word_2BF4E
seg001:38D8                 push    word_2BF4C
seg001:38DC                 mov     ax, 0ADAh
seg001:38DF                 push    ax
seg001:38E0                 call    sub_E26
seg001:38E5                 add     sp, 6
seg001:38E8                 mov     ax, 240Ch
seg001:38EB                 push    ds
seg001:38EC                 push    ax
seg001:38ED                 push    word_2BF4E
seg001:38F1                 push    word_2BF4C
seg001:38F5                 call    sub_A8EF
seg001:38FA                 add     sp, 8
seg001:38FD                 mov     ax, 1
seg001:3900                 push    ax
seg001:3901                 mov     ax, 58h ; 'X'
seg001:3904                 push    ax
seg001:3905                 sub     ax, ax
seg001:3907                 push    ax
seg001:3908                 mov     ax, 140h
seg001:390B                 push    ax
seg001:390C                 push    word_1FBFA
seg001:3910                 mov     ax, 240Ch
seg001:3913                 push    ax
seg001:3914                 push    cs
seg001:3915                 call    near ptr sub_7696
seg001:3918                 add     sp, 0Ch
seg001:391B                 mov     ax, 8
seg001:391E                 push    ax
seg001:391F                 call    far ptr sub_16A93
seg001:3924                 add     sp, 2
seg001:3927                 mov     ax, 6Bh ; 'k'
seg001:392A                 push    ax
seg001:392B                 mov     ax, 26h ; '&'
seg001:392E                 push    ax
seg001:392F                 mov     ax, 13Fh
seg001:3932                 push    ax
seg001:3933                 sub     ax, ax
seg001:3935                 push    ax
seg001:3936                 push    cs
seg001:3937                 call    near ptr sub_359E
seg001:393A                 add     sp, 8
seg001:393D                 mov     byte_280DC, 80h ; 'Ç'
seg001:3942                 mov     ax, 1089h
seg001:3945                 push    ax
seg001:3946                 mov     ax, 0AE4h
seg001:3949                 push    ax
seg001:394A                 call    sub_195EA
seg001:394F                 add     sp, 4
seg001:3952                 mov     al, byte_1FBEB
seg001:3955                 sub     ah, ah
seg001:3957                 mov     bx, ax
seg001:3959                 shl     bx, 1
seg001:395B                 add     bx, ax
seg001:395D                 shl     bx, 1
seg001:395F                 mov     al, [bx+0B18h]
seg001:3963                 mov     byte_1FBC3, al
seg001:3966                 mov     ax, 0ADAh
seg001:3969                 push    ax
seg001:396A                 call    sub_CA8
seg001:396F                 add     sp, 2
seg001:3972                 mov     ax, 108Eh
seg001:3975                 push    ax
seg001:3976                 mov     ax, 0AE5h
seg001:3979                 push    ax
seg001:397A                 call    sub_195EA
seg001:397F                 add     sp, 4
seg001:3982                 push    word_2BF4E
seg001:3986                 push    word_2BF4C
seg001:398A                 mov     ax, 0ADAh
seg001:398D                 push    ax
seg001:398E                 call    sub_E26
seg001:3993                 add     sp, 6
seg001:3996                 mov     ax, 240Ch
seg001:3999                 push    ds
seg001:399A                 push    ax
seg001:399B                 push    word_2BF4E
seg001:399F                 push    word_2BF4C
seg001:39A3                 call    sub_A8EF
seg001:39A8                 add     sp, 8
seg001:39AB                 sub     ax, ax
seg001:39AD                 push    ax
seg001:39AE                 mov     ax, 0B6h ; '¦'
seg001:39B1                 push    ax
seg001:39B2                 sub     ax, ax
seg001:39B4                 push    ax
seg001:39B5                 mov     ax, 140h
seg001:39B8                 push    ax
seg001:39B9                 mov     al, byte_1FBEB
seg001:39BC                 sub     ah, ah
seg001:39BE                 mov     bx, ax
seg001:39C0                 shl     bx, 1
seg001:39C2                 add     bx, ax
seg001:39C4                 shl     bx, 1
seg001:39C6                 push    word ptr [bx+0B16h]
seg001:39CA                 mov     ax, 240Ch
seg001:39CD                 push    ax
seg001:39CE                 push    cs
seg001:39CF                 call    near ptr sub_7696
seg001:39D2                 add     sp, 0Ch
seg001:39D5                 mov     byte_1FBC5, 41h ; 'A'
seg001:39DA                 push    word_2BF4E
seg001:39DE                 push    word_2BF4C
seg001:39E2                 mov     ax, 0ADAh
seg001:39E5                 push    ax
seg001:39E6                 call    sub_E26
seg001:39EB                 add     sp, 6
seg001:39EE                 mov     ax, 240Ch
seg001:39F1                 push    ds
seg001:39F2                 push    ax
seg001:39F3                 push    word_2BF4E
seg001:39F7                 push    word_2BF4C
seg001:39FB                 call    sub_A8EF
seg001:3A00                 add     sp, 8
seg001:3A03                 mov     ax, 1
seg001:3A06                 push    ax
seg001:3A07                 mov     ax, 0A3h ; 'ú'
seg001:3A0A                 push    ax
seg001:3A0B                 sub     ax, ax
seg001:3A0D                 push    ax
seg001:3A0E                 mov     ax, 140h
seg001:3A11                 push    ax
seg001:3A12                 mov     al, byte_1FBEB
seg001:3A15                 sub     ah, ah
seg001:3A17                 mov     bx, ax
seg001:3A19                 shl     bx, 1
seg001:3A1B                 add     bx, ax
seg001:3A1D                 shl     bx, 1
seg001:3A1F                 push    word ptr [bx+0B14h]
seg001:3A23                 mov     ax, 240Ch
seg001:3A26                 push    ax
seg001:3A27                 push    cs
seg001:3A28                 call    near ptr sub_7696
seg001:3A2B                 add     sp, 0Ch
seg001:3A2E                 mov     ax, 8
seg001:3A31                 push    ax
seg001:3A32                 call    far ptr sub_16A93
seg001:3A37                 add     sp, 2
seg001:3A3A                 mov     ax, 0B6h ; '¦'
seg001:3A3D                 push    ax
seg001:3A3E                 mov     ax, 71h ; 'q'
seg001:3A41                 push    ax
seg001:3A42                 mov     ax, 13Fh
seg001:3A45                 push    ax
seg001:3A46                 sub     ax, ax
seg001:3A48                 push    ax
seg001:3A49                 push    cs
seg001:3A4A                 call    near ptr sub_359E
seg001:3A4D                 add     sp, 8
seg001:3A50                 mov     ax, 8
seg001:3A53                 push    ax
seg001:3A54                 call    far ptr sub_16A93
seg001:3A59                 add     sp, 2
seg001:3A5C                 mov     ax, 0C7h ; '¦'
seg001:3A5F                 push    ax
seg001:3A60                 mov     ax, 0BCh ; '+'
seg001:3A63                 push    ax
seg001:3A64                 mov     ax, 13Fh
seg001:3A67                 push    ax
seg001:3A68                 sub     ax, ax
seg001:3A6A                 push    ax
seg001:3A6B                 call    far ptr sub_172BD
seg001:3A70                 add     sp, 8
seg001:3A73                 mov     ax, 7
seg001:3A76                 push    ax
seg001:3A77                 call    far ptr sub_16A93
seg001:3A7C                 add     sp, 2
seg001:3A7F                 mov     ax, 0C6h ; '¦'
seg001:3A82                 push    ax
seg001:3A83                 mov     ax, 0BDh ; '+'
seg001:3A86                 push    ax
seg001:3A87                 mov     ax, 13Eh
seg001:3A8A                 push    ax
seg001:3A8B                 mov     ax, 1
seg001:3A8E                 push    ax
seg001:3A8F                 call    far ptr sub_172BD
seg001:3A94                 add     sp, 8
seg001:3A97                 mov     ax, 240Ch
seg001:3A9A                 push    ds
seg001:3A9B                 push    ax
seg001:3A9C                 push    word_2DD62
seg001:3AA0                 push    word_2DD60
seg001:3AA4                 call    sub_A8EF
seg001:3AA9                 add     sp, 8
seg001:3AAC                 sub     ax, ax
seg001:3AAE                 push    ax
seg001:3AAF                 mov     ax, 0C6h ; '¦'
seg001:3AB2                 push    ax
seg001:3AB3                 mov     ax, 70h ; 'p'
seg001:3AB6                 push    ax
seg001:3AB7                 push    ax
seg001:3AB8                 mov     ax, 11Dh
seg001:3ABB                 push    ax
seg001:3ABC                 mov     ax, 240Ch
seg001:3ABF                 push    ax
seg001:3AC0                 push    cs
seg001:3AC1                 call    near ptr sub_7696
seg001:3AC4                 add     sp, 0Ch
seg001:3AC7                 sub     ax, ax
seg001:3AC9                 mov     word_1F17A, ax
seg001:3ACC                 push    ax
seg001:3ACD                 call    far ptr sub_16BB0
seg001:3AD2                 add     sp, 2
seg001:3AD5                 push    cs
seg001:3AD6                 call    near ptr sub_3990
seg001:3AD9                 mov     ax, 0C7h ; '¦'
seg001:3ADC                 push    ax
seg001:3ADD                 sub     ax, ax
seg001:3ADF                 push    ax
seg001:3AE0                 mov     ax, 13Fh
seg001:3AE3                 push    ax
seg001:3AE4                 sub     ax, ax
seg001:3AE6                 push    ax
seg001:3AE7                 call    far ptr sub_17918
seg001:3AEC                 add     sp, 8
seg001:3AEF                 push    cs
seg001:3AF0                 call    near ptr sub_399E
seg001:3AF3                 mov     sp, bp
seg001:3AF5                 pop     bp
seg001:3AF6                 retf
seg001:3AF6 sub_54A6        endp
seg001:3AF6
seg001:3AF6 ; ---------------------------------------------------------------------------
seg001:3AF7                 align 2
seg001:3AF8
