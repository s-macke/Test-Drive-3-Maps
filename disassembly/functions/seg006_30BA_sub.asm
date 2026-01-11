seg006:30BA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:30BA
seg006:30BA
seg006:30BA sub_10F0A       proc near               ; CODE XREF: sub_154A1+13␙p
seg006:30BA                 push    es
seg006:30BB                 push    si
seg006:30BC                 push    di
seg006:30BD                 push    bp
seg006:30BE                 cmp     byte_2AA3F, 0
seg006:30C3                 jz      short loc_10F18
seg006:30C5                 call    sub_10D51
seg006:30C8
seg006:30C8 loc_10F18:                              ; CODE XREF: sub_10F0A+9␘j
seg006:30C8                 call    sub_10E38
seg006:30CB                 call    sub_10DFA
seg006:30CE                 call    sub_1101E
seg006:30D1                 mov     byte_2AA3F, 0
seg006:30D6                 call    sub_110C3
seg006:30D9                 mov     si, word_2AAC2
seg006:30DD                 mov     bx, word_2849C
seg006:30E1                 jmp     short loc_10FA6
seg006:30E3 ; ---------------------------------------------------------------------------
seg006:30E3
seg006:30E3 loc_10F33:                              ; CODE XREF: sub_10F0A+A0␙j
seg006:30E3                                         ; sub_10F0A+A4␙j
seg006:30E3                 mov     es, word_2D8AA
seg006:30E7                 push    si
seg006:30E8                 shl     bx, 1
seg006:30EA                 mov     di, [bx-7592h]
seg006:30EE                 mov     cl, [di-6681h]
seg006:30F2                 mov     ax, [bx-77F2h]
seg006:30F6                 shr     bx, 1
seg006:30F8                 cmp     bx, word_2849A
seg006:30FC                 jnb     short loc_10FC6
seg006:30FE                 or      cl, cl
seg006:3100                 jz      short loc_10FA4
seg006:3102                 shl     si, 1
seg006:3104                 jz      short loc_10F62
seg006:3106                 add     si, word_2BF7E
seg006:310A                 sub     si, 2
seg006:310D                 cmp     ax, es:[si]
seg006:3110                 jbe     short loc_10FC6
seg006:3112
seg006:3112 loc_10F62:                              ; CODE XREF: sub_10F0A+4A␘j
seg006:3112                 push    bx
seg006:3113                 shl     bx, 1
seg006:3115                 mov     ah, [bx-7461h]
seg006:3119                 add     ah, 8
seg006:311C                 mov     byte_2A9BF, ah
seg006:3120                 cmp     ah, 40h ; '@'
seg006:3123                 jnb     short loc_10FB5
seg006:3125
seg006:3125 loc_10F75:                              ; CODE XREF: sub_10F0A+BA␙j
seg006:3125                 mov     dx, [bx-77F2h]
seg006:3129                 cmp     dx, 10h
seg006:312C                 jbe     short loc_10FA3
seg006:312E                 cmp     cl, 5
seg006:3131                 ja      short loc_10F95
seg006:3133                 cmp     cl, 3
seg006:3136                 ja      short loc_10F9B
seg006:3138                 test    cl, 1
seg006:313B                 jz      short loc_10F9B
seg006:313D                 cmp     dx, 980h
seg006:3141                 jnb     short loc_10FA3
seg006:3143                 jb      short loc_10F9B
seg006:3145
seg006:3145 loc_10F95:                              ; CODE XREF: sub_10F0A+77␘j
seg006:3145                 cmp     dx, word_2A6CC
seg006:3149                 jnb     short loc_10FA3
seg006:314B
seg006:314B loc_10F9B:                              ; CODE XREF: sub_10F0A+7C␘j
seg006:314B                                         ; sub_10F0A+81␘j ...
seg006:314B                 call    sub_10B15
seg006:314E                 shr     bx, 1
seg006:3150                 call    sub_105B7
seg006:3153
seg006:3153 loc_10FA3:                              ; CODE XREF: sub_10F0A+72␘j
seg006:3153                                         ; sub_10F0A+87␘j ...
seg006:3153                 pop     bx
seg006:3154
seg006:3154 loc_10FA4:                              ; CODE XREF: sub_10F0A+46␘j
seg006:3154                 inc     bx
seg006:3155
seg006:3155 loc_10FA5:                              ; CODE XREF: sub_10F0A+106␙j
seg006:3155                 pop     si
seg006:3156
seg006:3156 loc_10FA6:                              ; CODE XREF: sub_10F0A+27␘j
seg006:3156                 cmp     bx, word_2849A
seg006:315A                 jb      short loc_10F33
seg006:315C                 or      si, si
seg006:315E                 jnz     short loc_10F33
seg006:3160                 pop     bp
seg006:3161                 pop     di
seg006:3162                 pop     si
seg006:3163                 pop     es
seg006:3164                 retn
seg006:3165 ; ---------------------------------------------------------------------------
seg006:3165
seg006:3165 loc_10FB5:                              ; CODE XREF: sub_10F0A+69␘j
seg006:3165                 add     ah, 74h ; 't'
seg006:3168                 cmp     ah, 20h ; ' '
seg006:316B                 jnb     short loc_10FA3
seg006:316D                 cmp     byte_2A6BC, 0
seg006:3172                 jz      short loc_10FA3
seg006:3174                 jmp     short loc_10F75
seg006:3176 ; ---------------------------------------------------------------------------
seg006:3176
seg006:3176 loc_10FC6:                              ; CODE XREF: sub_10F0A+42␘j
seg006:3176                                         ; sub_10F0A+56␘j
seg006:3176                 pop     si
seg006:3177                 dec     si
seg006:3178                 push    si
seg006:3179                 shl     si, 1
seg006:317B                 push    bx
seg006:317C                 add     si, word_2C1A8
seg006:3180                 mov     bp, es:[si]
seg006:3183                 mov     word_2AABA, bp
seg006:3187                 mov     dx, es:[bp+0]
seg006:318B                 add     bp, 8
seg006:318E                 mov     ax, es:[bp+0]
seg006:3192                 sub     bp, 2
seg006:3195                 mov     cx, es:[bp+0]
seg006:3199                 and     ch, 0F8h
seg006:319C                 mov     byte_2AA84, ch
seg006:31A0                 sub     bp, 4
seg006:31A3                 mov     si, es:[bp+0]
seg006:31A7                 shl     si, 1
seg006:31A9                 mov     bx, dx
seg006:31AB                 and     bx, 7FFh
seg006:31AF                 shl     bx, 1
seg006:31B1                 and     dh, 0C0h
seg006:31B4                 cmp     ax, 10Fh
seg006:31B7                 jz      short loc_11012
seg006:31B9
seg006:31B9 loc_11009:                              ; CODE XREF: sub_10F0A+10E␙j
seg006:31B9                                         ; sub_10F0A+112␙j
seg006:31B9                 mov     word_2AA9B, ax
seg006:31BC                 call    sub_11748
seg006:31BF                 pop     bx
seg006:31C0                 jmp     short loc_10FA5
seg006:31C2 ; ---------------------------------------------------------------------------
seg006:31C2
seg006:31C2 loc_11012:                              ; CODE XREF: sub_10F0A+FD␘j
seg006:31C2                 test    word_2AD23, 1
seg006:31C8                 jz      short loc_11009
seg006:31CA                 xchg    al, ah
seg006:31CC                 jmp     short loc_11009
seg006:31CC sub_10F0A       endp
seg006:31CC
seg006:31CE
