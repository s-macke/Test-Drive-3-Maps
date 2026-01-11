seg033:0FFA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0FFA
seg033:0FFA ; Attributes: bp-based frame
seg033:0FFA
seg033:0FFA sub_1EF8A       proc far                ; CODE XREF: sub_3A2A+B␘P
seg033:0FFA
seg033:0FFA arg_0           = byte ptr  6
seg033:0FFA
seg033:0FFA                 push    bp
seg033:0FFB                 mov     bp, sp
seg033:0FFD                 call    sub_1E209
seg033:1000                 mov     bx, 0
seg033:1003                 mov     al, [bp+arg_0]
seg033:1006                 test    al, 80h
seg033:1008                 jz      short loc_1EFB0
seg033:100A                 call    sub_1E5B8
seg033:100D                 or      ax, ax
seg033:100F                 jz      short loc_1EFF1
seg033:1011                 mov     ax, 1
seg033:1014                 call    sub_1E71E
seg033:1017                 or      ax, ax
seg033:1019                 jz      short loc_1EFF1
seg033:101B                 mov     bx, 4
seg033:101E                 jmp     short loc_1EFF1
seg033:1020 ; ---------------------------------------------------------------------------
seg033:1020
seg033:1020 loc_1EFB0:                              ; CODE XREF: sub_1EF8A+E␘j
seg033:1020                 cmp     al, 4
seg033:1022                 jnz     short loc_1EFC9
seg033:1024                 call    sub_1F054
seg033:1029                 or      ax, ax
seg033:102B                 jz      short loc_1EFF1
seg033:102D                 call    sub_1E979
seg033:1030                 or      ax, ax
seg033:1032                 jz      short loc_1EFF1
seg033:1034                 mov     bx, 3
seg033:1037                 jmp     short loc_1EFF1
seg033:1039 ; ---------------------------------------------------------------------------
seg033:1039
seg033:1039 loc_1EFC9:                              ; CODE XREF: sub_1EF8A+28␘j
seg033:1039                 cmp     al, 2
seg033:103B                 jnz     short loc_1EFE2
seg033:103D                 call    sub_1E9A4
seg033:1040                 or      ax, ax
seg033:1042                 jz      short loc_1EFF1
seg033:1044                 call    sub_1EAEB
seg033:1047                 mov     cx, 5
seg033:104A                 call    sub_1E1FE
seg033:104D                 mov     bx, 2
seg033:1050                 jmp     short loc_1EFF1
seg033:1052 ; ---------------------------------------------------------------------------
seg033:1052
seg033:1052 loc_1EFE2:                              ; CODE XREF: sub_1EF8A+41␘j
seg033:1052                 cmp     al, 1
seg033:1054                 jnz     short loc_1EFF1
seg033:1056                 mov     cx, 2
seg033:1059                 call    sub_1E1FE
seg033:105C                 mov     bx, 1
seg033:105F                 jmp     short $+2
seg033:1061
seg033:1061 loc_1EFF1:                              ; CODE XREF: sub_1EF8A+15␘j
seg033:1061                                         ; sub_1EF8A+1F␘j ...
seg033:1061                 call    sub_1E231
seg033:1064                 mov     al, [bp+arg_0]
seg033:1067                 or      byte_2B6C6, 4
seg033:106C                 pop     bp
seg033:106D                 retf
seg033:106D sub_1EF8A       endp
seg033:106D
seg033:106E
