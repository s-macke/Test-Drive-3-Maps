seg026:0006 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg026:0006
seg026:0006 ; Attributes: bp-based frame
seg026:0006
seg026:0006 sub_18596       proc near               ; CODE XREF: sub_1DAA+116␘P
seg026:0006                                         ; sub_1DAA+135␘P ...
seg026:0006                 push    bp
seg026:0007                 mov     bp, sp
seg026:0009                 push    di
seg026:000A                 push    si
seg026:000B                 cld
seg026:000C                 mov     ax, word_2AD72
seg026:000F                 mov     es, ax
seg026:0011                 assume es:seg000
seg026:0011                 mov     bx, word_2AD35
seg026:0015                 mov     cx, bx
seg026:0017                 mov     ax, word_2AD37
seg026:001A                 lea     si, aDiSoundsOnMayS ; "DI sounds on may slow down the game."
seg026:001E                 add     si, word_2AD2E
seg026:0022                 jmp     word ptr cs:[si]
seg026:0022 sub_18596       endp
seg026:0022
seg026:0025 ; ---------------------------------------------------------------------------
seg026:0025                 xchg    ah, al
seg026:0027                 shr     ax, 1
seg026:0029                 add     bh, al
seg026:002B                 xor     al, al
seg026:002D                 add     bx, ax
seg026:002F                 shr     ax, 1
seg026:0031                 shr     ax, 1
seg026:0033                 add     bx, ax
seg026:0035                 shr     bx, 1
seg026:0037                 shr     bx, 1
seg026:0039                 mov     al, byte_2AD2B
seg026:003C                 and     al, 3
seg026:003E                 mov     ah, al
seg026:0040                 shl     ah, 1
seg026:0042                 shl     ah, 1
seg026:0044                 or      al, ah
seg026:0046                 shl     ah, 1
seg026:0048                 shl     ah, 1
seg026:004A                 or      al, ah
seg026:004C                 shl     ah, 1
seg026:004E                 shl     ah, 1
seg026:0050                 or      al, ah
seg026:0052                 mov     ah, al
seg026:0054                 mov     word_2B3AD, ax
seg026:0057                 and     cx, 3
seg026:005A                 shl     cl, 1
seg026:005C                 mov     si, [bp+6]
seg026:005F                 mov     dx, [bp+0Ah]
seg026:0062
seg026:0062 loc_185F2:                              ; CODE XREF: seg026:00B1␙j
seg026:0062                 mov     di, [bp+8]
seg026:0065                 push    bx
seg026:0066                 push    dx
seg026:0067
seg026:0067 loc_185F7:                              ; CODE XREF: seg026:009D␙j
seg026:0067                 mov     ax, es:[bx]
seg026:006A                 xchg    ah, al
seg026:006C                 add     bx, 2
seg026:006F                 mov     dl, es:[bx]
seg026:0072                 xor     dh, dh
seg026:0074                 shl     ax, cl
seg026:0076                 shl     dx, cl
seg026:0078                 or      al, dh
seg026:007A                 xor     ax, word_2B3AD
seg026:007E                 not     ax
seg026:0080                 mov     dx, ax
seg026:0082                 shl     dx, 1
seg026:0084                 and     ax, dx
seg026:0086                 push    cx
seg026:0087                 mov     cx, 8
seg026:008A                 xor     dx, dx
seg026:008C
seg026:008C loc_1861C:                              ; CODE XREF: seg026:0094␙j
seg026:008C                 shl     ax, 1
seg026:008E                 adc     dl, dh
seg026:0090                 rol     dl, 1
seg026:0092                 shl     ax, 1
seg026:0094                 loop    loc_1861C
seg026:0096                 ror     dl, 1
seg026:0098                 pop     cx
seg026:0099                 mov     [si], dl
seg026:009B                 inc     si
seg026:009C                 dec     di
seg026:009D                 jnz     short loc_185F7
seg026:009F                 pop     dx
seg026:00A0                 pop     bx
seg026:00A1                 dec     dx
seg026:00A2                 jz      short loc_18643
seg026:00A4                 test    bx, 2000h
seg026:00A8                 jnz     short loc_1863D
seg026:00AA                 sub     bx, 50h ; 'P'
seg026:00AD
seg026:00AD loc_1863D:                              ; CODE XREF: seg026:00A8␘j
seg026:00AD                 xor     bx, 2000h
seg026:00B1                 jmp     short loc_185F2
seg026:00B3 ; ---------------------------------------------------------------------------
seg026:00B3
seg026:00B3 loc_18643:                              ; CODE XREF: seg026:00A2␘j
seg026:00B3                 jmp     loc_18964
seg026:00B6 ; ---------------------------------------------------------------------------
seg026:00B6                 xchg    ah, al
seg026:00B8                 shr     ax, 1
seg026:00BA                 shr     bx, 1
seg026:00BC                 add     bh, al
seg026:00BE                 xor     al, al
seg026:00C0                 add     bx, ax
seg026:00C2                 shr     ax, 1
seg026:00C4                 shr     ax, 1
seg026:00C6                 add     bx, ax
seg026:00C8                 shr     bx, 1
seg026:00CA                 shr     bx, 1
seg026:00CC                 jmp     loc_1875C
seg026:00CF ; ---------------------------------------------------------------------------
seg026:00CF                 shl     bx, 1
seg026:00D1                 shl     bx, 1
seg026:00D3                 shr     ax, 1
seg026:00D5                 rcr     bx, 1
seg026:00D7                 shr     ax, 1
seg026:00D9                 rcr     bx, 1
seg026:00DB                 shr     bx, 1
seg026:00DD                 xchg    ah, al
seg026:00DF                 shr     ax, 1
seg026:00E1                 add     bx, ax
seg026:00E3                 shr     ax, 1
seg026:00E5                 shr     ax, 1
seg026:00E7                 add     bx, ax
seg026:00E9                 mov     al, byte_2AD2B
seg026:00EC                 and     al, 0Fh
seg026:00EE                 mov     ah, al
seg026:00F0                 shl     ah, 1
seg026:00F2                 shl     ah, 1
seg026:00F4                 shl     ah, 1
seg026:00F6                 shl     ah, 1
seg026:00F8                 or      al, ah
seg026:00FA                 mov     ah, al
seg026:00FC                 mov     word_2B3AD, ax
seg026:00FF                 and     cx, 1
seg026:0102                 shl     cl, 1
seg026:0104                 shl     cl, 1
seg026:0106                 mov     si, [bp+6]
seg026:0109                 mov     dx, [bp+0Ah]
seg026:010C
seg026:010C loc_1869C:                              ; CODE XREF: seg026:01AB␙j
seg026:010C                                         ; seg026:01B6␙j
seg026:010C                 mov     di, [bp+8]
seg026:010F                 push    bx
seg026:0110                 push    dx
seg026:0111
seg026:0111 loc_186A1:                              ; CODE XREF: seg026:0199␙j
seg026:0111                 mov     ax, es:[bx]
seg026:0114                 xchg    ah, al
seg026:0116                 add     bx, 2
seg026:0119                 mov     dl, es:[bx]
seg026:011C                 xor     dh, dh
seg026:011E                 shl     ax, cl
seg026:0120                 shl     dx, cl
seg026:0122                 or      al, dh
seg026:0124                 xor     ax, word_2B3AD
seg026:0128                 not     ax
seg026:012A                 mov     dx, ax
seg026:012C                 shl     dx, 1
seg026:012E                 and     ax, dx
seg026:0130                 shl     dx, 1
seg026:0132                 and     ax, dx
seg026:0134                 shl     dx, 1
seg026:0136                 and     ax, dx
seg026:0138                 push    ax
seg026:0139                 mov     ax, es:[bx]
seg026:013C                 xchg    ah, al
seg026:013E                 add     bx, 2
seg026:0141                 mov     dl, es:[bx]
seg026:0144                 xor     dh, dh
seg026:0146                 shl     ax, cl
seg026:0148                 shl     dx, cl
seg026:014A                 or      al, dh
seg026:014C                 xor     ax, word_2B3AD
seg026:0150                 not     ax
seg026:0152                 mov     dx, ax
seg026:0154                 shl     dx, 1
seg026:0156                 and     ax, dx
seg026:0158                 shl     dx, 1
seg026:015A                 and     ax, dx
seg026:015C                 shl     dx, 1
seg026:015E                 and     ax, dx
seg026:0160                 pop     dx
seg026:0161                 push    bx
seg026:0162                 push    cx
seg026:0163                 mov     cx, 4
seg026:0166                 xor     bx, bx
seg026:0168
seg026:0168 loc_186F8:                              ; CODE XREF: seg026:0174␙j
seg026:0168                 shl     dx, 1
seg026:016A                 adc     bl, bh
seg026:016C                 rol     bl, 1
seg026:016E                 shl     dx, 1
seg026:0170                 shl     dx, 1
seg026:0172                 shl     dx, 1
seg026:0174                 loop    loc_186F8
seg026:0176                 ror     bl, 1
seg026:0178                 mov     cx, 4
seg026:017B                 shl     bl, cl
seg026:017D                 xor     dx, dx
seg026:017F
seg026:017F loc_1870F:                              ; CODE XREF: seg026:018B␙j
seg026:017F                 shl     ax, 1
seg026:0181                 adc     dl, dh
seg026:0183                 rol     dl, 1
seg026:0185                 shl     ax, 1
seg026:0187                 shl     ax, 1
seg026:0189                 shl     ax, 1
seg026:018B                 loop    loc_1870F
seg026:018D                 ror     dl, 1
seg026:018F                 or      dl, bl
seg026:0191                 mov     [si], dl
seg026:0193                 inc     si
seg026:0194                 pop     cx
seg026:0195                 pop     bx
seg026:0196                 dec     di
seg026:0197                 jz      short loc_1872C
seg026:0199                 jmp     loc_186A1
seg026:019C ; ---------------------------------------------------------------------------
seg026:019C
seg026:019C loc_1872C:                              ; CODE XREF: seg026:0197␘j
seg026:019C                 pop     dx
seg026:019D                 pop     bx
seg026:019E                 dec     dx
seg026:019F                 jz      short loc_18749
seg026:01A1                 test    bx, 0E000h
seg026:01A5                 jz      short loc_1873E
seg026:01A7                 sub     bx, 2000h
seg026:01AB                 jmp     loc_1869C
seg026:01AE ; ---------------------------------------------------------------------------
seg026:01AE
seg026:01AE loc_1873E:                              ; CODE XREF: seg026:01A5␘j
seg026:01AE                 or      bx, 6000h
seg026:01B2                 sub     bx, 0A0h ; 'á'
seg026:01B6                 jmp     loc_1869C
seg026:01B9 ; ---------------------------------------------------------------------------
seg026:01B9
seg026:01B9 loc_18749:                              ; CODE XREF: seg026:019F␘j
seg026:01B9                 jmp     loc_18964
seg026:01BC ; ---------------------------------------------------------------------------
seg026:01BC                 shr     ax, 1
seg026:01BE                 rcr     bx, 1
seg026:01C0                 shr     ax, 1
seg026:01C2                 rcr     bx, 1
seg026:01C4                 shr     bx, 1
seg026:01C6                 mov     ah, 5Ah ; 'Z'
seg026:01C8                 mul     ah
seg026:01CA                 add     bx, ax
seg026:01CC
seg026:01CC loc_1875C:                              ; CODE XREF: seg026:00CC␘j
seg026:01CC                 and     cx, 7
seg026:01CF                 sub     ch, byte_2AD2B
seg026:01D3                 not     ch
seg026:01D5                 mov     si, [bp+6]
seg026:01D8                 mov     di, [bp+0Ah]
seg026:01DB
seg026:01DB loc_1876B:                              ; CODE XREF: seg026:01FD␙j
seg026:01DB                                         ; seg026:0207␙j
seg026:01DB                 mov     dx, [bp+8]
seg026:01DE                 push    bx
seg026:01DF
seg026:01DF loc_1876F:                              ; CODE XREF: seg026:01ED␙j
seg026:01DF                 mov     ax, es:[bx]
seg026:01E2                 xchg    ah, al
seg026:01E4                 shl     ax, cl
seg026:01E6                 xor     ah, ch
seg026:01E8                 mov     [si], ah
seg026:01EA                 inc     si
seg026:01EB                 inc     bx
seg026:01EC                 dec     dx
seg026:01ED                 jnz     short loc_1876F
seg026:01EF                 pop     bx
seg026:01F0                 dec     di
seg026:01F1                 jz      short loc_18799
seg026:01F3                 test    bx, 0E000h
seg026:01F7                 jz      short loc_1878F
seg026:01F9                 sub     bx, 2000h
seg026:01FD                 jmp     short loc_1876B
seg026:01FF ; ---------------------------------------------------------------------------
seg026:01FF
seg026:01FF loc_1878F:                              ; CODE XREF: seg026:01F7␘j
seg026:01FF                 or      bx, word_2B13E
seg026:0203                 sub     bx, word_2B1C2
seg026:0207                 jmp     short loc_1876B
seg026:0209 ; ---------------------------------------------------------------------------
seg026:0209
seg026:0209 loc_18799:                              ; CODE XREF: seg026:01F1␘j
seg026:0209                 jmp     loc_18964
seg026:020C ; ---------------------------------------------------------------------------
seg026:020C                 shl     bx, 1
seg026:020E                 add     bx, 28h ; '('
seg026:0211                 mov     dx, ax
seg026:0213                 sar     ax, 1
seg026:0215                 add     ax, dx
seg026:0217                 add     ax, 18h
seg026:021A                 and     dx, 1
seg026:021D                 add     ax, dx
seg026:021F                 mov     byte_2AD32, dl
seg026:0223                 shr     ax, 1
seg026:0225                 rcr     bx, 1
seg026:0227                 shr     ax, 1
seg026:0229                 rcr     bx, 1
seg026:022B                 shr     bx, 1
seg026:022D                 mov     ah, 5Ah ; 'Z'
seg026:022F                 mul     ah
seg026:0231                 add     bx, ax
seg026:0233                 mov     al, byte_2AD2B
seg026:0236                 and     al, 3
seg026:0238                 mov     ah, al
seg026:023A                 shl     ah, 1
seg026:023C                 shl     ah, 1
seg026:023E                 or      al, ah
seg026:0240                 shl     ah, 1
seg026:0242                 shl     ah, 1
seg026:0244                 or      al, ah
seg026:0246                 shl     ah, 1
seg026:0248                 shl     ah, 1
seg026:024A                 or      al, ah
seg026:024C                 mov     ah, al
seg026:024E                 mov     word_2B3AD, ax
seg026:0251                 and     cx, 3
seg026:0254                 shl     cl, 1
seg026:0256                 mov     si, [bp+6]
seg026:0259                 mov     dx, [bp+0Ah]
seg026:025C
seg026:025C loc_187EC:                              ; CODE XREF: seg026:02B4␙j
seg026:025C                                         ; seg026:02C1␙j
seg026:025C                 mov     di, [bp+8]
seg026:025F                 push    bx
seg026:0260                 push    dx
seg026:0261
seg026:0261 loc_187F1:                              ; CODE XREF: seg026:0297␙j
seg026:0261                 mov     ax, es:[bx]
seg026:0264                 xchg    ah, al
seg026:0266                 add     bx, 2
seg026:0269                 mov     dl, es:[bx]
seg026:026C                 xor     dh, dh
seg026:026E                 shl     ax, cl
seg026:0270                 shl     dx, cl
seg026:0272                 or      al, dh
seg026:0274                 xor     ax, word_2B3AD
seg026:0278                 not     ax
seg026:027A                 mov     dx, ax
seg026:027C                 shl     dx, 1
seg026:027E                 and     ax, dx
seg026:0280                 push    cx
seg026:0281                 mov     cx, 8
seg026:0284                 xor     dx, dx
seg026:0286
seg026:0286 loc_18816:                              ; CODE XREF: seg026:028E␙j
seg026:0286                 shl     ax, 1
seg026:0288                 adc     dl, dh
seg026:028A                 rol     dl, 1
seg026:028C                 shl     ax, 1
seg026:028E                 loop    loc_18816
seg026:0290                 ror     dl, 1
seg026:0292                 pop     cx
seg026:0293                 mov     [si], dl
seg026:0295                 inc     si
seg026:0296                 dec     di
seg026:0297                 jnz     short loc_187F1
seg026:0299                 pop     dx
seg026:029A                 pop     bx
seg026:029B                 dec     dx
seg026:029C                 jz      short loc_18853
seg026:029E                 mov     al, byte_2AD32
seg026:02A1                 xor     byte_2AD32, 1
seg026:02A6
seg026:02A6 loc_18836:                              ; CODE XREF: seg026:02B2␙j
seg026:02A6                                         ; seg026:02BF␙j
seg026:02A6                 test    bx, 0E000h
seg026:02AA                 jz      short loc_18846
seg026:02AC                 sub     bx, 2000h
seg026:02B0                 xor     al, 1
seg026:02B2                 jz      short loc_18836
seg026:02B4                 jmp     short loc_187EC
seg026:02B6 ; ---------------------------------------------------------------------------
seg026:02B6
seg026:02B6 loc_18846:                              ; CODE XREF: seg026:02AA␘j
seg026:02B6                 or      bx, 6000h
seg026:02BA                 sub     bx, 5Ah ; 'Z'
seg026:02BD                 xor     al, 1
seg026:02BF                 jz      short loc_18836
seg026:02C1                 jmp     short loc_187EC
seg026:02C3 ; ---------------------------------------------------------------------------
seg026:02C3
seg026:02C3 loc_18853:                              ; CODE XREF: seg026:029C␘j
seg026:02C3                 jmp     loc_18964
seg026:02C6 ; ---------------------------------------------------------------------------
seg026:02C6                 and     cx, 7
seg026:02C9                 shr     bx, 1
seg026:02CB                 shr     bx, 1
seg026:02CD                 shr     bx, 1
seg026:02CF                 mul     word_2B1C2
seg026:02D3                 add     bx, ax
seg026:02D5                 mov     si, [bp+6]
seg026:02D8                 mov     di, [bp+0Ah]
seg026:02DB                 push    ax
seg026:02DC                 mov     al, 5
seg026:02DE                 mov     ah, 8
seg026:02E0                 push    dx
seg026:02E1                 mov     dx, 3CEh
seg026:02E4                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg026:02E4                                         ; unknown register
seg026:02E5                 pop     dx
seg026:02E6                 pop     ax
seg026:02E7
seg026:02E7 loc_18877:                              ; CODE XREF: seg026:02FF␙j
seg026:02E7                 mov     dx, [bp+8]
seg026:02EA                 push    bx
seg026:02EB
seg026:02EB loc_1887B:                              ; CODE XREF: seg026:02F7␙j
seg026:02EB                 mov     ax, es:[bx]
seg026:02EE                 xchg    ah, al
seg026:02F0                 shl     ax, cl
seg026:02F2                 mov     [si], ah
seg026:02F4                 inc     si
seg026:02F5                 inc     bx
seg026:02F6                 dec     dx
seg026:02F7                 jnz     short loc_1887B
seg026:02F9                 pop     bx
seg026:02FA                 sub     bx, word_2B1C2
seg026:02FE                 dec     di
seg026:02FF                 jnz     short loc_18877
seg026:0301                 push    ax
seg026:0302                 mov     al, 5
seg026:0304                 mov     ah, 0
seg026:0306                 push    dx
seg026:0307                 mov     dx, 3CEh
seg026:030A                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg026:030A                                         ; mode register.Data bits:
seg026:030A                                         ; 0-1: Write mode 0-2
seg026:030A                                         ; 2: test condition
seg026:030A                                         ; 3: read mode: 1=color compare, 0=direct
seg026:030A                                         ; 4: 1=use odd/even RAM addressing
seg026:030A                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg026:030B                 pop     dx
seg026:030C                 pop     ax
seg026:030D                 jmp     loc_18964
seg026:0310 ; ---------------------------------------------------------------------------
seg026:0310                 xchg    ah, al
seg026:0312                 add     bx, ax
seg026:0314                 shr     ax, 1
seg026:0316                 shr     ax, 1
seg026:0318                 add     bx, ax
seg026:031A                 mov     ah, byte_2AD2B
seg026:031E                 mov     si, [bp+6]
seg026:0321                 mov     di, [bp+0Ah]
seg026:0324
seg026:0324 loc_188B4:                              ; CODE XREF: seg026:0344␙j
seg026:0324                 mov     dx, [bp+8]
seg026:0327                 push    bx
seg026:0328
seg026:0328 loc_188B8:                              ; CODE XREF: seg026:033C␙j
seg026:0328                 xor     al, al
seg026:032A                 mov     ch, 80h ; 'Ç'
seg026:032C
seg026:032C loc_188BC:                              ; CODE XREF: seg026:0336␙j
seg026:032C                 cmp     es:[bx], ah
seg026:032F                 jnz     short loc_188C3
seg026:0331                 or      al, ch
seg026:0333
seg026:0333 loc_188C3:                              ; CODE XREF: seg026:032F␘j
seg026:0333                 inc     bx
seg026:0334                 shr     ch, 1
seg026:0336                 jnb     short loc_188BC
seg026:0338                 mov     [si], al
seg026:033A                 inc     si
seg026:033B                 dec     dx
seg026:033C                 jnz     short loc_188B8
seg026:033E                 pop     bx
seg026:033F                 sub     bx, 140h
seg026:0343                 dec     di
seg026:0344                 jnz     short loc_188B4
seg026:0346                 jmp     loc_18964
seg026:0349 ; ---------------------------------------------------------------------------
seg026:0349                 xchg    ah, al
seg026:034B                 add     bx, ax
seg026:034D                 shr     ax, 1
seg026:034F                 shr     ax, 1
seg026:0351                 add     bx, ax
seg026:0353                 shr     bx, 1
seg026:0355                 shr     bx, 1
seg026:0357                 mov     word_2AD63, bx
seg026:035B                 and     cl, 3
seg026:035E                 mov     byte_2AD6C, cl
seg026:0362                 mov     di, [bp+6]
seg026:0365                 mov     word_2AD65, di
seg026:0369                 mov     ax, [bp+8]
seg026:036C                 mov     word_2AD67, ax
seg026:036F                 mov     cx, [bp+0Ah]
seg026:0372                 mov     word_2AD6E, cx
seg026:0376                 mov     bl, 80h ; 'Ç'
seg026:0378                 mov     bh, byte_2AD2B
seg026:037C                 mul     cx
seg026:037E                 mov     cx, ax
seg026:0380                 xor     al, al
seg026:0382
seg026:0382 loc_18912:                              ; CODE XREF: seg026:0385␙j
seg026:0382                 mov     [di], al
seg026:0384                 inc     di
seg026:0385                 loop    loc_18912
seg026:0387
seg026:0387 loc_18917:                              ; CODE XREF: seg026:03C8␙j
seg026:0387                                         ; seg026:03D2␙j
seg026:0387                 mov     dx, 3CEh
seg026:038A                 mov     al, 4
seg026:038C                 mov     ah, byte_2AD6C
seg026:0390                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg026:0390                                         ; set/reset.
seg026:0390                                         ; Data bits 0-3 select planes for write mode 00
seg026:0391                 mov     di, word_2AD65
seg026:0395                 mov     si, word_2AD63
seg026:0399                 mov     ax, 50h ; 'P'
seg026:039C                 mov     cx, word_2AD6E
seg026:03A0                 mov     dx, [bp+8]
seg026:03A3
seg026:03A3 loc_18933:                              ; CODE XREF: seg026:03AE␙j
seg026:03A3                 cmp     es:[si], bh
seg026:03A6                 jnz     short loc_1893A
seg026:03A8                 or      [di], bl
seg026:03AA
seg026:03AA loc_1893A:                              ; CODE XREF: seg026:03A6␘j
seg026:03AA                 add     di, dx
seg026:03AC                 sub     si, ax
seg026:03AE                 loop    loc_18933
seg026:03B0                 mov     cl, byte_2AD6C
seg026:03B4                 inc     cl
seg026:03B6                 and     cl, 3
seg026:03B9                 mov     byte_2AD6C, cl
seg026:03BD                 mov     ax, 1
seg026:03C0                 shr     ax, cl
seg026:03C2                 add     word_2AD63, ax
seg026:03C6                 ror     bl, 1
seg026:03C8                 jnb     short loc_18917
seg026:03CA                 inc     word_2AD65
seg026:03CE                 dec     word_2AD67
seg026:03D2                 jnz     short loc_18917
seg026:03D4
seg026:03D4 loc_18964:                              ; CODE XREF: seg026:loc_18643␘j
seg026:03D4                                         ; seg026:loc_18749␘j ...
seg026:03D4                 xor     ax, ax
seg026:03D6                 pop     si
seg026:03D7                 pop     di
seg026:03D8                 pop     bp
seg026:03D9                 retf
seg026:03DA ; ---------------------------------------------------------------------------
seg026:03DA                 aam     3
seg026:03DC                 aam     3
seg026:03DE                 aam     3
seg026:03E0                 aam     3
seg026:03E2                 and     ax, 2500h
seg026:03E5                 add     [bp-2C00h], dh
seg026:03E9                 add     dx, sp
seg026:03EB                 add     cx, di
seg026:03ED                 add     ah, dl
seg026:03EF                 add     di, [si+0C01h]
seg026:03F3                 add     al, dh
seg026:03F5                 add     al, dh
seg026:03F7                 add     al, dh
seg026:03F9                 add     al, dh
seg026:03FB                 add     al, dh
seg026:03FD                 add     al, dh
seg026:03FF                 add     dl, [bx+si]
seg026:0401                 add     cx, [bx+di+3]
seg026:0401 seg026          ends
seg026:0401
seg027:0004 ; ---------------------------------------------------------------------------
seg027:0004
seg027:0004 ; Segment type: Pure code
seg027:0004 seg027          segment byte public 'CODE' use16
seg027:0004                 assume cs:seg027
seg027:0004                 ;org 4
seg027:0004                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg027:0004
