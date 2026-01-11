seg001:3708 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:3708
seg001:3708 ; Attributes: bp-based frame
seg001:3708
seg001:3708 sub_5448        proc far                ; CODE XREF: sub_5340+5E␘p
seg001:3708
seg001:3708 var_4           = word ptr -4
seg001:3708 var_2           = word ptr -2
seg001:3708 arg_0           = word ptr  6
seg001:3708
seg001:3708                 push    bp
seg001:3709                 mov     bp, sp
seg001:370B                 sub     sp, 4
seg001:370E                 mov     ax, [bp+arg_0]
seg001:3711                 mov     [bp+var_2], ax
seg001:3714                 or      ax, ax
seg001:3716                 jnz     short loc_5464
seg001:3718                 mov     al, byte_1FBE7
seg001:371B                 sub     ah, ah
seg001:371D                 dec     ax
seg001:371E                 mov     [bp+arg_0], ax
seg001:3721                 jmp     short loc_5467
seg001:3721 ; ---------------------------------------------------------------------------
seg001:3723                 align 2
seg001:3724
seg001:3724 loc_5464:                               ; CODE XREF: sub_5448+E␘j
seg001:3724                 dec     [bp+arg_0]
seg001:3727
seg001:3727 loc_5467:                               ; CODE XREF: sub_5448+19␘j
seg001:3727                                         ; sub_5448+55␙j
seg001:3727                 mov     ax, 0AEAh
seg001:372A                 push    ax
seg001:372B                 mov     ax, 0ADAh
seg001:372E                 push    ax
seg001:372F                 push    [bp+arg_0]
seg001:3732                 push    cs
seg001:3733                 call    near ptr sub_48D0
seg001:3736                 add     sp, 6
seg001:3739                 mov     [bp+var_4], ax
seg001:373C                 or      ax, ax
seg001:373E                 jz      short loc_549F
seg001:3740                 cmp     [bp+arg_0], 0
seg001:3744                 jnz     short loc_5492
seg001:3746                 mov     al, byte_1FBE7
seg001:3749                 sub     ah, ah
seg001:374B                 dec     ax
seg001:374C                 mov     [bp+arg_0], ax
seg001:374F                 jmp     short loc_5495
seg001:374F ; ---------------------------------------------------------------------------
seg001:3751                 align 2
seg001:3752
seg001:3752 loc_5492:                               ; CODE XREF: sub_5448+3C␘j
seg001:3752                 dec     [bp+arg_0]
seg001:3755
seg001:3755 loc_5495:                               ; CODE XREF: sub_5448+47␘j
seg001:3755                 mov     ax, [bp+var_2]
seg001:3758                 mov     [bp+arg_0], ax
seg001:375B                 or      ax, ax
seg001:375D                 jz      short loc_5467
seg001:375F
seg001:375F loc_549F:                               ; CODE XREF: sub_5448+36␘j
seg001:375F                 mov     ax, [bp+arg_0]
seg001:3762                 mov     sp, bp
seg001:3764                 pop     bp
seg001:3765                 retf
seg001:3765 sub_5448        endp
seg001:3765
seg001:3766
