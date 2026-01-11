seg032:026A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:026A
seg032:026A
seg032:026A sub_1B40A       proc near               ; CODE XREF: seg032:0057␘p
seg032:026A                                         ; sub_1B1FC+1E␘p ...
seg032:026A                 cmp     byte_2B5CC, 0
seg032:026F                 jz      short locret_1B42A
seg032:0271                 cmp     byte_2BDB4, 0
seg032:0276                 jz      short locret_1B42A
seg032:0278                 cmp     byte_2BDB3, 0
seg032:027D                 jnz     short locret_1B42A
seg032:027F                 push    ax
seg032:0280                 push    dx
seg032:0281                 call    sub_1B42B
seg032:0284                 pop     dx
seg032:0285                 pop     ax
seg032:0286                 inc     byte_2BDB3
seg032:028A
seg032:028A locret_1B42A:                           ; CODE XREF: sub_1B40A+5␘j
seg032:028A                                         ; sub_1B40A+C␘j ...
seg032:028A                 retn
seg032:028A sub_1B40A       endp
seg032:028A
seg032:028B
