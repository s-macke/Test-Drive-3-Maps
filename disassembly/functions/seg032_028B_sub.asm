seg032:028B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:028B
seg032:028B
seg032:028B sub_1B42B       proc near               ; CODE XREF: sub_1B3EC+13␘p
seg032:028B                                         ; sub_1B40A+17␘p
seg032:028B                 push    es
seg032:028C                 call    sub_1B4CF
seg032:028F                 cmp     byte_2B5CC, 2
seg032:0294                 ja      short loc_1B453
seg032:0296                 xor     bx, bx
seg032:0298                 mov     es, bx
seg032:029A                 assume es:seg000
seg032:029A                 mov     bx, 7Ch ; '|'
seg032:029D                 push    word ptr es:[bx+2]
seg032:02A1                 push    word ptr es:[bx]
seg032:02A4                 push    es
seg032:02A5                 push    bx
seg032:02A6                 mov     word ptr es:[bx], 0C4DEh
seg032:02AB                 mov     word ptr es:[bx+2], ds
seg032:02AF                 mov     al, 80h ; 'Ç'
seg032:02B1                 jmp     short loc_1B45C
seg032:02B3 ; ---------------------------------------------------------------------------
seg032:02B3
seg032:02B3 loc_1B453:                              ; CODE XREF: sub_1B42B+9␘j
seg032:02B3                 cmp     word_2B5CD, 13h
seg032:02B8                 jz      short loc_1B486
seg032:02BA                 mov     al, 0DBh ; '¦'
seg032:02BC
seg032:02BC loc_1B45C:                              ; CODE XREF: sub_1B42B+26␘j
seg032:02BC                 mov     bl, byte_2BD69
seg032:02C0                 or      bl, 80h
seg032:02C3                 mov     bh, byte ptr word_2B633
seg032:02C7                 mov     cx, 1
seg032:02CA                 push    bp
seg032:02CB                 push    si
seg032:02CC                 push    di
seg032:02CD                 mov     ah, 9
seg032:02CF                 int     10h             ; - VIDEO - WRITE ATTRIBUTES/CHARACTERS AT CURSOR POSITION
seg032:02CF                                         ; AL = character, BH = display page
seg032:02CF                                         ; BL = attributes of character (alpha modes) or color (graphics modes)
seg032:02CF                                         ; CX = number of times to write character
seg032:02D1                 pop     di
seg032:02D2                 pop     si
seg032:02D3                 pop     bp
seg032:02D4                 cmp     byte_2B5CC, 2
seg032:02D9                 ja      short loc_1B484
seg032:02DB                 pop     bx
seg032:02DC                 pop     es
seg032:02DD                 assume es:nothing
seg032:02DD                 pop     word ptr es:[bx]
seg032:02E0                 pop     word ptr es:[bx+2]
seg032:02E4
seg032:02E4 loc_1B484:                              ; CODE XREF: sub_1B42B+4E␘j
seg032:02E4                                         ; sub_1B42B+96␙j
seg032:02E4                 pop     es
seg032:02E5                 retn
seg032:02E6 ; ---------------------------------------------------------------------------
seg032:02E6
seg032:02E6 loc_1B486:                              ; CODE XREF: sub_1B42B+2D␘j
seg032:02E6                 mov     ax, word_2BDA9
seg032:02E9                 add     ax, word_2BDA5
seg032:02ED                 mov     dx, word_2BDAB
seg032:02F1                 add     dx, word_2BDA7
seg032:02F5                 mov     cl, 3
seg032:02F7                 shl     ax, cl
seg032:02F9                 shl     dx, cl
seg032:02FB                 mov     cx, dx
seg032:02FD                 mov     dx, ax
seg032:02FF                 call    off_2B602
seg032:0303                 mov     al, byte_2BD69
seg032:0306                 mov     ah, al
seg032:0308                 les     bx, dword_2BE38
seg032:030C                 mov     cx, 8
seg032:030F
seg032:030F loc_1B4AF:                              ; CODE XREF: sub_1B42B+94␙j
seg032:030F                 push    cx
seg032:0310                 mov     cx, 4
seg032:0313
seg032:0313 loc_1B4B3:                              ; CODE XREF: sub_1B42B+8D␙j
seg032:0313                 xor     es:[bx], ax
seg032:0316                 inc     bx
seg032:0317                 inc     bx
seg032:0318                 loop    loc_1B4B3
seg032:031A                 pop     cx
seg032:031B                 add     bx, 138h
seg032:031F                 loop    loc_1B4AF
seg032:0321                 jmp     short loc_1B484
seg032:0321 sub_1B42B       endp
seg032:0321
seg032:0323
