seg033:014D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:014D
seg033:014D
seg033:014D sub_1E0DD       proc near               ; CODE XREF: sub_1DFD7+53␘p
seg033:014D                                         ; seg033:01AA␙p
seg033:014D                 push    bx
seg033:014E                 push    cx
seg033:014F                 mov     al, 40h ; '@'
seg033:0151                 mov     cx, 0Fh
seg033:0154
seg033:0154 loc_1E0E4:                              ; CODE XREF: sub_1E0DD+2F␙j
seg033:0154                 mov     bx, cx
seg033:0156                 cmp     byte ptr [bx-374Dh], 2
seg033:015B                 jb      short loc_1E102
seg033:015D                 cmp     al, [bx-372Dh]
seg033:0161                 jb      short loc_1E10B
seg033:0163                 push    bx
seg033:0164                 mov     bl, [bx-374Dh]
seg033:0168                 push    bx
seg033:0169                 call    sub_1E078
seg033:016E                 add     sp, 2
seg033:0171                 pop     bx
seg033:0172
seg033:0172 loc_1E102:                              ; CODE XREF: sub_1E0DD+E␘j
seg033:0172                 mov     byte ptr [bx-374Dh], 1
seg033:0177                 mov     [bx-372Dh], al
seg033:017B
seg033:017B loc_1E10B:                              ; CODE XREF: sub_1E0DD+14␘j
seg033:017B                 dec     cx
seg033:017C                 jns     short loc_1E0E4
seg033:017E                 pop     cx
seg033:017F                 pop     bx
seg033:0180                 retn
seg033:0180 sub_1E0DD       endp
seg033:0180
seg033:0181 ; ---------------------------------------------------------------------------
seg033:0181                 push    ax
seg033:0182                 push    bx
seg033:0183                 push    cx
seg033:0184                 push    dx
seg033:0185                 test    byte_2B6C8, 10h
seg033:018A                 jz      short loc_1E13D
seg033:018C                 test    byte_2B6C7, 1
seg033:0191                 jnz     short loc_1E13D
seg033:0193                 test    byte_2B6C6, 1
seg033:0198                 jz      short loc_1E13D
seg033:019A                 mov     word_2B921, 1
seg033:01A0                 mov     byte_2B928, 0
seg033:01A5                 or      byte_2B6C7, 1
seg033:01AA                 call    sub_1E0DD
seg033:01AD
seg033:01AD loc_1E13D:                              ; CODE XREF: seg033:018A␘j
seg033:01AD                                         ; seg033:0191␘j ...
seg033:01AD                 pop     dx
seg033:01AE                 pop     cx
seg033:01AF                 pop     bx
seg033:01B0                 pop     ax
seg033:01B1                 retf
seg033:01B2 ; ---------------------------------------------------------------------------
seg033:01B2                 or      byte_2B6C6, 1
seg033:01B7                 retf
seg033:01B8 ; ---------------------------------------------------------------------------
seg033:01B8                 test    byte_2B6C7, 1
seg033:01BD                 jz      short locret_1E157
seg033:01BF                 call    sub_1DF92
seg033:01C2                 and     byte_2B6C6, 0FEh
seg033:01C7
seg033:01C7 locret_1E157:                           ; CODE XREF: seg033:01BD␘j
seg033:01C7                 retf
seg033:01C8
