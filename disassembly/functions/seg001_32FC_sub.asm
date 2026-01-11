seg001:32FC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:32FC
seg001:32FC ; Attributes: bp-based frame
seg001:32FC
seg001:32FC sub_503C        proc far                ; CODE XREF: sub_4E16+207␘p
seg001:32FC
seg001:32FC var_4           = word ptr -4
seg001:32FC var_2           = word ptr -2
seg001:32FC arg_0           = word ptr  6
seg001:32FC
seg001:32FC                 push    bp
seg001:32FD                 mov     bp, sp
seg001:32FF                 sub     sp, 4
seg001:3302                 mov     ax, [bp+arg_0]
seg001:3305                 mov     [bp+var_2], ax
seg001:3308                 mov     al, byte_1FBE6
seg001:330B                 sub     ah, ah
seg001:330D                 dec     ax
seg001:330E                 cmp     [bp+arg_0], ax
seg001:3311                 jnz     short loc_505A
seg001:3313                 mov     [bp+arg_0], 0
seg001:3318                 jmp     short loc_505D
seg001:331A ; ---------------------------------------------------------------------------
seg001:331A
seg001:331A loc_505A:                               ; CODE XREF: sub_503C+15␘j
seg001:331A                 inc     [bp+arg_0]
seg001:331D
seg001:331D loc_505D:                               ; CODE XREF: sub_503C+1C␘j
seg001:331D                                         ; sub_503C+5B␙j
seg001:331D                 mov     ax, 0B50h
seg001:3320                 push    ax
seg001:3321                 mov     ax, 2171h
seg001:3324                 push    ax
seg001:3325                 mov     ax, 0ABAh
seg001:3328                 push    ax
seg001:3329                 push    [bp+arg_0]
seg001:332C                 push    cs
seg001:332D                 call    near ptr sub_46FA
seg001:3330                 add     sp, 8
seg001:3333                 mov     [bp+var_4], ax
seg001:3336                 or      ax, ax
seg001:3338                 jz      short loc_5099
seg001:333A                 mov     al, byte_1FBE6
seg001:333D                 sub     ah, ah
seg001:333F                 dec     ax
seg001:3340                 cmp     [bp+arg_0], ax
seg001:3343                 jnz     short loc_508C
seg001:3345                 mov     [bp+arg_0], 0
seg001:334A                 jmp     short loc_508F
seg001:334C ; ---------------------------------------------------------------------------
seg001:334C
seg001:334C loc_508C:                               ; CODE XREF: sub_503C+47␘j
seg001:334C                 inc     [bp+arg_0]
seg001:334F
seg001:334F loc_508F:                               ; CODE XREF: sub_503C+4E␘j
seg001:334F                 mov     ax, [bp+var_2]
seg001:3352                 mov     [bp+arg_0], ax
seg001:3355                 or      ax, ax
seg001:3357                 jz      short loc_505D
seg001:3359
seg001:3359 loc_5099:                               ; CODE XREF: sub_503C+3C␘j
seg001:3359                 mov     ax, [bp+arg_0]
seg001:335C                 mov     sp, bp
seg001:335E                 pop     bp
seg001:335F                 retf
seg001:335F sub_503C        endp
seg001:335F
seg001:3360
