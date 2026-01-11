seg006:21C7 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:21C7
seg006:21C7 ; Attributes: bp-based frame
seg006:21C7
seg006:21C7 sub_10017       proc far                ; CODE XREF: sub_89C2+A9␘P
seg006:21C7                                         ; sub_89C2+109␘P ...
seg006:21C7
seg006:21C7 arg_0           = word ptr  6
seg006:21C7 arg_2           = word ptr  8
seg006:21C7
seg006:21C7                 push    bp
seg006:21C8                 mov     bp, sp
seg006:21CA                 push    bx
seg006:21CB                 mov     ax, [bp+arg_0]
seg006:21CE                 rol     ax, 1
seg006:21D0                 xchg    al, ah
seg006:21D2                 and     ax, 1FFh
seg006:21D5                 mov     [bp+arg_0], ax
seg006:21D8                 mov     bx, ax
seg006:21DA                 and     bx, 7Fh
seg006:21DD                 test    al, 80h
seg006:21DF                 jz      short loc_10037
seg006:21E1                 neg     bx
seg006:21E3                 add     bx, 80h ; 'Ç'
seg006:21E7
seg006:21E7 loc_10037:                              ; CODE XREF: sub_10017+18␘j
seg006:21E7                 shl     bx, 1
seg006:21E9                 push    bx
seg006:21EA                 add     bx, 0E6Eh
seg006:21EE                 mov     ax, cs:[bx]
seg006:21F1                 mul     [bp+arg_2]
seg006:21F4                 test    [bp+arg_0], 100h
seg006:21F9                 jz      short loc_1004D
seg006:21FB                 neg     dx
seg006:21FD
seg006:21FD loc_1004D:                              ; CODE XREF: sub_10017+32␘j
seg006:21FD                 mov     word_2844C, dx
seg006:2201                 pop     bx
seg006:2202                 shr     bx, 1
seg006:2204                 neg     bx
seg006:2206                 add     bx, 80h ; 'Ç'
seg006:220A                 shl     bx, 1
seg006:220C                 add     bx, 0E6Eh
seg006:2210                 mov     ax, cs:[bx]
seg006:2213                 mul     [bp+arg_2]
seg006:2216                 mov     ax, [bp+arg_0]
seg006:2219                 shl     ax, 1
seg006:221B                 or      ah, ah
seg006:221D                 jz      short loc_10076
seg006:221F                 cmp     ah, 3
seg006:2222                 jz      short loc_10076
seg006:2224                 neg     dx
seg006:2226
seg006:2226 loc_10076:                              ; CODE XREF: sub_10017+56␘j
seg006:2226                                         ; sub_10017+5B␘j
seg006:2226                 mov     word_2844E, dx
seg006:222A                 pop     bx
seg006:222B                 pop     bp
seg006:222C                 retf
seg006:222C sub_10017       endp
seg006:222C
seg006:222D
