seg022:000B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg022:000B
seg022:000B ; Attributes: bp-based frame
seg022:000B
seg022:000B sub_1764B       proc near               ; CODE XREF: sub_3BFC+42A␘P
seg022:000B
seg022:000B arg_2           = word ptr  6
seg022:000B arg_4           = word ptr  8
seg022:000B arg_6           = word ptr  0Ah
seg022:000B arg_8           = word ptr  0Ch
seg022:000B
seg022:000B                 push    bp
seg022:000C                 mov     bp, sp
seg022:000E                 push    di
seg022:000F                 push    si
seg022:0010                 cld
seg022:0011                 mov     si, [bp+arg_2]
seg022:0014                 mov     dx, [bp+arg_4]
seg022:0017                 mov     di, [bp+arg_8]
seg022:001A                 mov     cx, di
seg022:001C                 inc     cx
seg022:001D                 sub     cx, [bp+arg_6]
seg022:0020                 lea     bx, aOlors      ; "olors\n"
seg022:0024                 add     bx, word_2AD2E
seg022:0028                 jmp     word ptr cs:[bx]
seg022:0028 sub_1764B       endp
seg022:0028
seg022:002B ; ---------------------------------------------------------------------------
seg022:002B                 mov     ax, di
seg022:002D                 mov     bx, si
seg022:002F                 mul     word_2B1EE
seg022:0033                 add     bx, ax
seg022:0035                 shl     bx, 1
seg022:0037                 mov     dx, [bp+8]
seg022:003A                 inc     dx
seg022:003B                 sub     dx, si
seg022:003D                 mov     si, bx
seg022:003F                 push    ds
seg022:0040                 push    word_2B1EE
seg022:0044                 mov     ax, word_2AD70
seg022:0047                 mov     es, ax
seg022:0049                 mov     ax, word_2AD72
seg022:004C                 mov     ds, ax
seg022:004E                 pop     ax
seg022:004F                 shl     ax, 1
seg022:0051                 add     ax, dx
seg022:0053                 add     ax, dx
seg022:0055                 mov     bx, cx
seg022:0057
seg022:0057 loc_17697:                              ; CODE XREF: seg022:0060␙j
seg022:0057                 mov     cx, dx
seg022:0059                 mov     di, si
seg022:005B                 rep movsw
seg022:005D                 sub     si, ax
seg022:005F                 dec     bx
seg022:0060                 jnz     short loc_17697
seg022:0062                 jmp     loc_178E7
seg022:0065 ; ---------------------------------------------------------------------------
seg022:0065                 mov     ax, di
seg022:0067                 mov     bx, si
seg022:0069                 xchg    ah, al
seg022:006B                 shr     ax, 1
seg022:006D                 add     bh, al
seg022:006F                 xor     al, al
seg022:0071                 add     bx, ax
seg022:0073                 shr     ax, 1
seg022:0075                 shr     ax, 1
seg022:0077                 add     bx, ax
seg022:0079                 shr     bx, 1
seg022:007B                 shr     bx, 1
seg022:007D                 shr     dx, 1
seg022:007F                 shr     dx, 1
seg022:0081                 shr     si, 1
seg022:0083                 shr     si, 1
seg022:0085                 jmp     loc_17777
seg022:0088 ; ---------------------------------------------------------------------------
seg022:0088                 mov     ax, di
seg022:008A                 mov     bx, si
seg022:008C                 xchg    ah, al
seg022:008E                 shr     ax, 1
seg022:0090                 shr     bx, 1
seg022:0092                 add     bh, al
seg022:0094                 xor     al, al
seg022:0096                 add     bx, ax
seg022:0098                 shr     ax, 1
seg022:009A                 shr     ax, 1
seg022:009C                 add     bx, ax
seg022:009E                 shr     bx, 1
seg022:00A0                 shr     bx, 1
seg022:00A2                 shr     dx, 1
seg022:00A4                 shr     dx, 1
seg022:00A6                 shr     dx, 1
seg022:00A8                 shr     si, 1
seg022:00AA                 shr     si, 1
seg022:00AC                 shr     si, 1
seg022:00AE                 jmp     loc_17777
seg022:00B1 ; ---------------------------------------------------------------------------
seg022:00B1                 mov     ax, di
seg022:00B3                 mov     bx, si
seg022:00B5                 shl     bx, 1
seg022:00B7                 shl     bx, 1
seg022:00B9                 shr     ax, 1
seg022:00BB                 rcr     bx, 1
seg022:00BD                 shr     ax, 1
seg022:00BF                 rcr     bx, 1
seg022:00C1                 shr     bx, 1
seg022:00C3                 xchg    ah, al
seg022:00C5                 shr     ax, 1
seg022:00C7                 add     bx, ax
seg022:00C9                 shr     ax, 1
seg022:00CB                 shr     ax, 1
seg022:00CD                 add     bx, ax
seg022:00CF                 shr     dx, 1
seg022:00D1                 shr     si, 1
seg022:00D3                 jmp     short loc_17777
seg022:00D5 ; ---------------------------------------------------------------------------
seg022:00D5                 shl     si, 1
seg022:00D7                 add     si, 28h ; '('
seg022:00DA                 shl     dx, 1
seg022:00DC                 add     dx, 29h ; ')'
seg022:00DF                 mov     ax, [bp+0Ah]
seg022:00E2                 mov     cx, ax
seg022:00E4                 sar     ax, 1
seg022:00E6                 add     ax, cx
seg022:00E8                 add     ax, 18h
seg022:00EB                 mov     cx, ax
seg022:00ED                 mov     ax, di
seg022:00EF                 sar     ax, 1
seg022:00F1                 add     ax, di
seg022:00F3                 add     ax, 18h
seg022:00F6                 and     di, 1
seg022:00F9                 add     di, ax
seg022:00FB                 neg     cx
seg022:00FD                 add     cx, di
seg022:00FF                 inc     cx
seg022:0100                 mov     ax, di
seg022:0102                 mov     bx, si
seg022:0104                 shr     ax, 1
seg022:0106                 rcr     bx, 1
seg022:0108                 shr     ax, 1
seg022:010A                 rcr     bx, 1
seg022:010C                 shr     bx, 1
seg022:010E                 mov     ah, 5Ah ; 'Z'
seg022:0110                 mul     ah
seg022:0112                 add     bx, ax
seg022:0114                 shr     dx, 1
seg022:0116                 shr     dx, 1
seg022:0118                 shr     dx, 1
seg022:011A                 shr     si, 1
seg022:011C                 shr     si, 1
seg022:011E                 shr     si, 1
seg022:0120                 inc     dx
seg022:0121                 sub     dx, si
seg022:0123                 mov     si, bx
seg022:0125                 push    ds
seg022:0126                 mov     ax, word_2AD70
seg022:0129                 mov     es, ax
seg022:012B                 mov     ax, word_2AD72
seg022:012E                 mov     ds, ax
seg022:0130                 mov     ax, 5Ah ; 'Z'
seg022:0133                 mov     bx, cx
seg022:0135                 jmp     short loc_177BD
seg022:0137 ; ---------------------------------------------------------------------------
seg022:0137
seg022:0137 loc_17777:                              ; CODE XREF: seg022:0085␘j
seg022:0137                                         ; seg022:00AE␘j ...
seg022:0137                 push    ds
seg022:0138                 inc     dx
seg022:0139                 sub     dx, si
seg022:013B                 mov     si, bx
seg022:013D                 mov     bx, word_2B1C2
seg022:0141                 mov     di, word_2B13E
seg022:0145                 mov     ax, word_2AD70
seg022:0148                 mov     es, ax
seg022:014A                 mov     ax, word_2AD72
seg022:014D                 mov     ds, ax
seg022:014F                 mov     ax, bx
seg022:0151                 mov     bx, cx
seg022:0153                 cmp     di, 6000h
seg022:0157                 jz      short loc_177BD
seg022:0159
seg022:0159 loc_17799:                              ; CODE XREF: seg022:016C␙j
seg022:0159                                         ; seg022:0178␙j
seg022:0159                 mov     cx, dx
seg022:015B                 mov     di, si
seg022:015D                 rep movsb
seg022:015F                 sub     si, dx
seg022:0161                 test    si, 2000h
seg022:0165                 jz      short loc_177B1
seg022:0167                 xor     si, 2000h
seg022:016B                 dec     bx
seg022:016C                 jnz     short loc_17799
seg022:016E                 jmp     loc_178E7
seg022:0171 ; ---------------------------------------------------------------------------
seg022:0171
seg022:0171 loc_177B1:                              ; CODE XREF: seg022:0165␘j
seg022:0171                 sub     si, ax
seg022:0173                 xor     si, 2000h
seg022:0177                 dec     bx
seg022:0178                 jnz     short loc_17799
seg022:017A                 jmp     loc_178E7
seg022:017D ; ---------------------------------------------------------------------------
seg022:017D
seg022:017D loc_177BD:                              ; CODE XREF: seg022:0135␘j
seg022:017D                                         ; seg022:0157␘j ...
seg022:017D                 mov     cx, dx
seg022:017F                 mov     di, si
seg022:0181                 rep movsb
seg022:0183                 sub     si, dx
seg022:0185                 test    si, 0E000h
seg022:0189                 jz      short loc_177D5
seg022:018B                 sub     si, 2000h
seg022:018F                 dec     bx
seg022:0190                 jnz     short loc_177BD
seg022:0192                 jmp     loc_178E7
seg022:0195 ; ---------------------------------------------------------------------------
seg022:0195
seg022:0195 loc_177D5:                              ; CODE XREF: seg022:0189␘j
seg022:0195                 or      si, 6000h
seg022:0199                 sub     si, ax
seg022:019B                 dec     bx
seg022:019C                 jnz     short loc_177BD
seg022:019E                 jmp     loc_178E7
seg022:01A1 ; ---------------------------------------------------------------------------
seg022:01A1                 push    ax
seg022:01A2                 mov     al, 5
seg022:01A4                 mov     ah, 1
seg022:01A6                 push    dx
seg022:01A7                 mov     dx, 3CEh
seg022:01AA                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg022:01AA                                         ; unknown register
seg022:01AB                 pop     dx
seg022:01AC                 pop     ax
seg022:01AD                 shr     si, 1
seg022:01AF                 shr     si, 1
seg022:01B1                 shr     si, 1
seg022:01B3                 mov     bx, dx
seg022:01B5                 shr     bx, 1
seg022:01B7                 shr     bx, 1
seg022:01B9                 shr     bx, 1
seg022:01BB                 inc     bx
seg022:01BC                 sub     bx, si
seg022:01BE                 mov     ax, word_2B1C2
seg022:01C1                 mul     di
seg022:01C3                 add     si, ax
seg022:01C5                 push    ds
seg022:01C6                 mov     di, word_2B1C2
seg022:01CA                 mov     ax, word_2AD70
seg022:01CD                 mov     es, ax
seg022:01CF                 mov     ax, word_2AD72
seg022:01D2                 mov     ds, ax
seg022:01D4                 mov     ax, di
seg022:01D6                 add     ax, bx
seg022:01D8                 mov     dx, cx
seg022:01DA
seg022:01DA loc_1781A:                              ; CODE XREF: seg022:01E3␙j
seg022:01DA                 mov     cx, bx
seg022:01DC                 mov     di, si
seg022:01DE                 rep movsb
seg022:01E0                 sub     si, ax
seg022:01E2                 dec     dx
seg022:01E3                 jnz     short loc_1781A
seg022:01E5                 push    ax
seg022:01E6                 mov     al, 5
seg022:01E8                 mov     ah, 0
seg022:01EA                 push    dx
seg022:01EB                 mov     dx, 3CEh
seg022:01EE                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg022:01EE                                         ; mode register.Data bits:
seg022:01EE                                         ; 0-1: Write mode 0-2
seg022:01EE                                         ; 2: test condition
seg022:01EE                                         ; 3: read mode: 1=color compare, 0=direct
seg022:01EE                                         ; 4: 1=use odd/even RAM addressing
seg022:01EE                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg022:01EF                 pop     dx
seg022:01F0                 pop     ax
seg022:01F1                 jmp     loc_178E7
seg022:01F4 ; ---------------------------------------------------------------------------
seg022:01F4                 mov     ax, di
seg022:01F6                 mov     bx, si
seg022:01F8                 xchg    ah, al
seg022:01FA                 add     bx, ax
seg022:01FC                 shr     ax, 1
seg022:01FE                 shr     ax, 1
seg022:0200                 add     bx, ax
seg022:0202                 inc     dx
seg022:0203                 sub     dx, si
seg022:0205                 mov     si, bx
seg022:0207                 push    ds
seg022:0208                 mov     ax, word_2AD70
seg022:020B                 mov     es, ax
seg022:020D                 mov     ax, word_2AD72
seg022:0210                 mov     ds, ax
seg022:0212                 mov     ax, 140h
seg022:0215                 add     ax, dx
seg022:0217                 mov     bx, cx
seg022:0219
seg022:0219 loc_17859:                              ; CODE XREF: seg022:0222␙j
seg022:0219                 mov     cx, dx
seg022:021B                 mov     di, si
seg022:021D                 rep movsb
seg022:021F                 sub     si, ax
seg022:0221                 dec     bx
seg022:0222                 jnz     short loc_17859
seg022:0224                 jmp     loc_178E7
seg022:0227 ; ---------------------------------------------------------------------------
seg022:0227                 mov     ax, di
seg022:0229                 mov     bx, si
seg022:022B                 xchg    ah, al
seg022:022D                 add     bx, ax
seg022:022F                 shr     ax, 1
seg022:0231                 shr     ax, 1
seg022:0233                 add     bx, ax
seg022:0235                 shr     bx, 1
seg022:0237                 shr     bx, 1
seg022:0239                 mov     word_2AD63, bx
seg022:023D                 mov     di, cx
seg022:023F                 mov     cx, si
seg022:0241                 and     cl, 3
seg022:0244                 mov     al, 1
seg022:0246                 shl     al, cl
seg022:0248                 mov     byte_2AD6C, cl
seg022:024C                 mov     byte_2AD69, al
seg022:024F                 neg     si
seg022:0251                 add     si, dx
seg022:0253                 inc     si
seg022:0254                 mov     ax, word_2AD70
seg022:0257                 mov     es, ax
seg022:0259
seg022:0259 loc_17899:                              ; CODE XREF: seg022:02A5␙j
seg022:0259                 mov     dx, 3C4h
seg022:025C                 mov     al, 2
seg022:025E                 mov     ah, byte_2AD69
seg022:0262                 out     dx, ax          ; EGA: sequencer address reg
seg022:0262                                         ; sequencer reset.
seg022:0262                                         ; Bits of data 0-1 indicate asynchronous/synchronous reset.
seg022:0263                 mov     dl, 0CEh ; '+'
seg022:0265                 mov     al, 4
seg022:0267                 mov     ah, byte_2AD6C
seg022:026B                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg022:026B                                         ; set/reset.
seg022:026B                                         ; Data bits 0-3 select planes for write mode 00
seg022:026C                 mov     bx, word_2AD63
seg022:0270                 mov     cx, di
seg022:0272                 mov     dx, 50h ; 'P'
seg022:0275                 push    ds
seg022:0276                 mov     ax, word_2AD72
seg022:0279                 mov     ds, ax
seg022:027B
seg022:027B loc_178BB:                              ; CODE XREF: seg022:0282␙j
seg022:027B                 mov     al, [bx]
seg022:027D                 mov     es:[bx], al
seg022:0280                 sub     bx, dx
seg022:0282                 loop    loc_178BB
seg022:0284                 dec     si
seg022:0285                 jz      short loc_178E7
seg022:0287                 pop     ds
seg022:0288                 mov     cl, byte_2AD6C
seg022:028C                 inc     cl
seg022:028E                 and     cl, 3
seg022:0291                 mov     al, 1
seg022:0293                 shl     al, cl
seg022:0295                 mov     byte_2AD6C, cl
seg022:0299                 mov     byte_2AD69, al
seg022:029C                 mov     ax, 1
seg022:029F                 shr     ax, cl
seg022:02A1                 add     word_2AD63, ax
seg022:02A5                 jmp     short loc_17899
seg022:02A7 ; ---------------------------------------------------------------------------
seg022:02A7
seg022:02A7 loc_178E7:                              ; CODE XREF: seg022:0062␘j
seg022:02A7                                         ; seg022:016E␘j ...
seg022:02A7                 pop     ds
seg022:02A8                 xor     ax, ax
seg022:02AA                 pop     si
seg022:02AB                 pop     di
seg022:02AC                 pop     bp
seg022:02AD                 retf
seg022:02AD ; ---------------------------------------------------------------------------
seg022:02AE                 db 2Bh, 0, 2Bh, 0, 2Bh, 0, 2Bh, 0, 65h, 0, 65h, 0, 88h
seg022:02AE                 db 0, 2Bh, 0, 0A8h, 2, 0B1h, 0, 0A8h, 2, 0, 1, 0D5h, 0
seg022:02AE                 db 0A1h, 1, 0A1h, 1, 0A1h, 1, 0A1h, 1, 0A1h, 1, 0A1h, 1
seg022:02AE                 db 0F4h, 1, 27h, 2
seg022:02AE seg022          ends
seg022:02AE
seg023:0008 ; ---------------------------------------------------------------------------
seg023:0008
seg023:0008 ; Segment type: Pure code
seg023:0008 seg023          segment byte public 'CODE' use16
seg023:0008                 assume cs:seg023
seg023:0008                 ;org 8
seg023:0008                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg023:0008
