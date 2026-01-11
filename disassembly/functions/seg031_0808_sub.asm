seg031:0808 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0808
seg031:0808
seg031:0808 sub_19668       proc far                ; CODE XREF: sub_8DC+117␘P
seg031:0808                                         ; sub_8DC+1C3␘P ...
seg031:0808                 mov     dh, 8
seg031:080A
seg031:080A loc_1966A:                              ; CODE XREF: seg031:0806␘j
seg031:080A                 mov     ax, word_2B46E
seg031:080D                 or      ah, ah
seg031:080F                 jnz     short loc_19679
seg031:0811                 mov     word_2B46E, 0FFFFh
seg031:0817                 jmp     short locret_1967E
seg031:0819 ; ---------------------------------------------------------------------------
seg031:0819
seg031:0819 loc_19679:                              ; CODE XREF: sub_19668+7␘j
seg031:0819                 xchg    ax, dx
seg031:081A                 int     21h             ; DOS -
seg031:081C                 mov     ah, 0
seg031:081E
seg031:081E locret_1967E:                           ; CODE XREF: sub_19668+F␘j
seg031:081E                 retf
seg031:081E sub_19668       endp
seg031:081E
seg031:081E ; ---------------------------------------------------------------------------
seg031:081F                 align 2
seg031:0820
