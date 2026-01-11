seg030:0005 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg030:0005
seg030:0005
seg030:0005 sub_18DD5       proc near               ; CODE XREF: sub_16A2D+21␘P
seg030:0005                 push    di
seg030:0006                 cld
seg030:0007                 mov     ax, word_2AD72
seg030:000A                 mov     es, ax
seg030:000C                 assume es:seg000
seg030:000C                 mov     cx, word_2B196
seg030:0010                 xor     di, di
seg030:0012                 lea     bx, aE_lz       ; "E.LZ"
seg030:0016                 add     bx, word_2AD2E
seg030:001A                 jmp     word ptr cs:[bx]
seg030:001A sub_18DD5       endp
seg030:001A
seg030:001D ; ---------------------------------------------------------------------------
seg030:001D                 mov     al, 20h ; ' '
seg030:001F                 mov     ah, 7
seg030:0021                 shr     cx, 1
seg030:0023                 rep stosw
seg030:0025                 xor     ax, ax
seg030:0027                 pop     di
seg030:0028                 retf
seg030:0029 ; ---------------------------------------------------------------------------
seg030:0029                 xor     ax, ax
seg030:002B                 shr     cx, 1
seg030:002D                 rep stosw
seg030:002F                 pop     di
seg030:0030                 retf
seg030:0031 ; ---------------------------------------------------------------------------
seg030:0031                 push    ax
seg030:0032                 mov     al, 5
seg030:0034                 mov     ah, 2
seg030:0036                 push    dx
seg030:0037                 mov     dx, 3CEh
seg030:003A                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg030:003A                                         ; unknown register
seg030:003B                 pop     dx
seg030:003C                 pop     ax
seg030:003D                 push    ax
seg030:003E                 mov     al, 8
seg030:0040                 mov     ah, 0FFh
seg030:0042                 push    dx
seg030:0043                 mov     dx, 3CEh
seg030:0046                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg030:0046                                         ; unknown register
seg030:0047                 pop     dx
seg030:0048                 pop     ax
seg030:0049                 xor     ax, ax
seg030:004B
seg030:004B loc_18E1B:                              ; CODE XREF: seg030:004F␙j
seg030:004B                 mov     dl, es:[di]
seg030:004E                 stosb
seg030:004F                 loop    loc_18E1B
seg030:0051                 push    ax
seg030:0052                 mov     al, 5
seg030:0054                 mov     ah, 0
seg030:0056                 push    dx
seg030:0057                 mov     dx, 3CEh
seg030:005A                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg030:005A                                         ; mode register.Data bits:
seg030:005A                                         ; 0-1: Write mode 0-2
seg030:005A                                         ; 2: test condition
seg030:005A                                         ; 3: read mode: 1=color compare, 0=direct
seg030:005A                                         ; 4: 1=use odd/even RAM addressing
seg030:005A                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg030:005B                 pop     dx
seg030:005C                 pop     ax
seg030:005D                 pop     di
seg030:005E                 retf
seg030:005F ; ---------------------------------------------------------------------------
seg030:005F                 mov     dx, 3C4h
seg030:0062                 mov     al, 2
seg030:0064                 mov     ah, 0Fh
seg030:0066                 out     dx, ax          ; EGA: sequencer address reg
seg030:0066                                         ; unknown register
seg030:0067                 xor     ax, ax
seg030:0069                 shr     cx, 1
seg030:006B                 rep stosw
seg030:006D                 pop     di
seg030:006E                 retf
seg030:006E ; ---------------------------------------------------------------------------
seg030:006F                 db 1Dh, 0, 1Dh, 0, 1Dh, 0, 1Dh, 0, 29h, 0, 29h, 0, 29h
seg030:006F                 db 0, 1Dh, 0, 29h, 0, 29h, 0, 29h, 0, 29h, 0, 29h, 0, 31h
seg030:006F                 db 0, 31h, 0, 31h, 0, 31h, 0, 31h, 0, 31h, 0, 29h, 0, 5Fh
seg030:006F                 db 2 dup(0)
seg030:006F seg030          ends
seg030:006F
seg031:000A ; ---------------------------------------------------------------------------
seg031:000A
seg031:000A ; Segment type: Pure code
seg031:000A seg031          segment byte public 'CODE' use16
seg031:000A                 assume cs:seg031
seg031:000A                 ;org 0Ah
seg031:000A                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg031:000A                 db 10h dup(0)
seg031:001A                 assume ss:seg037, ds:nothing
seg031:001A
