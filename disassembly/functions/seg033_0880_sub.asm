seg033:0880 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0880
seg033:0880
seg033:0880 sub_1E810       proc near               ; CODE XREF: sub_1E76B+45␘p
seg033:0880                                         ; sub_1E76B+87␘p
seg033:0880                 push    cx
seg033:0881                 cmp     bl, 9
seg033:0884                 jge     short loc_1E84B
seg033:0886                 mov     ax, 6000h
seg033:0889                 call    sub_1E7F9
seg033:088C                 call    sub_1ED12
seg033:088F                 push    ax
seg033:0890                 mov     ah, al
seg033:0892                 mov     al, 0A0h ; 'á'
seg033:0894                 add     al, bl
seg033:0896                 call    sub_1F03A
seg033:089B                 pop     ax
seg033:089C                 mov     al, ah
seg033:089E                 mov     ah, cl
seg033:08A0                 shl     ah, 1
seg033:08A2                 shl     ah, 1
seg033:08A4                 or      ah, al
seg033:08A6                 mov     al, [bx-370Dh]
seg033:08AA                 and     al, 20h
seg033:08AC                 or      ah, al
seg033:08AE                 mov     [bx-370Dh], ah
seg033:08B2                 mov     al, 0B0h ; '¦'
seg033:08B4                 add     al, bl
seg033:08B6                 call    sub_1F03A
seg033:08BB
seg033:08BB loc_1E84B:                              ; CODE XREF: sub_1E810+4␘j
seg033:08BB                 pop     cx
seg033:08BC                 retn
seg033:08BC sub_1E810       endp
seg033:08BC
seg033:08BD
