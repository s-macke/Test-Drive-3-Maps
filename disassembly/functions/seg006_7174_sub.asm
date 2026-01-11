seg006:7174 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7174
seg006:7174
seg006:7174 sub_14FC4       proc near               ; CODE XREF: sub_14D99+1AB␘p
seg006:7174                                         ; sub_14D99+221␘p
seg006:7174                 push    si
seg006:7175                 push    di
seg006:7176                 push    es
seg006:7177                 push    bp
seg006:7178                 push    dx
seg006:7179                 mov     word_2AD0E, 0
seg006:717F                 or      ah, ah
seg006:7181                 jz      short loc_14FEC
seg006:7183                 mov     es, word_2D83E
seg006:7187                 sub     ah, ah
seg006:7189                 shl     ax, 1
seg006:718B                 mov     bx, ax
seg006:718D                 add     bx, word_2D83C
seg006:7191                 mov     si, es:[bx]
seg006:7194                 mov     bx, ax
seg006:7196                 add     si, word_2D83C
seg006:719A                 jmp     short loc_15040
seg006:719C ; ---------------------------------------------------------------------------
seg006:719C
seg006:719C loc_14FEC:                              ; CODE XREF: sub_14FC4+D␘j
seg006:719C                 cmp     al, 40h ; '@'
seg006:719E                 jb      short loc_1501A
seg006:71A0                 mov     es, word_2DA62
seg006:71A4                 sub     ah, ah
seg006:71A6                 sub     al, 40h ; '@'
seg006:71A8                 shl     ax, 1
seg006:71AA                 mov     bx, ax
seg006:71AC                 add     bx, word_2DA60
seg006:71B0                 mov     si, es:[bx]
seg006:71B3                 cmp     si, 10h
seg006:71B6                 ja      short loc_15012
seg006:71B8                 mov     word_2AD0E, si
seg006:71BC                 sub     bx, 2
seg006:71BF                 mov     si, es:[bx]
seg006:71C2
seg006:71C2 loc_15012:                              ; CODE XREF: sub_14FC4+42␘j
seg006:71C2                 mov     bx, ax
seg006:71C4                 add     si, word_2DA60
seg006:71C8                 jmp     short loc_15040
seg006:71CA ; ---------------------------------------------------------------------------
seg006:71CA
seg006:71CA loc_1501A:                              ; CODE XREF: sub_14FC4+2A␘j
seg006:71CA                 mov     es, word_2DAD2
seg006:71CE                 sub     ah, ah
seg006:71D0                 shl     ax, 1
seg006:71D2                 mov     bx, ax
seg006:71D4                 add     bx, word_2DAD0
seg006:71D8                 mov     si, es:[bx]
seg006:71DB                 cmp     si, 10h
seg006:71DE                 ja      short loc_1503A
seg006:71E0                 mov     word_2AD0E, si
seg006:71E4                 sub     bx, 2
seg006:71E7                 mov     si, es:[bx]
seg006:71EA
seg006:71EA loc_1503A:                              ; CODE XREF: sub_14FC4+6A␘j
seg006:71EA                 mov     bx, ax
seg006:71EC                 add     si, word_2DAD0
seg006:71F0
seg006:71F0 loc_15040:                              ; CODE XREF: sub_14FC4+26␘j
seg006:71F0                                         ; sub_14FC4+54␘j
seg006:71F0                 mov     word_2AD12, si
seg006:71F4                 mov     cl, es:[si]
seg006:71F7                 or      cl, cl
seg006:71F9                 jz      short loc_15072
seg006:71FB                 inc     si
seg006:71FC                 mov     ch, es:[si]
seg006:71FF                 add     si, 3
seg006:7202                 push    cx
seg006:7203                 mov     cl, ch
seg006:7205                 sub     ch, ch
seg006:7207                 mov     byte_2AD0C, ch
seg006:720B                 mov     byte_28457, cl
seg006:720F                 call    sub_1528D
seg006:7212                 pop     cx
seg006:7213                 sub     ch, ch
seg006:7215                 cmp     byte_2AD0C, 0
seg006:721A                 jnz     short loc_1506F
seg006:721C                 call    sub_15153
seg006:721F
seg006:721F loc_1506F:                              ; CODE XREF: sub_14FC4+A6␘j
seg006:721F                 mov     al, byte_2AD0C
seg006:7222
seg006:7222 loc_15072:                              ; CODE XREF: sub_14FC4+85␘j
seg006:7222                 mov     si, word_2AD12
seg006:7226                 sub     bh, bh
seg006:7228                 sub     ch, ch
seg006:722A                 mov     bl, es:[si]
seg006:722D                 shl     bx, 1
seg006:722F                 shl     bx, 1
seg006:7231                 shl     bx, 1
seg006:7233                 inc     si
seg006:7234                 mov     cl, es:[si]
seg006:7237                 add     bx, cx
seg006:7239                 add     bx, cx
seg006:723B                 add     bx, cx
seg006:723D                 add     bx, cx
seg006:723F                 add     bx, cx
seg006:7241                 add     bx, cx
seg006:7243                 inc     si
seg006:7244                 mov     cl, es:[si]
seg006:7247                 inc     si
seg006:7248                 inc     si
seg006:7249                 add     si, bx
seg006:724B                 or      cl, cl
seg006:724D                 jz      short loc_150F5
seg006:724F                 mov     al, byte_2AD0B
seg006:7252                 mov     bl, al
seg006:7254                 sub     bh, bh
seg006:7256                 cmp     al, 0F0h ; '='
seg006:7258                 jnb     short loc_150F5
seg006:725A                 add     al, cl
seg006:725C                 cmp     al, 0F0h ; '='
seg006:725E                 jb      short loc_150B6
seg006:7260                 sub     al, 0F0h ; '='
seg006:7262                 sub     cl, al
seg006:7264                 mov     al, 0F0h ; '='
seg006:7266
seg006:7266 loc_150B6:                              ; CODE XREF: sub_14FC4+EA␘j
seg006:7266                 mov     byte_2AD0B, al
seg006:7269                 mov     byte_28457, cl
seg006:726D                 add     bx, word_28A5D
seg006:7271                 mov     di, word_2AA40
seg006:7275                 mov     dh, byte_28456
seg006:7279                 mov     cx, word_2AD14
seg006:727D                 add     cx, word_2AD16
seg006:7281                 mov     cl, ch
seg006:7283                 shr     cl, 1
seg006:7285                 shr     cl, 1
seg006:7287                 shr     cl, 1
seg006:7289                 shr     cl, 1
seg006:728B                 rol     di, cl
seg006:728D
seg006:728D loc_150DD:                              ; CODE XREF: sub_14FC4+187␙j
seg006:728D                 mov     ax, es:[si]
seg006:7290                 shl     bx, 1
seg006:7292                 cmp     al, 12h
seg006:7294                 jb      short loc_150FB
seg006:7296                 ror     di, 1
seg006:7298                 jb      short loc_150FB
seg006:729A                 sub     ax, ax
seg006:729C                 mov     [bx-6681h], ax
seg006:72A0                 add     si, 8
seg006:72A3                 jmp     short loc_15144
seg006:72A5 ; ---------------------------------------------------------------------------
seg006:72A5
seg006:72A5 loc_150F5:                              ; CODE XREF: sub_14FC4+D9␘j
seg006:72A5                                         ; sub_14FC4+E4␘j
seg006:72A5                 pop     dx
seg006:72A6                 pop     bp
seg006:72A7                 pop     es
seg006:72A8                 pop     di
seg006:72A9                 pop     si
seg006:72AA                 retn
seg006:72AB ; ---------------------------------------------------------------------------
seg006:72AB
seg006:72AB loc_150FB:                              ; CODE XREF: sub_14FC4+120␘j
seg006:72AB                                         ; sub_14FC4+124␘j
seg006:72AB                 mov     [bx-6681h], ax
seg006:72AF                 add     si, 2
seg006:72B2                 mov     ax, es:[si]
seg006:72B5                 add     si, 2
seg006:72B8                 mov     cx, es:[si]
seg006:72BB                 add     si, 2
seg006:72BE                 cmp     dh, 40h ; '@'
seg006:72C1                 jb      short loc_15126
seg006:72C3                 jz      short loc_15123
seg006:72C5                 cmp     dh, 80h ; 'Ç'
seg006:72C8                 jz      short loc_1511F
seg006:72CA                 xchg    ax, cx
seg006:72CB                 neg     ax
seg006:72CD                 jmp     short loc_15126
seg006:72CF ; ---------------------------------------------------------------------------
seg006:72CF
seg006:72CF loc_1511F:                              ; CODE XREF: sub_14FC4+154␘j
seg006:72CF                 neg     ax
seg006:72D1                 jmp     short loc_15124
seg006:72D3 ; ---------------------------------------------------------------------------
seg006:72D3
seg006:72D3 loc_15123:                              ; CODE XREF: sub_14FC4+14F␘j
seg006:72D3                 xchg    ax, cx
seg006:72D4
seg006:72D4 loc_15124:                              ; CODE XREF: sub_14FC4+15D␘j
seg006:72D4                 neg     cx
seg006:72D6
seg006:72D6 loc_15126:                              ; CODE XREF: sub_14FC4+14D␘j
seg006:72D6                                         ; sub_14FC4+159␘j
seg006:72D6                 add     ax, word_2AD14
seg006:72DA                 add     cx, word_2AD16
seg006:72DE                 mov     [bx-6401h], ax
seg006:72E2                 mov     [bx-6181h], cx
seg006:72E6                 mov     ax, es:[si]
seg006:72E9                 add     si, 2
seg006:72EC                 add     ax, word_2AD18
seg006:72F0                 mov     [bx-5F01h], ax
seg006:72F4
seg006:72F4 loc_15144:                              ; CODE XREF: sub_14FC4+12F␘j
seg006:72F4                 shr     bx, 1
seg006:72F6                 inc     bx
seg006:72F7                 dec     byte_28457
seg006:72FB                 jnz     short loc_150DD
seg006:72FD                 pop     dx
seg006:72FE                 pop     bp
seg006:72FF                 pop     es
seg006:7300                 pop     di
seg006:7301                 pop     si
seg006:7302                 retn
seg006:7302 sub_14FC4       endp
seg006:7302
seg006:7303
