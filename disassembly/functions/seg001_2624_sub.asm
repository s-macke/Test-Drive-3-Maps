seg001:2624 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:2624
seg001:2624 ; Attributes: bp-based frame
seg001:2624
seg001:2624 sub_4364        proc far                ; CODE XREF: sub_3BFC+377␘p
seg001:2624                                         ; sub_3BFC+38C␘p
seg001:2624
seg001:2624 var_4           = word ptr -4
seg001:2624 var_2           = word ptr -2
seg001:2624 arg_0           = word ptr  6
seg001:2624 arg_2           = word ptr  8
seg001:2624
seg001:2624                 push    bp
seg001:2625                 mov     bp, sp
seg001:2627                 sub     sp, 4
seg001:262A                 mov     ax, [bp+arg_0]
seg001:262D                 cwd
seg001:262E                 mov     cx, 6
seg001:2631                 idiv    cx
seg001:2633                 mov     cl, 6
seg001:2635                 shl     ax, cl
seg001:2637                 add     ax, 80h ; 'Ç'
seg001:263A                 mov     [bp+var_2], ax
seg001:263D                 mov     ax, [bp+arg_0]
seg001:2640                 cwd
seg001:2641                 mov     cx, 6
seg001:2644                 idiv    cx
seg001:2646                 mov     ax, dx
seg001:2648                 mov     cx, 18h
seg001:264B                 imul    cx
seg001:264D                 mov     [bp+var_4], ax
seg001:2650                 sub     ax, ax
seg001:2652                 push    ax
seg001:2653                 mov     ax, 1
seg001:2656                 push    ax
seg001:2657                 mov     ax, 0BFh ; '+'
seg001:265A                 push    ax
seg001:265B                 push    [bp+arg_2]
seg001:265E                 mov     ax, [bp+var_4]
seg001:2661                 add     ax, 17h
seg001:2664                 push    ax
seg001:2665                 push    [bp+var_4]
seg001:2668                 mov     ax, [bp+var_2]
seg001:266B                 add     ax, 3Fh ; '?'
seg001:266E                 push    ax
seg001:266F                 push    [bp+var_2]
seg001:2672                 call    far ptr sub_17BE5
seg001:2677                 mov     sp, bp
seg001:2679                 pop     bp
seg001:267A                 retf
seg001:267A sub_4364        endp
seg001:267A
seg001:267A ; ---------------------------------------------------------------------------
seg001:267B                 align 2
seg001:267C
