seg023:0008 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg023:0008
seg023:0008 ; Attributes: bp-based frame
seg023:0008
seg023:0008 sub_17918       proc near               ; CODE XREF: sub_54A6+381␘P
seg023:0008
seg023:0008 arg_2           = word ptr  6
seg023:0008 arg_4           = word ptr  8
seg023:0008 arg_6           = word ptr  0Ah
seg023:0008 arg_8           = word ptr  0Ch
seg023:0008
seg023:0008                 push    bp
seg023:0009                 mov     bp, sp
seg023:000B                 push    di
seg023:000C                 push    si
seg023:000D                 cld
seg023:000E                 mov     si, [bp+arg_2]
seg023:0011                 mov     dx, [bp+arg_4]
seg023:0014                 mov     di, [bp+arg_8]
seg023:0017                 mov     cx, di
seg023:0019                 inc     cx
seg023:001A                 sub     cx, [bp+arg_6]
seg023:001D                 lea     bx, unk_1F38B
seg023:0021                 add     bx, word_2AD2E
seg023:0025                 jmp     word ptr cs:[bx]
seg023:0025 sub_17918       endp
seg023:0025
seg023:0028 ; ---------------------------------------------------------------------------
seg023:0028                 mov     ax, di
seg023:002A                 mov     bx, si
seg023:002C                 mul     word_2B1EE
seg023:0030                 add     bx, ax
seg023:0032                 shl     bx, 1
seg023:0034                 mov     dx, [bp+8]
seg023:0037                 inc     dx
seg023:0038                 sub     dx, si
seg023:003A                 mov     si, bx
seg023:003C                 push    ds
seg023:003D                 push    word_2B1EE
seg023:0041                 mov     ax, word_2AD72
seg023:0044                 mov     es, ax
seg023:0046                 mov     ax, word_2AD70
seg023:0049                 mov     ds, ax
seg023:004B                 pop     ax
seg023:004C                 shl     ax, 1
seg023:004E                 add     ax, dx
seg023:0050                 add     ax, dx
seg023:0052                 mov     bx, cx
seg023:0054
seg023:0054 loc_17964:                              ; CODE XREF: seg023:005D␙j
seg023:0054                 mov     cx, dx
seg023:0056                 mov     di, si
seg023:0058                 rep movsw
seg023:005A                 sub     si, ax
seg023:005C                 dec     bx
seg023:005D                 jnz     short loc_17964
seg023:005F                 jmp     loc_17BB4
seg023:0062 ; ---------------------------------------------------------------------------
seg023:0062                 mov     ax, di
seg023:0064                 mov     bx, si
seg023:0066                 xchg    ah, al
seg023:0068                 shr     ax, 1
seg023:006A                 add     bh, al
seg023:006C                 xor     al, al
seg023:006E                 add     bx, ax
seg023:0070                 shr     ax, 1
seg023:0072                 shr     ax, 1
seg023:0074                 add     bx, ax
seg023:0076                 shr     bx, 1
seg023:0078                 shr     bx, 1
seg023:007A                 shr     dx, 1
seg023:007C                 shr     dx, 1
seg023:007E                 shr     si, 1
seg023:0080                 shr     si, 1
seg023:0082                 jmp     loc_17A44
seg023:0085 ; ---------------------------------------------------------------------------
seg023:0085                 mov     ax, di
seg023:0087                 mov     bx, si
seg023:0089                 xchg    ah, al
seg023:008B                 shr     ax, 1
seg023:008D                 shr     bx, 1
seg023:008F                 add     bh, al
seg023:0091                 xor     al, al
seg023:0093                 add     bx, ax
seg023:0095                 shr     ax, 1
seg023:0097                 shr     ax, 1
seg023:0099                 add     bx, ax
seg023:009B                 shr     bx, 1
seg023:009D                 shr     bx, 1
seg023:009F                 shr     dx, 1
seg023:00A1                 shr     dx, 1
seg023:00A3                 shr     dx, 1
seg023:00A5                 shr     si, 1
seg023:00A7                 shr     si, 1
seg023:00A9                 shr     si, 1
seg023:00AB                 jmp     loc_17A44
seg023:00AE ; ---------------------------------------------------------------------------
seg023:00AE                 mov     ax, di
seg023:00B0                 mov     bx, si
seg023:00B2                 shl     bx, 1
seg023:00B4                 shl     bx, 1
seg023:00B6                 shr     ax, 1
seg023:00B8                 rcr     bx, 1
seg023:00BA                 shr     ax, 1
seg023:00BC                 rcr     bx, 1
seg023:00BE                 shr     bx, 1
seg023:00C0                 xchg    ah, al
seg023:00C2                 shr     ax, 1
seg023:00C4                 add     bx, ax
seg023:00C6                 shr     ax, 1
seg023:00C8                 shr     ax, 1
seg023:00CA                 add     bx, ax
seg023:00CC                 shr     dx, 1
seg023:00CE                 shr     si, 1
seg023:00D0                 jmp     short loc_17A44
seg023:00D2 ; ---------------------------------------------------------------------------
seg023:00D2                 shl     si, 1
seg023:00D4                 add     si, 28h ; '('
seg023:00D7                 shl     dx, 1
seg023:00D9                 add     dx, 29h ; ')'
seg023:00DC                 mov     ax, [bp+0Ah]
seg023:00DF                 mov     cx, ax
seg023:00E1                 sar     ax, 1
seg023:00E3                 add     ax, cx
seg023:00E5                 add     ax, 18h
seg023:00E8                 mov     cx, ax
seg023:00EA                 mov     ax, di
seg023:00EC                 sar     ax, 1
seg023:00EE                 add     ax, di
seg023:00F0                 add     ax, 18h
seg023:00F3                 and     di, 1
seg023:00F6                 add     di, ax
seg023:00F8                 neg     cx
seg023:00FA                 add     cx, di
seg023:00FC                 inc     cx
seg023:00FD                 mov     ax, di
seg023:00FF                 mov     bx, si
seg023:0101                 shr     ax, 1
seg023:0103                 rcr     bx, 1
seg023:0105                 shr     ax, 1
seg023:0107                 rcr     bx, 1
seg023:0109                 shr     bx, 1
seg023:010B                 mov     ah, 5Ah ; 'Z'
seg023:010D                 mul     ah
seg023:010F                 add     bx, ax
seg023:0111                 shr     dx, 1
seg023:0113                 shr     dx, 1
seg023:0115                 shr     dx, 1
seg023:0117                 shr     si, 1
seg023:0119                 shr     si, 1
seg023:011B                 shr     si, 1
seg023:011D                 inc     dx
seg023:011E                 sub     dx, si
seg023:0120                 mov     si, bx
seg023:0122                 push    ds
seg023:0123                 mov     ax, word_2AD72
seg023:0126                 mov     es, ax
seg023:0128                 mov     ax, word_2AD70
seg023:012B                 mov     ds, ax
seg023:012D                 mov     ax, 5Ah ; 'Z'
seg023:0130                 mov     bx, cx
seg023:0132                 jmp     short loc_17A8A
seg023:0134 ; ---------------------------------------------------------------------------
seg023:0134
seg023:0134 loc_17A44:                              ; CODE XREF: seg023:0082␘j
seg023:0134                                         ; seg023:00AB␘j ...
seg023:0134                 push    ds
seg023:0135                 inc     dx
seg023:0136                 sub     dx, si
seg023:0138                 mov     si, bx
seg023:013A                 mov     bx, word_2B1C2
seg023:013E                 mov     di, word_2B13E
seg023:0142                 mov     ax, word_2AD72
seg023:0145                 mov     es, ax
seg023:0147                 mov     ax, word_2AD70
seg023:014A                 mov     ds, ax
seg023:014C                 mov     ax, bx
seg023:014E                 mov     bx, cx
seg023:0150                 cmp     di, 6000h
seg023:0154                 jz      short loc_17A8A
seg023:0156
seg023:0156 loc_17A66:                              ; CODE XREF: seg023:0169␙j
seg023:0156                                         ; seg023:0175␙j
seg023:0156                 mov     cx, dx
seg023:0158                 mov     di, si
seg023:015A                 rep movsb
seg023:015C                 sub     si, dx
seg023:015E                 test    si, 2000h
seg023:0162                 jz      short loc_17A7E
seg023:0164                 xor     si, 2000h
seg023:0168                 dec     bx
seg023:0169                 jnz     short loc_17A66
seg023:016B                 jmp     loc_17BB4
seg023:016E ; ---------------------------------------------------------------------------
seg023:016E
seg023:016E loc_17A7E:                              ; CODE XREF: seg023:0162␘j
seg023:016E                 sub     si, ax
seg023:0170                 xor     si, 2000h
seg023:0174                 dec     bx
seg023:0175                 jnz     short loc_17A66
seg023:0177                 jmp     loc_17BB4
seg023:017A ; ---------------------------------------------------------------------------
seg023:017A
seg023:017A loc_17A8A:                              ; CODE XREF: seg023:0132␘j
seg023:017A                                         ; seg023:0154␘j ...
seg023:017A                 mov     cx, dx
seg023:017C                 mov     di, si
seg023:017E                 rep movsb
seg023:0180                 sub     si, dx
seg023:0182                 test    si, 0E000h
seg023:0186                 jz      short loc_17AA2
seg023:0188                 sub     si, 2000h
seg023:018C                 dec     bx
seg023:018D                 jnz     short loc_17A8A
seg023:018F                 jmp     loc_17BB4
seg023:0192 ; ---------------------------------------------------------------------------
seg023:0192
seg023:0192 loc_17AA2:                              ; CODE XREF: seg023:0186␘j
seg023:0192                 or      si, 6000h
seg023:0196                 sub     si, ax
seg023:0198                 dec     bx
seg023:0199                 jnz     short loc_17A8A
seg023:019B                 jmp     loc_17BB4
seg023:019E ; ---------------------------------------------------------------------------
seg023:019E                 push    ax
seg023:019F                 mov     al, 5
seg023:01A1                 mov     ah, 1
seg023:01A3                 push    dx
seg023:01A4                 mov     dx, 3CEh
seg023:01A7                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg023:01A7                                         ; unknown register
seg023:01A8                 pop     dx
seg023:01A9                 pop     ax
seg023:01AA                 shr     si, 1
seg023:01AC                 shr     si, 1
seg023:01AE                 shr     si, 1
seg023:01B0                 mov     bx, dx
seg023:01B2                 shr     bx, 1
seg023:01B4                 shr     bx, 1
seg023:01B6                 shr     bx, 1
seg023:01B8                 inc     bx
seg023:01B9                 sub     bx, si
seg023:01BB                 mov     ax, word_2B1C2
seg023:01BE                 mul     di
seg023:01C0                 add     si, ax
seg023:01C2                 push    ds
seg023:01C3                 mov     di, word_2B1C2
seg023:01C7                 mov     ax, word_2AD72
seg023:01CA                 mov     es, ax
seg023:01CC                 mov     ax, word_2AD70
seg023:01CF                 mov     ds, ax
seg023:01D1                 mov     ax, di
seg023:01D3                 add     ax, bx
seg023:01D5                 mov     dx, cx
seg023:01D7
seg023:01D7 loc_17AE7:                              ; CODE XREF: seg023:01E0␙j
seg023:01D7                 mov     cx, bx
seg023:01D9                 mov     di, si
seg023:01DB                 rep movsb
seg023:01DD                 sub     si, ax
seg023:01DF                 dec     dx
seg023:01E0                 jnz     short loc_17AE7
seg023:01E2                 push    ax
seg023:01E3                 mov     al, 5
seg023:01E5                 mov     ah, 0
seg023:01E7                 push    dx
seg023:01E8                 mov     dx, 3CEh
seg023:01EB                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg023:01EB                                         ; mode register.Data bits:
seg023:01EB                                         ; 0-1: Write mode 0-2
seg023:01EB                                         ; 2: test condition
seg023:01EB                                         ; 3: read mode: 1=color compare, 0=direct
seg023:01EB                                         ; 4: 1=use odd/even RAM addressing
seg023:01EB                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg023:01EC                 pop     dx
seg023:01ED                 pop     ax
seg023:01EE                 jmp     loc_17BB4
seg023:01F1 ; ---------------------------------------------------------------------------
seg023:01F1                 mov     ax, di
seg023:01F3                 mov     bx, si
seg023:01F5                 xchg    ah, al
seg023:01F7                 add     bx, ax
seg023:01F9                 shr     ax, 1
seg023:01FB                 shr     ax, 1
seg023:01FD                 add     bx, ax
seg023:01FF                 inc     dx
seg023:0200                 sub     dx, si
seg023:0202                 mov     si, bx
seg023:0204                 push    ds
seg023:0205                 mov     ax, word_2AD72
seg023:0208                 mov     es, ax
seg023:020A                 mov     ax, word_2AD70
seg023:020D                 mov     ds, ax
seg023:020F                 mov     ax, 140h
seg023:0212                 add     ax, dx
seg023:0214                 mov     bx, cx
seg023:0216
seg023:0216 loc_17B26:                              ; CODE XREF: seg023:021F␙j
seg023:0216                 mov     cx, dx
seg023:0218                 mov     di, si
seg023:021A                 rep movsb
seg023:021C                 sub     si, ax
seg023:021E                 dec     bx
seg023:021F                 jnz     short loc_17B26
seg023:0221                 jmp     loc_17BB4
seg023:0224 ; ---------------------------------------------------------------------------
seg023:0224                 mov     ax, di
seg023:0226                 mov     bx, si
seg023:0228                 xchg    ah, al
seg023:022A                 add     bx, ax
seg023:022C                 shr     ax, 1
seg023:022E                 shr     ax, 1
seg023:0230                 add     bx, ax
seg023:0232                 shr     bx, 1
seg023:0234                 shr     bx, 1
seg023:0236                 mov     word_2AD63, bx
seg023:023A                 mov     di, cx
seg023:023C                 mov     cx, si
seg023:023E                 and     cl, 3
seg023:0241                 mov     al, 1
seg023:0243                 shl     al, cl
seg023:0245                 mov     byte_2AD6C, cl
seg023:0249                 mov     byte_2AD69, al
seg023:024C                 neg     si
seg023:024E                 add     si, dx
seg023:0250                 inc     si
seg023:0251                 mov     ax, word_2AD72
seg023:0254                 mov     es, ax
seg023:0256
seg023:0256 loc_17B66:                              ; CODE XREF: seg023:02A2␙j
seg023:0256                 mov     dx, 3C4h
seg023:0259                 mov     al, 2
seg023:025B                 mov     ah, byte_2AD69
seg023:025F                 out     dx, ax          ; EGA: sequencer address reg
seg023:025F                                         ; sequencer reset.
seg023:025F                                         ; Bits of data 0-1 indicate asynchronous/synchronous reset.
seg023:0260                 mov     dl, 0CEh ; '+'
seg023:0262                 mov     al, 4
seg023:0264                 mov     ah, byte_2AD6C
seg023:0268                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg023:0268                                         ; set/reset.
seg023:0268                                         ; Data bits 0-3 select planes for write mode 00
seg023:0269                 mov     bx, word_2AD63
seg023:026D                 mov     cx, di
seg023:026F                 mov     dx, 50h ; 'P'
seg023:0272                 push    ds
seg023:0273                 mov     ax, word_2AD70
seg023:0276                 mov     ds, ax
seg023:0278
seg023:0278 loc_17B88:                              ; CODE XREF: seg023:027F␙j
seg023:0278                 mov     al, [bx]
seg023:027A                 mov     es:[bx], al
seg023:027D                 sub     bx, dx
seg023:027F                 loop    loc_17B88
seg023:0281                 dec     si
seg023:0282                 jz      short loc_17BB4
seg023:0284                 pop     ds
seg023:0285                 mov     cl, byte_2AD6C
seg023:0289                 inc     cl
seg023:028B                 and     cl, 3
seg023:028E                 mov     al, 1
seg023:0290                 shl     al, cl
seg023:0292                 mov     byte_2AD6C, cl
seg023:0296                 mov     byte_2AD69, al
seg023:0299                 mov     ax, 1
seg023:029C                 shr     ax, cl
seg023:029E                 add     word_2AD63, ax
seg023:02A2                 jmp     short loc_17B66
seg023:02A4 ; ---------------------------------------------------------------------------
seg023:02A4
seg023:02A4 loc_17BB4:                              ; CODE XREF: seg023:005F␘j
seg023:02A4                                         ; seg023:016B␘j ...
seg023:02A4                 pop     ds
seg023:02A5                 xor     ax, ax
seg023:02A7                 pop     si
seg023:02A8                 pop     di
seg023:02A9                 pop     bp
seg023:02AA                 retf
