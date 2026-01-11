seg008:000E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg008:000E
seg008:000E ; Attributes: bp-based frame
seg008:000E
seg008:000E sub_1693E       proc far                ; CODE XREF: sub_27D0+207␘P
seg008:000E                                         ; sub_27D0+29F␘P ...
seg008:000E
seg008:000E arg_0           = word ptr  6
seg008:000E arg_2           = word ptr  8
seg008:000E
seg008:000E                 push    bp
seg008:000F                 mov     bp, sp
seg008:0011                 mov     ax, [bp+arg_0]
seg008:0014                 mov     bx, word_2AD35
seg008:0018                 mov     cx, [bp+arg_2]
seg008:001B                 mov     dx, word_2AD37
seg008:001F                 cmp     ax, bx
seg008:0021                 jz      short loc_16961
seg008:0023                 cmp     cx, dx
seg008:0025                 jnz     short loc_1697A
seg008:0027                 mov     word_2AD35, ax
seg008:002A                 cmp     bx, ax
seg008:002C                 jle     short loc_1696B
seg008:002E                 xchg    ax, bx
seg008:002F                 jmp     short loc_1696B
seg008:0031 ; ---------------------------------------------------------------------------
seg008:0031
seg008:0031 loc_16961:                              ; CODE XREF: sub_1693E+13␘j
seg008:0031                 mov     word_2AD37, cx
seg008:0035                 cmp     dx, cx
seg008:0037                 jge     short loc_1696B
seg008:0039                 xchg    dx, cx
seg008:003B
seg008:003B loc_1696B:                              ; CODE XREF: sub_1693E+1E␘j
seg008:003B                                         ; sub_1693E+21␘j ...
seg008:003B                 push    dx
seg008:003C                 push    cx
seg008:003D                 push    ax
seg008:003E                 push    bx
seg008:003F                 call    sub_18D47
seg008:0044                 add     sp, 8
seg008:0047                 jmp     loc_169FF
seg008:004A ; ---------------------------------------------------------------------------
seg008:004A
seg008:004A loc_1697A:                              ; CODE XREF: sub_1693E+17␘j
seg008:004A                 push    di
seg008:004B                 push    si
seg008:004C                 mov     si, ax
seg008:004E                 mov     ax, cx
seg008:0050                 mov     cx, 1
seg008:0053                 mov     dx, cx
seg008:0055                 sub     ax, word_2AD37
seg008:0059                 jge     short loc_1698F
seg008:005B                 neg     dx
seg008:005D                 neg     ax
seg008:005F
seg008:005F loc_1698F:                              ; CODE XREF: sub_1693E+4B␘j
seg008:005F                 mov     word_2B2EE, dx
seg008:0063                 sub     si, bx
seg008:0065                 jge     short loc_1699B
seg008:0067                 neg     cx
seg008:0069                 neg     si
seg008:006B
seg008:006B loc_1699B:                              ; CODE XREF: sub_1693E+57␘j
seg008:006B                 mov     word_2B2EC, cx
seg008:006F                 cmp     si, ax
seg008:0071                 jge     short loc_169A8
seg008:0073                 xor     cx, cx
seg008:0075                 xchg    ax, si
seg008:0076                 jmp     short loc_169AA
seg008:0078 ; ---------------------------------------------------------------------------
seg008:0078
seg008:0078 loc_169A8:                              ; CODE XREF: sub_1693E+63␘j
seg008:0078                 xor     dx, dx
seg008:007A
seg008:007A loc_169AA:                              ; CODE XREF: sub_1693E+68␘j
seg008:007A                 mov     word_2B2F0, cx
seg008:007E                 mov     word_2B2F2, dx
seg008:0082                 shl     ax, 1
seg008:0084                 mov     word_2B2F6, ax
seg008:0087                 sub     ax, si
seg008:0089                 mov     di, ax
seg008:008B                 sub     ax, si
seg008:008D                 mov     word_2B2F4, ax
seg008:0090                 mov     cx, word_2AD35
seg008:0094                 mov     dx, word_2AD37
seg008:0098                 inc     si
seg008:0099
seg008:0099 loc_169C9:                              ; CODE XREF: sub_1693E+A7␙j
seg008:0099                                         ; sub_1693E+B5␙j
seg008:0099                 push    dx
seg008:009A                 push    cx
seg008:009B                 call    sub_16E27
seg008:00A0                 pop     cx
seg008:00A1                 pop     dx
seg008:00A2                 dec     si
seg008:00A3                 jz      short loc_169F5
seg008:00A5                 or      di, di
seg008:00A7                 jge     short loc_169E7
seg008:00A9                 add     cx, word_2B2F0
seg008:00AD                 add     dx, word_2B2F2
seg008:00B1                 add     di, word_2B2F6
seg008:00B5                 jmp     short loc_169C9
seg008:00B7 ; ---------------------------------------------------------------------------
seg008:00B7
seg008:00B7 loc_169E7:                              ; CODE XREF: sub_1693E+99␘j
seg008:00B7                 add     cx, word_2B2EC
seg008:00BB                 add     dx, word_2B2EE
seg008:00BF                 add     di, word_2B2F4
seg008:00C3                 jmp     short loc_169C9
seg008:00C5 ; ---------------------------------------------------------------------------
seg008:00C5
seg008:00C5 loc_169F5:                              ; CODE XREF: sub_1693E+95␘j
seg008:00C5                 mov     word_2AD35, cx
seg008:00C9                 mov     word_2AD37, dx
seg008:00CD                 pop     si
seg008:00CE                 pop     di
seg008:00CF
seg008:00CF loc_169FF:                              ; CODE XREF: sub_1693E+39␘j
seg008:00CF                 xor     ax, ax
seg008:00D1                 pop     bp
seg008:00D2                 retf
seg008:00D2 sub_1693E       endp
seg008:00D2
seg008:00D2 seg008          ends
seg008:00D2
seg009:0003 ; ---------------------------------------------------------------------------
seg009:0003
seg009:0003 ; Segment type: Pure code
seg009:0003 seg009          segment byte public 'CODE' use16
seg009:0003                 assume cs:seg009
seg009:0003                 ;org 3
seg009:0003                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg009:0003
