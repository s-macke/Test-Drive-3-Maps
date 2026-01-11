seg032:0799 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0799
seg032:0799
seg032:0799 sub_1B939       proc near               ; CODE XREF: sub_1B896:loc_1B8CA␘p
seg032:0799                                         ; sub_1B896+41␘p
seg032:0799                 xor     dx, dx
seg032:079B                 xchg    dl, byte_2B6B8
seg032:079F                 or      dl, dl
seg032:07A1                 jz      short loc_1B94E
seg032:07A3                 mov     byte_2B5D0, dl
seg032:07A7                 call    sub_1B968
seg032:07AA                 cmp     dl, al
seg032:07AC                 jz      short loc_1B963
seg032:07AE
seg032:07AE loc_1B94E:                              ; CODE XREF: sub_1B939+8␘j
seg032:07AE                 mov     dl, 18h
seg032:07B0                 xor     cx, cx
seg032:07B2                 xor     bx, bx
seg032:07B4                 mov     ax, 1130h
seg032:07B7                 push    es
seg032:07B8                 push    bp
seg032:07B9                 push    si
seg032:07BA                 push    di
seg032:07BB                 int     10h             ; - VIDEO - TEXT-MODE CHARACTER GENERATOR FUNCTIONS (PS, EGA, VGA)
seg032:07BB                                         ; AL = 00h, 10h: load user-specified patterns
seg032:07BB                                         ; AL = 01h, 11h: load ROM monochrome patterns (8 by 14)
seg032:07BB                                         ; AL = 02h, 12h: load ROM 8 by 8 double-dot patterns
seg032:07BB                                         ; AL = 03h: set block specifier
seg032:07BD                 pop     di
seg032:07BE                 pop     si
seg032:07BF                 pop     bp
seg032:07C0                 pop     es
seg032:07C1                 assume es:nothing
seg032:07C1                 inc     dl
seg032:07C3
seg032:07C3 loc_1B963:                              ; CODE XREF: sub_1B939+13␘j
seg032:07C3                 mov     byte_2B5D0, dl
seg032:07C7                 retn
seg032:07C7 sub_1B939       endp
seg032:07C7
seg032:07C8
