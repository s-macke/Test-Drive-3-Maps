seg033:106E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:106E
seg033:106E
seg033:106E sub_1EFFE       proc far                ; CODE XREF: sub_D045+D␘P
seg033:106E                                         ; sub_D045+A7␘P
seg033:106E                 push    ax
seg033:106F                 push    bx
seg033:1070                 push    cx
seg033:1071                 push    dx
seg033:1072                 push    es
seg033:1073                 push    di
seg033:1074                 and     byte_2B6C7, 0FBh
seg033:1079                 mov     cx, 2
seg033:107C
seg033:107C loc_1F00C:                              ; CODE XREF: sub_1EFFE+20␙j
seg033:107C                 mov     bx, cx
seg033:107E                 mov     al, [bx-34BFh]
seg033:1082                 sub     ah, ah
seg033:1084                 push    ax
seg033:1085                 call    sub_1E078
seg033:108A                 add     sp, 2
seg033:108D                 dec     cx
seg033:108E                 jns     short loc_1F00C
seg033:1090                 pop     di
seg033:1091                 pop     es
seg033:1092                 pop     dx
seg033:1093                 pop     cx
seg033:1094                 pop     bx
seg033:1095                 pop     ax
seg033:1096                 retf
seg033:1096 sub_1EFFE       endp
seg033:1096
seg033:1096 seg033          ends
seg033:1096
seg034:0007 ; ---------------------------------------------------------------------------
seg034:0007
seg034:0007 ; Segment type: Pure code
seg034:0007 seg034          segment byte public 'CODE' use16
seg034:0007                 assume cs:seg034
seg034:0007                 ;org 7
seg034:0007                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg034:0007                 align 2
seg034:0008
