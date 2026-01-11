seg033:0739 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0739
seg033:0739
seg033:0739 sub_1E6C9       proc near               ; CODE XREF: sub_1E5B8+2␘p
seg033:0739                                         ; sub_1E5B8+7␘p ...
seg033:0739                 push    cx
seg033:073A                 push    dx
seg033:073B                 mov     dx, 331h
seg033:073E                 mov     cx, 4E20h
seg033:0741
seg033:0741 loc_1E6D1:                              ; CODE XREF: sub_1E6C9+D␙j
seg033:0741                 in      al, dx
seg033:0742                 test    al, 40h
seg033:0744                 jz      short loc_1E6DC
seg033:0746                 loop    loc_1E6D1
seg033:0748                 sub     ax, ax
seg033:074A                 jmp     short loc_1E6F6
seg033:074C ; ---------------------------------------------------------------------------
seg033:074C
seg033:074C loc_1E6DC:                              ; CODE XREF: sub_1E6C9+B␘j
seg033:074C                 pushf
seg033:074D                 cli
seg033:074E                 mov     al, ah
seg033:0750                 out     dx, al
seg033:0751                 mov     cx, 4E20h
seg033:0754
seg033:0754 loc_1E6E4:                              ; CODE XREF: sub_1E6C9+20␙j
seg033:0754                 in      al, dx
seg033:0755                 or      al, al
seg033:0757                 jns     short loc_1E6ED
seg033:0759                 loop    loc_1E6E4
seg033:075B                 jmp     short loc_1E6F3
seg033:075D ; ---------------------------------------------------------------------------
seg033:075D
seg033:075D loc_1E6ED:                              ; CODE XREF: sub_1E6C9+1E␘j
seg033:075D                 dec     dx
seg033:075E                 in      al, dx
seg033:075F                 cmp     al, 0FEh ; '¦'
seg033:0761                 jz      short loc_1E6F5
seg033:0763
seg033:0763 loc_1E6F3:                              ; CODE XREF: sub_1E6C9+22␘j
seg033:0763                 sub     ax, ax
seg033:0765
seg033:0765 loc_1E6F5:                              ; CODE XREF: sub_1E6C9+28␘j
seg033:0765                 popf
seg033:0766
seg033:0766 loc_1E6F6:                              ; CODE XREF: sub_1E6C9+11␘j
seg033:0766                 pop     dx
seg033:0767                 pop     cx
seg033:0768                 retn
seg033:0768 sub_1E6C9       endp
seg033:0768
seg033:0769
