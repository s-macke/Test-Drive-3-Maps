seg024:0005 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg024:0005
seg024:0005 ; Attributes: bp-based frame
seg024:0005
seg024:0005 sub_17BE5       proc near               ; CODE XREF: sub_1DAA+455␘P
seg024:0005                                         ; sub_1DAA+488␘P ...
seg024:0005
seg024:0005 arg_2           = word ptr  6
seg024:0005 arg_4           = word ptr  8
seg024:0005 arg_6           = word ptr  0Ah
seg024:0005 arg_8           = word ptr  0Ch
seg024:0005 arg_A           = word ptr  0Eh
seg024:0005 arg_C           = word ptr  10h
seg024:0005
seg024:0005                 push    bp
seg024:0006                 mov     bp, sp
seg024:0008                 push    di
seg024:0009                 push    si
seg024:000A                 cld
seg024:000B                 mov     si, [bp+arg_2]
seg024:000E                 mov     dx, [bp+arg_4]
seg024:0011                 mov     di, [bp+arg_8]
seg024:0014                 mov     cx, di
seg024:0016                 inc     cx
seg024:0017                 sub     cx, [bp+arg_6]
seg024:001A                 mov     ax, [bp+arg_A]
seg024:001D                 mov     word_2AD5F, ax
seg024:0020                 mov     ax, [bp+arg_C]
seg024:0023                 mov     word_2AD5D, ax
seg024:0026                 lea     bx, a_dat       ; ".DAT"
seg024:002A                 add     bx, word_2AD2E
seg024:002E                 jmp     word ptr cs:[bx]
seg024:002E sub_17BE5       endp
seg024:002E
seg024:0031 ; ---------------------------------------------------------------------------
seg024:0031                 mov     ax, di
seg024:0033                 mov     bx, si
seg024:0035                 mul     word_2B1EE
seg024:0039                 add     bx, ax
seg024:003B                 shl     bx, 1
seg024:003D                 mov     si, bx
seg024:003F                 mov     ax, word_2AD5D
seg024:0042                 mov     bx, word_2AD5F
seg024:0046                 mul     word_2B1EE
seg024:004A                 add     bx, ax
seg024:004C                 shl     bx, 1
seg024:004E                 mov     di, bx
seg024:0050                 mov     dx, [bp+8]
seg024:0053                 inc     dx
seg024:0054                 sub     dx, [bp+6]
seg024:0057                 push    ds
seg024:0058                 push    word_2B1EE
seg024:005C                 cmp     byte_2AD33, 7
seg024:0061                 jz      short loc_17C6B
seg024:0063                 push    dx
seg024:0064                 mov     dx, word_2B196
seg024:0068                 shr     dx, 1
seg024:006A                 shr     dx, 1
seg024:006C                 shr     dx, 1
seg024:006E                 shr     dx, 1
seg024:0070                 push    dx
seg024:0071                 mov     ax, [bp+14h]
seg024:0074                 mul     dx
seg024:0076                 add     ax, word_2B21A
seg024:007A                 mov     es, ax
seg024:007C                 pop     dx
seg024:007D                 mov     ax, [bp+12h]
seg024:0080                 mul     dx
seg024:0082                 add     ax, word_2B21A
seg024:0086                 mov     ds, ax
seg024:0088                 pop     dx
seg024:0089                 jmp     short loc_17C89
seg024:008B ; ---------------------------------------------------------------------------
seg024:008B
seg024:008B loc_17C6B:                              ; CODE XREF: seg024:0061␘j
seg024:008B                 lea     bx, unk_2AD76
seg024:008F                 mov     ax, [bp+14h]
seg024:0092                 shl     ax, 1
seg024:0094                 add     bx, ax
seg024:0096                 mov     ax, [bx]
seg024:0098                 mov     es, ax
seg024:009A                 lea     bx, unk_2AD76
seg024:009E                 mov     ax, [bp+12h]
seg024:00A1                 shl     ax, 1
seg024:00A3                 add     bx, ax
seg024:00A5                 mov     ax, [bx]
seg024:00A7                 mov     ds, ax
seg024:00A9
seg024:00A9 loc_17C89:                              ; CODE XREF: seg024:0089␘j
seg024:00A9                 pop     ax
seg024:00AA                 shl     ax, 1
seg024:00AC                 add     ax, dx
seg024:00AE                 add     ax, dx
seg024:00B0                 mov     bx, cx
seg024:00B2
seg024:00B2 loc_17C92:                              ; CODE XREF: seg024:00BB␙j
seg024:00B2                 mov     cx, dx
seg024:00B4                 rep movsw
seg024:00B6                 sub     si, ax
seg024:00B8                 sub     di, ax
seg024:00BA                 dec     bx
seg024:00BB                 jnz     short loc_17C92
seg024:00BD                 jmp     loc_1802C
seg024:00C0 ; ---------------------------------------------------------------------------
seg024:00C0                 mov     ax, di
seg024:00C2                 mov     bx, si
seg024:00C4                 xchg    ah, al
seg024:00C6                 shr     ax, 1
seg024:00C8                 add     bh, al
seg024:00CA                 xor     al, al
seg024:00CC                 add     bx, ax
seg024:00CE                 shr     ax, 1
seg024:00D0                 shr     ax, 1
seg024:00D2                 add     bx, ax
seg024:00D4                 shr     bx, 1
seg024:00D6                 shr     bx, 1
seg024:00D8                 shr     dx, 1
seg024:00DA                 shr     dx, 1
seg024:00DC                 shr     si, 1
seg024:00DE                 shr     si, 1
seg024:00E0                 inc     dx
seg024:00E1                 sub     dx, si
seg024:00E3                 mov     si, bx
seg024:00E5                 mov     ax, word_2AD5D
seg024:00E8                 mov     bx, word_2AD5F
seg024:00EC                 xchg    ah, al
seg024:00EE                 shr     ax, 1
seg024:00F0                 add     bh, al
seg024:00F2                 xor     al, al
seg024:00F4                 add     bx, ax
seg024:00F6                 shr     ax, 1
seg024:00F8                 shr     ax, 1
seg024:00FA                 add     bx, ax
seg024:00FC                 shr     bx, 1
seg024:00FE                 shr     bx, 1
seg024:0100                 mov     di, bx
seg024:0102                 jmp     loc_17E2F
seg024:0105 ; ---------------------------------------------------------------------------
seg024:0105                 mov     ax, di
seg024:0107                 mov     bx, si
seg024:0109                 xchg    ah, al
seg024:010B                 shr     ax, 1
seg024:010D                 shr     bx, 1
seg024:010F                 add     bh, al
seg024:0111                 xor     al, al
seg024:0113                 add     bx, ax
seg024:0115                 shr     ax, 1
seg024:0117                 shr     ax, 1
seg024:0119                 add     bx, ax
seg024:011B                 shr     bx, 1
seg024:011D                 shr     bx, 1
seg024:011F                 shr     dx, 1
seg024:0121                 shr     dx, 1
seg024:0123                 shr     dx, 1
seg024:0125                 shr     si, 1
seg024:0127                 shr     si, 1
seg024:0129                 shr     si, 1
seg024:012B                 inc     dx
seg024:012C                 sub     dx, si
seg024:012E                 mov     si, bx
seg024:0130                 mov     ax, word_2AD5D
seg024:0133                 mov     bx, word_2AD5F
seg024:0137                 xchg    ah, al
seg024:0139                 shr     ax, 1
seg024:013B                 shr     bx, 1
seg024:013D                 add     bh, al
seg024:013F                 xor     al, al
seg024:0141                 add     bx, ax
seg024:0143                 shr     ax, 1
seg024:0145                 shr     ax, 1
seg024:0147                 add     bx, ax
seg024:0149                 shr     bx, 1
seg024:014B                 shr     bx, 1
seg024:014D                 mov     di, bx
seg024:014F                 jmp     loc_17E2F
seg024:0152 ; ---------------------------------------------------------------------------
seg024:0152                 mov     ax, di
seg024:0154                 mov     bx, si
seg024:0156                 shl     bx, 1
seg024:0158                 shl     bx, 1
seg024:015A                 shr     ax, 1
seg024:015C                 rcr     bx, 1
seg024:015E                 shr     ax, 1
seg024:0160                 rcr     bx, 1
seg024:0162                 shr     bx, 1
seg024:0164                 xchg    ah, al
seg024:0166                 shr     ax, 1
seg024:0168                 add     bx, ax
seg024:016A                 shr     ax, 1
seg024:016C                 shr     ax, 1
seg024:016E                 add     bx, ax
seg024:0170                 shr     dx, 1
seg024:0172                 shr     si, 1
seg024:0174                 inc     dx
seg024:0175                 sub     dx, si
seg024:0177                 mov     si, bx
seg024:0179                 mov     ax, word_2AD5D
seg024:017C                 mov     bx, word_2AD5F
seg024:0180                 shl     bx, 1
seg024:0182                 shl     bx, 1
seg024:0184                 shr     ax, 1
seg024:0186                 rcr     bx, 1
seg024:0188                 shr     ax, 1
seg024:018A                 rcr     bx, 1
seg024:018C                 shr     bx, 1
seg024:018E                 xchg    ah, al
seg024:0190                 shr     ax, 1
seg024:0192                 add     bx, ax
seg024:0194                 shr     ax, 1
seg024:0196                 shr     ax, 1
seg024:0198                 add     bx, ax
seg024:019A                 mov     di, bx
seg024:019C                 jmp     loc_17E2F
seg024:019F ; ---------------------------------------------------------------------------
seg024:019F                 shl     si, 1
seg024:01A1                 add     si, 28h ; '('
seg024:01A4                 shl     dx, 1
seg024:01A6                 add     dx, 29h ; ')'
seg024:01A9                 mov     ax, [bp+0Ah]
seg024:01AC                 mov     cx, ax
seg024:01AE                 sar     ax, 1
seg024:01B0                 add     ax, cx
seg024:01B2                 add     ax, 18h
seg024:01B5                 mov     cx, ax
seg024:01B7                 mov     ax, di
seg024:01B9                 sar     ax, 1
seg024:01BB                 add     ax, di
seg024:01BD                 add     ax, 18h
seg024:01C0                 and     di, 1
seg024:01C3                 add     di, ax
seg024:01C5                 neg     cx
seg024:01C7                 add     cx, di
seg024:01C9                 inc     cx
seg024:01CA                 mov     ax, word_2AD5F
seg024:01CD                 shl     ax, 1
seg024:01CF                 add     ax, 28h ; '('
seg024:01D2                 mov     word_2AD5F, ax
seg024:01D5                 mov     ax, word_2AD5D
seg024:01D8                 mov     bx, ax
seg024:01DA                 sar     ax, 1
seg024:01DC                 add     ax, bx
seg024:01DE                 add     ax, 18h
seg024:01E1                 and     bx, 1
seg024:01E4                 add     ax, bx
seg024:01E6                 mov     word_2AD5D, ax
seg024:01E9                 mov     ax, di
seg024:01EB                 mov     bx, si
seg024:01ED                 shr     ax, 1
seg024:01EF                 rcr     bx, 1
seg024:01F1                 shr     ax, 1
seg024:01F3                 rcr     bx, 1
seg024:01F5                 shr     bx, 1
seg024:01F7                 mov     ah, 5Ah ; 'Z'
seg024:01F9                 mul     ah
seg024:01FB                 add     bx, ax
seg024:01FD                 shr     dx, 1
seg024:01FF                 shr     dx, 1
seg024:0201                 shr     dx, 1
seg024:0203                 shr     si, 1
seg024:0205                 shr     si, 1
seg024:0207                 shr     si, 1
seg024:0209                 inc     dx
seg024:020A                 sub     dx, si
seg024:020C                 mov     si, bx
seg024:020E                 mov     ax, word_2AD5D
seg024:0211                 mov     bx, word_2AD5F
seg024:0215                 shr     ax, 1
seg024:0217                 rcr     bx, 1
seg024:0219                 shr     ax, 1
seg024:021B                 rcr     bx, 1
seg024:021D                 shr     bx, 1
seg024:021F                 mov     ah, 5Ah ; 'Z'
seg024:0221                 mul     ah
seg024:0223                 add     bx, ax
seg024:0225                 mov     di, bx
seg024:0227                 jmp     short loc_17E2F
seg024:0229 ; ---------------------------------------------------------------------------
seg024:0229                 mov     ax, di
seg024:022B                 mov     bx, si
seg024:022D                 xchg    ah, al
seg024:022F                 add     bx, ax
seg024:0231                 shr     ax, 1
seg024:0233                 shr     ax, 1
seg024:0235                 add     bx, ax
seg024:0237                 inc     dx
seg024:0238                 sub     dx, si
seg024:023A                 mov     si, bx
seg024:023C                 mov     ax, word_2AD5D
seg024:023F                 mov     bx, word_2AD5F
seg024:0243                 xchg    ah, al
seg024:0245                 add     bx, ax
seg024:0247                 shr     ax, 1
seg024:0249                 shr     ax, 1
seg024:024B                 add     bx, ax
seg024:024D                 mov     di, bx
seg024:024F
seg024:024F loc_17E2F:                              ; CODE XREF: seg024:0102␘j
seg024:024F                                         ; seg024:014F␘j ...
seg024:024F                 push    ds
seg024:0250                 push    word_2B13E
seg024:0254                 push    word_2B1C2
seg024:0258                 lea     bx, unk_2AD76
seg024:025C                 mov     ax, [bp+14h]
seg024:025F                 shl     ax, 1
seg024:0261                 add     bx, ax
seg024:0263                 mov     ax, [bx]
seg024:0265                 mov     es, ax
seg024:0267                 lea     bx, unk_2AD76
seg024:026B                 mov     ax, [bp+12h]
seg024:026E                 shl     ax, 1
seg024:0270                 add     bx, ax
seg024:0272                 mov     ax, [bx]
seg024:0274                 mov     ds, ax
seg024:0276                 pop     ax
seg024:0277                 mov     bx, cx
seg024:0279                 pop     cx
seg024:027A                 cmp     cx, 6000h
seg024:027E                 jz      short loc_17E9C
seg024:0280                 cmp     cx, 2000h
seg024:0284                 jz      short loc_17E76
seg024:0286                 add     ax, dx
seg024:0288
seg024:0288 loc_17E68:                              ; CODE XREF: seg024:0291␙j
seg024:0288                 mov     cx, dx
seg024:028A                 rep movsb
seg024:028C                 sub     si, ax
seg024:028E                 sub     di, ax
seg024:0290                 dec     bx
seg024:0291                 jnz     short loc_17E68
seg024:0293                 jmp     loc_1802C
seg024:0296 ; ---------------------------------------------------------------------------
seg024:0296
seg024:0296 loc_17E76:                              ; CODE XREF: seg024:0284␘j
seg024:0296                                         ; seg024:02B7␙j
seg024:0296                 mov     cx, dx
seg024:0298                 rep movsb
seg024:029A                 sub     si, dx
seg024:029C                 test    si, 2000h
seg024:02A0                 jnz     short loc_17E84
seg024:02A2                 sub     si, ax
seg024:02A4
seg024:02A4 loc_17E84:                              ; CODE XREF: seg024:02A0␘j
seg024:02A4                 sub     di, dx
seg024:02A6                 test    di, 2000h
seg024:02AA                 jnz     short loc_17E8E
seg024:02AC                 sub     di, ax
seg024:02AE
seg024:02AE loc_17E8E:                              ; CODE XREF: seg024:02AA␘j
seg024:02AE                 xor     si, 2000h
seg024:02B2                 xor     di, 2000h
seg024:02B6                 dec     bx
seg024:02B7                 jnz     short loc_17E76
seg024:02B9                 jmp     loc_1802C
seg024:02BC ; ---------------------------------------------------------------------------
seg024:02BC
seg024:02BC loc_17E9C:                              ; CODE XREF: seg024:027E␘j
seg024:02BC                                         ; seg024:02E5␙j
seg024:02BC                 mov     cx, dx
seg024:02BE                 rep movsb
seg024:02C0                 sub     di, dx
seg024:02C2                 test    di, 0E000h
seg024:02C6                 jnz     short loc_17EAE
seg024:02C8                 or      di, 8000h
seg024:02CC                 sub     di, ax
seg024:02CE
seg024:02CE loc_17EAE:                              ; CODE XREF: seg024:02C6␘j
seg024:02CE                 sub     si, dx
seg024:02D0                 test    si, 0E000h
seg024:02D4                 jnz     short loc_17EBC
seg024:02D6                 or      si, 8000h
seg024:02DA                 sub     si, ax
seg024:02DC
seg024:02DC loc_17EBC:                              ; CODE XREF: seg024:02D4␘j
seg024:02DC                 sub     di, 2000h
seg024:02E0                 sub     si, 2000h
seg024:02E4                 dec     bx
seg024:02E5                 jnz     short loc_17E9C
seg024:02E7                 jmp     loc_1802C
seg024:02EA ; ---------------------------------------------------------------------------
seg024:02EA                 push    ax
seg024:02EB                 mov     al, 5
seg024:02ED                 mov     ah, 1
seg024:02EF                 push    dx
seg024:02F0                 mov     dx, 3CEh
seg024:02F3                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg024:02F3                                         ; unknown register
seg024:02F4                 pop     dx
seg024:02F5                 pop     ax
seg024:02F6                 shr     si, 1
seg024:02F8                 shr     si, 1
seg024:02FA                 shr     si, 1
seg024:02FC                 mov     bx, dx
seg024:02FE                 shr     bx, 1
seg024:0300                 shr     bx, 1
seg024:0302                 shr     bx, 1
seg024:0304                 inc     bx
seg024:0305                 sub     bx, si
seg024:0307                 mov     ax, word_2B1C2
seg024:030A                 mul     di
seg024:030C                 add     si, ax
seg024:030E                 mov     di, word_2AD5F
seg024:0312                 shr     di, 1
seg024:0314                 shr     di, 1
seg024:0316                 shr     di, 1
seg024:0318                 mov     ax, word_2AD5D
seg024:031B                 mul     word_2B1C2
seg024:031F                 add     di, ax
seg024:0321                 push    ds
seg024:0322                 push    word_2B1C2
seg024:0326                 mov     dx, word_2B196
seg024:032A                 shr     dx, 1
seg024:032C                 shr     dx, 1
seg024:032E                 shr     dx, 1
seg024:0330                 shr     dx, 1
seg024:0332                 push    dx
seg024:0333                 mov     ax, [bp+14h]
seg024:0336                 mul     dx
seg024:0338                 add     ax, word_2B21A
seg024:033C                 mov     es, ax
seg024:033E                 pop     dx
seg024:033F                 mov     ax, [bp+12h]
seg024:0342                 mul     dx
seg024:0344                 add     ax, word_2B21A
seg024:0348                 mov     ds, ax
seg024:034A                 pop     ax
seg024:034B                 add     ax, bx
seg024:034D                 mov     dx, cx
seg024:034F
seg024:034F loc_17F2F:                              ; CODE XREF: seg024:0358␙j
seg024:034F                 mov     cx, bx
seg024:0351                 rep movsb
seg024:0353                 sub     si, ax
seg024:0355                 sub     di, ax
seg024:0357                 dec     dx
seg024:0358                 jnz     short loc_17F2F
seg024:035A                 push    ax
seg024:035B                 mov     al, 5
seg024:035D                 mov     ah, 0
seg024:035F                 push    dx
seg024:0360                 mov     dx, 3CEh
seg024:0363                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg024:0363                                         ; mode register.Data bits:
seg024:0363                                         ; 0-1: Write mode 0-2
seg024:0363                                         ; 2: test condition
seg024:0363                                         ; 3: read mode: 1=color compare, 0=direct
seg024:0363                                         ; 4: 1=use odd/even RAM addressing
seg024:0363                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg024:0364                 pop     dx
seg024:0365                 pop     ax
seg024:0366                 jmp     loc_1802C
seg024:0369 ; ---------------------------------------------------------------------------
seg024:0369                 mov     ax, di
seg024:036B                 mov     bx, si
seg024:036D                 mov     word_2AD6E, cx
seg024:0371                 xchg    ah, al
seg024:0373                 add     bx, ax
seg024:0375                 shr     ax, 1
seg024:0377                 shr     ax, 1
seg024:0379                 add     bx, ax
seg024:037B                 shr     bx, 1
seg024:037D                 shr     bx, 1
seg024:037F                 mov     word_2AD63, bx
seg024:0383                 mov     ax, word_2AD5D
seg024:0386                 mov     bx, word_2AD5F
seg024:038A                 xchg    ah, al
seg024:038C                 add     bx, ax
seg024:038E                 shr     ax, 1
seg024:0390                 shr     ax, 1
seg024:0392                 add     bx, ax
seg024:0394                 shr     bx, 1
seg024:0396                 shr     bx, 1
seg024:0398                 mov     word_2AD65, bx
seg024:039C                 mov     cx, si
seg024:039E                 and     cl, 3
seg024:03A1                 mov     byte_2AD6C, cl
seg024:03A5                 mov     cx, word_2AD5F
seg024:03A9                 and     cl, 3
seg024:03AC                 mov     al, 1
seg024:03AE                 shl     al, cl
seg024:03B0                 mov     byte_2AD6D, cl
seg024:03B4                 mov     byte_2AD69, al
seg024:03B7                 neg     si
seg024:03B9                 add     si, dx
seg024:03BB                 inc     si
seg024:03BC                 mov     dx, word_2B196
seg024:03C0                 shr     dx, 1
seg024:03C2                 shr     dx, 1
seg024:03C4                 shr     dx, 1
seg024:03C6                 shr     dx, 1
seg024:03C8                 mov     bx, dx
seg024:03CA                 mov     ax, [bp+14h]
seg024:03CD                 mul     dx
seg024:03CF                 add     ax, word_2B21A
seg024:03D3                 mov     es, ax
seg024:03D5                 mov     ax, [bp+12h]
seg024:03D8                 mul     bx
seg024:03DA                 add     ax, word_2B21A
seg024:03DE                 mov     word_2AD6A, ax
seg024:03E1
seg024:03E1 loc_17FC1:                              ; CODE XREF: seg024:044A␙j
seg024:03E1                 mov     dx, 3C4h
seg024:03E4                 mov     al, 2
seg024:03E6                 mov     ah, byte_2AD69
seg024:03EA                 out     dx, ax          ; EGA: sequencer address reg
seg024:03EA                                         ; sequencer reset.
seg024:03EA                                         ; Bits of data 0-1 indicate asynchronous/synchronous reset.
seg024:03EB                 mov     dl, 0CEh ; '+'
seg024:03ED                 mov     al, 4
seg024:03EF                 mov     ah, byte_2AD6C
seg024:03F3                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg024:03F3                                         ; set/reset.
seg024:03F3                                         ; Data bits 0-3 select planes for write mode 00
seg024:03F4                 mov     bx, word_2AD63
seg024:03F8                 mov     di, word_2AD65
seg024:03FC                 mov     cx, word_2AD6E
seg024:0400                 mov     dx, 50h ; 'P'
seg024:0403                 push    ds
seg024:0404                 mov     ax, word_2AD6A
seg024:0407                 mov     ds, ax
seg024:0409
seg024:0409 loc_17FE9:                              ; CODE XREF: seg024:0412␙j
seg024:0409                 mov     al, [bx]
seg024:040B                 mov     es:[di], al
seg024:040E                 sub     bx, dx
seg024:0410                 sub     di, dx
seg024:0412                 loop    loc_17FE9
seg024:0414                 dec     si
seg024:0415                 jz      short loc_1802C
seg024:0417                 pop     ds
seg024:0418                 mov     cl, byte_2AD6C
seg024:041C                 inc     cl
seg024:041E                 and     cl, 3
seg024:0421                 mov     byte_2AD6C, cl
seg024:0425                 mov     ax, 1
seg024:0428                 shr     ax, cl
seg024:042A                 add     word_2AD63, ax
seg024:042E                 mov     cl, byte_2AD6D
seg024:0432                 inc     cl
seg024:0434                 and     cl, 3
seg024:0437                 mov     al, 1
seg024:0439                 shl     al, cl
seg024:043B                 mov     byte_2AD6D, cl
seg024:043F                 mov     byte_2AD69, al
seg024:0442                 mov     al, 1
seg024:0444                 shr     ax, cl
seg024:0446                 add     word_2AD65, ax
seg024:044A                 jmp     short loc_17FC1
seg024:044C ; ---------------------------------------------------------------------------
seg024:044C
seg024:044C loc_1802C:                              ; CODE XREF: seg024:00BD␘j
seg024:044C                                         ; seg024:0293␘j ...
seg024:044C                 pop     ds
seg024:044D                 xor     ax, ax
seg024:044F                 pop     si
seg024:0450                 pop     di
seg024:0451                 pop     bp
seg024:0452                 retf
seg024:0453 ; ---------------------------------------------------------------------------
seg024:0453                 xor     [bx+si], ax
seg024:0455                 xor     [bx+si], ax
seg024:0457                 xor     [bx+si], ax
seg024:0459                 xor     [bx+si], ax
seg024:045B                 rol     byte ptr [bx+si], 0C0h
seg024:045E                 add     [di], al
seg024:0460                 add     [bx+di], si
seg024:0462                 add     [di+4], cl
seg024:0465                 push    dx
seg024:0466                 add     [di+4], cx
seg024:0469                 jmp     near ptr 0A36Dh
seg024:046C ; ---------------------------------------------------------------------------
seg024:046C                 add     dx, bp
seg024:046E                 add     ch, dl
seg024:0470                 add     ch, dl
seg024:0472                 add     ch, dl
seg024:0474                 add     ch, dl
seg024:0476                 add     ch, dl
seg024:0478                 add     ch, [bx+di]
seg024:047A                 add     ch, [bx+di+3]
seg024:047A seg024          ends
seg024:047A
seg025:000D ; ---------------------------------------------------------------------------
seg025:000D
seg025:000D ; Segment type: Pure code
seg025:000D seg025          segment byte public 'CODE' use16
seg025:000D                 assume cs:seg025
seg025:000D                 ;org 0Dh
seg025:000D                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg025:000D
