seg031:06C5 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:06C5
seg031:06C5 ; Attributes: bp-based frame
seg031:06C5
seg031:06C5 sub_19525       proc far                ; CODE XREF: sub_10D4+A␘P
seg031:06C5                                         ; sub_10D4+51␘P ...
seg031:06C5
seg031:06C5 arg_0           = word ptr  6
seg031:06C5
seg031:06C5                 push    bp
seg031:06C6                 mov     bp, sp
seg031:06C8                 sub     sp, 2
seg031:06CB                 push    si
seg031:06CC                 push    di
seg031:06CD                 mov     ax, [bp+arg_0]
seg031:06D0                 cmp     ax, 0FFF1h
seg031:06D3                 jnb     short loc_19553
seg031:06D5                 cmp     word_2B5B2, 0
seg031:06DA                 jnz     short loc_19544
seg031:06DC                 call    sub_19564
seg031:06DF                 jz      short loc_19553
seg031:06E1                 mov     word_2B5B2, ax
seg031:06E4
seg031:06E4 loc_19544:                              ; CODE XREF: sub_19525+15␘j
seg031:06E4                 call    sub_195D2
seg031:06E7                 jnz     short loc_1955E
seg031:06E9                 call    sub_19564
seg031:06EC                 jz      short loc_19553
seg031:06EE                 call    sub_195D2
seg031:06F1                 jnz     short loc_1955E
seg031:06F3
seg031:06F3 loc_19553:                              ; CODE XREF: sub_19525+E␘j
seg031:06F3                                         ; sub_19525+1A␘j ...
seg031:06F3                 push    [bp+arg_0]
seg031:06F6                 call    sub_1AA6C
seg031:06FB                 add     sp, 2
seg031:06FE
seg031:06FE loc_1955E:                              ; CODE XREF: sub_19525+22␘j
seg031:06FE                                         ; sub_19525+2C␘j
seg031:06FE                 pop     di
seg031:06FF                 pop     si
seg031:0700                 mov     sp, bp
seg031:0702                 pop     bp
seg031:0703                 retf
seg031:0703 sub_19525       endp
seg031:0703
seg031:0704
