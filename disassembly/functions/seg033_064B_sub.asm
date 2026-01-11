seg033:064B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:064B
seg033:064B
seg033:064B sub_1E5DB       proc near               ; CODE XREF: seg033:06F6␙p
seg033:064B                 push    bx
seg033:064C                 call    sub_1E56B
seg033:064F                 jb      short loc_1E62D
seg033:0651                 mov     al, byte_2B9E5
seg033:0654                 mov     [bx-374Dh], al
seg033:0658                 mov     [si-378Dh], cx
seg033:065C                 mov     [bx-373Dh], ch
seg033:0660                 cmp     bl, byte_2B837
seg033:0664                 jnz     short loc_1E601
seg033:0666                 sub     ch, 24h ; '$'
seg033:0669                 push    bx
seg033:066A                 mov     bl, ch
seg033:066C                 mov     ch, [bx-38A2h]
seg033:0670                 pop     bx
seg033:0671
seg033:0671 loc_1E601:                              ; CODE XREF: sub_1E5DB+19␘j
seg033:0671                 mov     ah, 0D0h ; '-'
seg033:0673                 call    sub_1E6C9
seg033:0676                 mov     al, bl
seg033:0678                 or      al, 90h
seg033:067A                 call    sub_1E6F9
seg033:067D                 mov     al, ch
seg033:067F                 call    sub_1E6F9
seg033:0682                 mov     al, dl
seg033:0684                 call    sub_1E6F9
seg033:0687                 mov     ah, 0D0h ; '-'
seg033:0689                 call    sub_1E6C9
seg033:068C                 mov     al, 0E0h ; 'a'
seg033:068E                 or      al, bl
seg033:0690                 call    sub_1E6F9
seg033:0693                 sub     al, al
seg033:0695                 call    sub_1E6F9
seg033:0698                 mov     al, 40h ; '@'
seg033:069A                 call    sub_1E6F9
seg033:069D
seg033:069D loc_1E62D:                              ; CODE XREF: sub_1E5DB+4␘j
seg033:069D                 pop     bx
seg033:069E                 retn
seg033:069E sub_1E5DB       endp
seg033:069E
seg033:069F ; ---------------------------------------------------------------------------
seg033:069F                 push    dx
seg033:06A0                 push    bx
seg033:06A1                 push    cx
seg033:06A2                 mov     ax, 7005h
seg033:06A5                 call    sub_1E7F9
seg033:06A8                 mov     cx, [si-378Dh]
seg033:06AC                 cmp     ch, [bx-373Dh]
seg033:06B0                 jz      short loc_1E647
seg033:06B2                 mov     byte_2BA73, 1
seg033:06B7
seg033:06B7 loc_1E647:                              ; CODE XREF: seg033:06B0␘j
seg033:06B7                 mov     ah, 0D0h ; '-'
seg033:06B9                 call    sub_1E6C9
seg033:06BC                 mov     al, 0E0h ; 'a'
seg033:06BE                 or      al, bl
seg033:06C0                 call    sub_1E6F9
seg033:06C3                 sub     ax, ax
seg033:06C5                 mov     al, cl
seg033:06C7                 mov     dl, 31h ; '1'
seg033:06C9                 div     dl
seg033:06CB                 add     al, 40h ; '@'
seg033:06CD                 push    ax
seg033:06CE                 mov     al, ah
seg033:06D0                 call    sub_1E6F9
seg033:06D3                 pop     ax
seg033:06D4                 call    sub_1E6F9
seg033:06D7                 test    byte_2BA73, 1
seg033:06DC                 jz      short loc_1E68B
seg033:06DE                 mov     ch, [bx-373Dh]
seg033:06E2                 call    sub_1E68F
seg033:06E5                 mov     byte_2BA73, 0
seg033:06EA                 mov     cx, [si-378Dh]
seg033:06EE                 mov     dl, [bx-376Dh]
seg033:06F2                 mov     [bx-373Dh], ch
seg033:06F6                 call    sub_1E5DB
seg033:06F9                 jmp     short $+2
seg033:06FB
seg033:06FB loc_1E68B:                              ; CODE XREF: seg033:06DC␘j
seg033:06FB                 pop     cx
seg033:06FC                 pop     bx
seg033:06FD                 pop     dx
seg033:06FE                 retn
seg033:06FF
