seg001:27F4 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:27F4
seg001:27F4 ; Attributes: bp-based frame
seg001:27F4
seg001:27F4 sub_4534        proc far                ; CODE XREF: sub_0:loc_21E␘P
seg001:27F4                                         ; sub_2C88+144␘p ...
seg001:27F4
seg001:27F4 var_4           = word ptr -4
seg001:27F4 var_2           = word ptr -2
seg001:27F4
seg001:27F4                 push    bp
seg001:27F5                 mov     bp, sp
seg001:27F7                 sub     sp, 4
seg001:27FA                 mov     [bp+var_4], 0
seg001:27FF
seg001:27FF loc_453F:                               ; CODE XREF: sub_4534+94␙j
seg001:27FF                 mov     ax, 1032h
seg001:2802                 push    ax
seg001:2803                 mov     ax, 0AAAh
seg001:2806                 push    ax
seg001:2807                 call    sub_1916A
seg001:280C                 add     sp, 4
seg001:280F                 mov     word_2D896, ax
seg001:2812                 or      ax, ax
seg001:2814                 jz      short loc_459B
seg001:2816                 push    ax
seg001:2817                 mov     ax, 12h
seg001:281A                 push    ax
seg001:281B                 mov     ax, 1
seg001:281E                 push    ax
seg001:281F                 mov     ax, 0E998h
seg001:2822                 push    ax
seg001:2823                 call    sub_19196
seg001:2828                 add     sp, 8
seg001:282B                 mov     [bp+var_2], ax
seg001:282E                 cmp     ax, 12h
seg001:2831                 jnz     short loc_458F
seg001:2833                 mov     ax, 0A78h
seg001:2836                 push    ax
seg001:2837                 mov     ax, 0E998h
seg001:283A                 push    ax
seg001:283B                 call    sub_1961C
seg001:2840                 add     sp, 4
seg001:2843                 mov     [bp+var_2], ax
seg001:2846                 or      ax, ax
seg001:2848                 jnz     short loc_458F
seg001:284A                 mov     [bp+var_4], 1
seg001:284F
seg001:284F loc_458F:                               ; CODE XREF: sub_4534+3D␘j
seg001:284F                                         ; sub_4534+54␘j
seg001:284F                 push    word_2D896
seg001:2853                 call    sub_190A2
seg001:2858                 add     sp, 2
seg001:285B
seg001:285B loc_459B:                               ; CODE XREF: sub_4534+20␘j
seg001:285B                 mov     ax, 0A78h
seg001:285E                 push    ax
seg001:285F                 mov     ax, 1902h
seg001:2862                 push    ax
seg001:2863                 call    sub_195EA
seg001:2868                 add     sp, 4
seg001:286B                 mov     byte_209F3, 20h ; ' '
seg001:2870                 cmp     [bp+var_4], 0
seg001:2874                 jnz     short loc_45C2
seg001:2876                 mov     ax, 14h
seg001:2879                 push    ax
seg001:287A                 call    sub_1688
seg001:287F                 add     sp, 2
seg001:2882
seg001:2882 loc_45C2:                               ; CODE XREF: sub_4534+80␘j
seg001:2882                 cmp     [bp+var_4], 0
seg001:2886                 jnz     short loc_45CB
seg001:2888                 jmp     loc_453F
seg001:288B ; ---------------------------------------------------------------------------
seg001:288B
seg001:288B loc_45CB:                               ; CODE XREF: sub_4534+92␘j
seg001:288B                 mov     sp, bp
seg001:288D                 pop     bp
seg001:288E                 retf
seg001:288E sub_4534        endp
seg001:288E
seg001:288E ; ---------------------------------------------------------------------------
seg001:288F                 align 2
seg001:2890
