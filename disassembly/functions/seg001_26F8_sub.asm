seg001:26F8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:26F8
seg001:26F8 ; Attributes: bp-based frame
seg001:26F8
seg001:26F8 sub_4438        proc far                ; CODE XREF: sub_0+16E␘P
seg001:26F8                                         ; sub_0+1D6␘P
seg001:26F8
seg001:26F8 var_2           = word ptr -2
seg001:26F8
seg001:26F8                 push    bp
seg001:26F9                 mov     bp, sp
seg001:26FB                 sub     sp, 2
seg001:26FE
seg001:26FE loc_443E:                               ; CODE XREF: sub_4438+2E␙j
seg001:26FE                 mov     ax, 13h
seg001:2701                 push    ax
seg001:2702                 call    sub_1688
seg001:2707                 add     sp, 2
seg001:270A                 cmp     byte_209D6, 42h ; 'B'
seg001:270F                 ja      short loc_445D
seg001:2711                 mov     ax, 10h
seg001:2714                 push    ax
seg001:2715                 call    sub_1688
seg001:271A                 add     sp, 2
seg001:271D
seg001:271D loc_445D:                               ; CODE XREF: sub_4438+17␘j
seg001:271D                 push    cs
seg001:271E                 call    near ptr sub_45D0
seg001:2721                 mov     [bp+var_2], ax
seg001:2724                 or      ax, ax
seg001:2726                 jnz     short loc_443E
seg001:2728                 push    cs
seg001:2729                 call    near ptr sub_4C18
seg001:272C                 mov     sp, bp
seg001:272E                 pop     bp
seg001:272F                 retf
seg001:272F sub_4438        endp
seg001:272F
seg001:2730
