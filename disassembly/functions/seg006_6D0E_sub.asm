seg006:6D0E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6D0E
seg006:6D0E
seg006:6D0E sub_14B5E       proc near               ; CODE XREF: sub_153B8:loc_153FC␙p
seg006:6D0E                 cmp     byte_2849E, 0
seg006:6D13                 jz      short loc_14B94
seg006:6D15                 cmp     byte_2849E, 2
seg006:6D1A                 jnz     short loc_14BB7
seg006:6D1C                 mov     bx, word_2AA95
seg006:6D20                 or      bx, bx
seg006:6D22                 jz      short loc_14BB7
seg006:6D24                 mov     ax, [bx-5B3Bh]
seg006:6D28                 mov     word_28CED, ax
seg006:6D2B                 mov     ax, [bx-59FBh]
seg006:6D2F                 mov     word_28F6D, ax
seg006:6D32                 mov     ax, [bx-58BBh]
seg006:6D36                 shr     ax, 1
seg006:6D38                 shr     ax, 1
seg006:6D3A                 shr     ax, 1
seg006:6D3C                 add     ax, 30h ; '0'
seg006:6D3F                 mov     word_291ED, ax
seg006:6D42                 jmp     short loc_14BB7
seg006:6D44 ; ---------------------------------------------------------------------------
seg006:6D44
seg006:6D44 loc_14B94:                              ; CODE XREF: sub_14B5E+5␘j
seg006:6D44                 cmp     byte_28477, 0
seg006:6D49                 jnz     short loc_14BA7
seg006:6D4B                 mov     ax, word_291DF
seg006:6D4E                 mov     word_28493, ax
seg006:6D51                 mov     ax, word_2847B
seg006:6D54                 mov     word_28491, ax
seg006:6D57
seg006:6D57 loc_14BA7:                              ; CODE XREF: sub_14B5E+3B␘j
seg006:6D57                 mov     cx, word_28CDF
seg006:6D5B                 mov     dx, word_28F5F
seg006:6D5F                 mov     word_284A0, cx
seg006:6D63                 mov     word_284A2, dx
seg006:6D67
seg006:6D67 loc_14BB7:                              ; CODE XREF: sub_14B5E+C␘j
seg006:6D67                                         ; sub_14B5E+14␘j ...
seg006:6D67                 sub     cx, cx
seg006:6D69                 sub     dx, dx
seg006:6D6B                 cmp     byte_28477, ch
seg006:6D6F                 jz      short loc_14BD0
seg006:6D71                 mov     bl, byte_28497
seg006:6D75                 mov     dl, byte_28498
seg006:6D79                 call    sub_14C68
seg006:6D7C                 shl     cx, 1
seg006:6D7E                 shl     dx, 1
seg006:6D80
seg006:6D80 loc_14BD0:                              ; CODE XREF: sub_14B5E+61␘j
seg006:6D80                 add     cx, word_28CDF
seg006:6D84                 add     dx, word_28F5F
seg006:6D88                 and     cx, 7FFFh
seg006:6D8C                 and     dx, 3FFFh
seg006:6D90                 mov     word_28486, cx
seg006:6D94                 mov     word_28488, dx
seg006:6D98                 sub     ax, ax
seg006:6D9A                 cmp     byte_285B4, ah
seg006:6D9E                 jnz     short loc_14BFA
seg006:6DA0                 mov     ax, 5
seg006:6DA3                 cmp     byte_285B3, ah
seg006:6DA7                 jnz     short loc_14BFA
seg006:6DA9                 dec     ax
seg006:6DAA
seg006:6DAA loc_14BFA:                              ; CODE XREF: sub_14B5E+90␘j
seg006:6DAA                                         ; sub_14B5E+99␘j
seg006:6DAA                 mov     word_28A6F, ax
seg006:6DAD                 mov     word_28CEF, cx
seg006:6DB1                 mov     word_28F6F, dx
seg006:6DB5                 mov     al, byte_285A9
seg006:6DB8                 and     al, 7
seg006:6DBA                 cmp     al, 4
seg006:6DBC                 jz      short loc_14C22
seg006:6DBE                 jb      short loc_14C18
seg006:6DC0                 sub     word_28CEF, 900h
seg006:6DC6                 jmp     short loc_14C22
seg006:6DC8 ; ---------------------------------------------------------------------------
seg006:6DC8
seg006:6DC8 loc_14C18:                              ; CODE XREF: sub_14B5E+B0␘j
seg006:6DC8                 or      al, al
seg006:6DCA                 jz      short loc_14C22
seg006:6DCC                 add     word_28CEF, 900h
seg006:6DD2
seg006:6DD2 loc_14C22:                              ; CODE XREF: sub_14B5E+AE␘j
seg006:6DD2                                         ; sub_14B5E+B8␘j ...
seg006:6DD2                 inc     al
seg006:6DD4                 and     al, 7
seg006:6DD6                 cmp     al, 3
seg006:6DD8                 jz      short loc_14C3E
seg006:6DDA                 ja      short loc_14C34
seg006:6DDC                 add     word_28F6F, 900h
seg006:6DE2                 jmp     short loc_14C3E
seg006:6DE4 ; ---------------------------------------------------------------------------
seg006:6DE4
seg006:6DE4 loc_14C34:                              ; CODE XREF: sub_14B5E+CC␘j
seg006:6DE4                 cmp     al, 7
seg006:6DE6                 jnb     short loc_14C3E
seg006:6DE8                 sub     word_28F6F, 900h
seg006:6DEE
seg006:6DEE loc_14C3E:                              ; CODE XREF: sub_14B5E+CA␘j
seg006:6DEE                                         ; sub_14B5E+D4␘j ...
seg006:6DEE                 mov     ax, word_28493
seg006:6DF1                 add     ax, 3C0h
seg006:6DF4                 mov     word_291EF, ax
seg006:6DF7                 mov     bl, byte_28480
seg006:6DFB                 shl     bl, 1
seg006:6DFD                 rcl     cx, 1
seg006:6DFF                 shl     bl, 1
seg006:6E01                 rcl     cx, 1
seg006:6E03                 mov     bl, byte_28481
seg006:6E07                 shl     bl, 1
seg006:6E09                 rcl     dx, 1
seg006:6E0B                 shl     bl, 1
seg006:6E0D                 rcl     dx, 1
seg006:6E0F                 mov     word_2848D, cx
seg006:6E13                 mov     word_2848F, dx
seg006:6E17                 retn
seg006:6E17 sub_14B5E       endp
seg006:6E17
seg006:6E18
