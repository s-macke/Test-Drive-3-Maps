seg031:225F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:225F
seg031:225F
seg031:225F sub_1B0BF       proc near               ; CODE XREF: sub_1AF2C+EC␘p
seg031:225F                 mov     ax, word_2B435
seg031:2262                 not     ax
seg031:2264                 and     ax, cx
seg031:2266                 xor     cx, cx
seg031:2268                 test    al, 80h
seg031:226A                 jnz     short locret_1B0CF
seg031:226C                 or      cl, 1
seg031:226F
seg031:226F locret_1B0CF:                           ; CODE XREF: sub_1B0BF+B␘j
seg031:226F                 retn
seg031:226F sub_1B0BF       endp
seg031:226F
seg031:2270
