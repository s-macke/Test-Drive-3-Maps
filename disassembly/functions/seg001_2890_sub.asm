seg001:2890 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:2890
seg001:2890 ; Attributes: bp-based frame
seg001:2890
seg001:2890 sub_45D0        proc far                ; CODE XREF: sub_0+162␘P
seg001:2890                                         ; sub_4438+26␘p
seg001:2890
seg001:2890 var_2           = word ptr -2
seg001:2890
seg001:2890                 push    bp
seg001:2891                 mov     bp, sp
seg001:2893                 sub     sp, 2
seg001:2896                 mov     ax, 1035h
seg001:2899                 push    ax
seg001:289A                 mov     ax, 0AAAh
seg001:289D                 push    ax
seg001:289E                 call    sub_1916A
seg001:28A3                 add     sp, 4
seg001:28A6                 mov     word_2D896, ax
seg001:28A9                 or      ax, ax
seg001:28AB                 jnz     short loc_45F4
seg001:28AD
seg001:28AD loc_45ED:                               ; CODE XREF: sub_45D0+50␙j
seg001:28AD                                         ; sub_45D0+FF␙j ...
seg001:28AD                 mov     ax, 1
seg001:28B0                 mov     sp, bp
seg001:28B2                 pop     bp
seg001:28B3                 retf
seg001:28B4 ; ---------------------------------------------------------------------------
seg001:28B4
seg001:28B4 loc_45F4:                               ; CODE XREF: sub_45D0+1B␘j
seg001:28B4                 push    word_2D896
seg001:28B8                 mov     ax, 12h
seg001:28BB                 push    ax
seg001:28BC                 mov     ax, 1
seg001:28BF                 push    ax
seg001:28C0                 mov     ax, 0A78h
seg001:28C3                 push    ax
seg001:28C4                 call    sub_19196
seg001:28C9                 add     sp, 8
seg001:28CC                 mov     [bp+var_2], ax
seg001:28CF                 cmp     ax, 12h
seg001:28D2                 jz      short loc_4622
seg001:28D4
seg001:28D4 loc_4614:                               ; CODE XREF: sub_45D0+70␙j
seg001:28D4                                         ; sub_45D0+90␙j ...
seg001:28D4                 push    word_2D896
seg001:28D8                 call    sub_190A2
seg001:28DD                 add     sp, 2
seg001:28E0                 jmp     short loc_45ED
seg001:28E2 ; ---------------------------------------------------------------------------
seg001:28E2
seg001:28E2 loc_4622:                               ; CODE XREF: sub_45D0+42␘j
seg001:28E2                 push    word_2D896
seg001:28E6                 mov     ax, 54h ; 'T'
seg001:28E9                 push    ax
seg001:28EA                 mov     ax, 1
seg001:28ED                 push    ax
seg001:28EE                 mov     ax, 9E0h
seg001:28F1                 push    ax
seg001:28F2                 call    sub_19196
seg001:28F7                 add     sp, 8
seg001:28FA                 mov     [bp+var_2], ax
seg001:28FD                 cmp     ax, 54h ; 'T'
seg001:2900                 jnz     short loc_4614
seg001:2902                 push    word_2D896
seg001:2906                 mov     ax, 40h ; '@'
seg001:2909                 push    ax
seg001:290A                 mov     ax, 1
seg001:290D                 push    ax
seg001:290E                 mov     ax, 0A34h
seg001:2911                 push    ax
seg001:2912                 call    sub_19196
seg001:2917                 add     sp, 8
seg001:291A                 mov     [bp+var_2], ax
seg001:291D                 cmp     ax, 40h ; '@'
seg001:2920                 jnz     short loc_4614
seg001:2922                 push    word_2D896
seg001:2926                 mov     ax, 4
seg001:2929                 push    ax
seg001:292A                 mov     ax, 2
seg001:292D                 push    ax
seg001:292E                 mov     ax, 0AFEh
seg001:2931                 push    ax
seg001:2932                 call    sub_19196
seg001:2937                 add     sp, 8
seg001:293A                 mov     [bp+var_2], ax
seg001:293D                 cmp     ax, 4
seg001:2940                 jnz     short loc_4614
seg001:2942                 push    word_2D896
seg001:2946                 mov     ax, 4
seg001:2949                 push    ax
seg001:294A                 mov     ax, 1
seg001:294D                 push    ax
seg001:294E                 mov     ax, 0B06h
seg001:2951                 push    ax
seg001:2952                 call    sub_19196
seg001:2957                 add     sp, 8
seg001:295A                 mov     [bp+var_2], ax
seg001:295D                 cmp     ax, 4
seg001:2960                 jz      short loc_46A5
seg001:2962                 jmp     loc_4614
seg001:2965 ; ---------------------------------------------------------------------------
seg001:2965
seg001:2965 loc_46A5:                               ; CODE XREF: sub_45D0+D0␘j
seg001:2965                 push    word_2D896
seg001:2969                 call    sub_190A2
seg001:296E                 add     sp, 2
seg001:2971                 mov     ax, 0B50h
seg001:2974                 push    ax
seg001:2975                 mov     ax, 2171h
seg001:2978                 push    ax
seg001:2979                 mov     ax, 0ABAh
seg001:297C                 push    ax
seg001:297D                 push    word_1FBDE
seg001:2981                 push    cs
seg001:2982                 call    near ptr sub_46FA
seg001:2985                 add     sp, 8
seg001:2988                 mov     [bp+var_2], ax
seg001:298B                 or      ax, ax
seg001:298D                 jz      short loc_46D2
seg001:298F                 jmp     loc_45ED
seg001:2992 ; ---------------------------------------------------------------------------
seg001:2992
seg001:2992 loc_46D2:                               ; CODE XREF: sub_45D0+FD␘j
seg001:2992                 mov     ax, 0AEAh
seg001:2995                 push    ax
seg001:2996                 mov     ax, 0ADAh
seg001:2999                 push    ax
seg001:299A                 push    word_1FBE2
seg001:299E                 push    cs
seg001:299F                 call    near ptr sub_48D0
seg001:29A2                 add     sp, 6
seg001:29A5                 mov     [bp+var_2], ax
seg001:29A8                 or      ax, ax
seg001:29AA                 jz      short loc_46EF
seg001:29AC                 jmp     loc_45ED
seg001:29AF ; ---------------------------------------------------------------------------
seg001:29AF
seg001:29AF loc_46EF:                               ; CODE XREF: sub_45D0+11A␘j
seg001:29AF                 mov     byte_1F17E, 1
seg001:29B4                 sub     ax, ax
seg001:29B6                 mov     sp, bp
seg001:29B8                 pop     bp
seg001:29B9                 retf
seg001:29B9 sub_45D0        endp
seg001:29B9
seg001:29BA
