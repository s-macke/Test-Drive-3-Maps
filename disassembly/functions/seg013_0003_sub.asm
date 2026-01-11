seg013:0003 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg013:0003
seg013:0003 ; Attributes: bp-based frame
seg013:0003
seg013:0003 sub_16A93       proc near               ; CODE XREF: sub_0+650␘P
seg013:0003                                         ; sub_1688+A4␘P ...
seg013:0003
seg013:0003 arg_2           = word ptr  6
seg013:0003
seg013:0003                 push    bp
seg013:0004                 mov     bp, sp
seg013:0006                 mov     cx, [bp+arg_2]
seg013:0009                 lea     bx, word_1F16A
seg013:000D                 add     bx, word_2AD2E
seg013:0011                 jmp     word ptr cs:[bx]
seg013:0011 sub_16A93       endp
seg013:0011
seg013:0014 ; ---------------------------------------------------------------------------
seg013:0014                 mov     byte_2AD2C, cl
seg013:0018                 jmp     short loc_16B12
seg013:001A ; ---------------------------------------------------------------------------
seg013:001A                 lea     bx, unk_2AD96
seg013:001E                 xor     ch, ch
seg013:0020                 mov     byte_2AD2C, cl
seg013:0024                 add     bx, cx
seg013:0026                 mov     cl, [bx]
seg013:0028                 and     cl, 3
seg013:002B                 jmp     short loc_16B12
seg013:002D ; ---------------------------------------------------------------------------
seg013:002D                 lea     bx, unk_2AD96
seg013:0031                 xor     ch, ch
seg013:0033                 mov     byte_2AD2C, cl
seg013:0037                 add     bx, cx
seg013:0039                 mov     cl, [bx]
seg013:003B                 and     cl, 0Fh
seg013:003E                 jmp     short loc_16B12
seg013:0040 ; ---------------------------------------------------------------------------
seg013:0040                 lea     bx, unk_2AD96
seg013:0044                 xor     ch, ch
seg013:0046                 mov     byte_2AD2C, cl
seg013:004A                 add     bx, cx
seg013:004C                 mov     cl, [bx]
seg013:004E                 and     cl, 1
seg013:0051                 jmp     short loc_16B12
seg013:0053 ; ---------------------------------------------------------------------------
seg013:0053                 lea     bx, unk_2AD96
seg013:0057                 xor     ch, ch
seg013:0059                 mov     byte_2AD2C, cl
seg013:005D                 add     bx, cx
seg013:005F                 mov     cl, [bx]
seg013:0061                 and     cl, 0Fh
seg013:0064                 push    ax
seg013:0065                 mov     al, 0
seg013:0067                 mov     ah, cl
seg013:0069                 push    dx
seg013:006A                 mov     dx, 3CEh
seg013:006D                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg013:006D                                         ; set/reset.
seg013:006D                                         ; Data bits 0-3 select planes for write mode 00
seg013:006E                 pop     dx
seg013:006F                 pop     ax
seg013:0070                 push    ax
seg013:0071                 mov     al, 2
seg013:0073                 mov     ah, cl
seg013:0075                 push    dx
seg013:0076                 mov     dx, 3CEh
seg013:0079                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg013:0079                                         ; set/reset.
seg013:0079                                         ; Data bits 0-3 select planes for write mode 00
seg013:007A                 pop     dx
seg013:007B                 pop     ax
seg013:007C                 jmp     short loc_16B12
seg013:007E ; ---------------------------------------------------------------------------
seg013:007E                 mov     byte_2AD2C, cl
seg013:0082
seg013:0082 loc_16B12:                              ; CODE XREF: seg013:0018␘j
seg013:0082                                         ; seg013:002B␘j ...
seg013:0082                 mov     byte_2AD2B, cl
seg013:0086                 xor     ax, ax
seg013:0088                 pop     bp
seg013:0089                 retf
seg013:008A ; ---------------------------------------------------------------------------
seg013:008A                 adc     al, 0
seg013:008C                 adc     al, 0
seg013:008E                 adc     al, 0
seg013:0090                 adc     al, 0
seg013:0092                 sbb     al, [bx+si]
seg013:0094                 sbb     al, [bx+si]
seg013:0096                 inc     ax
seg013:0097                 add     [si], dl
seg013:0099                 add     [di], ch
seg013:009B                 add     [di], ch
seg013:009D                 add     [di], ch
seg013:009F                 add     [bx+si+0], al
seg013:00A2                 sbb     al, [bx+si]
seg013:00A4                 push    bx
seg013:00A5                 add     [bp+di+0], dl
seg013:00A8                 push    bx
seg013:00A9                 add     [bp+di+0], dl
seg013:00AC                 push    bx
seg013:00AD                 add     [bp+di+0], dl
seg013:00B0                 jle     short $+2
seg013:00B2                 jle     short $+2
seg013:00B2 seg013          ends
seg013:00B2
seg014:0004 ; ---------------------------------------------------------------------------
seg014:0004
seg014:0004 ; Segment type: Pure code
seg014:0004 seg014          segment byte public 'CODE' use16
seg014:0004                 assume cs:seg014
seg014:0004                 ;org 4
seg014:0004                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg014:0004
