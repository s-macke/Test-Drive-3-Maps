seg032:09C2 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:09C2
seg032:09C2
seg032:09C2 sub_1BB62       proc near               ; CODE XREF: seg032:04DD␘p
seg032:09C2                 cmp     cx, word_2BEBE
seg032:09C6                 jl      short loc_1BB7C
seg032:09C8                 cmp     cx, word_2BEC0
seg032:09CC                 jg      short loc_1BB7C
seg032:09CE                 cmp     dx, word_2BEC2
seg032:09D2                 jl      short loc_1BB7C
seg032:09D4                 cmp     dx, word_2BEC4
seg032:09D8                 jg      short loc_1BB7C
seg032:09DA                 stc
seg032:09DB                 retn
seg032:09DC ; ---------------------------------------------------------------------------
seg032:09DC
seg032:09DC loc_1BB7C:                              ; CODE XREF: sub_1BB62+4␘j
seg032:09DC                                         ; sub_1BB62+A␘j ...
seg032:09DC                 clc
seg032:09DD                 retn
seg032:09DD sub_1BB62       endp
seg032:09DD
seg032:09DE ; ---------------------------------------------------------------------------
seg032:09DE                 push    es
seg032:09DF                 xor     bx, bx
seg032:09E1                 mov     es, bx
seg032:09E3                 assume es:seg000
seg032:09E3                 mov     al, byte ptr es:loc_40E+2
seg032:09E7                 mov     ah, al
seg032:09E9                 mov     word_2BEEA, ax
seg032:09EC                 pop     es
seg032:09ED                 assume es:nothing
seg032:09ED                 mov     ah, 0Fh
seg032:09EF                 call    sub_1B83E
seg032:09F2                 mov     dl, bh
seg032:09F4                 mov     dh, bh
seg032:09F6                 mov     byte_2B6BC, al
seg032:09F9                 mov     byte ptr word_2B5CD, al
seg032:09FC                 mov     word_2B633, dx
seg032:0A00                 call    sub_1BBA4
seg032:0A03                 retf
seg032:0A04
