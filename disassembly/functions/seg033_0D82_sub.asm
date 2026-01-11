seg033:0D82 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0D82
seg033:0D82
seg033:0D82 sub_1ED12       proc near               ; CODE XREF: sub_1E810+C␘p
seg033:0D82                                         ; sub_1EA4B+B␘p ...
seg033:0D82                 push    bx
seg033:0D83                 push    si
seg033:0D84                 shr     cl, 1
seg033:0D86                 shr     cl, 1
seg033:0D88                 shr     cl, 1
seg033:0D8A                 shr     cl, 1
seg033:0D8C                 mov     al, ch
seg033:0D8E                 sub     ah, ah
seg033:0D90                 mov     bl, 0Ch
seg033:0D92                 div     bl
seg033:0D94                 mov     bl, ah
seg033:0D96                 mov     ch, al
seg033:0D98                 shl     bx, 1
seg033:0D9A                 mov     si, word_2B9FE
seg033:0D9E                 mov     dx, [bx+si]
seg033:0DA0                 mov     si, word_2B9FC
seg033:0DA4                 mov     ax, [bx+si]
seg033:0DA6
seg033:0DA6 loc_1ED36:                              ; CODE XREF: sub_1ED12+2C␙j
seg033:0DA6                 or      cl, cl
seg033:0DA8                 jz      short loc_1ED40
seg033:0DAA                 add     ax, dx
seg033:0DAC                 dec     cl
seg033:0DAE                 jmp     short loc_1ED36
seg033:0DB0 ; ---------------------------------------------------------------------------
seg033:0DB0
seg033:0DB0 loc_1ED40:                              ; CODE XREF: sub_1ED12+26␘j
seg033:0DB0                 mov     cl, ch
seg033:0DB2                 pop     si
seg033:0DB3                 pop     bx
seg033:0DB4                 retn
seg033:0DB4 sub_1ED12       endp
seg033:0DB4
seg033:0DB5
