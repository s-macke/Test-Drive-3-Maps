seg001:3360 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:3360
seg001:3360 ; Attributes: bp-based frame
seg001:3360
seg001:3360 sub_50A0        proc far                ; CODE XREF: sub_4E16+1D7␘p
seg001:3360
seg001:3360 var_4           = word ptr -4
seg001:3360 var_2           = word ptr -2
seg001:3360 arg_0           = word ptr  6
seg001:3360
seg001:3360                 push    bp
seg001:3361                 mov     bp, sp
seg001:3363                 sub     sp, 4
seg001:3366                 mov     ax, [bp+arg_0]
seg001:3369                 mov     [bp+var_2], ax
seg001:336C                 or      ax, ax
seg001:336E                 jnz     short loc_50BC
seg001:3370                 mov     al, byte_1FBE6
seg001:3373                 sub     ah, ah
seg001:3375                 dec     ax
seg001:3376                 mov     [bp+arg_0], ax
seg001:3379                 jmp     short loc_50BF
seg001:3379 ; ---------------------------------------------------------------------------
seg001:337B                 align 2
seg001:337C
seg001:337C loc_50BC:                               ; CODE XREF: sub_50A0+E␘j
seg001:337C                 dec     [bp+arg_0]
seg001:337F
seg001:337F loc_50BF:                               ; CODE XREF: sub_50A0+19␘j
seg001:337F                                         ; sub_50A0+59␙j
seg001:337F                 mov     ax, 0B50h
seg001:3382                 push    ax
seg001:3383                 mov     ax, 2171h
seg001:3386                 push    ax
seg001:3387                 mov     ax, 0ABAh
seg001:338A                 push    ax
seg001:338B                 push    [bp+arg_0]
seg001:338E                 push    cs
seg001:338F                 call    near ptr sub_46FA
seg001:3392                 add     sp, 8
seg001:3395                 mov     [bp+var_4], ax
seg001:3398                 or      ax, ax
seg001:339A                 jz      short loc_50FB
seg001:339C                 cmp     [bp+arg_0], 0
seg001:33A0                 jnz     short loc_50EE
seg001:33A2                 mov     al, byte_1FBE6
seg001:33A5                 sub     ah, ah
seg001:33A7                 dec     ax
seg001:33A8                 mov     [bp+arg_0], ax
seg001:33AB                 jmp     short loc_50F1
seg001:33AB ; ---------------------------------------------------------------------------
seg001:33AD                 align 2
seg001:33AE
seg001:33AE loc_50EE:                               ; CODE XREF: sub_50A0+40␘j
seg001:33AE                 dec     [bp+arg_0]
seg001:33B1
seg001:33B1 loc_50F1:                               ; CODE XREF: sub_50A0+4B␘j
seg001:33B1                 mov     ax, [bp+var_2]
seg001:33B4                 mov     [bp+arg_0], ax
seg001:33B7                 or      ax, ax
seg001:33B9                 jz      short loc_50BF
seg001:33BB
seg001:33BB loc_50FB:                               ; CODE XREF: sub_50A0+3A␘j
seg001:33BB                 mov     ax, [bp+arg_0]
seg001:33BE                 mov     sp, bp
seg001:33C0                 pop     bp
seg001:33C1                 retf
seg001:33C1 sub_50A0        endp
seg001:33C1
seg001:33C2
