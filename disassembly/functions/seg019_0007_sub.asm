seg019:0007 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg019:0007
seg019:0007 ; Attributes: bp-based frame
seg019:0007
seg019:0007 sub_16E27       proc far                ; CODE XREF: sub_6A68+128␘P
seg019:0007                                         ; sub_6A68+13E␘P ...
seg019:0007
seg019:0007 arg_0           = word ptr  6
seg019:0007 arg_2           = word ptr  8
seg019:0007
seg019:0007                 push    bp
seg019:0008                 mov     bp, sp
seg019:000A                 mov     dx, [bp+arg_0]
seg019:000D                 cmp     dx, word_2AD3D
seg019:0011                 jl      short loc_16E59
seg019:0013                 cmp     dx, word_2AD3B
seg019:0017                 jg      short loc_16E59
seg019:0019                 mov     ax, [bp+arg_2]
seg019:001C                 cmp     ax, word_2AD41
seg019:0020                 jl      short loc_16E59
seg019:0022                 cmp     ax, word_2AD3F
seg019:0026                 jg      short loc_16E59
seg019:0028                 mov     bx, word_2AD72
seg019:002C                 mov     es, bx
seg019:002E                 assume es:seg000
seg019:002E                 lea     bx, aDateFailed_IsY ; "date failed. Is your disk full?\n"
seg019:0032                 add     bx, word_2AD2E
seg019:0036                 jmp     word ptr cs:[bx]
seg019:0039 ; ---------------------------------------------------------------------------
seg019:0039
seg019:0039 loc_16E59:                              ; CODE XREF: sub_16E27+A␘j
seg019:0039                                         ; sub_16E27+10␘j ...
seg019:0039                 jmp     loc_16FBE
seg019:003C ; ---------------------------------------------------------------------------
seg019:003C                 mov     bx, dx
seg019:003E                 mov     cl, bl
seg019:0040                 xchg    ah, al
seg019:0042                 shr     ax, 1
seg019:0044                 add     bh, al
seg019:0046                 xor     al, al
seg019:0048                 add     bx, ax
seg019:004A                 shr     ax, 1
seg019:004C                 shr     ax, 1
seg019:004E                 add     bx, ax
seg019:0050                 shr     bx, 1
seg019:0052                 shr     bx, 1
seg019:0054                 and     cl, 3
seg019:0057                 xor     cl, 3
seg019:005A                 shl     cl, 1
seg019:005C                 mov     ch, 0FCh ; 'n'
seg019:005E                 jmp     short loc_16EEC
seg019:0060 ; ---------------------------------------------------------------------------
seg019:0060                 mov     bx, dx
seg019:0062                 mov     cl, bl
seg019:0064                 xchg    ah, al
seg019:0066                 shr     ax, 1
seg019:0068                 shr     bx, 1
seg019:006A                 add     bh, al
seg019:006C                 xor     al, al
seg019:006E                 add     bx, ax
seg019:0070                 shr     ax, 1
seg019:0072                 shr     ax, 1
seg019:0074                 add     bx, ax
seg019:0076                 shr     bx, 1
seg019:0078                 shr     bx, 1
seg019:007A                 and     cl, 7
seg019:007D                 xor     cl, 7
seg019:0080                 mov     ch, 0FEh ; '¦'
seg019:0082                 jmp     short loc_16EEC
seg019:0084 ; ---------------------------------------------------------------------------
seg019:0084                 mov     bx, dx
seg019:0086                 mov     cl, bl
seg019:0088                 shl     bx, 1
seg019:008A                 shl     bx, 1
seg019:008C                 shr     ax, 1
seg019:008E                 rcr     bx, 1
seg019:0090                 shr     ax, 1
seg019:0092                 rcr     bx, 1
seg019:0094                 shr     bx, 1
seg019:0096                 xchg    ah, al
seg019:0098                 shr     ax, 1
seg019:009A                 add     bx, ax
seg019:009C                 shr     ax, 1
seg019:009E                 shr     ax, 1
seg019:00A0                 add     bx, ax
seg019:00A2                 and     cl, 1
seg019:00A5                 xor     cl, 1
seg019:00A8                 shl     cl, 1
seg019:00AA                 shl     cl, 1
seg019:00AC                 mov     ch, 0F0h ; '='
seg019:00AE                 jmp     short loc_16EEC
seg019:00B0 ; ---------------------------------------------------------------------------
seg019:00B0                 mov     bx, dx
seg019:00B2                 mov     cl, bl
seg019:00B4                 shr     ax, 1
seg019:00B6                 rcr     bx, 1
seg019:00B8                 shr     ax, 1
seg019:00BA                 rcr     bx, 1
seg019:00BC                 shr     bx, 1
seg019:00BE                 mov     ah, 5Ah ; 'Z'
seg019:00C0                 mul     ah
seg019:00C2                 add     bx, ax
seg019:00C4                 and     cl, 7
seg019:00C7                 xor     cl, 7
seg019:00CA                 mov     ch, 0FEh ; '¦'
seg019:00CC
seg019:00CC loc_16EEC:                              ; CODE XREF: sub_16E27+57␘j
seg019:00CC                                         ; sub_16E27+7B␘j ...
seg019:00CC                 mov     ah, es:[bx]
seg019:00CF                 ror     ah, cl
seg019:00D1                 and     ah, ch
seg019:00D3                 or      ah, byte_2AD2B
seg019:00D7                 rol     ah, cl
seg019:00D9                 mov     es:[bx], ah
seg019:00DC                 jmp     loc_16FBE
seg019:00DF ; ---------------------------------------------------------------------------
seg019:00DF                 mov     bx, dx
seg019:00E1                 mov     cl, bl
seg019:00E3                 shl     bx, 1
seg019:00E5                 add     bx, 28h ; '('
seg019:00E8                 mov     dx, ax
seg019:00EA                 sar     ax, 1
seg019:00EC                 add     ax, dx
seg019:00EE                 add     ax, 18h
seg019:00F1                 and     dx, 1
seg019:00F4                 add     ax, dx
seg019:00F6                 shr     ax, 1
seg019:00F8                 rcr     bx, 1
seg019:00FA                 shr     ax, 1
seg019:00FC                 rcr     bx, 1
seg019:00FE                 shr     bx, 1
seg019:0100                 mov     ah, 5Ah ; 'Z'
seg019:0102                 mul     ah
seg019:0104                 add     bx, ax
seg019:0106                 and     cl, 3
seg019:0109                 xor     cl, 3
seg019:010C                 shl     cl, 1
seg019:010E                 mov     ch, 0FCh ; 'n'
seg019:0110
seg019:0110 loc_16F30:                              ; CODE XREF: sub_16E27+129␙j
seg019:0110                                         ; sub_16E27+132␙j
seg019:0110                 mov     ah, es:[bx]
seg019:0113                 ror     ah, cl
seg019:0115                 and     ah, ch
seg019:0117                 or      ah, byte_2AD2B
seg019:011B                 rol     ah, cl
seg019:011D                 mov     es:[bx], ah
seg019:0120                 or      dl, dl
seg019:0122                 jz      short loc_16FBE
seg019:0124                 xor     dl, dl
seg019:0126                 test    bx, 0E000h
seg019:012A                 jz      short loc_16F52
seg019:012C                 sub     bx, 2000h
seg019:0130                 jmp     short loc_16F30
seg019:0132 ; ---------------------------------------------------------------------------
seg019:0132
seg019:0132 loc_16F52:                              ; CODE XREF: sub_16E27+123␘j
seg019:0132                 or      bx, 6000h
seg019:0136                 sub     bx, 5Ah ; 'Z'
seg019:0139                 jmp     short loc_16F30
seg019:013B ; ---------------------------------------------------------------------------
seg019:013B                 mov     bx, dx
seg019:013D                 mov     cl, bl
seg019:013F                 mul     word_2B1C2
seg019:0143                 shr     bx, 1
seg019:0145                 shr     bx, 1
seg019:0147                 shr     bx, 1
seg019:0149                 add     bx, ax
seg019:014B                 and     cl, 7
seg019:014E                 mov     ah, 80h ; 'Ç'
seg019:0150                 shr     ah, cl
seg019:0152                 push    ax
seg019:0153                 mov     al, 8
seg019:0155                 mov     ah, ah
seg019:0157                 push    dx
seg019:0158                 mov     dx, 3CEh
seg019:015B                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg019:015B                                         ; set/reset.
seg019:015B                                         ; Data bits 0-3 select planes for write mode 00
seg019:015C                 pop     dx
seg019:015D                 pop     ax
seg019:015E                 and     es:[bx], ah
seg019:0161                 jmp     short loc_16FBE
seg019:0163 ; ---------------------------------------------------------------------------
seg019:0163                 mov     bx, dx
seg019:0165                 xchg    ah, al
seg019:0167                 add     bx, ax
seg019:0169                 shr     ax, 1
seg019:016B                 shr     ax, 1
seg019:016D                 add     bx, ax
seg019:016F                 mov     ah, byte_2AD2B
seg019:0173                 mov     es:[bx], ah
seg019:0176                 jmp     short loc_16FBE
seg019:0178 ; ---------------------------------------------------------------------------
seg019:0178                 mov     bx, dx
seg019:017A                 xchg    ah, al
seg019:017C                 add     bx, ax
seg019:017E                 shr     ax, 1
seg019:0180                 shr     ax, 1
seg019:0182                 add     bx, ax
seg019:0184                 shr     bx, 1
seg019:0186                 shr     bx, 1
seg019:0188                 mov     cx, dx
seg019:018A                 mov     dx, 3C4h
seg019:018D                 mov     al, 2
seg019:018F                 and     cl, 3
seg019:0192                 mov     ah, 1
seg019:0194                 shl     ah, cl
seg019:0196                 out     dx, ax          ; EGA: sequencer address reg
seg019:0196                                         ; sequencer reset.
seg019:0196                                         ; Bits of data 0-1 indicate asynchronous/synchronous reset.
seg019:0197                 mov     ah, byte_2AD2B
seg019:019B                 mov     es:[bx], ah
seg019:019E
seg019:019E loc_16FBE:                              ; CODE XREF: sub_16E27:loc_16E59␘j
seg019:019E                                         ; sub_16E27+D5␘j ...
seg019:019E                 xor     ax, ax
seg019:01A0                 pop     bp
seg019:01A1                 retf
seg019:01A1 sub_16E27       endp
seg019:01A1
seg019:01A2 ; ---------------------------------------------------------------------------
seg019:01A2                 sahf
seg019:01A3                 add     [bp-61FFh], bx
seg019:01A7                 add     [bp+3C01h], bx
seg019:01AB                 add     [si], bh
seg019:01AD                 add     [bx+si+0], ah
seg019:01B0                 sahf
seg019:01B1                 add     [bp-7BFFh], bx
seg019:01B5                 add     [bp-4FFFh], bl
seg019:01B9                 add     bh, bl
seg019:01BB                 add     [bp+di], bh
seg019:01BD                 add     [bp+di], di
seg019:01BF                 add     [bp+di], di
seg019:01C1                 add     [bp+di], di
seg019:01C3                 add     [bp+di], di
seg019:01C5                 add     [bp+di], di
seg019:01C7                 add     [bp+di+1], sp
seg019:01CA                 js      short loc_16FED
seg019:01CC                 push    bp
seg019:01CD
seg019:01CD loc_16FED:                              ; CODE XREF: seg019:01CA␘j
seg019:01CD                 mov     bp, sp
seg019:01CF                 push    si
seg019:01D0                 push    di
seg019:01D1                 mov     bx, [bp+6]
seg019:01D4                 mov     dx, [bp+8]
seg019:01D7                 mov     ax, [bp+0Ah]
seg019:01DA                 mov     cx, [bp+0Ch]
seg019:01DD                 lea     si, word_1F1A0
seg019:01E1                 add     si, word_2AD2E
seg019:01E5                 jmp     word ptr cs:[si]
seg019:01E8 ; ---------------------------------------------------------------------------
seg019:01E8                 and     dx, 1
seg019:01EB                 and     ax, 1
seg019:01EE                 and     cx, 1
seg019:01F1                 shl     dl, 1
seg019:01F3                 shl     dl, 1
seg019:01F5                 shl     al, 1
seg019:01F7                 or      cl, al
seg019:01F9                 or      cl, dl
seg019:01FB                 or      bx, bx
seg019:01FD                 jge     short loc_17024
seg019:01FF                 or      cl, 8
seg019:0202                 neg     bx
seg019:0204
seg019:0204 loc_17024:                              ; CODE XREF: seg019:01FD␘j
seg019:0204                 mov     dx, 3DAh
seg019:0207                 in      al, dx          ; Video status bits:
seg019:0207                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg019:0207                                         ; 1: 1=light pen is triggered; 0=armed
seg019:0207                                         ; 2: 1=light pen switch is open; 0=closed
seg019:0207                                         ; 3: 1=vertical sync pulse is occurring.
seg019:0208                 mov     al, bl
seg019:020A                 or      al, 10h
seg019:020C                 out     dx, al          ; Video: bits 0-1 control
seg019:020C                                         ; Feature Control outputs FC0 and FC1
seg019:020D                 add     dl, 4
seg019:0210                 mov     al, cl
seg019:0212                 out     dx, al
seg019:0213                 jmp     short loc_1709A
seg019:0215 ; ---------------------------------------------------------------------------
seg019:0215                 and     dx, 1
seg019:0218                 and     ax, 1
seg019:021B                 and     cx, 1
seg019:021E                 shl     dl, 1
seg019:0220                 shl     dl, 1
seg019:0222                 shl     al, 1
seg019:0224                 or      cl, al
seg019:0226                 or      cl, dl
seg019:0228                 or      bx, bx
seg019:022A                 jge     short loc_17086
seg019:022C                 or      cl, 10h
seg019:022F                 neg     bx
seg019:0231                 jmp     short loc_17086
seg019:0233 ; ---------------------------------------------------------------------------
seg019:0233                 mov     dh, dl
seg019:0235                 mov     ah, al
seg019:0237                 mov     ch, cl
seg019:0239                 and     dx, 201h
seg019:023D                 and     ax, 201h
seg019:0240                 and     cx, 201h
seg019:0244                 shl     dh, 1
seg019:0246                 ror     dl, 1
seg019:0248                 ror     dl, 1
seg019:024A                 ror     dl, 1
seg019:024C                 shl     al, 1
seg019:024E                 shl     al, 1
seg019:0250                 shl     al, 1
seg019:0252                 shl     al, 1
seg019:0254                 shr     ch, 1
seg019:0256                 shl     cl, 1
seg019:0258                 shl     cl, 1
seg019:025A                 shl     cl, 1
seg019:025C                 or      cl, ch
seg019:025E                 or      cl, dh
seg019:0260                 or      cl, dl
seg019:0262                 or      cl, ah
seg019:0264                 or      cl, al
seg019:0266
seg019:0266 loc_17086:                              ; CODE XREF: seg019:022A␘j
seg019:0266                                         ; seg019:0231␘j
seg019:0266                 mov     ah, 10h
seg019:0268                 xor     al, al
seg019:026A                 mov     bh, cl
seg019:026C                 int     10h             ; - VIDEO - SET PALETTE REGISTER (Jr, PS, TANDY 1000, EGA, VGA)
seg019:026C                                         ; BL = palette register to set
seg019:026C                                         ; BH = color value to store
seg019:026E                 jmp     short loc_1709A
