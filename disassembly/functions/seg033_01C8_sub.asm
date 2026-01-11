seg033:01C8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:01C8
seg033:01C8 ; Attributes: bp-based frame
seg033:01C8
seg033:01C8 sub_1E158       proc far                ; CODE XREF: sub_3A2A+17␘P
seg033:01C8
seg033:01C8 arg_0           = word ptr  6
seg033:01C8
seg033:01C8                 push    bp
seg033:01C9                 mov     bp, sp
seg033:01CB                 push    ax
seg033:01CC                 push    bx
seg033:01CD                 push    cx
seg033:01CE                 push    dx
seg033:01CF                 push    es
seg033:01D0                 push    si
seg033:01D1                 push    di
seg033:01D2                 mov     byte_2B6C7, 0
seg033:01D7                 mov     word_2BBEB, 0
seg033:01DD                 mov     word_2BC03, 0
seg033:01E3                 call    sub_1E209
seg033:01E6                 mov     ax, [bp+arg_0]
seg033:01E9                 test    ax, 80h
seg033:01EC                 jz      short loc_1E194
seg033:01EE                 call    sub_1E5B8
seg033:01F1                 or      ax, ax
seg033:01F3                 jz      short loc_1E1D8
seg033:01F5                 mov     ax, [bp+arg_0]
seg033:01F8                 call    sub_1E71E
seg033:01FB                 or      ax, ax
seg033:01FD                 jz      short loc_1E1D8
seg033:01FF                 mov     bx, 4
seg033:0202                 jmp     short loc_1E1ED
seg033:0204 ; ---------------------------------------------------------------------------
seg033:0204
seg033:0204 loc_1E194:                              ; CODE XREF: sub_1E158+24␘j
seg033:0204                 cmp     ax, 4
seg033:0207                 jnz     short loc_1E1AE
seg033:0209                 call    sub_1F054
seg033:020E                 or      ax, ax
seg033:0210                 jz      short loc_1E1D8
seg033:0212                 call    sub_1E979
seg033:0215                 or      ax, ax
seg033:0217                 jz      short loc_1E1D8
seg033:0219                 mov     bx, 3
seg033:021C                 jmp     short loc_1E1ED
seg033:021E ; ---------------------------------------------------------------------------
seg033:021E
seg033:021E loc_1E1AE:                              ; CODE XREF: sub_1E158+3F␘j
seg033:021E                 cmp     ax, 2
seg033:0221                 jnz     short loc_1E1C8
seg033:0223                 call    sub_1E9A4
seg033:0226                 or      ax, ax
seg033:0228                 jz      short loc_1E1D8
seg033:022A                 call    sub_1EAEB
seg033:022D                 mov     cx, 5
seg033:0230                 call    sub_1E1FE
seg033:0233                 mov     bx, 2
seg033:0236                 jmp     short loc_1E1ED
seg033:0238 ; ---------------------------------------------------------------------------
seg033:0238
seg033:0238 loc_1E1C8:                              ; CODE XREF: sub_1E158+59␘j
seg033:0238                 cmp     ax, 1
seg033:023B                 jnz     short loc_1E1D8
seg033:023D                 mov     cx, 2
seg033:0240                 call    sub_1E1FE
seg033:0243                 mov     bx, 1
seg033:0246                 jmp     short loc_1E1ED
seg033:0248 ; ---------------------------------------------------------------------------
seg033:0248
seg033:0248 loc_1E1D8:                              ; CODE XREF: sub_1E158+2B␘j
seg033:0248                                         ; sub_1E158+35␘j ...
seg033:0248                 mov     bx, 0
seg033:024B                 mov     word_2BBFD, 0Ch
seg033:0251                 mov     word_2BBEB, 1
seg033:0257                 cli
seg033:0258                 mov     al, 0B6h ; '¦'
seg033:025A                 out     43h, al         ; Timer 8253-5 (AT: 8254.2).
seg033:025C                 sti
seg033:025D
seg033:025D loc_1E1ED:                              ; CODE XREF: sub_1E158+3A␘j
seg033:025D                                         ; sub_1E158+54␘j ...
seg033:025D                 call    sub_1E231
seg033:0260                 or      byte_2B6C6, 1
seg033:0265                 pop     di
seg033:0266                 pop     si
seg033:0267                 pop     es
seg033:0268                 pop     dx
seg033:0269                 pop     cx
seg033:026A                 pop     bx
seg033:026B                 pop     ax
seg033:026C                 pop     bp
seg033:026D                 retf
seg033:026D sub_1E158       endp
seg033:026D
seg033:026E
