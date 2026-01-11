seg031:0202 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0202
seg031:0202
seg031:0202 sub_19062       proc near               ; CODE XREF: sub_1901B+3D␘p
seg031:0202                 mov     cx, word_2BC40
seg031:0206                 jcxz    short loc_1906F
seg031:0208                 mov     bx, 2
seg031:020B                 call    dword ptr unk_2BC3E
seg031:020F
seg031:020F loc_1906F:                              ; CODE XREF: sub_19062+4␘j
seg031:020F                 push    ds
seg031:0210                 lds     dx, dword_2B427
seg031:0214                 mov     ax, 2500h
seg031:0217                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg031:0217                                         ; AL = interrupt number
seg031:0217                                         ; DS:DX = new vector to be used for specified interrupt
seg031:0219                 pop     ds
seg031:021A                 cmp     byte_2B464, 0
seg031:021F                 jz      short locret_1908E
seg031:0221                 push    ds
seg031:0222                 mov     al, byte_2B465
seg031:0225                 lds     dx, dword_2B466
seg031:0229                 mov     ah, 25h
seg031:022B                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg031:022B                                         ; AL = interrupt number
seg031:022B                                         ; DS:DX = new vector to be used for specified interrupt
seg031:022D                 pop     ds
seg031:022E
seg031:022E locret_1908E:                           ; CODE XREF: sub_19062+1D␘j
seg031:022E                 retn
seg031:022E sub_19062       endp
seg031:022E
seg031:022F
