seg001:4078 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:4078
seg001:4078 ; Attributes: bp-based frame
seg001:4078
seg001:4078 sub_5DB8        proc far                ; CODE XREF: sub_0:loc_6BF␘P
seg001:4078
seg001:4078 var_18          = word ptr -18h
seg001:4078 var_16          = word ptr -16h
seg001:4078 var_14          = word ptr -14h
seg001:4078 var_12          = word ptr -12h
seg001:4078 var_10          = word ptr -10h
seg001:4078 var_E           = word ptr -0Eh
seg001:4078 var_C           = word ptr -0Ch
seg001:4078 var_A           = word ptr -0Ah
seg001:4078 var_8           = word ptr -8
seg001:4078 var_6           = word ptr -6
seg001:4078 var_4           = word ptr -4
seg001:4078 var_2           = word ptr -2
seg001:4078
seg001:4078                 push    bp
seg001:4079                 mov     bp, sp
seg001:407B                 sub     sp, 18h
seg001:407E                 push    si
seg001:407F                 sub     al, al
seg001:4081                 mov     byte_1F17F, al
seg001:4084                 mov     byte_1F16C, al
seg001:4087                 mov     ax, 1
seg001:408A                 push    ax
seg001:408B                 push    cs
seg001:408C                 call    near ptr sub_63F8
seg001:408F                 add     sp, 2
seg001:4092                 mov     [bp+var_14], 0
seg001:4097
seg001:4097 loc_5DD7:                               ; CODE XREF: sub_5DB8+3B␙j
seg001:4097                 mov     al, 30h ; '0'
seg001:4099                 mul     byte_1FBEA
seg001:409D                 mov     bx, ax
seg001:409F                 mov     si, [bp+var_14]
seg001:40A2                 mov     al, [bx+si-1830h]
seg001:40A6                 mov     bx, si
seg001:40A8                 mov     [bx+21C8h], al
seg001:40AC                 inc     [bp+var_14]
seg001:40AF                 cmp     [bp+var_14], 0Ch
seg001:40B3                 jl      short loc_5DD7
seg001:40B5                 mov     byte_212B4, 0AAh ; '¬'
seg001:40BA                 mov     ax, 7
seg001:40BD                 push    ax
seg001:40BE                 sub     ax, ax
seg001:40C0                 push    ax
seg001:40C1                 call    sub_C65B
seg001:40C6                 add     sp, 4
seg001:40C9                 mov     ax, 0Eh
seg001:40CC                 push    ax
seg001:40CD                 mov     ax, 51h ; 'Q'
seg001:40D0                 push    ax
seg001:40D1                 call    sub_C693
seg001:40D6                 add     sp, 4
seg001:40D9                 sub     ax, ax
seg001:40DB                 mov     [bp+var_12], ax
seg001:40DE                 push    ax
seg001:40DF                 mov     ax, 21C8h
seg001:40E2                 push    ax
seg001:40E3                 push    cs
seg001:40E4                 call    near ptr sub_3810
seg001:40E7                 add     sp, 4
seg001:40EA                 mov     [bp+var_12], ax
seg001:40ED                 mov     ax, 7
seg001:40F0                 push    ax
seg001:40F1                 sub     ax, ax
seg001:40F3                 push    ax
seg001:40F4                 call    sub_C65B
seg001:40F9                 add     sp, 4
seg001:40FC                 mov     ax, 1
seg001:40FF                 push    ax
seg001:4100                 mov     ax, 51h ; 'Q'
seg001:4103                 push    ax
seg001:4104                 call    sub_C693
seg001:4109                 add     sp, 4
seg001:410C                 push    [bp+var_12]
seg001:410F                 mov     ax, 21C8h
seg001:4112                 push    ax
seg001:4113                 push    cs
seg001:4114                 call    near ptr sub_3810
seg001:4117                 add     sp, 4
seg001:411A                 mov     [bp+var_12], ax
seg001:411D                 mov     ax, 7
seg001:4120                 push    ax
seg001:4121                 mov     ax, 4
seg001:4124                 push    ax
seg001:4125                 call    sub_C65B
seg001:412A                 add     sp, 4
seg001:412D                 mov     ax, 1Bh
seg001:4130                 push    ax
seg001:4131                 mov     ax, 51h ; 'Q'
seg001:4134                 push    ax
seg001:4135                 call    sub_C693
seg001:413A                 add     sp, 4
seg001:413D                 push    [bp+var_12]
seg001:4140                 mov     ax, 21C8h
seg001:4143                 push    ax
seg001:4144                 push    cs
seg001:4145                 call    near ptr sub_3810
seg001:4148                 add     sp, 4
seg001:414B                 mov     [bp+var_12], ax
seg001:414E                 cmp     byte_1FBE9, 0
seg001:4153                 jz      short loc_5E98
seg001:4155                 jmp     loc_61BC
seg001:4158 ; ---------------------------------------------------------------------------
seg001:4158
seg001:4158 loc_5E98:                               ; CODE XREF: sub_5DB8+DB␘j
seg001:4158                 mov     [bp+var_14], 0
seg001:415D                 jmp     loc_5F5D
seg001:4160 ; ---------------------------------------------------------------------------
seg001:4160
seg001:4160 loc_5EA0:                               ; CODE XREF: sub_5DB8+1AF␙j
seg001:4160                 mov     ax, 7
seg001:4163                 push    ax
seg001:4164                 sub     ax, ax
seg001:4166                 push    ax
seg001:4167                 call    sub_C65B
seg001:416C                 add     sp, 4
seg001:416F                 push    [bp+var_12]
seg001:4172                 mov     ax, 21C8h
seg001:4175                 push    ax
seg001:4176                 push    cs
seg001:4177                 call    near ptr sub_37BC
seg001:417A                 add     sp, 4
seg001:417D                 mov     [bp+var_12], ax
seg001:4180                 mov     ax, 3
seg001:4183                 push    ax
seg001:4184                 mov     ax, [bp+var_14]
seg001:4187                 shl     ax, 1
seg001:4189                 add     ax, 0Fh
seg001:418C                 push    ax
seg001:418D                 call    sub_C674
seg001:4192                 add     sp, 4
seg001:4195                 mov     byte_21263, 80h ; 'Ç'
seg001:419A                 sub     ax, ax
seg001:419C                 mov     [bp+var_16], ax
seg001:419F                 push    ax
seg001:41A0                 mov     ax, 2171h
seg001:41A3                 push    ax
seg001:41A4                 push    cs
seg001:41A5                 call    near ptr sub_3810
seg001:41A8                 add     sp, 4
seg001:41AB                 mov     [bp+var_16], ax
seg001:41AE                 mov     byte_21263, 0
seg001:41B3                 mov     al, byte_1FAA4
seg001:41B6                 sub     ah, ah
seg001:41B8                 cmp     [bp+var_14], ax
seg001:41BB                 jnb     short loc_5F5A
seg001:41BD                 sub     ax, ax
seg001:41BF                 push    ax
seg001:41C0                 call    far ptr sub_16A93
seg001:41C5                 add     sp, 2
seg001:41C8                 sub     ax, ax
seg001:41CA                 push    ax
seg001:41CB                 mov     ax, 1Bh
seg001:41CE                 imul    [bp+var_14]
seg001:41D1                 add     ax, 0EA04h
seg001:41D4                 push    ax
seg001:41D5                 mov     ax, [bp+var_14]
seg001:41D8                 mov     cl, 4
seg001:41DA                 shl     ax, cl
seg001:41DC                 add     ax, 75h ; 'u'
seg001:41DF                 push    ax
seg001:41E0                 mov     ax, 6Dh ; 'm'
seg001:41E3                 push    ax
seg001:41E4                 push    cs
seg001:41E5                 call    near ptr sub_6A68
seg001:41E8                 add     sp, 8
seg001:41EB                 mov     ax, 4
seg001:41EE                 push    ax
seg001:41EF                 call    far ptr sub_16A93
seg001:41F4                 add     sp, 2
seg001:41F7                 sub     ax, ax
seg001:41F9                 push    ax
seg001:41FA                 mov     ax, 1Bh
seg001:41FD                 imul    [bp+var_14]
seg001:4200                 add     ax, 0EA0Eh
seg001:4203                 push    ax
seg001:4204                 mov     ax, [bp+var_14]
seg001:4207                 mov     cl, 4
seg001:4209                 shl     ax, cl
seg001:420B                 add     ax, 75h ; 'u'
seg001:420E                 push    ax
seg001:420F                 mov     ax, 0D7h ; '+'
seg001:4212                 push    ax
seg001:4213                 push    cs
seg001:4214                 call    near ptr sub_6A68
seg001:4217                 add     sp, 8
seg001:421A
seg001:421A loc_5F5A:                               ; CODE XREF: sub_5DB8+143␘j
seg001:421A                 inc     [bp+var_14]
seg001:421D
seg001:421D loc_5F5D:                               ; CODE XREF: sub_5DB8+E5␘j
seg001:421D                 mov     al, byte_1FBE8
seg001:4220                 sub     ah, ah
seg001:4222                 cmp     [bp+var_14], ax
seg001:4225                 jnb     short loc_5F6A
seg001:4227                 jmp     loc_5EA0
seg001:422A ; ---------------------------------------------------------------------------
seg001:422A
seg001:422A loc_5F6A:                               ; CODE XREF: sub_5DB8+1AD␘j
seg001:422A                 mov     [bp+var_18], 0
seg001:422F                 mov     al, byte_1FAA4
seg001:4232                 mov     [bp+var_14], ax
seg001:4235                 jmp     short loc_5F8F
seg001:4235 ; ---------------------------------------------------------------------------
seg001:4237                 align 2
seg001:4238
seg001:4238 loc_5F78:                               ; CODE XREF: sub_5DB8+1DF␙j
seg001:4238                 mov     ax, 1Bh
seg001:423B                 imul    [bp+var_14]
seg001:423E                 mov     bx, ax
seg001:4240                 cmp     byte ptr [bx-15FFh], 0
seg001:4245                 jz      short loc_5F8C
seg001:4247                 mov     [bp+var_18], 1
seg001:424C
seg001:424C loc_5F8C:                               ; CODE XREF: sub_5DB8+1CD␘j
seg001:424C                 inc     [bp+var_14]
seg001:424F
seg001:424F loc_5F8F:                               ; CODE XREF: sub_5DB8+1BD␘j
seg001:424F                 mov     al, byte_1FBE8
seg001:4252                 sub     ah, ah
seg001:4254                 cmp     [bp+var_14], ax
seg001:4257                 jbe     short loc_5F78
seg001:4259                 cmp     [bp+var_18], 0
seg001:425D                 jz      short loc_5FA8
seg001:425F                 cmp     byte_1FAA4, al
seg001:4263                 jz      short loc_5FA8
seg001:4265                 jmp     loc_63D2
seg001:4268 ; ---------------------------------------------------------------------------
seg001:4268
seg001:4268 loc_5FA8:                               ; CODE XREF: sub_5DB8+1E5␘j
seg001:4268                                         ; sub_5DB8+1EB␘j
seg001:4268                 sub     ax, ax
seg001:426A                 mov     [bp+var_14], ax
seg001:426D                 mov     [bp+var_18], ax
seg001:4270                 mov     ah, byte_2DAF3
seg001:4274                 sub     al, al
seg001:4276                 mov     cl, byte_2DAF2
seg001:427A                 sub     ch, ch
seg001:427C                 add     ax, cx
seg001:427E                 mov     [bp+var_4], ax
seg001:4281                 mov     [bp+var_2], 0
seg001:4286                 mov     ah, byte_2DAF5
seg001:428A                 sub     al, al
seg001:428C                 mov     cl, byte_2DAF4
seg001:4290                 add     ax, cx
seg001:4292                 mov     [bp+var_8], ax
seg001:4295                 mov     [bp+var_6], 0
seg001:429A                 mov     dx, ax
seg001:429C                 sub     ax, ax
seg001:429E                 add     [bp+var_4], ax
seg001:42A1                 adc     [bp+var_2], dx
seg001:42A4                 mov     ah, byte_2DB0E
seg001:42A8                 sub     al, al
seg001:42AA                 mov     cl, byte_2DB0D
seg001:42AE                 add     ax, cx
seg001:42B0                 mov     [bp+var_8], ax
seg001:42B3                 mov     [bp+var_6], 0
seg001:42B8                 mov     ah, byte_2DB10
seg001:42BC                 sub     al, al
seg001:42BE                 mov     cl, byte_2DB0F
seg001:42C2                 add     ax, cx
seg001:42C4                 mov     [bp+var_C], ax
seg001:42C7                 mov     [bp+var_A], 0
seg001:42CC                 mov     dx, ax
seg001:42CE                 sub     ax, ax
seg001:42D0                 add     [bp+var_8], ax
seg001:42D3                 adc     [bp+var_6], dx
seg001:42D6                 mov     ax, [bp+var_4]
seg001:42D9                 mov     dx, [bp+var_2]
seg001:42DC                 cmp     [bp+var_8], ax
seg001:42DF                 jnz     short loc_602B
seg001:42E1                 cmp     [bp+var_6], dx
seg001:42E4                 jnz     short loc_602B
seg001:42E6                 mov     [bp+var_18], 1
seg001:42EB
seg001:42EB loc_602B:                               ; CODE XREF: sub_5DB8+267␘j
seg001:42EB                                         ; sub_5DB8+26C␘j
seg001:42EB                 mov     ax, [bp+var_4]
seg001:42EE                 mov     dx, [bp+var_2]
seg001:42F1                 cmp     [bp+var_6], dx
seg001:42F4                 jl      short loc_6053
seg001:42F6                 jg      short loc_603D
seg001:42F8                 cmp     [bp+var_8], ax
seg001:42FB                 jbe     short loc_6053
seg001:42FD
seg001:42FD loc_603D:                               ; CODE XREF: sub_5DB8+27E␘j
seg001:42FD                 mov     [bp+var_18], 0
seg001:4302                 mov     [bp+var_14], 1
seg001:4307                 mov     ax, [bp+var_8]
seg001:430A                 mov     dx, [bp+var_6]
seg001:430D                 mov     [bp+var_4], ax
seg001:4310                 mov     [bp+var_2], dx
seg001:4313
seg001:4313 loc_6053:                               ; CODE XREF: sub_5DB8+27C␘j
seg001:4313                                         ; sub_5DB8+283␘j
seg001:4313                 mov     ah, byte_2DB29
seg001:4317                 sub     al, al
seg001:4319                 mov     cl, byte_2DB28
seg001:431D                 sub     ch, ch
seg001:431F                 add     ax, cx
seg001:4321                 mov     [bp+var_8], ax
seg001:4324                 mov     [bp+var_6], 0
seg001:4329                 mov     ah, byte_2DB2B
seg001:432D                 sub     al, al
seg001:432F                 mov     cl, byte_2DB2A
seg001:4333                 add     ax, cx
seg001:4335                 mov     [bp+var_C], ax
seg001:4338                 mov     [bp+var_A], 0
seg001:433D                 mov     dx, ax
seg001:433F                 sub     ax, ax
seg001:4341                 add     [bp+var_8], ax
seg001:4344                 adc     [bp+var_6], dx
seg001:4347                 mov     ax, [bp+var_4]
seg001:434A                 mov     dx, [bp+var_2]
seg001:434D                 cmp     [bp+var_8], ax
seg001:4350                 jnz     short loc_609C
seg001:4352                 cmp     [bp+var_6], dx
seg001:4355                 jnz     short loc_609C
seg001:4357                 mov     [bp+var_18], 1
seg001:435C
seg001:435C loc_609C:                               ; CODE XREF: sub_5DB8+2D8␘j
seg001:435C                                         ; sub_5DB8+2DD␘j
seg001:435C                 mov     ax, [bp+var_4]
seg001:435F                 mov     dx, [bp+var_2]
seg001:4362                 cmp     [bp+var_6], dx
seg001:4365                 jl      short loc_60C4
seg001:4367                 jg      short loc_60AE
seg001:4369                 cmp     [bp+var_8], ax
seg001:436C                 jbe     short loc_60C4
seg001:436E
seg001:436E loc_60AE:                               ; CODE XREF: sub_5DB8+2EF␘j
seg001:436E                 mov     [bp+var_18], 0
seg001:4373                 mov     [bp+var_14], 2
seg001:4378                 mov     ax, [bp+var_8]
seg001:437B                 mov     dx, [bp+var_6]
seg001:437E                 mov     [bp+var_4], ax
seg001:4381                 mov     [bp+var_2], dx
seg001:4384
seg001:4384 loc_60C4:                               ; CODE XREF: sub_5DB8+2ED␘j
seg001:4384                                         ; sub_5DB8+2F4␘j
seg001:4384                 mov     ah, byte_2DB44
seg001:4388                 sub     al, al
seg001:438A                 mov     cl, byte_2DB43
seg001:438E                 sub     ch, ch
seg001:4390                 add     ax, cx
seg001:4392                 mov     [bp+var_8], ax
seg001:4395                 mov     [bp+var_6], 0
seg001:439A                 mov     ah, byte_2DB46
seg001:439E                 sub     al, al
seg001:43A0                 mov     cl, byte_2DB45
seg001:43A4                 add     ax, cx
seg001:43A6                 mov     [bp+var_C], ax
seg001:43A9                 mov     [bp+var_A], 0
seg001:43AE                 mov     dx, ax
seg001:43B0                 sub     ax, ax
seg001:43B2                 add     [bp+var_8], ax
seg001:43B5                 adc     [bp+var_6], dx
seg001:43B8                 mov     ax, [bp+var_4]
seg001:43BB                 mov     dx, [bp+var_2]
seg001:43BE                 cmp     [bp+var_8], ax
seg001:43C1                 jnz     short loc_610D
seg001:43C3                 cmp     [bp+var_6], dx
seg001:43C6                 jnz     short loc_610D
seg001:43C8                 mov     [bp+var_18], 1
seg001:43CD
seg001:43CD loc_610D:                               ; CODE XREF: sub_5DB8+349␘j
seg001:43CD                                         ; sub_5DB8+34E␘j
seg001:43CD                 mov     ax, [bp+var_4]
seg001:43D0                 mov     dx, [bp+var_2]
seg001:43D3                 cmp     [bp+var_6], dx
seg001:43D6                 jl      short loc_6135
seg001:43D8                 jg      short loc_611F
seg001:43DA                 cmp     [bp+var_8], ax
seg001:43DD                 jbe     short loc_6135
seg001:43DF
seg001:43DF loc_611F:                               ; CODE XREF: sub_5DB8+360␘j
seg001:43DF                 mov     [bp+var_18], 0
seg001:43E4                 mov     [bp+var_14], 3
seg001:43E9                 mov     ax, [bp+var_8]
seg001:43EC                 mov     dx, [bp+var_6]
seg001:43EF                 mov     [bp+var_4], ax
seg001:43F2                 mov     [bp+var_2], dx
seg001:43F5
seg001:43F5 loc_6135:                               ; CODE XREF: sub_5DB8+35E␘j
seg001:43F5                                         ; sub_5DB8+365␘j
seg001:43F5                 mov     al, byte ptr [bp+var_14]
seg001:43F8                 add     al, 31h ; '1'
seg001:43FA                 mov     byte_214BE, al
seg001:43FD                 mov     byte_2149B, al
seg001:4400                 sub     ax, ax
seg001:4402                 push    ax
seg001:4403                 mov     ax, 0Fh
seg001:4406                 push    ax
seg001:4407                 call    sub_C65B
seg001:440C                 add     sp, 4
seg001:440F                 cmp     [bp+var_18], 0
seg001:4413                 jz      short loc_6162
seg001:4415                 sub     ax, ax
seg001:4417                 mov     [bp+var_12], ax
seg001:441A                 push    ax
seg001:441B                 mov     ax, 23E9h
seg001:441E                 jmp     loc_63C7
seg001:441E ; ---------------------------------------------------------------------------
seg001:4421                 align 2
seg001:4422
seg001:4422 loc_6162:                               ; CODE XREF: sub_5DB8+39B␘j
seg001:4422                 mov     [bp+var_18], 0
seg001:4427                 mov     [bp+var_14], 1
seg001:442C                 jmp     short loc_6185
seg001:442E ; ---------------------------------------------------------------------------
seg001:442E
seg001:442E loc_616E:                               ; CODE XREF: sub_5DB8+3D5␙j
seg001:442E                 mov     ax, 1Bh
seg001:4431                 imul    [bp+var_14]
seg001:4434                 mov     bx, ax
seg001:4436                 cmp     byte ptr [bx-15FFh], 0
seg001:443B                 jz      short loc_6182
seg001:443D                 mov     [bp+var_18], 1
seg001:4442
seg001:4442 loc_6182:                               ; CODE XREF: sub_5DB8+3C3␘j
seg001:4442                 inc     [bp+var_14]
seg001:4445
seg001:4445 loc_6185:                               ; CODE XREF: sub_5DB8+3B4␘j
seg001:4445                 mov     al, byte_1FBE8
seg001:4448                 sub     ah, ah
seg001:444A                 cmp     [bp+var_14], ax
seg001:444D                 jbe     short loc_616E
seg001:444F                 cmp     [bp+var_18], 0
seg001:4453                 jz      short loc_61B0
seg001:4455                 mov     al, byte_1FBEB
seg001:4458                 dec     ax
seg001:4459                 mov     cl, byte_1FBEA
seg001:445D                 sub     ch, ch
seg001:445F                 cmp     ax, cx
seg001:4461                 jbe     short loc_61B0
seg001:4463                 sub     ax, ax
seg001:4465                 mov     [bp+var_12], ax
seg001:4468                 push    ax
seg001:4469                 mov     ax, 23B2h
seg001:446C                 jmp     loc_63C7
seg001:446C ; ---------------------------------------------------------------------------
seg001:446F                 align 2
seg001:4470
seg001:4470 loc_61B0:                               ; CODE XREF: sub_5DB8+3DB␘j
seg001:4470                                         ; sub_5DB8+3E9␘j
seg001:4470                 sub     ax, ax
seg001:4472                 mov     [bp+var_12], ax
seg001:4475                 push    ax
seg001:4476                 mov     ax, 23D5h
seg001:4479                 jmp     loc_63C7
seg001:447C ; ---------------------------------------------------------------------------
seg001:447C
seg001:447C loc_61BC:                               ; CODE XREF: sub_5DB8+DD␘j
seg001:447C                 mov     ax, 7
seg001:447F                 push    ax
seg001:4480                 sub     ax, ax
seg001:4482                 push    ax
seg001:4483                 call    sub_C65B
seg001:4488                 add     sp, 4
seg001:448B                 mov     al, 80h ; 'Ç'
seg001:448D                 mov     byte_21263, al
seg001:4490                 mov     byte_2129A, al
seg001:4493                 mov     byte_21285, al
seg001:4496                 sub     ax, ax
seg001:4498                 mov     [bp+var_12], ax
seg001:449B                 push    ax
seg001:449C                 mov     ax, 2169h
seg001:449F                 push    ax
seg001:44A0                 push    cs
seg001:44A1                 call    near ptr sub_37BC
seg001:44A4                 add     sp, 4
seg001:44A7                 mov     [bp+var_12], ax
seg001:44AA                 sub     al, al
seg001:44AC                 mov     byte_21263, al
seg001:44AF                 mov     byte_2129A, al
seg001:44B2                 mov     byte_21285, al
seg001:44B5                 sub     ax, ax
seg001:44B7                 push    ax
seg001:44B8                 call    far ptr sub_16A93
seg001:44BD                 add     sp, 2
seg001:44C0                 sub     ax, ax
seg001:44C2                 push    ax
seg001:44C3                 mov     ax, 0EA04h
seg001:44C6                 push    ax
seg001:44C7                 mov     ax, 75h ; 'u'
seg001:44CA                 push    ax
seg001:44CB                 mov     ax, 6Dh ; 'm'
seg001:44CE                 push    ax
seg001:44CF                 push    cs
seg001:44D0                 call    near ptr sub_6A68
seg001:44D3                 add     sp, 8
seg001:44D6                 sub     ax, ax
seg001:44D8                 push    ax
seg001:44D9                 mov     ax, 0EA1Fh
seg001:44DC                 push    ax
seg001:44DD                 mov     ax, 85h ; 'à'
seg001:44E0                 push    ax
seg001:44E1                 mov     ax, 6Dh ; 'm'
seg001:44E4                 push    ax
seg001:44E5                 push    cs
seg001:44E6                 call    near ptr sub_6A68
seg001:44E9                 add     sp, 8
seg001:44EC                 sub     ax, ax
seg001:44EE                 push    ax
seg001:44EF                 mov     ax, 0EA3Ah
seg001:44F2                 push    ax
seg001:44F3                 mov     ax, 95h ; 'ò'
seg001:44F6                 push    ax
seg001:44F7                 mov     ax, 6Dh ; 'm'
seg001:44FA                 push    ax
seg001:44FB                 push    cs
seg001:44FC                 call    near ptr sub_6A68
seg001:44FF                 add     sp, 8
seg001:4502                 mov     ax, 4
seg001:4505                 push    ax
seg001:4506                 call    far ptr sub_16A93
seg001:450B                 add     sp, 2
seg001:450E                 sub     ax, ax
seg001:4510                 push    ax
seg001:4511                 mov     ax, 0EA0Eh
seg001:4514                 push    ax
seg001:4515                 mov     ax, 75h ; 'u'
seg001:4518                 push    ax
seg001:4519                 mov     ax, 0D7h ; '+'
seg001:451C                 push    ax
seg001:451D                 push    cs
seg001:451E                 call    near ptr sub_6A68
seg001:4521                 add     sp, 8
seg001:4524                 sub     ax, ax
seg001:4526                 push    ax
seg001:4527                 mov     ax, 0EA29h
seg001:452A                 push    ax
seg001:452B                 mov     ax, 85h ; 'à'
seg001:452E                 push    ax
seg001:452F                 mov     ax, 0D7h ; '+'
seg001:4532                 push    ax
seg001:4533                 push    cs
seg001:4534                 call    near ptr sub_6A68
seg001:4537                 add     sp, 8
seg001:453A                 sub     ax, ax
seg001:453C                 push    ax
seg001:453D                 mov     ax, 0EA44h
seg001:4540                 push    ax
seg001:4541                 mov     ax, 95h ; 'ò'
seg001:4544                 push    ax
seg001:4545                 mov     ax, 0D7h ; '+'
seg001:4548                 push    ax
seg001:4549                 push    cs
seg001:454A                 call    near ptr sub_6A68
seg001:454D                 add     sp, 8
seg001:4550                 mov     ah, byte_2DAF3
seg001:4554                 sub     al, al
seg001:4556                 mov     cl, byte_2DAF2
seg001:455A                 sub     ch, ch
seg001:455C                 add     ax, cx
seg001:455E                 mov     [bp+var_4], ax
seg001:4561                 mov     [bp+var_2], 0
seg001:4566                 mov     ah, byte_2DAF5
seg001:456A                 sub     al, al
seg001:456C                 mov     cl, byte_2DAF4
seg001:4570                 add     ax, cx
seg001:4572                 mov     [bp+var_8], ax
seg001:4575                 mov     [bp+var_6], 0
seg001:457A                 mov     dx, ax
seg001:457C                 sub     ax, ax
seg001:457E                 add     [bp+var_4], ax
seg001:4581                 adc     [bp+var_2], dx
seg001:4584                 mov     ah, byte_2DB0E
seg001:4588                 sub     al, al
seg001:458A                 mov     cl, byte_2DB0D
seg001:458E                 add     ax, cx
seg001:4590                 mov     [bp+var_8], ax
seg001:4593                 mov     [bp+var_6], 0
seg001:4598                 mov     ah, byte_2DB10
seg001:459C                 sub     al, al
seg001:459E                 mov     cl, byte_2DB0F
seg001:45A2                 add     ax, cx
seg001:45A4                 mov     [bp+var_C], ax
seg001:45A7                 mov     [bp+var_A], 0
seg001:45AC                 mov     dx, ax
seg001:45AE                 sub     ax, ax
seg001:45B0                 add     [bp+var_8], ax
seg001:45B3                 adc     [bp+var_6], dx
seg001:45B6                 mov     ah, byte_2DB29
seg001:45BA                 sub     al, al
seg001:45BC                 mov     cl, byte_2DB28
seg001:45C0                 add     ax, cx
seg001:45C2                 mov     [bp+var_C], ax
seg001:45C5                 mov     [bp+var_A], 0
seg001:45CA                 mov     ah, byte_2DB46
seg001:45CE                 sub     al, al
seg001:45D0                 mov     cl, byte_2DB45
seg001:45D4                 add     ax, cx
seg001:45D6                 mov     [bp+var_10], ax
seg001:45D9                 mov     [bp+var_E], 0
seg001:45DE                 mov     dx, ax
seg001:45E0                 sub     ax, ax
seg001:45E2                 add     [bp+var_C], ax
seg001:45E5                 adc     [bp+var_A], dx
seg001:45E8                 push    ax
seg001:45E9                 mov     ax, 0Fh
seg001:45EC                 push    ax
seg001:45ED                 call    sub_C65B
seg001:45F2                 add     sp, 4
seg001:45F5                 mov     al, byte_1FBEB
seg001:45F8                 sub     ah, ah
seg001:45FA                 dec     ax
seg001:45FB                 mov     cl, byte_1FBEA
seg001:45FF                 sub     ch, ch
seg001:4601                 cmp     ax, cx
seg001:4603                 jbe     short loc_6388
seg001:4605                 cmp     byte_1FABE, ch
seg001:4609                 jz      short loc_63BE
seg001:460B                 mov     ax, [bp+var_8]
seg001:460E                 mov     dx, [bp+var_6]
seg001:4611                 cmp     [bp+var_2], dx
seg001:4614                 jl      short loc_637C
seg001:4616                 jg      short loc_635D
seg001:4618                 cmp     [bp+var_4], ax
seg001:461B                 jb      short loc_637C
seg001:461D
seg001:461D loc_635D:                               ; CODE XREF: sub_5DB8+59E␘j
seg001:461D                 mov     ax, [bp+var_C]
seg001:4620                 mov     dx, [bp+var_A]
seg001:4623                 cmp     [bp+var_2], dx
seg001:4626                 jl      short loc_637C
seg001:4628                 jg      short loc_636F
seg001:462A                 cmp     [bp+var_4], ax
seg001:462D                 jb      short loc_637C
seg001:462F
seg001:462F loc_636F:                               ; CODE XREF: sub_5DB8+5B0␘j
seg001:462F                 sub     ax, ax
seg001:4631                 mov     [bp+var_12], ax
seg001:4634                 push    ax
seg001:4635                 mov     ax, 2376h
seg001:4638                 jmp     short loc_63C7
seg001:4638 ; ---------------------------------------------------------------------------
seg001:463A                 align 4
seg001:463C
seg001:463C loc_637C:                               ; CODE XREF: sub_5DB8+59C␘j
seg001:463C                                         ; sub_5DB8+5A3␘j ...
seg001:463C                 sub     ax, ax
seg001:463E                 mov     [bp+var_12], ax
seg001:4641                 push    ax
seg001:4642                 mov     ax, 2395h
seg001:4645                 jmp     short loc_63C7
seg001:4645 ; ---------------------------------------------------------------------------
seg001:4647                 align 2
seg001:4648
seg001:4648 loc_6388:                               ; CODE XREF: sub_5DB8+58B␘j
seg001:4648                 cmp     byte_1FABE, 0
seg001:464D                 jz      short loc_63BE
seg001:464F                 mov     ax, [bp+var_8]
seg001:4652                 mov     dx, [bp+var_6]
seg001:4655                 cmp     [bp+var_2], dx
seg001:4658                 jl      short loc_63BE
seg001:465A                 jg      short loc_63A1
seg001:465C                 cmp     [bp+var_4], ax
seg001:465F                 jb      short loc_63BE
seg001:4661
seg001:4661 loc_63A1:                               ; CODE XREF: sub_5DB8+5E2␘j
seg001:4661                 mov     ax, [bp+var_C]
seg001:4664                 mov     dx, [bp+var_A]
seg001:4667                 cmp     [bp+var_2], dx
seg001:466A                 jl      short loc_63BE
seg001:466C                 jg      short loc_63B3
seg001:466E                 cmp     [bp+var_4], ax
seg001:4671                 jb      short loc_63BE
seg001:4673
seg001:4673 loc_63B3:                               ; CODE XREF: sub_5DB8+5F4␘j
seg001:4673                 sub     ax, ax
seg001:4675                 mov     [bp+var_12], ax
seg001:4678                 push    ax
seg001:4679                 mov     ax, 2357h
seg001:467C                 jmp     short loc_63C7
seg001:467E ; ---------------------------------------------------------------------------
seg001:467E
seg001:467E loc_63BE:                               ; CODE XREF: sub_5DB8+591␘j
seg001:467E                                         ; sub_5DB8+5D5␘j ...
seg001:467E                 sub     ax, ax
seg001:4680                 mov     [bp+var_12], ax
seg001:4683                 push    ax
seg001:4684                 mov     ax, 2333h
seg001:4687
seg001:4687 loc_63C7:                               ; CODE XREF: sub_5DB8+3A6␘j
seg001:4687                                         ; sub_5DB8+3F4␘j ...
seg001:4687                 push    ax
seg001:4688                 push    cs
seg001:4689                 call    near ptr sub_37BC
seg001:468C                 add     sp, 4
seg001:468F                 mov     [bp+var_12], ax
seg001:4692
seg001:4692 loc_63D2:                               ; CODE XREF: sub_5DB8+1ED␘j
seg001:4692                 sub     ax, ax
seg001:4694                 mov     word_1F17A, ax
seg001:4697                 push    ax
seg001:4698                 call    far ptr sub_16BB0
seg001:469D                 add     sp, 2
seg001:46A0                 push    cs
seg001:46A1                 call    near ptr sub_391C
seg001:46A4                 mov     byte_28147, 0
seg001:46A9                 sub     ax, ax
seg001:46AB                 push    ax
seg001:46AC                 push    cs
seg001:46AD                 call    near ptr sub_38C8
seg001:46B0                 add     sp, 2
seg001:46B3                 pop     si
seg001:46B4                 mov     sp, bp
seg001:46B6                 pop     bp
seg001:46B7                 retf
seg001:46B7 sub_5DB8        endp
seg001:46B7
seg001:46B8
