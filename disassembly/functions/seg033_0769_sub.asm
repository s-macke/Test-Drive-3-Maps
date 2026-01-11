seg033:0769 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0769
seg033:0769
seg033:0769 sub_1E6F9       proc near               ; CODE XREF: seg033:063D␘p
seg033:0769                                         ; seg033:0646␘p ...
seg033:0769                 push    cx
seg033:076A                 push    dx
seg033:076B                 mov     ah, al
seg033:076D                 mov     dx, 331h
seg033:0770                 mov     cx, 4E20h
seg033:0773
seg033:0773 loc_1E703:                              ; CODE XREF: sub_1E6F9+F␙j
seg033:0773                 in      al, dx
seg033:0774                 test    al, 40h
seg033:0776                 jz      short loc_1E70C
seg033:0778                 loop    loc_1E703
seg033:077A                 jmp     short loc_1E710
seg033:077C ; ---------------------------------------------------------------------------
seg033:077C
seg033:077C loc_1E70C:                              ; CODE XREF: sub_1E6F9+D␘j
seg033:077C                 dec     dx
seg033:077D                 mov     al, ah
seg033:077F                 out     dx, al
seg033:0780
seg033:0780 loc_1E710:                              ; CODE XREF: sub_1E6F9+11␘j
seg033:0780                 pop     dx
seg033:0781                 pop     cx
seg033:0782                 retn
seg033:0782 sub_1E6F9       endp
seg033:0782
seg033:0783 ; ---------------------------------------------------------------------------
seg033:0783                 mov     ah, 0D0h ; '-'
seg033:0785                 call    sub_1E6C9
seg033:0788                 mov     ah, 0B9h ; '¦'
seg033:078A                 call    sub_1E6C9
seg033:078D                 retn
seg033:078E
