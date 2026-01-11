seg033:08BD ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:08BD
seg033:08BD
seg033:08BD sub_1E84D       proc near               ; CODE XREF: sub_1E231+51␘p
seg033:08BD                                         ; sub_1E76B+68␘p
seg033:08BD                 push    bx
seg033:08BE                 push    cx
seg033:08BF                 cmp     bl, 9
seg033:08C2                 ja      short loc_1E8B3
seg033:08C4                 jz      short loc_1E87E
seg033:08C6                 test    byte_2BA73, 1
seg033:08CB                 jnz     short loc_1E86D
seg033:08CD                 sub     ch, 13h
seg033:08D0
seg033:08D0 loc_1E860:                              ; CODE XREF: sub_1E84D+18␙j
seg033:08D0                 jns     short loc_1E867
seg033:08D2                 add     ch, 0Ch
seg033:08D5                 jmp     short loc_1E860
seg033:08D7 ; ---------------------------------------------------------------------------
seg033:08D7
seg033:08D7 loc_1E867:                              ; CODE XREF: sub_1E84D:loc_1E860␘j
seg033:08D7                 cmp     ch, [bx-373Dh]
seg033:08DB                 jnz     short loc_1E8B3
seg033:08DD
seg033:08DD loc_1E86D:                              ; CODE XREF: sub_1E84D+E␘j
seg033:08DD                 mov     ah, [bx-370Dh]
seg033:08E1                 and     ah, 1Fh
seg033:08E4                 mov     [bx-370Dh], ah
seg033:08E8                 mov     al, 0B0h ; '¦'
seg033:08EA                 add     al, bl
seg033:08EC                 jmp     short loc_1E8A3
seg033:08EE ; ---------------------------------------------------------------------------
seg033:08EE
seg033:08EE loc_1E87E:                              ; CODE XREF: sub_1E84D+7␘j
seg033:08EE                 cmp     ch, 24h ; '$'
seg033:08F1                 jge     short loc_1E885
seg033:08F3                 mov     ch, 24h ; '$'
seg033:08F5
seg033:08F5 loc_1E885:                              ; CODE XREF: sub_1E84D+34␘j
seg033:08F5                 sub     ch, 24h ; '$'
seg033:08F8                 mov     bl, ch
seg033:08FA                 mov     bl, [bx-35CAh]
seg033:08FE                 cmp     bl, 0Ah
seg033:0901                 ja      short loc_1E8B3
seg033:0903                 mov     ah, [bx-363Eh]
seg033:0907                 not     ah
seg033:0909                 and     ah, byte_2B6CC
seg033:090D                 mov     byte_2B6CC, ah
seg033:0911                 mov     al, 0BDh ; '+'
seg033:0913
seg033:0913 loc_1E8A3:                              ; CODE XREF: sub_1E84D+2F␘j
seg033:0913                 call    sub_1F03A
seg033:0918                 mov     word ptr [si-378Dh], 0
seg033:091E                 mov     byte ptr [bx-373Dh], 0
seg033:0923
seg033:0923 loc_1E8B3:                              ; CODE XREF: sub_1E84D+5␘j
seg033:0923                                         ; sub_1E84D+1E␘j ...
seg033:0923                 pop     cx
seg033:0924                 pop     bx
seg033:0925                 retn
seg033:0925 sub_1E84D       endp
seg033:0925
seg033:0926
