seg006:291A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:291A
seg006:291A
seg006:291A sub_1076A       proc near               ; CODE XREF: sub_10665+FF␘p
seg006:291A                 mov     bp, 688h
seg006:291D                 sub     ch, ch
seg006:291F                 mov     dl, byte_2A9BE
seg006:2923                 mov     dh, byte_2A9C8
seg006:2927                 mov     bl, al
seg006:2929                 sub     bh, bh
seg006:292B                 shl     bx, 1
seg006:292D                 mov     ax, [bx-4763h]
seg006:2931                 mov     bx, word_2846A
seg006:2935                 cmp     word_2A9C9, 0
seg006:293A                 jz      short loc_10793
seg006:293C                 mov     bx, 0
seg006:293F                 add     si, word_2A9C9
seg006:2943
seg006:2943 loc_10793:                              ; CODE XREF: sub_1076A+20␘j
seg006:2943                 add     ax, bx
seg006:2945                 mov     di, ax
seg006:2947                 cmp     di, bp
seg006:2949                 jb      short loc_107CF
seg006:294B                 retn
seg006:294C ; ---------------------------------------------------------------------------
seg006:294C
seg006:294C loc_1079C:                              ; CODE XREF: sub_1076A+7E␙j
seg006:294C                 inc     di
seg006:294D                 or      ah, ah
seg006:294F                 jz      short loc_107A6
seg006:2951                 mov     al, ah
seg006:2953                 stosb
seg006:2954                 jmp     short loc_107EF
seg006:2956 ; ---------------------------------------------------------------------------
seg006:2956
seg006:2956 loc_107A6:                              ; CODE XREF: sub_1076A+35␘j
seg006:2956                 inc     di
seg006:2957                 jmp     short loc_107EF
seg006:2959 ; ---------------------------------------------------------------------------
seg006:2959
seg006:2959 loc_107A9:                              ; CODE XREF: sub_1076A+82␙j
seg006:2959                 stosb
seg006:295A                 inc     di
seg006:295B                 jmp     short loc_107EF
seg006:295D ; ---------------------------------------------------------------------------
seg006:295D
seg006:295D loc_107AD:                              ; CODE XREF: sub_1076A+88␙j
seg006:295D                 inc     di
seg006:295E                 or      ah, ah
seg006:2960                 jz      short loc_107B7
seg006:2962                 mov     al, ah
seg006:2964                 stosb
seg006:2965                 jmp     short loc_107F9
seg006:2967 ; ---------------------------------------------------------------------------
seg006:2967
seg006:2967 loc_107B7:                              ; CODE XREF: sub_1076A+46␘j
seg006:2967                 inc     di
seg006:2968                 jmp     short loc_107F9
seg006:296A ; ---------------------------------------------------------------------------
seg006:296A
seg006:296A loc_107BA:                              ; CODE XREF: sub_1076A+8C␙j
seg006:296A                 stosb
seg006:296B                 inc     di
seg006:296C                 jmp     short loc_107F9
seg006:296E ; ---------------------------------------------------------------------------
seg006:296E
seg006:296E loc_107BE:                              ; CODE XREF: sub_1076A+99␙j
seg006:296E                 inc     di
seg006:296F                 or      ah, ah
seg006:2971                 jz      short loc_107C8
seg006:2973                 mov     al, ah
seg006:2975                 stosb
seg006:2976                 jmp     short loc_1080A
seg006:2978 ; ---------------------------------------------------------------------------
seg006:2978
seg006:2978 loc_107C8:                              ; CODE XREF: sub_1076A+57␘j
seg006:2978                 inc     di
seg006:2979                 jmp     short loc_1080A
seg006:297B ; ---------------------------------------------------------------------------
seg006:297B
seg006:297B loc_107CB:                              ; CODE XREF: sub_1076A+9D␙j
seg006:297B                 stosb
seg006:297C                 inc     di
seg006:297D                 jmp     short loc_1080A
seg006:297F ; ---------------------------------------------------------------------------
seg006:297F
seg006:297F loc_107CF:                              ; CODE XREF: sub_1076A+2F␘j
seg006:297F                                         ; sub_1076A+D3␙j
seg006:297F                 mov     bx, si
seg006:2981                 push    di
seg006:2982                 mov     cl, dl
seg006:2984                 mov     es, word_280BE
seg006:2988                 push    ds
seg006:2989                 mov     ds, word_2A9D7
seg006:298D                 shr     cx, 1
seg006:298F                 jz      short loc_1080A
seg006:2991                 shr     cx, 1
seg006:2993                 jz      short loc_107FB
seg006:2995
seg006:2995 loc_107E5:                              ; CODE XREF: sub_1076A:loc_107F9␙j
seg006:2995                 lodsw
seg006:2996                 or      al, al
seg006:2998                 jz      short loc_1079C
seg006:299A                 or      ah, ah
seg006:299C                 jz      short loc_107A9
seg006:299E                 stosw
seg006:299F
seg006:299F loc_107EF:                              ; CODE XREF: sub_1076A+3A␘j
seg006:299F                                         ; sub_1076A+3D␘j ...
seg006:299F                 lodsw
seg006:29A0                 or      al, al
seg006:29A2                 jz      short loc_107AD
seg006:29A4                 or      ah, ah
seg006:29A6                 jz      short loc_107BA
seg006:29A8                 stosw
seg006:29A9
seg006:29A9 loc_107F9:                              ; CODE XREF: sub_1076A+4B␘j
seg006:29A9                                         ; sub_1076A+4E␘j ...
seg006:29A9                 loop    loc_107E5
seg006:29AB
seg006:29AB loc_107FB:                              ; CODE XREF: sub_1076A+79␘j
seg006:29AB                 test    dl, 2
seg006:29AE                 jz      short loc_1080A
seg006:29B0                 lodsw
seg006:29B1                 or      al, al
seg006:29B3                 jz      short loc_107BE
seg006:29B5                 or      ah, ah
seg006:29B7                 jz      short loc_107CB
seg006:29B9                 stosw
seg006:29BA
seg006:29BA loc_1080A:                              ; CODE XREF: sub_1076A+5C␘j
seg006:29BA                                         ; sub_1076A+5F␘j ...
seg006:29BA                 test    dl, 1
seg006:29BD                 jz      short loc_10815
seg006:29BF                 lodsb
seg006:29C0                 or      al, al
seg006:29C2                 jz      short loc_10815
seg006:29C4                 stosb
seg006:29C5
seg006:29C5 loc_10815:                              ; CODE XREF: sub_1076A+A3␘j
seg006:29C5                                         ; sub_1076A+A8␘j
seg006:29C5                 pop     ds
seg006:29C6                 pop     di
seg006:29C7                 add     di, 58h ; 'X'
seg006:29CA                 mov     si, bx
seg006:29CC                 dec     dh
seg006:29CE                 jnz     short loc_10835
seg006:29D0                 mov     cl, byte_2846C
seg006:29D4                 add     si, cx
seg006:29D6                 inc     word_2A9CB
seg006:29DA                 mov     bx, word_2A9CB
seg006:29DE                 mov     es, word_2A9D7
seg006:29E2                 mov     dh, es:[bx]
seg006:29E5
seg006:29E5 loc_10835:                              ; CODE XREF: sub_1076A+B4␘j
seg006:29E5                 cmp     di, bp
seg006:29E7                 jnb     short locret_1083F
seg006:29E9                 dec     byte_2846D
seg006:29ED                 jnz     short loc_107CF
seg006:29EF
seg006:29EF locret_1083F:                           ; CODE XREF: sub_1076A+CD␘j
seg006:29EF                 retn
seg006:29EF sub_1076A       endp
seg006:29EF
seg006:29F0
