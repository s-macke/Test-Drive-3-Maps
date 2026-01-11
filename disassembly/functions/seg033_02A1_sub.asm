seg033:02A1 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:02A1
seg033:02A1
seg033:02A1 sub_1E231       proc near               ; CODE XREF: sub_1E158:loc_1E1ED␘p
seg033:02A1                                         ; sub_1EF8A:loc_1EFF1␙p
seg033:02A1                 mov     al, [bx-36F9h]
seg033:02A5                 mov     byte_2B6C9, al
seg033:02A8                 shl     bx, 1
seg033:02AA                 mov     ax, [bx-36CCh]
seg033:02AE                 mov     off_2B9EC, ax
seg033:02B1                 mov     ax, [bx-36C2h]
seg033:02B5                 mov     off_2B9EE, ax
seg033:02B8                 mov     ax, [bx-36B8h]
seg033:02BC                 mov     off_2B9F0, ax
seg033:02BF                 mov     ax, [bx-36AEh]
seg033:02C3                 mov     off_2B9F2, ax
seg033:02C6                 mov     ax, [bx-36A4h]
seg033:02CA                 mov     off_2B9F4, ax
seg033:02CD                 mov     ax, [bx-36E0h]
seg033:02D1                 mov     word_2B9FC, ax
seg033:02D4                 mov     ax, [bx-36D6h]
seg033:02D8                 mov     word_2B9FE, ax
seg033:02DB                 cmp     byte_2B6C9, 4
seg033:02E0                 jnz     short locret_1E285
seg033:02E2                 mov     ch, 26h ; '&'
seg033:02E4                 mov     bx, 9
seg033:02E7                 mov     si, bx
seg033:02E9                 shl     si, 1
seg033:02EB                 mov     dl, 0
seg033:02ED                 call    sub_1E76B
seg033:02F0                 mov     ch, 26h ; '&'
seg033:02F2                 call    sub_1E84D
seg033:02F5
seg033:02F5 locret_1E285:                           ; CODE XREF: sub_1E231+3F␘j
seg033:02F5                 retn
seg033:02F5 sub_1E231       endp
seg033:02F5
seg033:02F6
