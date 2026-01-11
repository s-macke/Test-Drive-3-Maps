seg033:026E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:026E
seg033:026E
seg033:026E sub_1E1FE       proc near               ; CODE XREF: sub_1E158+68␘p
seg033:026E                                         ; sub_1E158+78␘p ...
seg033:026E                 push    bx
seg033:026F
seg033:026F loc_1E1FF:                              ; CODE XREF: sub_1E1FE+7␙j
seg033:026F                 mov     bx, cx
seg033:0271                 mov     [bx-38B2h], bl
seg033:0275                 loop    loc_1E1FF
seg033:0277                 pop     bx
seg033:0278                 retn
seg033:0278 sub_1E1FE       endp
seg033:0278
seg033:0279
