seg031:001A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:001A
seg031:001A
seg031:001A                 public start
seg031:001A start           proc near
seg031:001A                 mov     ah, 30h
seg031:001C                 int     21h             ; DOS - GET DOS VERSION
seg031:001C                                         ; Return: AL = major version number (00h for DOS 1.x)
seg031:001E                 cmp     al, 2
seg031:0020                 jnb     short loc_18E84
seg031:0022                 int     20h             ; DOS - PROGRAM TERMINATION
seg031:0022                                         ; returns to DOS--identical to INT 21/AH=00h
seg031:0024 ; ---------------------------------------------------------------------------
seg031:0024
seg031:0024 loc_18E84:                              ; CODE XREF: start+6␘j
seg031:0024                 mov     di, seg dseg
seg031:0027                 mov     si, ds:2
seg031:002B                 sub     si, di
seg031:002D                 cmp     si, 1000h
seg031:0031                 jb      short loc_18E96
seg031:0033                 mov     si, 1000h
seg031:0036
seg031:0036 loc_18E96:                              ; CODE XREF: start+17␘j
seg031:0036                 cli
seg031:0037                 mov     ss, di
seg031:0039                 assume ss:dseg
seg031:0039                 add     sp, 0EC9Eh
seg031:003D                 sti
seg031:003E                 jnb     short loc_18EB4
seg031:0040                 push    ss
seg031:0041                 pop     ds
seg031:0042                 assume ds:dseg
seg031:0042                 call    sub_19986
seg031:0047                 xor     ax, ax
seg031:0049                 push    ax
seg031:004A                 call    sub_19A01
seg031:004F                 mov     ax, 4CFFh
seg031:0052                 int     21h             ; DOS - 2+ - QUIT WITH EXIT CODE (EXIT)
seg031:0052                                         ; AL = exit code
seg031:0054 ; ---------------------------------------------------------------------------
seg031:0054
seg031:0054 loc_18EB4:                              ; CODE XREF: start+24␘j
seg031:0054                 and     sp, 0FFFEh
seg031:0057                 mov     ss:word_2B3C8, sp
seg031:005C                 mov     ss:word_2B3C4, sp
seg031:0061                 mov     ax, si
seg031:0063                 mov     cl, 4
seg031:0065                 shl     ax, cl
seg031:0067                 dec     ax
seg031:0068                 mov     ss:word_2B3C2, ax
seg031:006C                 add     si, di
seg031:006E                 mov     word_1F0E2, si
seg031:0072                 mov     bx, es
seg031:0074                 sub     bx, si
seg031:0076                 neg     bx
seg031:0078                 mov     ah, 4Ah
seg031:007A                 int     21h             ; DOS - 2+ - ADJUST MEMORY BLOCK SIZE (SETBLOCK)
seg031:007A                                         ; ES = segment address of block to change
seg031:007A                                         ; BX = new size in paragraphs
seg031:007C                 mov     ss:word_2B439, ds
seg031:0081                 push    ss
seg031:0082                 pop     es
seg031:0083                 assume es:dseg
seg031:0083                 cld
seg031:0084                 mov     di, 0CC58h
seg031:0087                 mov     cx, 0ECA0h
seg031:008A                 sub     cx, di
seg031:008C                 xor     ax, ax
seg031:008E                 rep stosb
seg031:0090                 push    ss
seg031:0091                 pop     ds
seg031:0092                 call    far ptr loc_18F3F+1
seg031:0097                 push    ss
seg031:0098                 pop     ds
seg031:0099                 call    nullsub_1
seg031:009E                 call    nullsub_2
seg031:00A3                 xor     bp, bp
seg031:00A5                 push    word_2B45A
seg031:00A9                 push    word_2B458
seg031:00AD                 push    word_2B456
seg031:00B1                 call    far ptr sub_0
seg031:00B6                 push    ax
seg031:00B7                 call    far ptr sub_19004
seg031:00BC                 mov     ax, seg dseg
seg031:00BF                 mov     ds, ax
seg031:00C1                 mov     ax, 3
seg031:00C4                 mov     ss:off_2B3C6, 1A4h
seg031:00CB
seg031:00CB loc_18F2B:                              ; CODE XREF: sub_199AA+3␙j
seg031:00CB                                         ; sub_1A930+A5␙j ...
seg031:00CB                 push    ax
seg031:00CC                 call    sub_19986
seg031:00D1                 call    sub_19A01
seg031:00D6                 mov     ax, 0FFh
seg031:00D9                 push    ax
seg031:00DA                 push    cs
seg031:00DB                 call    off_2B3C6
seg031:00DF
seg031:00DF loc_18F3F:                              ; CODE XREF: start+78␘P
seg031:00DF                 add     [si-32D0h], dh
seg031:00DF start           endp
seg031:00DF
seg031:00E3                 and     [bp+di-3CA5h], sp
seg031:00E7                 mov     ax, 3500h
seg031:00EA                 int     21h             ; DOS - 2+ - GET INTERRUPT VECTOR
seg031:00EA                                         ; AL = interrupt number
seg031:00EA                                         ; Return: ES:BX = value of interrupt vector
seg031:00EC                 mov     word ptr dword_2B427, bx
seg031:00F0                 mov     word ptr dword_2B427+2, es
seg031:00F4                 push    cs
seg031:00F5                 pop     ds
seg031:00F6                 assume ds:seg031
seg031:00F6                 mov     ax, 2500h
seg031:00F9                 mov     dx, 0BCh ; '+'
seg031:00FC                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg031:00FC                                         ; AL = interrupt number
seg031:00FC                                         ; DS:DX = new vector to be used for specified interrupt
seg031:00FE                 push    ss
seg031:00FF                 pop     ds
seg031:0100                 assume ds:dseg
seg031:0100                 mov     cx, word_2BC40
seg031:0104                 jcxz    short loc_18F94
seg031:0106                 mov     es, word_2B439
seg031:010A                 assume es:nothing
seg031:010A                 mov     si, es:2Ch
seg031:010F                 lds     ax, dword_2BC42
seg031:0113                 mov     dx, ds
seg031:0115                 xor     bx, bx
seg031:0117                 call    dword ptr ss:unk_2BC3E
seg031:011C                 jnb     short loc_18F83
seg031:011E                 push    ss
seg031:011F                 pop     ds
seg031:0120                 jmp     sub_199AA
seg031:0123 ; ---------------------------------------------------------------------------
seg031:0123
seg031:0123 loc_18F83:                              ; CODE XREF: seg031:011C␘j
seg031:0123                 lds     ax, ss:dword_2BC46
seg031:0128                 mov     dx, ds
seg031:012A                 mov     bx, 3
seg031:012D                 call    dword ptr ss:unk_2BC3E
seg031:0132                 push    ss
seg031:0133                 pop     ds
seg031:0134
seg031:0134 loc_18F94:                              ; CODE XREF: seg031:0104␘j
seg031:0134                 mov     es, word_2B439
seg031:0138                 mov     cx, es:2Ch
seg031:013D                 jcxz    short loc_18FD5
seg031:013F                 mov     es, cx
seg031:0141                 xor     di, di
seg031:0143
seg031:0143 loc_18FA3:                              ; CODE XREF: seg031:015C␙j
seg031:0143                 cmp     byte ptr es:[di], 0
seg031:0147                 jz      short loc_18FD5
seg031:0149                 mov     cx, 0Ch
seg031:014C                 mov     si, 0C33Ah
seg031:014F                 repe cmpsb
seg031:0151                 jz      short loc_18FBE
seg031:0153                 mov     cx, 7FFFh
seg031:0156                 xor     ax, ax
seg031:0158                 repne scasb
seg031:015A                 jnz     short loc_18FD5
seg031:015C                 jmp     short loc_18FA3
seg031:015E ; ---------------------------------------------------------------------------
seg031:015E
seg031:015E loc_18FBE:                              ; CODE XREF: seg031:0151␘j
seg031:015E                 push    es
seg031:015F                 push    ds
seg031:0160                 pop     es
seg031:0161                 assume es:dseg
seg031:0161                 pop     ds
seg031:0162                 mov     si, di
seg031:0164                 mov     di, 0C362h
seg031:0167                 lodsb
seg031:0168                 cbw
seg031:0169                 xchg    ax, cx
seg031:016A
seg031:016A loc_18FCA:                              ; CODE XREF: seg031:0171␙j
seg031:016A                 lodsb
seg031:016B                 inc     al
seg031:016D                 jz      short loc_18FD0
seg031:016F                 dec     ax
seg031:0170
seg031:0170 loc_18FD0:                              ; CODE XREF: seg031:016D␘j
seg031:0170                 stosb
seg031:0171                 loop    loc_18FCA
seg031:0173                 push    ss
seg031:0174                 pop     ds
seg031:0175
seg031:0175 loc_18FD5:                              ; CODE XREF: seg031:013D␘j
seg031:0175                                         ; seg031:0147␘j ...
seg031:0175                 mov     bx, 4
seg031:0178
seg031:0178 loc_18FD8:                              ; CODE XREF: seg031:018F␙j
seg031:0178                 and     byte ptr [bx-3C9Eh], 0BFh
seg031:017D                 mov     ax, 4400h
seg031:0180                 int     21h             ; DOS - 2+ - IOCTL - GET DEVICE INFORMATION
seg031:0180                                         ; BX = file or device handle
seg031:0182                 jb      short loc_18FEE
seg031:0184                 test    dl, 80h
seg031:0187                 jz      short loc_18FEE
seg031:0189                 or      byte ptr [bx-3C9Eh], 40h
seg031:018E
seg031:018E loc_18FEE:                              ; CODE XREF: seg031:0182␘j
seg031:018E                                         ; seg031:0187␘j
seg031:018E                 dec     bx
seg031:018F                 jns     short loc_18FD8
seg031:0191                 mov     si, 0CB6Ah
seg031:0194                 mov     di, 0CB6Eh
seg031:0197                 call    sub_1908F
seg031:019A                 mov     si, 0CB6Eh
seg031:019D                 mov     di, 0CB6Eh
seg031:01A0                 call    sub_1908F
seg031:01A3                 retf
seg031:01A4
