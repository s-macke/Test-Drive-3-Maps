seg025:000D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg025:000D
seg025:000D ; Attributes: bp-based frame
seg025:000D
seg025:000D sub_1805D       proc near               ; CODE XREF: sub_1DAA+1C0␘P
seg025:000D                                         ; sub_1DAA+1DF␘P ...
seg025:000D                 push    bp
seg025:000E                 mov     bp, sp
seg025:0010                 push    di
seg025:0011                 push    si
seg025:0012                 cld
seg025:0013                 mov     ax, word_2AD72
seg025:0016                 mov     es, ax
seg025:0018                 assume es:seg000
seg025:0018                 mov     bx, word_2AD35
seg025:001C                 mov     cx, bx
seg025:001E                 mov     ax, word_2AD37
seg025:0021                 lea     si, unk_1F5FC
seg025:0025                 add     si, word_2AD2E
seg025:0029                 jmp     word ptr cs:[si]
seg025:0029 sub_1805D       endp
seg025:0029
seg025:002C ; ---------------------------------------------------------------------------
seg025:002C                 xchg    ah, al
seg025:002E                 shr     ax, 1
seg025:0030                 add     bh, al
seg025:0032                 xor     al, al
seg025:0034                 add     bx, ax
seg025:0036                 shr     ax, 1
seg025:0038                 shr     ax, 1
seg025:003A                 add     bx, ax
seg025:003C                 shr     bx, 1
seg025:003E                 shr     bx, 1
seg025:0040                 mov     al, byte_2AD2B
seg025:0043                 and     al, 3
seg025:0045                 mov     ah, al
seg025:0047                 shl     ah, 1
seg025:0049                 shl     ah, 1
seg025:004B                 or      al, ah
seg025:004D                 shl     ah, 1
seg025:004F                 shl     ah, 1
seg025:0051                 or      al, ah
seg025:0053                 shl     ah, 1
seg025:0055                 shl     ah, 1
seg025:0057                 or      al, ah
seg025:0059                 mov     ah, al
seg025:005B                 mov     word_2B3AD, ax
seg025:005E                 and     cx, 3
seg025:0061                 xor     cl, 3
seg025:0064                 add     cl, 5
seg025:0067                 mov     si, [bp+6]
seg025:006A                 mov     di, [bp+0Ah]
seg025:006D
seg025:006D loc_180BD:                              ; CODE XREF: seg025:00FE␙j
seg025:006D                 mov     dx, [bp+8]
seg025:0070                 xor     ah, ah
seg025:0072                 push    bx
seg025:0073
seg025:0073 loc_180C3:                              ; CODE XREF: seg025:00B3␙j
seg025:0073                 lodsb
seg025:0074                 push    dx
seg025:0075                 push    cx
seg025:0076                 push    ax
seg025:0077                 push    bx
seg025:0078                 shl     ax, cl
seg025:007A                 mov     al, ah
seg025:007C                 mov     cx, 1
seg025:007F                 xor     dx, dx
seg025:0081
seg025:0081 loc_180D1:                              ; CODE XREF: seg025:0093␙j
seg025:0081                 mov     bx, ax
seg025:0083                 and     bx, cx
seg025:0085                 or      dx, bx
seg025:0087                 shl     ax, 1
seg025:0089                 shl     cx, 1
seg025:008B                 mov     bx, ax
seg025:008D                 and     bx, cx
seg025:008F                 or      dx, bx
seg025:0091                 shl     cx, 1
seg025:0093                 jnb     short loc_180D1
seg025:0095                 mov     ax, dx
seg025:0097                 and     ax, word_2B3AD
seg025:009B                 not     dx
seg025:009D                 xchg    ah, al
seg025:009F                 xchg    dh, dl
seg025:00A1                 pop     bx
seg025:00A2                 and     dx, es:[bx]
seg025:00A5                 or      ax, dx
seg025:00A7                 mov     es:[bx], ax
seg025:00AA                 add     bx, 2
seg025:00AD                 pop     ax
seg025:00AE                 mov     ah, al
seg025:00B0                 pop     cx
seg025:00B1                 pop     dx
seg025:00B2                 dec     dx
seg025:00B3                 jnz     short loc_180C3
seg025:00B5                 cmp     cl, 8
seg025:00B8                 jz      short loc_1813D
seg025:00BA                 shl     al, cl
seg025:00BC                 push    cx
seg025:00BD                 push    bx
seg025:00BE                 mov     cx, 1
seg025:00C1                 xor     dx, dx
seg025:00C3
seg025:00C3 loc_18113:                              ; CODE XREF: seg025:00D5␙j
seg025:00C3                 mov     bx, ax
seg025:00C5                 and     bx, cx
seg025:00C7                 or      dx, bx
seg025:00C9                 shl     ax, 1
seg025:00CB                 shl     cx, 1
seg025:00CD                 mov     bx, ax
seg025:00CF                 and     bx, cx
seg025:00D1                 or      dx, bx
seg025:00D3                 shl     cx, 1
seg025:00D5                 jnb     short loc_18113
seg025:00D7                 mov     ax, dx
seg025:00D9                 and     ax, word_2B3AD
seg025:00DD                 not     dx
seg025:00DF                 xchg    ah, al
seg025:00E1                 xchg    dh, dl
seg025:00E3                 pop     bx
seg025:00E4                 and     dx, es:[bx]
seg025:00E7                 or      ax, dx
seg025:00E9                 mov     es:[bx], ax
seg025:00EC                 pop     cx
seg025:00ED
seg025:00ED loc_1813D:                              ; CODE XREF: seg025:00B8␘j
seg025:00ED                 pop     bx
seg025:00EE                 dec     di
seg025:00EF                 jz      short loc_18151
seg025:00F1                 test    bx, 2000h
seg025:00F5                 jnz     short loc_1814A
seg025:00F7                 sub     bx, 50h ; 'P'
seg025:00FA
seg025:00FA loc_1814A:                              ; CODE XREF: seg025:00F5␘j
seg025:00FA                 xor     bx, 2000h
seg025:00FE                 jmp     loc_180BD
seg025:0101 ; ---------------------------------------------------------------------------
seg025:0101
seg025:0101 loc_18151:                              ; CODE XREF: seg025:00EF␘j
seg025:0101                 jmp     loc_18566
seg025:0104 ; ---------------------------------------------------------------------------
seg025:0104                 xchg    ah, al
seg025:0106                 shr     ax, 1
seg025:0108                 shr     bx, 1
seg025:010A                 add     bh, al
seg025:010C                 xor     al, al
seg025:010E                 add     bx, ax
seg025:0110                 shr     ax, 1
seg025:0112                 shr     ax, 1
seg025:0114                 add     bx, ax
seg025:0116                 shr     bx, 1
seg025:0118                 shr     bx, 1
seg025:011A                 jmp     loc_182BC
seg025:011D ; ---------------------------------------------------------------------------
seg025:011D                 shl     bx, 1
seg025:011F                 shl     bx, 1
seg025:0121                 shr     ax, 1
seg025:0123                 rcr     bx, 1
seg025:0125                 shr     ax, 1
seg025:0127                 rcr     bx, 1
seg025:0129                 shr     bx, 1
seg025:012B                 xchg    ah, al
seg025:012D                 shr     ax, 1
seg025:012F                 add     bx, ax
seg025:0131                 shr     ax, 1
seg025:0133                 shr     ax, 1
seg025:0135                 add     bx, ax
seg025:0137                 mov     al, byte_2AD2B
seg025:013A                 and     al, 0Fh
seg025:013C                 mov     ah, al
seg025:013E                 shl     ah, 1
seg025:0140                 shl     ah, 1
seg025:0142                 shl     ah, 1
seg025:0144                 shl     ah, 1
seg025:0146                 or      al, ah
seg025:0148                 mov     ah, al
seg025:014A                 mov     word_2B3AD, ax
seg025:014D                 and     cx, 1
seg025:0150                 xor     cl, 1
seg025:0153                 add     cl, 7
seg025:0156                 mov     si, [bp+6]
seg025:0159                 mov     di, [bp+0Ah]
seg025:015C
seg025:015C loc_181AC:                              ; CODE XREF: seg025:024B␙j
seg025:015C                                         ; seg025:0256␙j
seg025:015C                 mov     dx, [bp+8]
seg025:015F                 xor     ah, ah
seg025:0161                 push    bx
seg025:0162
seg025:0162 loc_181B2:                              ; CODE XREF: seg025:01D3␙j
seg025:0162                 lodsb
seg025:0163                 push    dx
seg025:0164                 push    cx
seg025:0165                 push    ax
seg025:0166                 push    bx
seg025:0167                 shl     ax, cl
seg025:0169                 mov     bx, 0Fh
seg025:016C                 mov     cx, 4
seg025:016F                 xor     dx, dx
seg025:0171
seg025:0171 loc_181C1:                              ; CODE XREF: seg025:0182␙j
seg025:0171                 test    ah, 1
seg025:0174                 jz      short loc_181C8
seg025:0176                 or      dx, bx
seg025:0178
seg025:0178 loc_181C8:                              ; CODE XREF: seg025:0174␘j
seg025:0178                 shr     ah, 1
seg025:017A                 rol     bx, 1
seg025:017C                 rol     bx, 1
seg025:017E                 rol     bx, 1
seg025:0180                 rol     bx, 1
seg025:0182                 loop    loc_181C1
seg025:0184                 push    dx
seg025:0185                 mov     cx, 4
seg025:0188                 xor     dx, dx
seg025:018A
seg025:018A loc_181DA:                              ; CODE XREF: seg025:019B␙j
seg025:018A                 test    ah, 1
seg025:018D                 jz      short loc_181E1
seg025:018F                 or      dx, bx
seg025:0191
seg025:0191 loc_181E1:                              ; CODE XREF: seg025:018D␘j
seg025:0191                 shr     ah, 1
seg025:0193                 rol     bx, 1
seg025:0195                 rol     bx, 1
seg025:0197                 rol     bx, 1
seg025:0199                 rol     bx, 1
seg025:019B                 loop    loc_181DA
seg025:019D                 pop     cx
seg025:019E                 pop     bx
seg025:019F                 mov     ax, dx
seg025:01A1                 and     ax, word_2B3AD
seg025:01A5                 not     dx
seg025:01A7                 xchg    ah, al
seg025:01A9                 xchg    dh, dl
seg025:01AB                 and     dx, es:[bx]
seg025:01AE                 or      ax, dx
seg025:01B0                 mov     es:[bx], ax
seg025:01B3                 add     bx, 2
seg025:01B6                 mov     ax, cx
seg025:01B8                 and     ax, word_2B3AD
seg025:01BC                 not     cx
seg025:01BE                 xchg    ah, al
seg025:01C0                 xchg    ch, cl
seg025:01C2                 and     cx, es:[bx]
seg025:01C5                 or      ax, cx
seg025:01C7                 mov     es:[bx], ax
seg025:01CA                 add     bx, 2
seg025:01CD                 pop     ax
seg025:01CE                 mov     ah, al
seg025:01D0                 pop     cx
seg025:01D1                 pop     dx
seg025:01D2                 dec     dx
seg025:01D3                 jnz     short loc_181B2
seg025:01D5                 or      cl, cl
seg025:01D7                 jz      short loc_1828D
seg025:01D9                 shl     al, cl
seg025:01DB                 push    cx
seg025:01DC                 push    bx
seg025:01DD                 mov     bx, 0Fh
seg025:01E0                 mov     cx, 4
seg025:01E3                 xor     dx, dx
seg025:01E5
seg025:01E5 loc_18235:                              ; CODE XREF: seg025:01F5␙j
seg025:01E5                 test    al, 1
seg025:01E7                 jz      short loc_1823B
seg025:01E9                 or      dx, bx
seg025:01EB
seg025:01EB loc_1823B:                              ; CODE XREF: seg025:01E7␘j
seg025:01EB                 shr     al, 1
seg025:01ED                 rol     bx, 1
seg025:01EF                 rol     bx, 1
seg025:01F1                 rol     bx, 1
seg025:01F3                 rol     bx, 1
seg025:01F5                 loop    loc_18235
seg025:01F7                 push    dx
seg025:01F8                 mov     cx, 4
seg025:01FB                 xor     dx, dx
seg025:01FD
seg025:01FD loc_1824D:                              ; CODE XREF: seg025:020D␙j
seg025:01FD                 test    al, 1
seg025:01FF                 jz      short loc_18253
seg025:0201                 or      dx, bx
seg025:0203
seg025:0203 loc_18253:                              ; CODE XREF: seg025:01FF␘j
seg025:0203                 shr     al, 1
seg025:0205                 rol     bx, 1
seg025:0207                 rol     bx, 1
seg025:0209                 rol     bx, 1
seg025:020B                 rol     bx, 1
seg025:020D                 loop    loc_1824D
seg025:020F                 pop     cx
seg025:0210                 pop     bx
seg025:0211                 mov     ax, dx
seg025:0213                 and     ax, word_2B3AD
seg025:0217                 not     dx
seg025:0219                 xchg    ah, al
seg025:021B                 xchg    dh, dl
seg025:021D                 and     dx, es:[bx]
seg025:0220                 or      ax, dx
seg025:0222                 mov     es:[bx], ax
seg025:0225                 add     bx, 2
seg025:0228                 mov     ax, cx
seg025:022A                 and     ax, word_2B3AD
seg025:022E                 not     cx
seg025:0230                 xchg    ah, al
seg025:0232                 xchg    ch, cl
seg025:0234                 and     cx, es:[bx]
seg025:0237                 or      ax, cx
seg025:0239                 mov     es:[bx], ax
seg025:023C                 pop     cx
seg025:023D
seg025:023D loc_1828D:                              ; CODE XREF: seg025:01D7␘j
seg025:023D                 pop     bx
seg025:023E                 dec     di
seg025:023F                 jz      short loc_182A9
seg025:0241                 test    bx, 0E000h
seg025:0245                 jz      short loc_1829E
seg025:0247                 sub     bx, 2000h
seg025:024B                 jmp     loc_181AC
seg025:024E ; ---------------------------------------------------------------------------
seg025:024E
seg025:024E loc_1829E:                              ; CODE XREF: seg025:0245␘j
seg025:024E                 or      bx, 6000h
seg025:0252                 sub     bx, 0A0h ; 'á'
seg025:0256                 jmp     loc_181AC
seg025:0259 ; ---------------------------------------------------------------------------
seg025:0259
seg025:0259 loc_182A9:                              ; CODE XREF: seg025:023F␘j
seg025:0259                 jmp     loc_18566
seg025:025C ; ---------------------------------------------------------------------------
seg025:025C                 shr     ax, 1
seg025:025E                 rcr     bx, 1
seg025:0260                 shr     ax, 1
seg025:0262                 rcr     bx, 1
seg025:0264                 shr     bx, 1
seg025:0266                 mov     ah, 5Ah ; 'Z'
seg025:0268                 mul     ah
seg025:026A                 add     bx, ax
seg025:026C
seg025:026C loc_182BC:                              ; CODE XREF: seg025:011A␘j
seg025:026C                 xor     ch, ch
seg025:026E                 sub     ch, byte_2AD2B
seg025:0272                 and     cl, 7
seg025:0275                 xor     cl, 7
seg025:0278                 inc     cx
seg025:0279                 mov     si, [bp+6]
seg025:027C                 mov     di, [bp+0Ah]
seg025:027F
seg025:027F loc_182CF:                              ; CODE XREF: seg025:02BF␙j
seg025:027F                                         ; seg025:02C9␙j
seg025:027F                 mov     dx, [bp+8]
seg025:0282                 xor     ah, ah
seg025:0284                 push    bx
seg025:0285
seg025:0285 loc_182D5:                              ; CODE XREF: seg025:029A␙j
seg025:0285                 lodsb
seg025:0286                 push    ax
seg025:0287                 shl     ax, cl
seg025:0289                 mov     al, ah
seg025:028B                 not     al
seg025:028D                 and     ah, ch
seg025:028F                 and     es:[bx], al
seg025:0292                 or      es:[bx], ah
seg025:0295                 inc     bx
seg025:0296                 pop     ax
seg025:0297                 mov     ah, al
seg025:0299                 dec     dx
seg025:029A                 jnz     short loc_182D5
seg025:029C                 cmp     cl, 8
seg025:029F                 jz      short loc_18301
seg025:02A1                 shl     al, cl
seg025:02A3                 mov     ah, al
seg025:02A5                 not     al
seg025:02A7                 and     ah, ch
seg025:02A9                 and     al, es:[bx]
seg025:02AC                 or      al, ah
seg025:02AE                 mov     es:[bx], al
seg025:02B1
seg025:02B1 loc_18301:                              ; CODE XREF: seg025:029F␘j
seg025:02B1                 pop     bx
seg025:02B2                 dec     di
seg025:02B3                 jz      short loc_1831B
seg025:02B5                 test    bx, 0E000h
seg025:02B9                 jz      short loc_18311
seg025:02BB                 sub     bx, 2000h
seg025:02BF                 jmp     short loc_182CF
seg025:02C1 ; ---------------------------------------------------------------------------
seg025:02C1
seg025:02C1 loc_18311:                              ; CODE XREF: seg025:02B9␘j
seg025:02C1                 or      bx, word_2B13E
seg025:02C5                 sub     bx, word_2B1C2
seg025:02C9                 jmp     short loc_182CF
seg025:02CB ; ---------------------------------------------------------------------------
seg025:02CB
seg025:02CB loc_1831B:                              ; CODE XREF: seg025:02B3␘j
seg025:02CB                 jmp     loc_18566
seg025:02CE ; ---------------------------------------------------------------------------
seg025:02CE                 shl     bx, 1
seg025:02D0                 add     bx, 28h ; '('
seg025:02D3                 mov     dx, ax
seg025:02D5                 sar     ax, 1
seg025:02D7                 add     ax, dx
seg025:02D9                 add     ax, 18h
seg025:02DC                 and     dx, 1
seg025:02DF                 add     ax, dx
seg025:02E1                 mov     byte_2AD32, dl
seg025:02E5                 shr     ax, 1
seg025:02E7                 rcr     bx, 1
seg025:02E9                 shr     ax, 1
seg025:02EB                 rcr     bx, 1
seg025:02ED                 shr     bx, 1
seg025:02EF                 mov     ah, 5Ah ; 'Z'
seg025:02F1                 mul     ah
seg025:02F3                 add     bx, ax
seg025:02F5                 mov     al, byte_2AD2B
seg025:02F8                 and     al, 3
seg025:02FA                 mov     ah, al
seg025:02FC                 shl     ah, 1
seg025:02FE                 shl     ah, 1
seg025:0300                 or      al, ah
seg025:0302                 shl     ah, 1
seg025:0304                 shl     ah, 1
seg025:0306                 or      al, ah
seg025:0308                 shl     ah, 1
seg025:030A                 shl     ah, 1
seg025:030C                 or      al, ah
seg025:030E                 mov     ah, al
seg025:0310                 mov     word_2B3AD, ax
seg025:0313                 and     cx, 3
seg025:0316                 xor     cl, 3
seg025:0319                 add     cl, 5
seg025:031C                 mov     si, [bp+6]
seg025:031F                 mov     di, [bp+0Ah]
seg025:0322
seg025:0322 loc_18372:                              ; CODE XREF: seg025:03F1␙j
seg025:0322                                         ; seg025:03FF␙j
seg025:0322                 mov     dx, [bp+8]
seg025:0325                 xor     ah, ah
seg025:0327                 push    di
seg025:0328                 push    bx
seg025:0329                 mov     di, bx
seg025:032B                 test    byte_2AD32, 1
seg025:0330                 jz      short loc_18395
seg025:0332                 test    di, 0E000h
seg025:0336                 jz      short loc_1838E
seg025:0338                 sub     di, 2000h
seg025:033C                 jmp     short loc_18395
seg025:033E ; ---------------------------------------------------------------------------
seg025:033E
seg025:033E loc_1838E:                              ; CODE XREF: seg025:0336␘j
seg025:033E                 or      di, 6000h
seg025:0342                 sub     di, 5Ah ; 'Z'
seg025:0345
seg025:0345 loc_18395:                              ; CODE XREF: seg025:0330␘j
seg025:0345                                         ; seg025:033C␘j ...
seg025:0345                 lodsb
seg025:0346                 push    dx
seg025:0347                 push    cx
seg025:0348                 push    ax
seg025:0349                 push    bx
seg025:034A                 shl     ax, cl
seg025:034C                 mov     al, ah
seg025:034E                 mov     cx, 1
seg025:0351                 xor     dx, dx
seg025:0353
seg025:0353 loc_183A3:                              ; CODE XREF: seg025:0365␙j
seg025:0353                 mov     bx, ax
seg025:0355                 and     bx, cx
seg025:0357                 or      dx, bx
seg025:0359                 shl     ax, 1
seg025:035B                 shl     cx, 1
seg025:035D                 mov     bx, ax
seg025:035F                 and     bx, cx
seg025:0361                 or      dx, bx
seg025:0363                 shl     cx, 1
seg025:0365                 jnb     short loc_183A3
seg025:0367                 mov     ax, dx
seg025:0369                 and     ax, word_2B3AD
seg025:036D                 not     dx
seg025:036F                 xchg    ah, al
seg025:0371                 xchg    dh, dl
seg025:0373                 mov     cx, dx
seg025:0375                 pop     bx
seg025:0376                 and     dx, es:[bx]
seg025:0379                 or      dx, ax
seg025:037B                 mov     es:[bx], dx
seg025:037E                 and     cx, es:[di]
seg025:0381                 or      cx, ax
seg025:0383                 mov     es:[di], cx
seg025:0386                 add     bx, 2
seg025:0389                 add     di, 2
seg025:038C                 pop     ax
seg025:038D                 mov     ah, al
seg025:038F                 pop     cx
seg025:0390                 pop     dx
seg025:0391                 dec     dx
seg025:0392                 jnz     short loc_18395
seg025:0394                 cmp     cl, 8
seg025:0397                 jz      short loc_18426
seg025:0399                 shl     al, cl
seg025:039B                 push    cx
seg025:039C                 push    bx
seg025:039D                 mov     cx, 1
seg025:03A0                 xor     dx, dx
seg025:03A2
seg025:03A2 loc_183F2:                              ; CODE XREF: seg025:03B4␙j
seg025:03A2                 mov     bx, ax
seg025:03A4                 and     bx, cx
seg025:03A6                 or      dx, bx
seg025:03A8                 shl     ax, 1
seg025:03AA                 shl     cx, 1
seg025:03AC                 mov     bx, ax
seg025:03AE                 and     bx, cx
seg025:03B0                 or      dx, bx
seg025:03B2                 shl     cx, 1
seg025:03B4                 jnb     short loc_183F2
seg025:03B6                 mov     ax, dx
seg025:03B8                 and     ax, word_2B3AD
seg025:03BC                 not     dx
seg025:03BE                 xchg    ah, al
seg025:03C0                 xchg    dh, dl
seg025:03C2                 mov     cx, dx
seg025:03C4                 pop     bx
seg025:03C5                 and     dx, es:[bx]
seg025:03C8                 or      dx, ax
seg025:03CA                 mov     es:[bx], dx
seg025:03CD                 and     cx, es:[di]
seg025:03D0                 or      cx, ax
seg025:03D2                 mov     es:[di], cx
seg025:03D5                 pop     cx
seg025:03D6
seg025:03D6 loc_18426:                              ; CODE XREF: seg025:0397␘j
seg025:03D6                 pop     bx
seg025:03D7                 pop     di
seg025:03D8                 dec     di
seg025:03D9                 jz      short loc_18452
seg025:03DB                 mov     al, byte_2AD32
seg025:03DE                 xor     byte_2AD32, 1
seg025:03E3
seg025:03E3 loc_18433:                              ; CODE XREF: seg025:03EF␙j
seg025:03E3                                         ; seg025:03FD␙j
seg025:03E3                 test    bx, 0E000h
seg025:03E7                 jz      short loc_18444
seg025:03E9                 sub     bx, 2000h
seg025:03ED                 xor     al, 1
seg025:03EF                 jz      short loc_18433
seg025:03F1                 jmp     loc_18372
seg025:03F4 ; ---------------------------------------------------------------------------
seg025:03F4
seg025:03F4 loc_18444:                              ; CODE XREF: seg025:03E7␘j
seg025:03F4                 or      bx, 6000h
seg025:03F8                 sub     bx, 5Ah ; 'Z'
seg025:03FB                 xor     al, 1
seg025:03FD                 jz      short loc_18433
seg025:03FF                 jmp     loc_18372
seg025:0402 ; ---------------------------------------------------------------------------
seg025:0402
seg025:0402 loc_18452:                              ; CODE XREF: seg025:03D9␘j
seg025:0402                 jmp     loc_18566
seg025:0405 ; ---------------------------------------------------------------------------
seg025:0405                 and     cl, 7
seg025:0408                 xor     cl, 7
seg025:040B                 inc     cx
seg025:040C                 mov     ch, 8
seg025:040E                 shr     bx, 1
seg025:0410                 shr     bx, 1
seg025:0412                 shr     bx, 1
seg025:0414                 mul     word_2B1C2
seg025:0418                 add     bx, ax
seg025:041A                 mov     si, [bp+6]
seg025:041D                 mov     dx, [bp+0Ah]
seg025:0420
seg025:0420 loc_18470:                              ; CODE XREF: seg025:0450␙j
seg025:0420                 mov     di, [bp+8]
seg025:0423                 xor     ah, ah
seg025:0425                 push    dx
seg025:0426                 push    bx
seg025:0427                 mov     dx, 3CEh
seg025:042A
seg025:042A loc_1847A:                              ; CODE XREF: seg025:0439␙j
seg025:042A                 lodsb
seg025:042B                 push    ax
seg025:042C                 shl     ax, cl
seg025:042E                 mov     al, ch
seg025:0430                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg025:0430                                         ; set/reset.
seg025:0430                                         ; Data bits 0-3 select planes for write mode 00
seg025:0431                 and     es:[bx], ah
seg025:0434                 pop     ax
seg025:0435                 mov     ah, al
seg025:0437                 inc     bx
seg025:0438                 dec     di
seg025:0439                 jnz     short loc_1847A
seg025:043B                 cmp     cl, ch
seg025:043D                 jz      short loc_18499
seg025:043F                 shl     al, cl
seg025:0441                 mov     ah, al
seg025:0443                 mov     al, ch
seg025:0445                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg025:0445                                         ; set/reset.
seg025:0445                                         ; Data bits 0-3 select planes for write mode 00
seg025:0446                 and     es:[bx], ah
seg025:0449
seg025:0449 loc_18499:                              ; CODE XREF: seg025:043D␘j
seg025:0449                 pop     bx
seg025:044A                 sub     bx, word_2B1C2
seg025:044E                 pop     dx
seg025:044F                 dec     dx
seg025:0450                 jnz     short loc_18470
seg025:0452                 jmp     loc_18566
seg025:0455 ; ---------------------------------------------------------------------------
seg025:0455                 xchg    ah, al
seg025:0457                 add     bx, ax
seg025:0459                 shr     ax, 1
seg025:045B                 shr     ax, 1
seg025:045D                 add     bx, ax
seg025:045F                 mov     ah, byte_2AD2B
seg025:0463                 mov     si, [bp+6]
seg025:0466                 mov     di, [bp+0Ah]
seg025:0469
seg025:0469 loc_184B9:                              ; CODE XREF: seg025:0485␙j
seg025:0469                 mov     dx, [bp+8]
seg025:046C                 push    bx
seg025:046D
seg025:046D loc_184BD:                              ; CODE XREF: seg025:047D␙j
seg025:046D                 lodsb
seg025:046E                 mov     ch, 80h ; 'Ç'
seg025:0470
seg025:0470 loc_184C0:                              ; CODE XREF: seg025:047A␙j
seg025:0470                 test    al, ch
seg025:0472                 jz      short loc_184C7
seg025:0474                 mov     es:[bx], ah
seg025:0477
seg025:0477 loc_184C7:                              ; CODE XREF: seg025:0472␘j
seg025:0477                 inc     bx
seg025:0478                 shr     ch, 1
seg025:047A                 jnb     short loc_184C0
seg025:047C                 dec     dx
seg025:047D                 jnz     short loc_184BD
seg025:047F                 pop     bx
seg025:0480                 sub     bx, 140h
seg025:0484                 dec     di
seg025:0485                 jnz     short loc_184B9
seg025:0487                 jmp     loc_18566
seg025:0487 ; ---------------------------------------------------------------------------
seg025:048A                 db 86h, 0E0h, 3, 0D8h, 0D1h, 0E8h, 0D1h, 0E8h, 3, 0D8h
seg025:048A                 db 0D1h, 0EBh, 0D1h, 0EBh, 89h, 1Eh, 83h, 0BCh, 80h, 0E1h
seg025:048A                 db 3, 0B0h, 1, 0D2h, 0E0h, 88h, 0Eh, 8Ch, 0BCh, 0A2h, 89h
seg025:048A                 db 0BCh, 8Bh, 46h, 6, 0A3h, 85h, 0BCh, 8Bh, 46h, 8, 0A3h
seg025:048A                 db 87h, 0BCh, 8Bh, 46h, 0Ah, 0A3h
seg025:04BA word_1850A      dw 0BC8Eh               ; DATA XREF: sub_CFC7+1F␘w
seg025:04BC ; ---------------------------------------------------------------------------
seg025:04BC                 mov     bl, 80h ; 'Ç'
seg025:04BE                 mov     bh, byte_2AD2B
seg025:04C2
seg025:04C2 loc_18512:                              ; CODE XREF: seg025:050A␙j
seg025:04C2                                         ; seg025:0514␙j
seg025:04C2                 mov     dx, 3C4h
seg025:04C5                 mov     al, 2
seg025:04C7                 mov     ah, byte_2AD69
seg025:04CB                 out     dx, ax          ; EGA: sequencer address reg
seg025:04CB                                         ; sequencer reset.
seg025:04CB                                         ; Bits of data 0-1 indicate asynchronous/synchronous reset.
seg025:04CC                 mov     si, word_2AD65
seg025:04D0                 mov     di, word_2AD63
seg025:04D4                 mov     cx, word_2AD6E
seg025:04D8                 mov     dx, [bp+8]
seg025:04DB
seg025:04DB loc_1852B:                              ; CODE XREF: seg025:04E9␙j
seg025:04DB                 mov     al, [si]
seg025:04DD                 test    al, bl
seg025:04DF                 jz      short loc_18534
seg025:04E1                 mov     es:[di], bh
seg025:04E4
seg025:04E4 loc_18534:                              ; CODE XREF: seg025:04DF␘j
seg025:04E4                 add     si, dx
seg025:04E6                 sub     di, 50h ; 'P'
seg025:04E9                 loop    loc_1852B
seg025:04EB                 mov     cl, byte_2AD6C
seg025:04EF                 inc     cl
seg025:04F1                 and     cl, 3
seg025:04F4                 mov     al, 1
seg025:04F6                 shl     al, cl
seg025:04F8                 mov     byte_2AD6C, cl
seg025:04FC                 mov     byte_2AD69, al
seg025:04FF                 mov     ax, 1
seg025:0502                 shr     ax, cl
seg025:0504                 add     word_2AD63, ax
seg025:0508                 ror     bl, 1
seg025:050A                 jnb     short loc_18512
seg025:050C                 inc     word_2AD65
seg025:0510                 dec     word_2AD67
seg025:0514                 jnz     short loc_18512
seg025:0516
seg025:0516 loc_18566:                              ; CODE XREF: seg025:loc_18151␘j
seg025:0516                                         ; seg025:loc_182A9␘j ...
seg025:0516                 xor     ax, ax
seg025:0518                 pop     si
seg025:0519                 pop     di
seg025:051A                 pop     bp
seg025:051B                 retf
seg025:051B ; ---------------------------------------------------------------------------
seg025:051C                 db 16h, 5, 16h, 5, 16h, 5, 16h, 5, 2Ch, 0, 2Ch, 0, 4, 1
seg025:051C                 db 16h, 5, 16h, 5, 1Dh, 1, 16h, 5, 5Ch, 2, 0CEh, 2, 5
seg025:051C                 db 4, 5, 4, 5, 4, 5, 4, 5, 4
seg025:051C seg025          ends
seg025:051C
seg026:0000 ; ---------------------------------------------------------------------------
seg026:0000
seg026:0000 ; Segment type: Pure code
seg026:0000 seg026          segment byte public 'CODE' use16
seg026:0000                 assume cs:seg026
seg026:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg026:0000                 db 5, 4, 55h, 4, 8Ah, 4
seg026:0006
