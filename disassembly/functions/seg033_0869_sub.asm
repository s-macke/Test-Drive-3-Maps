seg033:0869 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0869
seg033:0869
seg033:0869 sub_1E7F9       proc near               ; CODE XREF: seg033:06A5␘p
seg033:0869                                         ; sub_1E7F9+7␙j ...
seg033:0869                 cmp     ch, ah
seg033:086B                 jle     short loc_1E802
seg033:086D                 sub     ch, 0Ch
seg033:0870                 jmp     short sub_1E7F9
seg033:0872 ; ---------------------------------------------------------------------------
seg033:0872
seg033:0872 loc_1E802:                              ; CODE XREF: sub_1E7F9+2␘j
seg033:0872                                         ; sub_1E7F9+10␙j
seg033:0872                 cmp     ch, al
seg033:0874                 jge     short loc_1E80B
seg033:0876                 add     ch, 0Ch
seg033:0879                 jmp     short loc_1E802
seg033:087B ; ---------------------------------------------------------------------------
seg033:087B
seg033:087B loc_1E80B:                              ; CODE XREF: sub_1E7F9+B␘j
seg033:087B                 mov     [si-378Dh], cx
seg033:087F                 retn
seg033:087F sub_1E7F9       endp
seg033:087F
seg033:0880
