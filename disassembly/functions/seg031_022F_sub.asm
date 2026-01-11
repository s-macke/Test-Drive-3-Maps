seg031:022F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:022F
seg031:022F
seg031:022F sub_1908F       proc near               ; CODE XREF: seg031:0197␘p
seg031:022F                                         ; seg031:01A0␘p ...
seg031:022F                 cmp     si, di
seg031:0231                 jnb     short locret_190A1
seg031:0233                 sub     di, 4
seg031:0236                 mov     ax, [di]
seg031:0238                 or      ax, [di+2]
seg031:023B                 jz      short sub_1908F
seg031:023D                 call    dword ptr [di]
seg031:023F                 jmp     short sub_1908F
seg031:0241 ; ---------------------------------------------------------------------------
seg031:0241
seg031:0241 locret_190A1:                           ; CODE XREF: sub_1908F+2␘j
seg031:0241                 retn
seg031:0241 sub_1908F       endp
seg031:0241
seg031:0242
