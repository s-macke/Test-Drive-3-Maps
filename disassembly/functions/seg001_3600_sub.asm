seg001:3600 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:3600
seg001:3600 ; Attributes: bp-based frame
seg001:3600
seg001:3600 sub_5340        proc far                ; CODE XREF: sub_0+1E2␘P
seg001:3600
seg001:3600 var_A           = word ptr -0Ah
seg001:3600 var_6           = word ptr -6
seg001:3600 var_4           = word ptr -4
seg001:3600 var_2           = word ptr -2
seg001:3600
seg001:3600                 push    bp
seg001:3601                 mov     bp, sp
seg001:3603                 sub     sp, 0Ah
seg001:3606                 mov     byte_2A6B6, 0
seg001:360B                 mov     ax, word_1FBE2
seg001:360E                 mov     [bp+var_4], ax
seg001:3611                 mov     [bp+var_2], ax
seg001:3614                 push    cs
seg001:3615                 call    near ptr sub_54A6
seg001:3618                 sub     al, al
seg001:361A                 mov     byte_28147, al
seg001:361D                 sub     ah, ah
seg001:361F                 mov     [bp+var_6], ax
seg001:3622
seg001:3622 loc_5362:                               ; CODE XREF: sub_5340+44␙j
seg001:3622                                         ; sub_5340+6D␙j ...
seg001:3622                 cmp     [bp+var_6], 0
seg001:3626                 jnz     short loc_53D2
seg001:3628                 mov     ax, 4
seg001:362B                 push    ax
seg001:362C                 call    sub_16A5D
seg001:3631                 add     sp, 2
seg001:3634                 lea     ax, [bp+var_A]
seg001:3637                 push    ax
seg001:3638                 call    sub_EC6
seg001:363D                 add     sp, 2
seg001:3640                 cmp     [bp+var_A], 0
seg001:3644                 jz      short loc_5362
seg001:3646                 mov     ax, [bp+var_A]
seg001:3649                 cmp     ax, 0Dh
seg001:364C                 jz      short loc_53CA
seg001:364E                 cmp     ax, 92h ; 'Æ'
seg001:3651                 jz      short loc_539A
seg001:3653                 cmp     ax, 98h ; 'ÿ'
seg001:3656                 jz      short loc_53C0
seg001:3658                 jmp     short loc_53A7
seg001:365A ; ---------------------------------------------------------------------------
seg001:365A
seg001:365A loc_539A:                               ; CODE XREF: sub_5340+51␘j
seg001:365A                 push    [bp+var_4]
seg001:365D                 push    cs
seg001:365E                 call    near ptr sub_5448
seg001:3661
seg001:3661 loc_53A1:                               ; CODE XREF: sub_5340+87␙j
seg001:3661                 add     sp, 2
seg001:3664                 mov     [bp+var_4], ax
seg001:3667
seg001:3667 loc_53A7:                               ; CODE XREF: sub_5340+58␘j
seg001:3667                                         ; sub_5340+8F␙j
seg001:3667                 mov     ax, word_1FBE2
seg001:366A                 cmp     [bp+var_4], ax
seg001:366D                 jz      short loc_5362
seg001:366F                 mov     ax, [bp+var_4]
seg001:3672                 mov     word_1FBE2, ax
seg001:3675                 push    cs
seg001:3676                 call    near ptr sub_54A6
seg001:3679                 mov     byte_28147, 0
seg001:367E                 jmp     short loc_5362
seg001:3680 ; ---------------------------------------------------------------------------
seg001:3680
seg001:3680 loc_53C0:                               ; CODE XREF: sub_5340+56␘j
seg001:3680                 push    [bp+var_4]
seg001:3683                 push    cs
seg001:3684                 call    near ptr sub_53E8
seg001:3687                 jmp     short loc_53A1
seg001:3687 ; ---------------------------------------------------------------------------
seg001:3689                 align 2
seg001:368A
seg001:368A loc_53CA:                               ; CODE XREF: sub_5340+4C␘j
seg001:368A                 mov     [bp+var_6], 1
seg001:368F                 jmp     short loc_53A7
seg001:368F ; ---------------------------------------------------------------------------
seg001:3691                 align 2
seg001:3692
seg001:3692 loc_53D2:                               ; CODE XREF: sub_5340+26␘j
seg001:3692                 mov     ax, word_1FBE2
seg001:3695                 cmp     [bp+var_2], ax
seg001:3698                 jz      short loc_53E3
seg001:369A                 push    cs
seg001:369B                 call    near ptr sub_4470
seg001:369E                 mov     byte_1F168, 0
seg001:36A3
seg001:36A3 loc_53E3:                               ; CODE XREF: sub_5340+98␘j
seg001:36A3                 mov     sp, bp
seg001:36A5                 pop     bp
seg001:36A6                 retf
seg001:36A6 sub_5340        endp
seg001:36A6
seg001:36A6 ; ---------------------------------------------------------------------------
seg001:36A7                 align 2
seg001:36A8
