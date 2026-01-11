seg033:0628 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0628
seg033:0628
seg033:0628 sub_1E5B8       proc near               ; CODE XREF: sub_1E158+26␘p
seg033:0628                                         ; sub_1EF8A+10␙p
seg033:0628                 mov     ah, 0FFh
seg033:062A                 call    sub_1E6C9
seg033:062D                 mov     ah, 0FFh
seg033:062F                 call    sub_1E6C9
seg033:0632                 retn
seg033:0632 sub_1E5B8       endp
seg033:0632
seg033:0633 ; ---------------------------------------------------------------------------
seg033:0633                 push    bx
seg033:0634                 mov     ah, 0D0h ; '-'
seg033:0636                 call    sub_1E6C9
seg033:0639                 mov     al, bl
seg033:063B                 or      al, 0C0h
seg033:063D                 call    sub_1E6F9
seg033:0640                 mov     bl, ch
seg033:0642                 mov     al, [bx-39C2h]
seg033:0646                 call    sub_1E6F9
seg033:0649                 pop     bx
seg033:064A                 retn
seg033:064B
