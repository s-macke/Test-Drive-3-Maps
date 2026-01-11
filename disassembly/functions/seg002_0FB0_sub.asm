seg002:0FB0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:0FB0
seg002:0FB0 ; Attributes: bp-based frame
seg002:0FB0
seg002:0FB0 sub_8680        proc far                ; CODE XREF: sub_83E0+61␘p
seg002:0FB0
seg002:0FB0 var_6           = word ptr -6
seg002:0FB0 var_4           = word ptr -4
seg002:0FB0 var_2           = word ptr -2
seg002:0FB0
seg002:0FB0                 push    bp
seg002:0FB1                 mov     bp, sp
seg002:0FB3                 sub     sp, 6
seg002:0FB6                 push    si
seg002:0FB7                 cmp     byte_1FAA3, 0
seg002:0FBC                 jnz     short loc_86B6
seg002:0FBE                 mov     al, byte_1FBEA
seg002:0FC1                 add     al, 41h ; 'A'
seg002:0FC3                 mov     byte_1FBC3, al
seg002:0FC6                 mov     ax, 11E4h
seg002:0FC9                 push    ax
seg002:0FCA                 mov     ax, 0AE4h
seg002:0FCD                 push    ax
seg002:0FCE                 call    sub_195EA
seg002:0FD3                 add     sp, 4
seg002:0FD6                 mov     ax, 949Eh
seg002:0FD9                 push    ax
seg002:0FDA                 mov     ax, 0ADAh
seg002:0FDD                 push    ax
seg002:0FDE                 call    sub_DBA
seg002:0FE3                 add     sp, 4
seg002:0FE6
seg002:0FE6 loc_86B6:                               ; CODE XREF: sub_8680+C␘j
seg002:0FE6                 cmp     byte_1F168, 0
seg002:0FEB                 jz      short loc_86CB
seg002:0FED                 cmp     byte_1FBE9, 0
seg002:0FF2                 jz      short loc_86CB
seg002:0FF4                 cmp     byte_1FAA3, 0
seg002:0FF9                 jz      short loc_86D7
seg002:0FFB
seg002:0FFB loc_86CB:                               ; CODE XREF: sub_8680+3B␘j
seg002:0FFB                                         ; sub_8680+42␘j
seg002:0FFB                 mov     word_29467, 2Fh ; '/'
seg002:1001                 mov     word_29469, 22AFh
seg002:1007
seg002:1007 loc_86D7:                               ; CODE XREF: sub_8680+49␘j
seg002:1007                 cmp     word_2D628, 9
seg002:100C                 jz      short loc_86E5
seg002:100E                 cmp     word_2D628, 0Dh
seg002:1013                 jnz     short loc_8722
seg002:1015
seg002:1015 loc_86E5:                               ; CODE XREF: sub_8680+5C␘j
seg002:1015                 mov     [bp+var_6], 0
seg002:101A                 mov     [bp+var_4], 0
seg002:101F                 jmp     short loc_8714
seg002:101F ; ---------------------------------------------------------------------------
seg002:1021                 align 2
seg002:1022
seg002:1022 loc_86F2:                               ; CODE XREF: sub_8680+8D␙j
seg002:1022                 inc     [bp+var_2]
seg002:1025
seg002:1025 loc_86F5:                               ; CODE XREF: sub_8680+A0␙j
seg002:1025                 cmp     [bp+var_2], 10h
seg002:1029                 jge     short loc_8710
seg002:102B                 mov     bx, [bp+var_6]
seg002:102E                 shl     bx, 1
seg002:1030                 mov     ax, [bp+var_4]
seg002:1033                 add     ax, [bp+var_2]
seg002:1036                 mov     [bx-4C3Bh], ax
seg002:103A                 inc     [bp+var_6]
seg002:103D                 jmp     short loc_86F2
seg002:103D ; ---------------------------------------------------------------------------
seg002:103F                 align 2
seg002:1040
seg002:1040 loc_8710:                               ; CODE XREF: sub_8680+79␘j
seg002:1040                 add     byte ptr [bp+var_4+1], 1
seg002:1044
seg002:1044 loc_8714:                               ; CODE XREF: sub_8680+6F␘j
seg002:1044                 cmp     [bp+var_4], 1000h
seg002:1049                 jge     short loc_8722
seg002:104B                 mov     [bp+var_2], 0
seg002:1050                 jmp     short loc_86F5
seg002:1052 ; ---------------------------------------------------------------------------
seg002:1052
seg002:1052 loc_8722:                               ; CODE XREF: sub_8680+63␘j
seg002:1052                                         ; sub_8680+99␘j
seg002:1052                 cmp     word_2D628, 13h
seg002:1057                 jnz     short loc_8752
seg002:1059                 cmp     byte_285B3, 0
seg002:105E                 jnz     short loc_8752
seg002:1060                 mov     [bp+var_2], 0
seg002:1065
seg002:1065 loc_8735:                               ; CODE XREF: sub_8680+D0␙j
seg002:1065                 mov     si, [bp+var_2]
seg002:1068                 shl     si, 1
seg002:106A                 add     si, 0B3C5h
seg002:106E                 cmp     word ptr [si], 0F0Fh
seg002:1072                 jbe     short loc_8748
seg002:1074                 sub     word ptr [si], 202h
seg002:1078
seg002:1078 loc_8748:                               ; CODE XREF: sub_8680+C2␘j
seg002:1078                 inc     [bp+var_2]
seg002:107B                 cmp     [bp+var_2], 100h
seg002:1080                 jl      short loc_8735
seg002:1082
seg002:1082 loc_8752:                               ; CODE XREF: sub_8680+A7␘j
seg002:1082                                         ; sub_8680+AE␘j
seg002:1082                 pop     si
seg002:1083                 mov     sp, bp
seg002:1085                 pop     bp
seg002:1086                 retf
seg002:1086 sub_8680        endp
seg002:1086
seg002:1086 ; ---------------------------------------------------------------------------
seg002:1087                 align 2
seg002:1088
