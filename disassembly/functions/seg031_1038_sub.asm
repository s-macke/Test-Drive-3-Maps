seg031:1038 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1038
seg031:1038 ; Attributes: bp-based frame
seg031:1038
seg031:1038 sub_19E98       proc far                ; CODE XREF: sub_190A2+21␘P
seg031:1038                                         ; sub_19DFA+4A␘P ...
seg031:1038
seg031:1038 var_4           = word ptr -4
seg031:1038 arg_0           = word ptr  6
seg031:1038
seg031:1038                 push    bp
seg031:1039                 mov     bp, sp
seg031:103B                 sub     sp, 4
seg031:103E                 push    di
seg031:103F                 push    si
seg031:1040                 mov     si, [bp+arg_0]
seg031:1043                 sub     di, di
seg031:1045                 mov     al, [si+6]
seg031:1048                 and     al, 3
seg031:104A                 cmp     al, 2
seg031:104C                 jnz     short loc_19EF6
seg031:104E                 test    byte ptr [si+6], 8
seg031:1052                 jnz     short loc_19ECD
seg031:1054                 mov     bx, si
seg031:1056                 sub     bx, 0C39Ah
seg031:105A                 mov     cl, 3
seg031:105C                 sar     bx, cl
seg031:105E                 mov     ax, bx
seg031:1060                 shl     bx, 1
seg031:1062                 add     bx, ax
seg031:1064                 shl     bx, 1
seg031:1066                 test    byte ptr [bx-3BC6h], 1
seg031:106B                 jz      short loc_19EF6
seg031:106D
seg031:106D loc_19ECD:                              ; CODE XREF: sub_19E98+1A␘j
seg031:106D                 mov     ax, [si]
seg031:106F                 sub     ax, [si+4]
seg031:1072                 mov     [bp+var_4], ax
seg031:1075                 or      ax, ax
seg031:1077                 jle     short loc_19EF6
seg031:1079                 push    ax
seg031:107A                 push    word ptr [si+4]
seg031:107D                 mov     al, [si+7]
seg031:1080                 cbw
seg031:1081                 push    ax
seg031:1082                 call    sub_1A930
seg031:1087                 add     sp, 6
seg031:108A                 cmp     ax, [bp+var_4]
seg031:108D                 jz      short loc_19EF6
seg031:108F                 or      byte ptr [si+6], 20h
seg031:1093                 mov     di, 0FFFFh
seg031:1096
seg031:1096 loc_19EF6:                              ; CODE XREF: sub_19E98+14␘j
seg031:1096                                         ; sub_19E98+33␘j ...
seg031:1096                 mov     ax, [si+4]
seg031:1099                 mov     [si], ax
seg031:109B                 mov     word ptr [si+2], 0
seg031:10A0                 mov     ax, di
seg031:10A2                 pop     si
seg031:10A3                 pop     di
seg031:10A4                 mov     sp, bp
seg031:10A6                 pop     bp
seg031:10A7                 retf
seg031:10A7 sub_19E98       endp
seg031:10A7
seg031:10A8
