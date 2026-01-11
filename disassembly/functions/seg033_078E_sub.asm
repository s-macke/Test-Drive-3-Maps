seg033:078E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:078E
seg033:078E
seg033:078E sub_1E71E       proc near               ; CODE XREF: sub_1E158+30␘p
seg033:078E                                         ; sub_1EF8A+1A␙p
seg033:078E                 push    si
seg033:078F                 mov     byte_2BA5A, 0
seg033:0794                 and     ax, 7Fh
seg033:0797                 jz      short loc_1E737
seg033:0799                 mov     si, ax
seg033:079B                 call    sub_1E286
seg033:079E                 or      ax, ax
seg033:07A0                 jz      short loc_1E737
seg033:07A2                 mov     byte_2BA5A, 1
seg033:07A7
seg033:07A7 loc_1E737:                              ; CODE XREF: sub_1E71E+9␘j
seg033:07A7                                         ; sub_1E71E+12␘j
seg033:07A7                 pop     si
seg033:07A8                 retn
seg033:07A8 sub_1E71E       endp
seg033:07A8
seg033:07A9
