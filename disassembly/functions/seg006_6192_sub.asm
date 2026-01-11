seg006:6192 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6192
seg006:6192
seg006:6192 sub_13FE2       proc near               ; CODE XREF: sub_1176A:loc_119F1␘p
seg006:6192                 push    bx
seg006:6193                 push    si
seg006:6194                 push    di
seg006:6195                 mov     ax, [bx+240Eh]
seg006:6199                 cmp     ax, [si+240Eh]
seg006:619D                 jnz     short loc_13FF8
seg006:619F                 cmp     ax, [di+240Eh]
seg006:61A3                 jnz     short loc_13FF8
seg006:61A5                 jmp     loc_140D7
seg006:61A8 ; ---------------------------------------------------------------------------
seg006:61A8
seg006:61A8 loc_13FF8:                              ; CODE XREF: sub_13FE2+B␘j
seg006:61A8                                         ; sub_13FE2+11␘j
seg006:61A8                 mov     cx, word_2848D
seg006:61AC                 mov     ax, [bx+308Eh]
seg006:61B0                 cmp     ax, cx
seg006:61B2                 jbe     short loc_14012
seg006:61B4                 xchg    bx, si
seg006:61B6                 mov     ax, [bx+308Eh]
seg006:61BA                 cmp     ax, cx
seg006:61BC                 jbe     short loc_14012
seg006:61BE                 xchg    bx, di
seg006:61C0                 jmp     short loc_1401C
seg006:61C2 ; ---------------------------------------------------------------------------
seg006:61C2
seg006:61C2 loc_14012:                              ; CODE XREF: sub_13FE2+20␘j
seg006:61C2                                         ; sub_13FE2+2A␘j
seg006:61C2                 mov     ax, [di+308Eh]
seg006:61C6                 cmp     ax, cx
seg006:61C8                 ja      short loc_1401C
seg006:61CA                 xchg    si, di
seg006:61CC
seg006:61CC loc_1401C:                              ; CODE XREF: sub_13FE2+2E␘j
seg006:61CC                                         ; sub_13FE2+36␘j
seg006:61CC                 mov     ax, [si+308Eh]
seg006:61D0                 cmp     ax, cx
seg006:61D2                 ja      short loc_14026
seg006:61D4                 xchg    bx, di
seg006:61D6
seg006:61D6 loc_14026:                              ; CODE XREF: sub_13FE2+40␘j
seg006:61D6                 mov     bp, [bx+308Eh]
seg006:61DA                 sub     ax, ax
seg006:61DC                 mov     cx, [si+308Eh]
seg006:61E0                 sub     cx, bp
seg006:61E2                 jz      short loc_14046
seg006:61E4                 mov     ax, [si+3D0Eh]
seg006:61E8                 sub     ax, [bx+3D0Eh]
seg006:61EC                 mov     dx, word_2848D
seg006:61F0                 sub     dx, bp
seg006:61F2                 imul    dx
seg006:61F4                 idiv    cx
seg006:61F6
seg006:61F6 loc_14046:                              ; CODE XREF: sub_13FE2+50␘j
seg006:61F6                 add     ax, [bx+3D0Eh]
seg006:61FA                 mov     word_2844A, ax
seg006:61FD                 sub     ax, ax
seg006:61FF                 mov     cx, [di+308Eh]
seg006:6203                 sub     cx, bp
seg006:6205                 jz      short loc_14069
seg006:6207                 mov     ax, [di+3D0Eh]
seg006:620B                 sub     ax, [bx+3D0Eh]
seg006:620F                 mov     dx, word_2848D
seg006:6213                 sub     dx, bp
seg006:6215                 imul    dx
seg006:6217                 idiv    cx
seg006:6219
seg006:6219 loc_14069:                              ; CODE XREF: sub_13FE2+73␘j
seg006:6219                 add     ax, [bx+3D0Eh]
seg006:621D                 mov     word_2844C, ax
seg006:6220                 sub     ax, ax
seg006:6222                 mov     cx, [si+308Eh]
seg006:6226                 sub     cx, bp
seg006:6228                 jz      short loc_1408B
seg006:622A                 mov     ax, word_2848D
seg006:622D                 sub     ax, bp
seg006:622F                 mov     dx, [si+240Eh]
seg006:6233                 sub     dx, [bx+240Eh]
seg006:6237                 imul    dx
seg006:6239                 idiv    cx
seg006:623B
seg006:623B loc_1408B:                              ; CODE XREF: sub_13FE2+96␘j
seg006:623B                 add     ax, [bx+240Eh]
seg006:623F                 mov     word_2844E, ax
seg006:6242                 sub     ax, ax
seg006:6244                 mov     cx, [di+308Eh]
seg006:6248                 sub     cx, bp
seg006:624A                 jz      short loc_140AD
seg006:624C                 mov     ax, word_2848D
seg006:624F                 sub     ax, bp
seg006:6251                 mov     dx, [di+240Eh]
seg006:6255                 sub     dx, [bx+240Eh]
seg006:6259                 imul    dx
seg006:625B                 idiv    cx
seg006:625D
seg006:625D loc_140AD:                              ; CODE XREF: sub_13FE2+B8␘j
seg006:625D                 add     ax, [bx+240Eh]
seg006:6261                 mov     word_28450, ax
seg006:6264                 mov     bp, word_2844A
seg006:6268                 sub     ax, ax
seg006:626A                 mov     cx, word_2844C
seg006:626E                 sub     cx, bp
seg006:6270                 jz      short loc_140D3
seg006:6272                 mov     ax, word_2848F
seg006:6275                 sub     ax, bp
seg006:6277                 mov     dx, word_28450
seg006:627B                 sub     dx, word_2844E
seg006:627F                 imul    dx
seg006:6281                 idiv    cx
seg006:6283
seg006:6283 loc_140D3:                              ; CODE XREF: sub_13FE2+DE␘j
seg006:6283                 add     ax, word_2844E
seg006:6287
seg006:6287 loc_140D7:                              ; CODE XREF: sub_13FE2+13␘j
seg006:6287                 mov     word_2ACC9, ax
seg006:628A                 mov     byte_2AAB9, 0
seg006:628F                 cmp     ax, word_2848A
seg006:6293                 jle     short loc_140E9
seg006:6295                 inc     byte_2AAB9
seg006:6299
seg006:6299 loc_140E9:                              ; CODE XREF: sub_13FE2+101␘j
seg006:6299                 pop     di
seg006:629A                 pop     si
seg006:629B                 pop     bx
seg006:629C                 retn
seg006:629C sub_13FE2       endp
seg006:629C
seg006:629D
