seg031:2270 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:2270
seg031:2270
seg031:2270 sub_1B0D0       proc far                ; CODE XREF: sub_1A930+51␘P
seg031:2270                 pop     cx
seg031:2271                 pop     dx
seg031:2272                 mov     ax, word_2B64A
seg031:2275                 cmp     ax, sp
seg031:2277                 jnb     short loc_1B0E0
seg031:2279                 sub     ax, sp
seg031:227B                 neg     ax
seg031:227D
seg031:227D loc_1B0DD:                              ; CODE XREF: sub_1B0D0+12␙j
seg031:227D                 push    dx
seg031:227E                 push    cx
seg031:227F                 retf
seg031:2280 ; ---------------------------------------------------------------------------
seg031:2280
seg031:2280 loc_1B0E0:                              ; CODE XREF: sub_1B0D0+7␘j
seg031:2280                 xor     ax, ax
seg031:2282                 jmp     short loc_1B0DD
seg031:2282 sub_1B0D0       endp
seg031:2282
seg031:2284
