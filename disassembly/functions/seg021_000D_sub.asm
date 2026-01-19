seg021:000D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg021:000D
seg021:000D ; Attributes: bp-based frame
seg021:000D
seg021:000D sub_172BD       proc near               ; CODE XREF: sub_0+666␘P
seg021:000D                                         ; sub_1688+BE␘P ...
seg021:000D
seg021:000D arg_2           = word ptr  6
seg021:000D arg_4           = word ptr  8
seg021:000D arg_6           = word ptr  0Ah
seg021:000D arg_8           = word ptr  0Ch
seg021:000D
seg021:000D                 push    bp
seg021:000E                 mov     bp, sp
seg021:0010                 push    di
seg021:0011                 push    si
seg021:0012                 cld
seg021:0013                 mov     di, [bp+arg_2]
seg021:0016                 mov     word_2AD5F, di
seg021:001A                 mov     ax, [bp+arg_4]
seg021:001D                 mov     word_2AD5B, ax
seg021:0020                 mov     ax, [bp+arg_6]
seg021:0023                 mov     word_2AD61, ax
seg021:0026                 mov     si, [bp+arg_8]
seg021:0029                 mov     ax, word_2AD72
seg021:002C                 mov     es, ax
seg021:002E                 assume es:seg000
seg021:002E                 lea     bx, aRolandMt32OrLa ; "(Roland MT-32 or LAPC-1)\n"
seg021:0032                 add     bx, word_2AD2E
seg021:0036                 jmp     word ptr cs:[bx]
seg021:0036 sub_172BD       endp
seg021:0036
seg021:0039 ; ---------------------------------------------------------------------------
seg021:0039                 mov     bx, di
seg021:003B                 mov     cx, si
seg021:003D                 mov     ax, word_2B1EE
seg021:0040                 mul     cx
seg021:0042                 add     di, ax
seg021:0044                 shl     di, 1
seg021:0046                 inc     cx
seg021:0047                 sub     cx, word_2AD61
seg021:004B                 mov     dx, word_2AD5B
seg021:004F                 inc     dx
seg021:0050                 sub     dx, bx
seg021:0052                 mov     al, 0DBh ; '¦'
seg021:0054                 mov     ah, byte_2AD2B
seg021:0058                 mov     bx, word_2B1EE
seg021:005C                 shl     bx, 1
seg021:005E                 add     bx, dx
seg021:0060                 add     bx, dx
seg021:0062
seg021:0062 loc_17312:                              ; CODE XREF: seg021:006C␙j
seg021:0062                 mov     si, cx
seg021:0064                 mov     cx, dx
seg021:0066                 rep stosw
seg021:0068                 mov     cx, si
seg021:006A                 sub     di, bx
seg021:006C                 loop    loc_17312
seg021:006E                 jmp     loc_1761B
seg021:0071 ; ---------------------------------------------------------------------------
seg021:0071                 mov     ax, si
seg021:0073                 mov     bx, di
seg021:0075                 mov     cx, bx
seg021:0077                 xchg    ah, al
seg021:0079                 shr     ax, 1
seg021:007B                 add     bh, al
seg021:007D                 xor     al, al
seg021:007F                 add     bx, ax
seg021:0081                 shr     ax, 1
seg021:0083                 shr     ax, 1
seg021:0085                 add     bx, ax
seg021:0087                 shr     bx, 1
seg021:0089                 shr     bx, 1
seg021:008B                 xchg    bx, di
seg021:008D                 inc     si
seg021:008E                 sub     si, word_2AD61
seg021:0092                 mov     dx, word_2AD5B
seg021:0096                 shr     dx, 1
seg021:0098                 shr     dx, 1
seg021:009A                 shr     bx, 1
seg021:009C                 shr     bx, 1
seg021:009E                 dec     dx
seg021:009F                 sub     dx, bx
seg021:00A1                 mov     bx, 0FFFFh
seg021:00A4                 and     cl, 3
seg021:00A7                 shl     cl, 1
seg021:00A9                 shr     bh, cl
seg021:00AB                 mov     cx, word_2AD5B
seg021:00AF                 and     cl, 3
seg021:00B2                 inc     cl
seg021:00B4                 shl     cl, 1
seg021:00B6                 shr     bl, cl
seg021:00B8                 not     bl
seg021:00BA                 mov     cl, byte_2AD2B
seg021:00BE                 mov     al, cl
seg021:00C0                 shl     al, 1
seg021:00C2                 shl     al, 1
seg021:00C4                 or      al, cl
seg021:00C6                 mov     ah, al
seg021:00C8                 mov     cl, 4
seg021:00CA                 shl     ah, cl
seg021:00CC                 or      ah, al
seg021:00CE                 jmp     loc_17482
seg021:00D1 ; ---------------------------------------------------------------------------
seg021:00D1                 mov     ax, si
seg021:00D3                 mov     bx, di
seg021:00D5                 mov     cx, bx
seg021:00D7                 xchg    ah, al
seg021:00D9                 shr     ax, 1
seg021:00DB                 shr     bx, 1
seg021:00DD                 add     bh, al
seg021:00DF                 xor     al, al
seg021:00E1                 add     bx, ax
seg021:00E3                 shr     ax, 1
seg021:00E5                 shr     ax, 1
seg021:00E7                 add     bx, ax
seg021:00E9                 shr     bx, 1
seg021:00EB                 shr     bx, 1
seg021:00ED
seg021:00ED loc_1739D:                              ; CODE XREF: seg021:01CF␙j
seg021:00ED                 xchg    bx, di
seg021:00EF                 inc     si
seg021:00F0                 sub     si, word_2AD61
seg021:00F4                 mov     dx, word_2AD5B
seg021:00F8                 shr     dx, 1
seg021:00FA                 shr     dx, 1
seg021:00FC                 shr     dx, 1
seg021:00FE                 shr     bx, 1
seg021:0100                 shr     bx, 1
seg021:0102                 shr     bx, 1
seg021:0104                 dec     dx
seg021:0105                 sub     dx, bx
seg021:0107                 mov     bx, 0FFFFh
seg021:010A                 and     cl, 7
seg021:010D                 shr     bh, cl
seg021:010F                 mov     cx, word_2AD5B
seg021:0113                 and     cl, 7
seg021:0116                 inc     cl
seg021:0118                 shr     bl, cl
seg021:011A                 not     bl
seg021:011C                 mov     ah, byte_2AD2B
seg021:0120                 or      ah, ah
seg021:0122                 jz      short loc_173D6
seg021:0124                 mov     ah, 0FFh
seg021:0126
seg021:0126 loc_173D6:                              ; CODE XREF: seg021:0122␘j
seg021:0126                 jmp     loc_17482
seg021:0129 ; ---------------------------------------------------------------------------
seg021:0129                 mov     ax, si
seg021:012B                 mov     bx, di
seg021:012D                 mov     cx, bx
seg021:012F                 shl     bx, 1
seg021:0131                 shl     bx, 1
seg021:0133                 shr     ax, 1
seg021:0135                 rcr     bx, 1
seg021:0137                 shr     ax, 1
seg021:0139                 rcr     bx, 1
seg021:013B                 shr     bx, 1
seg021:013D                 xchg    ah, al
seg021:013F                 shr     ax, 1
seg021:0141                 add     bx, ax
seg021:0143                 shr     ax, 1
seg021:0145                 shr     ax, 1
seg021:0147                 add     bx, ax
seg021:0149                 xchg    bx, di
seg021:014B                 inc     si
seg021:014C                 sub     si, word_2AD61
seg021:0150                 mov     dx, word_2AD5B
seg021:0154                 shr     dx, 1
seg021:0156                 shr     bx, 1
seg021:0158                 dec     dx
seg021:0159                 sub     dx, bx
seg021:015B                 mov     bx, 0FFFFh
seg021:015E                 and     cl, 1
seg021:0161                 shl     cl, 1
seg021:0163                 shl     cl, 1
seg021:0165                 shr     bh, cl
seg021:0167                 mov     cx, word_2AD5B
seg021:016B                 and     cl, 1
seg021:016E                 inc     cl
seg021:0170                 shl     cl, 1
seg021:0172                 shl     cl, 1
seg021:0174                 shr     bl, cl
seg021:0176                 not     bl
seg021:0178                 mov     cl, byte_2AD2B
seg021:017C                 mov     al, cl
seg021:017E                 mov     ah, cl
seg021:0180                 mov     cl, 4
seg021:0182                 shl     ah, cl
seg021:0184                 or      ah, al
seg021:0186                 jmp     short loc_17482
seg021:0188 ; ---------------------------------------------------------------------------
seg021:0188                 shl     di, 1
seg021:018A                 add     di, 28h ; '('
seg021:018D                 mov     word_2AD5F, di
seg021:0191                 mov     ax, word_2AD5B
seg021:0194                 shl     ax, 1
seg021:0196                 add     ax, 29h ; ')'
seg021:0199                 mov     word_2AD5B, ax
seg021:019C                 mov     ax, word_2AD61
seg021:019F                 mov     cx, ax
seg021:01A1                 sar     ax, 1
seg021:01A3                 add     ax, cx
seg021:01A5                 add     ax, 18h
seg021:01A8                 mov     word_2AD61, ax
seg021:01AB                 mov     ax, si
seg021:01AD                 sar     ax, 1
seg021:01AF                 add     ax, si
seg021:01B1                 add     ax, 18h
seg021:01B4                 and     si, 1
seg021:01B7                 add     si, ax
seg021:01B9                 mov     ax, si
seg021:01BB                 mov     bx, di
seg021:01BD                 mov     cx, bx
seg021:01BF                 shr     ax, 1
seg021:01C1                 rcr     bx, 1
seg021:01C3                 shr     ax, 1
seg021:01C5                 rcr     bx, 1
seg021:01C7                 shr     bx, 1
seg021:01C9                 mov     ah, 5Ah ; 'Z'
seg021:01CB                 mul     ah
seg021:01CD                 add     bx, ax
seg021:01CF                 jmp     loc_1739D
seg021:01D2 ; ---------------------------------------------------------------------------
seg021:01D2
seg021:01D2 loc_17482:                              ; CODE XREF: seg021:00CE␘j
seg021:01D2                                         ; seg021:loc_173D6␘j ...
seg021:01D2                 mov     cx, si
seg021:01D4                 or      dx, dx
seg021:01D6                 jge     short loc_1748E
seg021:01D8                 and     bh, bl
seg021:01DA                 xor     bl, bl
seg021:01DC                 xor     dx, dx
seg021:01DE
seg021:01DE loc_1748E:                              ; CODE XREF: seg021:01D6␘j
seg021:01DE                                         ; seg021:0221␙j ...
seg021:01DE                 mov     si, ax
seg021:01E0                 mov     al, es:[di]
seg021:01E3                 and     ah, bh
seg021:01E5                 not     bh
seg021:01E7                 and     al, bh
seg021:01E9                 not     bh
seg021:01EB                 or      al, ah
seg021:01ED                 stosb
seg021:01EE                 mov     ax, si
seg021:01F0                 or      dx, dx
seg021:01F2                 jz      short loc_174B0
seg021:01F4                 xchg    al, ah
seg021:01F6                 mov     si, cx
seg021:01F8                 mov     cx, dx
seg021:01FA                 rep stosb
seg021:01FC                 mov     cx, si
seg021:01FE                 xchg    al, ah
seg021:0200
seg021:0200 loc_174B0:                              ; CODE XREF: seg021:01F2␘j
seg021:0200                 mov     si, ax
seg021:0202                 mov     al, es:[di]
seg021:0205                 and     ah, bl
seg021:0207                 not     bl
seg021:0209                 and     al, bl
seg021:020B                 not     bl
seg021:020D                 or      al, ah
seg021:020F                 mov     es:[di], al
seg021:0212                 mov     ax, si
seg021:0214                 dec     di
seg021:0215                 sub     di, dx
seg021:0217                 test    di, 0E000h
seg021:021B                 jz      short loc_174D6
seg021:021D                 sub     di, 2000h
seg021:0221                 loop    loc_1748E
seg021:0223                 jmp     loc_1761B
seg021:0226 ; ---------------------------------------------------------------------------
seg021:0226
seg021:0226 loc_174D6:                              ; CODE XREF: seg021:021B␘j
seg021:0226                 or      di, word_2B13E
seg021:022A                 sub     di, word_2B1C2
seg021:022E                 loop    loc_1748E
seg021:0230                 jmp     loc_1761B
seg021:0233 ; ---------------------------------------------------------------------------
seg021:0233                 mov     bx, di
seg021:0235                 mov     cx, bx
seg021:0237                 shr     di, 1
seg021:0239                 shr     di, 1
seg021:023B                 shr     di, 1
seg021:023D                 mov     ax, word_2B1C2
seg021:0240                 mul     si
seg021:0242                 add     di, ax
seg021:0244                 inc     si
seg021:0245                 sub     si, word_2AD61
seg021:0249                 mov     dx, word_2AD5B
seg021:024D                 shr     dx, 1
seg021:024F                 shr     dx, 1
seg021:0251                 shr     dx, 1
seg021:0253                 shr     bx, 1
seg021:0255                 shr     bx, 1
seg021:0257                 shr     bx, 1
seg021:0259                 dec     dx
seg021:025A                 sub     dx, bx
seg021:025C                 mov     bx, 0FFFFh
seg021:025F                 mov     ah, bh
seg021:0261                 and     cl, 7
seg021:0264                 shr     bh, cl
seg021:0266                 mov     cx, word_2AD5B
seg021:026A                 and     cl, 7
seg021:026D                 inc     cl
seg021:026F                 shr     bl, cl
seg021:0271                 not     bl
seg021:0273                 mov     cx, si
seg021:0275                 or      dx, dx
seg021:0277                 jge     short loc_1752F
seg021:0279                 and     bh, bl
seg021:027B                 xor     bl, bl
seg021:027D                 xor     dx, dx
seg021:027F
seg021:027F loc_1752F:                              ; CODE XREF: seg021:0277␘j
seg021:027F                                         ; seg021:02C1␙j
seg021:027F                 push    ax
seg021:0280                 mov     al, 8
seg021:0282                 mov     ah, bh
seg021:0284                 push    dx
seg021:0285                 mov     dx, 3CEh
seg021:0288                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg021:0288                                         ; set/reset.
seg021:0288                                         ; Data bits 0-3 select planes for write mode 00
seg021:0289                 pop     dx
seg021:028A                 pop     ax
seg021:028B                 and     es:[di], bh
seg021:028E                 inc     di
seg021:028F                 or      dx, dx
seg021:0291                 jz      short loc_1755B
seg021:0293                 push    ax
seg021:0294                 mov     al, 8
seg021:0296                 mov     ah, ah
seg021:0298                 push    dx
seg021:0299                 mov     dx, 3CEh
seg021:029C                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg021:029C                                         ; set/reset.
seg021:029C                                         ; Data bits 0-3 select planes for write mode 00
seg021:029D                 pop     dx
seg021:029E                 pop     ax
seg021:029F                 mov     si, cx
seg021:02A1                 mov     cx, dx
seg021:02A3
seg021:02A3 loc_17553:                              ; CODE XREF: seg021:02A7␙j
seg021:02A3                 and     es:[di], ah
seg021:02A6                 inc     di
seg021:02A7                 loop    loc_17553
seg021:02A9                 mov     cx, si
seg021:02AB
seg021:02AB loc_1755B:                              ; CODE XREF: seg021:0291␘j
seg021:02AB                 push    ax
seg021:02AC                 mov     al, 8
seg021:02AE                 mov     ah, bl
seg021:02B0                 push    dx
seg021:02B1                 mov     dx, 3CEh
seg021:02B4                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg021:02B4                                         ; bit mask
seg021:02B4                                         ; Bits 0-7 select bits to be masked in all planes
seg021:02B5                 pop     dx
seg021:02B6                 pop     ax
seg021:02B7                 and     es:[di], bl
seg021:02BA                 dec     di
seg021:02BB                 sub     di, dx
seg021:02BD                 sub     di, word_2B1C2
seg021:02C1                 loop    loc_1752F
seg021:02C3                 jmp     loc_1761B
seg021:02C6 ; ---------------------------------------------------------------------------
seg021:02C6                 mov     ax, si
seg021:02C8                 mov     bx, di
seg021:02CA                 xchg    ah, al
seg021:02CC                 add     bx, ax
seg021:02CE                 shr     ax, 1
seg021:02D0                 shr     ax, 1
seg021:02D2                 add     bx, ax
seg021:02D4                 xchg    bx, di
seg021:02D6                 mov     cx, si
seg021:02D8                 inc     cx
seg021:02D9                 sub     cx, word_2AD61
seg021:02DD                 mov     dx, word_2AD5B
seg021:02E1                 inc     dx
seg021:02E2                 sub     dx, bx
seg021:02E4                 mov     al, byte_2AD2B
seg021:02E7                 mov     bx, 140h
seg021:02EA                 add     bx, dx
seg021:02EC
seg021:02EC loc_1759C:                              ; CODE XREF: seg021:02F6␙j
seg021:02EC                 mov     si, cx
seg021:02EE                 mov     cx, dx
seg021:02F0                 rep stosb
seg021:02F2                 mov     cx, si
seg021:02F4                 sub     di, bx
seg021:02F6                 loop    loc_1759C
seg021:02F8                 jmp     short loc_1761B
seg021:02FA ; ---------------------------------------------------------------------------
seg021:02FA                 mov     ax, si
seg021:02FC                 mov     bx, di
seg021:02FE                 xchg    ah, al
seg021:0300                 add     bx, ax
seg021:0302                 shr     ax, 1
seg021:0304                 shr     ax, 1
seg021:0306                 add     bx, ax
seg021:0308                 shr     bx, 1
seg021:030A                 shr     bx, 1
seg021:030C                 mov     word_2AD63, bx
seg021:0310                 mov     cx, di
seg021:0312                 and     cl, 3
seg021:0315                 mov     al, 1
seg021:0317                 shl     al, cl
seg021:0319                 mov     byte_2AD6C, cl
seg021:031D                 mov     byte_2AD69, al
seg021:0320                 inc     si
seg021:0321                 sub     si, word_2AD61
seg021:0325                 neg     di
seg021:0327                 add     di, word_2AD5B
seg021:032B                 inc     di
seg021:032C
seg021:032C loc_175DC:                              ; CODE XREF: seg021:0369␙j
seg021:032C                 mov     dx, 3C4h
seg021:032F                 mov     al, 2
seg021:0331                 mov     ah, byte_2AD69
seg021:0335                 out     dx, ax          ; EGA: sequencer address reg
seg021:0335                                         ; sequencer reset.
seg021:0335                                         ; Bits of data 0-1 indicate asynchronous/synchronous reset.
seg021:0336                 mov     al, byte_2AD2B
seg021:0339                 mov     bx, word_2AD63
seg021:033D                 mov     cx, si
seg021:033F                 mov     dx, 50h ; 'P'
seg021:0342
seg021:0342 loc_175F2:                              ; CODE XREF: seg021:0347␙j
seg021:0342                 mov     es:[bx], al
seg021:0345                 sub     bx, dx
seg021:0347                 loop    loc_175F2
seg021:0349                 dec     di
seg021:034A                 jz      short loc_1761B
seg021:034C                 mov     cl, byte_2AD6C
seg021:0350                 inc     cl
seg021:0352                 and     cl, 3
seg021:0355                 mov     al, 1
seg021:0357                 shl     al, cl
seg021:0359                 mov     byte_2AD6C, cl
seg021:035D                 mov     byte_2AD69, al
seg021:0360                 mov     ax, 1
seg021:0363                 shr     ax, cl
seg021:0365                 add     word_2AD63, ax
seg021:0369                 jmp     short loc_175DC
seg021:036B ; ---------------------------------------------------------------------------
seg021:036B
seg021:036B loc_1761B:                              ; CODE XREF: seg021:006E␘j
seg021:036B                                         ; seg021:0223␘j ...
seg021:036B                 xor     ax, ax
seg021:036D                 pop     si
seg021:036E                 pop     di
seg021:036F                 pop     bp
seg021:0370                 retf
