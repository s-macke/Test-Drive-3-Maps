seg033:09E9 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:09E9
seg033:09E9
seg033:09E9 sub_1E979       proc near               ; CODE XREF: sub_1E158+4A␘p
seg033:09E9                                         ; sub_1EF8A+33␙p
seg033:09E9                 push    si
seg033:09EA                 push    bx
seg033:09EB                 push    cx
seg033:09EC                 push    dx
seg033:09ED                 sub     si, si
seg033:09EF                 call    sub_1E286
seg033:09F2                 or      ax, ax
seg033:09F4                 jz      short loc_1E99F
seg033:09F6                 mov     bx, 0Ah
seg033:09F9
seg033:09F9 loc_1E989:                              ; CODE XREF: sub_1E979+24␙j
seg033:09F9                 mov     ch, [bx-35D5h]
seg033:09FD                 mov     [bx-37B7h], ch
seg033:0A01                 mov     word_2B9E3, bx
seg033:0A05                 mov     si, bx
seg033:0A07                 shl     si, 1
seg033:0A09                 call    sub_1E8B6
seg033:0A0C                 dec     bx
seg033:0A0D                 jns     short loc_1E989
seg033:0A0F
seg033:0A0F loc_1E99F:                              ; CODE XREF: sub_1E979+B␘j
seg033:0A0F                 pop     dx
seg033:0A10                 pop     cx
seg033:0A11                 pop     bx
seg033:0A12                 pop     si
seg033:0A13                 retn
seg033:0A13 sub_1E979       endp
seg033:0A13
seg033:0A14
