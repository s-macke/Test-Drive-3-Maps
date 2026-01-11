seg033:07A9 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:07A9
seg033:07A9
seg033:07A9 sub_1E739       proc near               ; CODE XREF: sub_1E76B+22␙p
seg033:07A9                                         ; sub_1E76B+2B␙p ...
seg033:07A9                 push    bx
seg033:07AA                 mov     bl, [si-3621h]
seg033:07AE                 cmp     byte ptr [bx-360Bh], 1
seg033:07B3                 jz      short loc_1E757
seg033:07B5                 cmp     bl, 6
seg033:07B8                 jg      short loc_1E757
seg033:07BA                 test    byte ptr [bx-35E5h], 0FFh
seg033:07BF                 jnz     short loc_1E757
seg033:07C1                 mov     ah, [bx-35F5h]
seg033:07C5                 jmp     short loc_1E75E
seg033:07C7 ; ---------------------------------------------------------------------------
seg033:07C7
seg033:07C7 loc_1E757:                              ; CODE XREF: sub_1E739+A␘j
seg033:07C7                                         ; sub_1E739+F␘j ...
seg033:07C7                 mov     ah, 3Fh ; '?'
seg033:07C9                 sub     ah, dl
seg033:07CB                 and     ah, 3Fh
seg033:07CE
seg033:07CE loc_1E75E:                              ; CODE XREF: sub_1E739+1C␘j
seg033:07CE                 mov     al, [bx-3633h]
seg033:07D2                 add     al, 40h ; '@'
seg033:07D4                 call    sub_1F03A
seg033:07D9                 pop     bx
seg033:07DA                 retn
seg033:07DA sub_1E739       endp
seg033:07DA
seg033:07DB
