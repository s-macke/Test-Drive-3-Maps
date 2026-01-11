seg020:000A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg020:000A
seg020:000A ; Attributes: bp-based frame
seg020:000A
seg020:000A sub_171CA       proc near               ; CODE XREF: sub_3186+293␘P
seg020:000A                                         ; sub_EC6D+2C␘P
seg020:000A
seg020:000A arg_2           = word ptr  6
seg020:000A arg_4           = word ptr  8
seg020:000A
seg020:000A                 push    bp
seg020:000B                 mov     bp, sp
seg020:000D                 mov     dx, [bp+arg_2]
seg020:0010                 mov     ax, [bp+arg_4]
seg020:0013                 mov     cl, 0FFh
seg020:0015                 lea     bx, word_1F1B2+1
seg020:0019                 add     bx, word_2AD2E
seg020:001D                 jmp     word ptr cs:[bx]
seg020:001D sub_171CA       endp
seg020:001D
seg020:0020 ; ---------------------------------------------------------------------------
seg020:0020                 mov     bx, dx
seg020:0022                 shr     ax, 1
seg020:0024                 mov     dx, 28h ; '('
seg020:0027                 mul     dx
seg020:0029                 shr     bx, 1
seg020:002B                 shr     bx, 1
seg020:002D                 shr     bx, 1
seg020:002F                 add     bx, ax
seg020:0031                 jmp     short loc_1724F
seg020:0033 ; ---------------------------------------------------------------------------
seg020:0033                 mov     bx, dx
seg020:0035                 shr     ax, 1
seg020:0037                 shr     ax, 1
seg020:0039                 mov     dx, 50h ; 'P'
seg020:003C                 mul     dx
seg020:003E                 shr     bx, 1
seg020:0040                 shr     bx, 1
seg020:0042                 add     bx, ax
seg020:0044                 jmp     short loc_1724F
seg020:0046 ; ---------------------------------------------------------------------------
seg020:0046                 mov     bx, ax
seg020:0048                 shr     ax, 1
seg020:004A                 add     ax, bx
seg020:004C                 shl     dx, 1
seg020:004E                 mov     bx, dx
seg020:0050                 shr     ax, 1
seg020:0052                 shr     ax, 1
seg020:0054                 mov     dx, 2Dh ; '-'
seg020:0057                 mul     dx
seg020:0059                 shr     bx, 1
seg020:005B                 shr     bx, 1
seg020:005D                 shr     bx, 1
seg020:005F                 add     bx, ax
seg020:0061                 jmp     short loc_1724F
seg020:0063 ; ---------------------------------------------------------------------------
seg020:0063                 mov     bx, dx
seg020:0065                 mov     cx, dx
seg020:0067                 and     cl, 7
seg020:006A                 mul     word_2B1C2
seg020:006E                 shr     bx, 1
seg020:0070                 shr     bx, 1
seg020:0072                 shr     bx, 1
seg020:0074                 add     bx, ax
seg020:0076                 mov     al, byte_2AD34
seg020:0079                 cbw
seg020:007A                 mul     word_2B196
seg020:007E                 add     bx, ax
seg020:0080                 jmp     short loc_1724F
seg020:0082 ; ---------------------------------------------------------------------------
seg020:0082                 mov     bx, dx
seg020:0084                 mov     dx, 50h ; 'P'
seg020:0087                 mul     dx
seg020:0089                 shr     bx, 1
seg020:008B                 shr     bx, 1
seg020:008D                 add     bx, ax
seg020:008F
seg020:008F loc_1724F:                              ; CODE XREF: seg020:0031␘j
seg020:008F                                         ; seg020:0044␘j ...
seg020:008F                 xor     ax, ax
seg020:0091                 mov     es, ax
seg020:0093                 assume es:seg000
seg020:0093                 mov     word ptr es:loc_44E, bx
seg020:0098                 mov     dx, word ptr es:loc_463
seg020:009D                 add     dl, 6
seg020:00A0
seg020:00A0 loc_17260:                              ; CODE XREF: seg020:00A3␙j
seg020:00A0                 in      al, dx
seg020:00A1                 test    al, 8
seg020:00A3                 jz      short loc_17260
seg020:00A5
seg020:00A5 loc_17265:                              ; CODE XREF: seg020:00A8␙j
seg020:00A5                 in      al, dx
seg020:00A6                 test    al, 8
seg020:00A8                 jnz     short loc_17265
seg020:00AA                 cli
seg020:00AB                 sub     dl, 6
seg020:00AE                 mov     ah, bh
seg020:00B0                 mov     al, 0Ch
seg020:00B2                 out     dx, ax
seg020:00B3                 mov     ah, bl
seg020:00B5                 inc     al
seg020:00B7                 out     dx, ax
seg020:00B8                 sti
seg020:00B9                 or      cl, cl
seg020:00BB                 jl      short loc_1728F
seg020:00BD                 add     dl, 6
seg020:00C0
seg020:00C0 loc_17280:                              ; CODE XREF: seg020:00C3␙j
seg020:00C0                 in      al, dx
seg020:00C1                 test    al, 8
seg020:00C3                 jz      short loc_17280
seg020:00C5                 cli
seg020:00C6                 mov     dl, 0C0h ; '+'
seg020:00C8                 mov     al, 33h ; '3'
seg020:00CA                 out     dx, al
seg020:00CB                 mov     al, cl
seg020:00CD                 out     dx, al
seg020:00CE                 sti
seg020:00CF
seg020:00CF loc_1728F:                              ; CODE XREF: seg020:00BB␘j
seg020:00CF                 xor     ax, ax
seg020:00D1                 pop     bp
seg020:00D2                 retf
seg020:00D2 ; ---------------------------------------------------------------------------
seg020:00D3                 db 0CFh, 0, 0CFh, 0, 0CFh, 0, 0CFh, 0, 20h, 0, 20h, 0
seg020:00D3                 db 20h, 0, 0CFh, 0, 0CFh, 0, 33h, 0, 0CFh, 0, 4Eh, 0, 46h
seg020:00D3                 db 0, 63h, 0, 63h
seg020:00D3 seg020          ends
seg020:00D3
seg021:0000 ; ---------------------------------------------------------------------------
seg021:0000
seg021:0000 ; Segment type: Pure code
seg021:0000 seg021          segment byte public 'CODE' use16
seg021:0000                 assume cs:seg021
seg021:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg021:0000                 db 0, 63h, 0, 63h, 0, 63h, 0, 63h, 0, 82h, 0, 82h, 0
seg021:000D
