seg015:0000 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg015:0000
seg015:0000 ; Attributes: bp-based frame
seg015:0000
seg015:0000 sub_16BB0       proc near               ; CODE XREF: sub_0+645␘P
seg015:0000                                         ; sub_8DC+330␘P ...
seg015:0000
seg015:0000 arg_2           = word ptr  6
seg015:0000
seg015:0000                 push    bp
seg015:0001                 mov     bp, sp
seg015:0003                 mov     ax, [bp+arg_2]
seg015:0006                 and     ax, 0Fh
seg015:0009                 lea     bx, unk_1F122
seg015:000D                 add     bx, word_2AD2E
seg015:0011                 jmp     word ptr cs:[bx]
seg015:0011 sub_16BB0       endp
seg015:0011
seg015:0014 ; ---------------------------------------------------------------------------
seg015:0014                 cmp     al, 1
seg015:0016                 jle     short loc_16BDA
seg015:0018                 mov     byte_2AD2A, al
seg015:001B                 lea     bx, unk_2AD76
seg015:001F                 shl     ax, 1
seg015:0021                 add     bx, ax
seg015:0023                 mov     ax, [bx]
seg015:0025                 mov     word_2AD72, ax
seg015:0028                 jmp     short loc_16BEE
seg015:002A ; ---------------------------------------------------------------------------
seg015:002A
seg015:002A loc_16BDA:                              ; CODE XREF: seg015:0016␘j
seg015:002A                 mov     byte_2AD2A, al
seg015:002D                 mov     cx, word_2B196
seg015:0031                 mul     cx
seg015:0033                 mov     cl, 4
seg015:0035                 shr     ax, cl
seg015:0037                 add     ax, word_2B21A
seg015:003B                 mov     word_2AD72, ax
seg015:003E
seg015:003E loc_16BEE:                              ; CODE XREF: seg015:0028␘j
seg015:003E                 xor     ax, ax
seg015:0040                 pop     bp
seg015:0041                 retf
