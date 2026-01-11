seg033:0D18 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0D18
seg033:0D18
seg033:0D18 sub_1ECA8       proc near               ; CODE XREF: seg033:03ED␘p
seg033:0D18                                         ; DATA XREF: dseg:off_2B9F8␙o
seg033:0D18                 mov     si, 4
seg033:0D1B
seg033:0D1B loc_1ECAB:                              ; CODE XREF: sub_1ECA8+18␙j
seg033:0D1B                 dec     word ptr [si-34E9h]
seg033:0D1F                 jns     short loc_1ECBD
seg033:0D21                 neg     word ptr [si-34F5h]
seg033:0D25                 mov     ax, [si-34E3h]
seg033:0D29                 mov     [si-34E9h], ax
seg033:0D2D
seg033:0D2D loc_1ECBD:                              ; CODE XREF: sub_1ECA8+7␘j
seg033:0D2D                 sub     si, 2
seg033:0D30                 jns     short loc_1ECAB
seg033:0D32                 test    byte_2B6C6, 4
seg033:0D37                 jz      short loc_1ECE5
seg033:0D39                 mov     bx, 2
seg033:0D3C
seg033:0D3C loc_1ECCC:                              ; CODE XREF: sub_1ECA8+3B␙j
seg033:0D3C                 mov     si, bx
seg033:0D3E                 mov     al, bl
seg033:0D40                 inc     al
seg033:0D42                 mov     byte_2B9E5, al
seg033:0D45                 shl     si, 1
seg033:0D47                 mov     al, [bx-34BFh]
seg033:0D4B                 cmp     al, 0FFh
seg033:0D4D                 jz      short loc_1ECE2
seg033:0D4F                 call    sub_1EC75
seg033:0D52
seg033:0D52 loc_1ECE2:                              ; CODE XREF: sub_1ECA8+35␘j
seg033:0D52                 dec     bx
seg033:0D53                 jnz     short loc_1ECCC
seg033:0D55
seg033:0D55 loc_1ECE5:                              ; CODE XREF: sub_1ECA8+1F␘j
seg033:0D55                 mov     byte_2B9E5, 1
seg033:0D5A                 mov     bx, 8
seg033:0D5D                 sub     si, si
seg033:0D5F
seg033:0D5F loc_1ECEF:                              ; CODE XREF: sub_1ECA8+67␙j
seg033:0D5F                 push    bx
seg033:0D60                 cmp     byte ptr [bx-374Dh], 1
seg033:0D65                 jnz     short loc_1ED0D
seg033:0D67                 mov     bl, [bx-38B2h]
seg033:0D6B                 cmp     bl, 0Fh
seg033:0D6E                 ja      short loc_1ED0D
seg033:0D70                 mov     al, bl
seg033:0D72                 mov     ch, [bx-373Dh]
seg033:0D76                 or      ch, ch
seg033:0D78                 jz      short loc_1ED0D
seg033:0D7A                 call    sub_1EC75
seg033:0D7D
seg033:0D7D loc_1ED0D:                              ; CODE XREF: sub_1ECA8+4D␘j
seg033:0D7D                                         ; sub_1ECA8+56␘j ...
seg033:0D7D                 pop     bx
seg033:0D7E                 dec     bx
seg033:0D7F                 jns     short loc_1ECEF
seg033:0D81                 retn
seg033:0D81 sub_1ECA8       endp
seg033:0D81
seg033:0D82
