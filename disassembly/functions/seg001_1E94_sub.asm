seg001:1E94 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1E94
seg001:1E94
seg001:1E94 sub_3BD4        proc far                ; CODE XREF: sub_7BC␘P
seg001:1E94                                         ; sub_84C+3␘P
seg001:1E94                 cmp     byte_1F17C, 1
seg001:1E99                 jnz     short loc_3BF6
seg001:1E9B                 sub     ax, ax
seg001:1E9D                 push    ax
seg001:1E9E                 call    sub_D038
seg001:1EA3                 add     sp, 2
seg001:1EA6                 sub     ax, ax
seg001:1EA8                 push    ax
seg001:1EA9                 call    sub_1E040
seg001:1EAE                 add     sp, 2
seg001:1EB1                 call    sub_CFF7
seg001:1EB6
seg001:1EB6 loc_3BF6:                               ; CODE XREF: sub_3BD4+5␘j
seg001:1EB6                 mov     byte_1F17C, 0
seg001:1EBB                 retf
seg001:1EBB sub_3BD4        endp
seg001:1EBB
seg001:1EBC
