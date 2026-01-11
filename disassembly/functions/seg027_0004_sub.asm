seg027:0004 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg027:0004
seg027:0004 ; Attributes: bp-based frame
seg027:0004
seg027:0004 sub_18994       proc near               ; CODE XREF: sub_393A+27␘P
seg027:0004                                         ; sub_396E+B␘P ...
seg027:0004                 push    bp
seg027:0005                 mov     bp, sp
seg027:0007                 push    si
seg027:0008                 push    di
seg027:0009                 cld
seg027:000A                 lea     bx, word_1F1A2
seg027:000E                 add     bx, word_2AD2E
seg027:0012                 jmp     word ptr cs:[bx]
seg027:0012 sub_18994       endp
seg027:0012
seg027:0015 ; ---------------------------------------------------------------------------
seg027:0015                 mov     si, [bp+6]
seg027:0018                 xor     cx, cx
seg027:001A                 mov     dx, 3DAh
seg027:001D
seg027:001D loc_189AD:                              ; CODE XREF: seg027:002F␙j
seg027:001D                 in      al, dx          ; Video status bits:
seg027:001D                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg027:001D                                         ; 1: 1=light pen is triggered; 0=armed
seg027:001D                                         ; 2: 1=light pen switch is open; 0=closed
seg027:001D                                         ; 3: 1=vertical sync pulse is occurring.
seg027:001E                 mov     al, cl
seg027:0020                 or      al, 10h
seg027:0022                 out     dx, al          ; Video: bits 0-1 control
seg027:0022                                         ; Feature Control outputs FC0 and FC1
seg027:0023                 lodsw
seg027:0024                 add     dl, 4
seg027:0027                 out     dx, al
seg027:0028                 sub     dl, 4
seg027:002B                 inc     cx
seg027:002C                 cmp     cx, 10h
seg027:002F                 jl      short loc_189AD
seg027:0031                 jmp     loc_18A4C
seg027:0031 ; ---------------------------------------------------------------------------
seg027:0034                 db 8Bh, 76h, 6, 8Dh, 3Eh, 0ECh, 0, 8Bh, 0D7h, 8Ch, 0C8h
seg027:0034                 db 8Eh, 0C0h, 0B9h, 10h, 0
seg027:0044 ; ---------------------------------------------------------------------------
seg027:0044
seg027:0044 loc_189D4:                              ; CODE XREF: seg027:0046␙j
seg027:0044                 lodsw
seg027:0045                 stosb
seg027:0046                 loop    loc_189D4
seg027:0048                 mov     ah, 10h
seg027:004A                 mov     al, 2
seg027:004C                 int     10h             ; - VIDEO - SET ALL PALETTE REGISTERS (Jr, PS, TANDY 1000, EGA, VGA)
seg027:004C                                         ; ES:DX -> 17-byte palette register list
seg027:004E                 jmp     short loc_18A4C
seg027:004E ; ---------------------------------------------------------------------------
seg027:0050                 db 8Bh, 5Eh, 6, 8Dh, 3Eh, 0FDh, 0, 8Dh, 16h, 8Ah, 0C2h
seg027:0050                 db 8Ch, 0C8h, 8Eh, 0C0h, 0B9h, 10h, 0
seg027:0062 ; ---------------------------------------------------------------------------
seg027:0062
seg027:0062 loc_189F2:                              ; CODE XREF: seg027:00AB␙j
seg027:0062                 push    cx
seg027:0063                 mov     ax, [bx]
seg027:0065                 mov     cl, al
seg027:0067                 and     cl, 1
seg027:006A                 shr     al, 1
seg027:006C                 mov     ch, al
seg027:006E                 and     ch, 1
seg027:0071                 shr     al, 1
seg027:0073                 mov     ah, al
seg027:0075                 and     ah, 1
seg027:0078                 and     al, 0FEh
seg027:007A                 or      cl, al
seg027:007C                 and     cl, 3
seg027:007F                 shr     al, 1
seg027:0081                 and     al, 0FEh
seg027:0083                 or      ch, al
seg027:0085                 and     ch, 3
seg027:0088                 shr     al, 1
seg027:008A                 and     al, 0FEh
seg027:008C                 or      ah, al
seg027:008E                 and     ah, 3
seg027:0091                 mov     si, dx
seg027:0093                 mov     al, ah
seg027:0095                 cbw
seg027:0096                 add     si, ax
seg027:0098                 movsb
seg027:0099                 mov     si, dx
seg027:009B                 mov     al, ch
seg027:009D                 add     si, ax
seg027:009F                 movsb
seg027:00A0                 mov     si, dx
seg027:00A2                 mov     al, cl
seg027:00A4                 add     si, ax
seg027:00A6                 movsb
seg027:00A7                 add     bx, 2
seg027:00AA                 pop     cx
seg027:00AB                 loop    loc_189F2
seg027:00AD                 mov     ah, 10h
seg027:00AF                 mov     al, 12h
seg027:00B1                 xor     bx, bx
seg027:00B3                 mov     cx, 10h
seg027:00B6                 lea     dx, unk_1F1DD
seg027:00BA                 int     10h             ; - VIDEO - SET BLOCK OF DAC REGISTERS (EGA, VGA/MCGA)
seg027:00BA                                         ; BX = starting color register, CX = number of registers to set
seg027:00BA                                         ; ES:DX -> table of 3*CX bytes where each 3 byte group represents one
seg027:00BA                                         ; byte each of red, green and blue (0-63)
seg027:00BC
seg027:00BC loc_18A4C:                              ; CODE XREF: seg027:0031␘j
seg027:00BC                                         ; seg027:004E␘j
seg027:00BC                 xor     ax, ax
seg027:00BE                 pop     di
seg027:00BF                 pop     si
seg027:00C0                 pop     bp
seg027:00C1                 retf
seg027:00C1 ; ---------------------------------------------------------------------------
seg027:00C2                 db 0BCh, 0, 0BCh, 0, 0BCh, 0, 0BCh, 0, 0BCh, 0, 0BCh, 0
seg027:00C2                 db 0BCh, 0, 0BCh, 0, 15h, 0, 15h, 0, 15h, 0, 0BCh, 0, 0BCh
seg027:00C2                 db 0, 34h, 0, 34h, 0, 0BCh, 0, 34h, 0, 0BCh, 0, 34h, 0
seg027:00C2                 db 50h, 0, 50h, 35h dup(0)
seg027:00C2 seg027          ends
seg027:00C2
seg028:0000 ; ---------------------------------------------------------------------------
seg028:0000
seg028:0000 ; Segment type: Pure code
seg028:0000 seg028          segment byte public 'CODE' use16
seg028:0000                 assume cs:seg028
seg028:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg028:0000                 db 0Dh dup(0)
seg028:000D
