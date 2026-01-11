seg001:30D6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:30D6
seg001:30D6 ; Attributes: bp-based frame
seg001:30D6
seg001:30D6 sub_4E16        proc far                ; CODE XREF: sub_0+1EE␘P
seg001:30D6
seg001:30D6 var_10          = byte ptr -10h
seg001:30D6 var_E           = word ptr -0Eh
seg001:30D6 var_C           = word ptr -0Ch
seg001:30D6 var_8           = word ptr -8
seg001:30D6 var_6           = word ptr -6
seg001:30D6 var_4           = word ptr -4
seg001:30D6 var_2           = word ptr -2
seg001:30D6
seg001:30D6                 push    bp
seg001:30D7                 mov     bp, sp
seg001:30D9                 sub     sp, 10h
seg001:30DC                 push    si
seg001:30DD                 mov     ax, word_1FBDE
seg001:30E0                 mov     [bp+var_6], ax
seg001:30E3                 mov     [bp+var_4], ax
seg001:30E6                 push    cs
seg001:30E7                 call    near ptr sub_5102
seg001:30EA                 sub     al, al
seg001:30EC                 mov     byte_28147, al
seg001:30EF                 sub     ah, ah
seg001:30F1                 mov     [bp+var_8], ax
seg001:30F4
seg001:30F4 loc_4E34:                               ; CODE XREF: sub_4E16+1B7␙j
seg001:30F4                                         ; sub_4E16+1E8␙j ...
seg001:30F4                 cmp     [bp+var_8], 0
seg001:30F8                 jz      short loc_4E3D
seg001:30FA                 jmp     loc_502A
seg001:30FD ; ---------------------------------------------------------------------------
seg001:30FD
seg001:30FD loc_4E3D:                               ; CODE XREF: sub_4E16+22␘j
seg001:30FD                 mov     al, byte_28148
seg001:3100                 or      al, byte_28467
seg001:3104                 and     al, 0Fh
seg001:3106                 cmp     al, 9
seg001:3108                 jnz     short loc_4E4D
seg001:310A                 jmp     loc_4EFA
seg001:310D ; ---------------------------------------------------------------------------
seg001:310D
seg001:310D loc_4E4D:                               ; CODE XREF: sub_4E16+32␘j
seg001:310D                 mov     ax, 1
seg001:3110                 push    ax
seg001:3111                 sub     ax, ax
seg001:3113                 push    ax
seg001:3114                 mov     ax, 0C7h ; '¦'
seg001:3117                 push    ax
seg001:3118                 mov     ax, 70h ; 'p'
seg001:311B                 push    ax
seg001:311C                 push    ax
seg001:311D                 push    ax
seg001:311E                 mov     ax, 13Fh
seg001:3121                 push    ax
seg001:3122                 mov     ax, 70h ; 'p'
seg001:3125                 push    ax
seg001:3126                 call    far ptr sub_17BE5
seg001:312B                 add     sp, 10h
seg001:312E                 mov     [bp+var_C], 70h ; 'p'
seg001:3133
seg001:3133 loc_4E73:                               ; CODE XREF: sub_4E16+86␙j
seg001:3133                 mov     si, [bp+var_C]
seg001:3136                 inc     si
seg001:3137                 sub     ax, ax
seg001:3139                 push    ax
seg001:313A                 push    ax
seg001:313B                 push    [bp+var_C]
seg001:313E                 mov     ax, 70h ; 'p'
seg001:3141                 push    ax
seg001:3142                 push    si
seg001:3143                 push    si
seg001:3144                 mov     ax, 13Fh
seg001:3147                 push    ax
seg001:3148                 mov     ax, 70h ; 'p'
seg001:314B                 push    ax
seg001:314C                 call    far ptr sub_17BE5
seg001:3151                 add     sp, 10h
seg001:3154                 inc     [bp+var_C]
seg001:3157                 cmp     [bp+var_C], 0B8h ; '+'
seg001:315C                 jl      short loc_4E73
seg001:315E                 sub     ax, ax
seg001:3160                 push    ax
seg001:3161                 mov     ax, 1
seg001:3164                 push    ax
seg001:3165                 mov     ax, 0B8h ; '+'
seg001:3168                 push    ax
seg001:3169                 mov     ax, 70h ; 'p'
seg001:316C                 push    ax
seg001:316D                 sub     ax, ax
seg001:316F                 push    ax
seg001:3170                 push    ax
seg001:3171                 mov     ax, 13Fh
seg001:3174                 push    ax
seg001:3175                 mov     ax, 70h ; 'p'
seg001:3178                 push    ax
seg001:3179                 call    far ptr sub_17BE5
seg001:317E                 add     sp, 10h
seg001:3181                 mov     [bp+var_C], 0
seg001:3186                 jmp     short loc_4ECB
seg001:3188 ; ---------------------------------------------------------------------------
seg001:3188
seg001:3188 loc_4EC8:                               ; CODE XREF: sub_4E16+E1␙j
seg001:3188                 inc     [bp+var_C]
seg001:318B
seg001:318B loc_4ECB:                               ; CODE XREF: sub_4E16+B0␘j
seg001:318B                 cmp     [bp+var_C], 0C7h ; '¦'
seg001:3190                 jl      short loc_4ED5
seg001:3192                 jmp     loc_4F9B
seg001:3195 ; ---------------------------------------------------------------------------
seg001:3195
seg001:3195 loc_4ED5:                               ; CODE XREF: sub_4E16+BA␘j
seg001:3195                 mov     si, [bp+var_C]
seg001:3198                 inc     si
seg001:3199                 mov     ax, 1
seg001:319C                 push    ax
seg001:319D                 push    ax
seg001:319E                 push    [bp+var_C]
seg001:31A1                 mov     ax, 70h ; 'p'
seg001:31A4                 push    ax
seg001:31A5                 push    si
seg001:31A6                 push    si
seg001:31A7                 mov     ax, 13Fh
seg001:31AA                 push    ax
seg001:31AB                 mov     ax, 70h ; 'p'
seg001:31AE                 push    ax
seg001:31AF                 call    far ptr sub_17BE5
seg001:31B4                 add     sp, 10h
seg001:31B7                 jmp     short loc_4EC8
seg001:31B7 ; ---------------------------------------------------------------------------
seg001:31B9                 align 2
seg001:31BA
seg001:31BA loc_4EFA:                               ; CODE XREF: sub_4E16+34␘j
seg001:31BA                 mov     [bp+var_C], 0C7h ; '¦'
seg001:31BF
seg001:31BF loc_4EFF:                               ; CODE XREF: sub_4E16+112␙j
seg001:31BF                 mov     si, [bp+var_C]
seg001:31C2                 dec     si
seg001:31C3                 mov     ax, 1
seg001:31C6                 push    ax
seg001:31C7                 push    ax
seg001:31C8                 push    [bp+var_C]
seg001:31CB                 mov     ax, 70h ; 'p'
seg001:31CE                 push    ax
seg001:31CF                 push    si
seg001:31D0                 push    si
seg001:31D1                 mov     ax, 13Fh
seg001:31D4                 push    ax
seg001:31D5                 mov     ax, 70h ; 'p'
seg001:31D8                 push    ax
seg001:31D9                 call    far ptr sub_17BE5
seg001:31DE                 add     sp, 10h
seg001:31E1                 dec     [bp+var_C]
seg001:31E4                 cmp     [bp+var_C], 0
seg001:31E8                 jg      short loc_4EFF
seg001:31EA                 mov     ax, 1
seg001:31ED                 push    ax
seg001:31EE                 sub     ax, ax
seg001:31F0                 push    ax
seg001:31F1                 push    ax
seg001:31F2                 mov     ax, 70h ; 'p'
seg001:31F5                 push    ax
seg001:31F6                 mov     ax, 0B8h ; '+'
seg001:31F9                 push    ax
seg001:31FA                 push    ax
seg001:31FB                 mov     ax, 13Fh
seg001:31FE                 push    ax
seg001:31FF                 mov     ax, 70h ; 'p'
seg001:3202                 push    ax
seg001:3203                 call    far ptr sub_17BE5
seg001:3208                 add     sp, 10h
seg001:320B                 mov     [bp+var_C], 0B8h ; '+'
seg001:3210
seg001:3210 loc_4F50:                               ; CODE XREF: sub_4E16+162␙j
seg001:3210                 mov     si, [bp+var_C]
seg001:3213                 dec     si
seg001:3214                 sub     ax, ax
seg001:3216                 push    ax
seg001:3217                 push    ax
seg001:3218                 push    [bp+var_C]
seg001:321B                 mov     ax, 70h ; 'p'
seg001:321E                 push    ax
seg001:321F                 push    si
seg001:3220                 push    si
seg001:3221                 mov     ax, 13Fh
seg001:3224                 push    ax
seg001:3225                 mov     ax, 70h ; 'p'
seg001:3228                 push    ax
seg001:3229                 call    far ptr sub_17BE5
seg001:322E                 add     sp, 10h
seg001:3231                 dec     [bp+var_C]
seg001:3234                 cmp     [bp+var_C], 70h ; 'p'
seg001:3238                 jg      short loc_4F50
seg001:323A                 sub     ax, ax
seg001:323C                 push    ax
seg001:323D                 mov     ax, 1
seg001:3240                 push    ax
seg001:3241                 mov     ax, 70h ; 'p'
seg001:3244                 push    ax
seg001:3245                 push    ax
seg001:3246                 mov     ax, 0C7h ; '¦'
seg001:3249                 push    ax
seg001:324A                 push    ax
seg001:324B                 mov     ax, 13Fh
seg001:324E                 push    ax
seg001:324F                 mov     ax, 70h ; 'p'
seg001:3252                 push    ax
seg001:3253                 call    far ptr sub_17BE5
seg001:3258                 add     sp, 10h
seg001:325B
seg001:325B loc_4F9B:                               ; CODE XREF: sub_4E16+BC␘j
seg001:325B                 mov     al, byte_28148
seg001:325E                 or      al, byte_28467
seg001:3262                 and     al, 0Fh
seg001:3264                 mov     [bp+var_10], al
seg001:3267                 cmp     al, 9
seg001:3269                 jz      short loc_4FBB
seg001:326B                 cmp     al, 0Ah
seg001:326D                 jz      short loc_4FBB
seg001:326F                 mov     ax, 6
seg001:3272                 push    ax
seg001:3273                 call    sub_16A5D
seg001:3278                 add     sp, 2
seg001:327B
seg001:327B loc_4FBB:                               ; CODE XREF: sub_4E16+193␘j
seg001:327B                                         ; sub_4E16+197␘j
seg001:327B                 lea     ax, [bp+var_E]
seg001:327E                 push    ax
seg001:327F                 call    sub_EC6
seg001:3284                 add     sp, 2
seg001:3287                 cmp     [bp+var_E], 0
seg001:328B                 jnz     short loc_4FD0
seg001:328D                 jmp     loc_4E34
seg001:3290 ; ---------------------------------------------------------------------------
seg001:3290
seg001:3290 loc_4FD0:                               ; CODE XREF: sub_4E16+1B5␘j
seg001:3290                 mov     ax, [bp+var_E]
seg001:3293                 cmp     ax, 0Dh
seg001:3296                 jz      short loc_5022
seg001:3298                 cmp     ax, 92h ; 'Æ'
seg001:329B                 jz      short loc_4FE4
seg001:329D                 cmp     ax, 98h ; 'ÿ'
seg001:32A0                 jz      short loc_5014
seg001:32A2                 jmp     short loc_4FF6
seg001:32A4 ; ---------------------------------------------------------------------------
seg001:32A4
seg001:32A4 loc_4FE4:                               ; CODE XREF: sub_4E16+1C5␘j
seg001:32A4                 mov     [bp+var_2], 0
seg001:32A9                 push    [bp+var_6]
seg001:32AC                 push    cs
seg001:32AD                 call    near ptr sub_50A0
seg001:32B0
seg001:32B0 loc_4FF0:                               ; CODE XREF: sub_4E16+20A␙j
seg001:32B0                 add     sp, 2
seg001:32B3                 mov     [bp+var_6], ax
seg001:32B6
seg001:32B6 loc_4FF6:                               ; CODE XREF: sub_4E16+1CC␘j
seg001:32B6                                         ; sub_4E16+211␙j
seg001:32B6                 mov     ax, word_1FBDE
seg001:32B9                 cmp     [bp+var_6], ax
seg001:32BC                 jnz     short loc_5001
seg001:32BE                 jmp     loc_4E34
seg001:32C1 ; ---------------------------------------------------------------------------
seg001:32C1
seg001:32C1 loc_5001:                               ; CODE XREF: sub_4E16+1E6␘j
seg001:32C1                 mov     ax, [bp+var_6]
seg001:32C4                 mov     word_1FBDE, ax
seg001:32C7                 push    cs
seg001:32C8                 call    near ptr sub_5102
seg001:32CB                 mov     byte_28147, 0
seg001:32D0                 jmp     loc_4E34
seg001:32D0 ; ---------------------------------------------------------------------------
seg001:32D3                 align 2
seg001:32D4
seg001:32D4 loc_5014:                               ; CODE XREF: sub_4E16+1CA␘j
seg001:32D4                 mov     [bp+var_2], 1
seg001:32D9                 push    [bp+var_6]
seg001:32DC                 push    cs
seg001:32DD                 call    near ptr sub_503C
seg001:32E0                 jmp     short loc_4FF0
seg001:32E2 ; ---------------------------------------------------------------------------
seg001:32E2
seg001:32E2 loc_5022:                               ; CODE XREF: sub_4E16+1C0␘j
seg001:32E2                 mov     [bp+var_8], 1
seg001:32E7                 jmp     short loc_4FF6
seg001:32E7 ; ---------------------------------------------------------------------------
seg001:32E9                 align 2
seg001:32EA
seg001:32EA loc_502A:                               ; CODE XREF: sub_4E16+24␘j
seg001:32EA                 mov     ax, word_1FBDE
seg001:32ED                 cmp     [bp+var_4], ax
seg001:32F0                 jz      short loc_5036
seg001:32F2                 push    cs
seg001:32F3                 call    near ptr sub_4470
seg001:32F6
seg001:32F6 loc_5036:                               ; CODE XREF: sub_4E16+21A␘j
seg001:32F6                 pop     si
seg001:32F7                 mov     sp, bp
seg001:32F9                 pop     bp
seg001:32FA                 retf
seg001:32FA sub_4E16        endp
seg001:32FA
seg001:32FA ; ---------------------------------------------------------------------------
seg001:32FB                 align 2
seg001:32FC
