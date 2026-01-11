seg007:0002 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg007:0002
seg007:0002
seg007:0002 sub_168A2       proc far                ; CODE XREF: sub_8DC+E␘P
seg007:0002                 xor     ax, ax
seg007:0004                 mov     es, ax
seg007:0006                 assume es:seg000
seg007:0006                 push    di
seg007:0007                 push    si
seg007:0008                 mov     ah, 1Ah
seg007:000A                 xor     al, al
seg007:000C                 int     10h             ; - VIDEO - DISPLAY COMBINATION (PS,VGA/MCGA): read display combination code
seg007:000E                 pop     si
seg007:000F                 pop     di
seg007:0010                 cmp     al, 1Ah
seg007:0012                 jnz     short loc_168D4
seg007:0014                 cmp     bl, 0Ch
seg007:0017                 jz      short loc_168D0
seg007:0019                 cmp     bl, 8
seg007:001C                 jz      short loc_168CC
seg007:001E                 cmp     bl, 0Bh
seg007:0021                 jz      short loc_168C8
seg007:0023                 cmp     bl, 7
seg007:0026                 jnz     short loc_168D4
seg007:0028
seg007:0028 loc_168C8:                              ; CODE XREF: sub_168A2+1F␘j
seg007:0028                 mov     ax, 11h
seg007:002B                 retf
seg007:002C ; ---------------------------------------------------------------------------
seg007:002C
seg007:002C loc_168CC:                              ; CODE XREF: sub_168A2+1A␘j
seg007:002C                 mov     ax, 12h
seg007:002F                 retf
seg007:0030 ; ---------------------------------------------------------------------------
seg007:0030
seg007:0030 loc_168D0:                              ; CODE XREF: sub_168A2+15␘j
seg007:0030                 mov     ax, 13h
seg007:0033                 retf
seg007:0034 ; ---------------------------------------------------------------------------
seg007:0034
seg007:0034 loc_168D4:                              ; CODE XREF: sub_168A2+10␘j
seg007:0034                                         ; sub_168A2+24␘j
seg007:0034                 push    di
seg007:0035                 push    si
seg007:0036                 mov     ah, 12h
seg007:0038                 mov     bl, 10h
seg007:003A                 int     10h             ; - VIDEO - ALTERNATE FUNCTION SELECT (PS, EGA, VGA, MCGA) - GET EGA INFO
seg007:003A                                         ; Return: BH = 00h color mode in effect CH = feature bits, CL = switch settings
seg007:003C                 pop     si
seg007:003D                 pop     di
seg007:003E                 cmp     bl, 10h
seg007:0041                 jz      short loc_16903
seg007:0043                 mov     al, byte ptr es:loc_487
seg007:0047                 test    al, 8
seg007:0049                 jnz     short loc_16903
seg007:004B                 test    al, 2
seg007:004D                 jnz     short loc_168FB
seg007:004F                 and     cl, 0Fh
seg007:0052                 cmp     cl, 9
seg007:0055                 jz      short loc_168FF
seg007:0057                 mov     ax, 0Dh
seg007:005A                 retf
seg007:005B ; ---------------------------------------------------------------------------
seg007:005B
seg007:005B loc_168FB:                              ; CODE XREF: sub_168A2+4B␘j
seg007:005B                 mov     ax, 0Fh
seg007:005E                 retf
seg007:005F ; ---------------------------------------------------------------------------
seg007:005F
seg007:005F loc_168FF:                              ; CODE XREF: sub_168A2+53␘j
seg007:005F                 mov     ax, 10h
seg007:0062                 retf
seg007:0063 ; ---------------------------------------------------------------------------
seg007:0063
seg007:0063 loc_16903:                              ; CODE XREF: sub_168A2+3F␘j
seg007:0063                                         ; sub_168A2+47␘j
seg007:0063                 mov     al, byte ptr es:loc_40E+2
seg007:0067                 and     al, 30h
seg007:0069                 cmp     al, 30h ; '0'
seg007:006B                 jz      short loc_16922
seg007:006D                 mov     ax, 0FC00h
seg007:0070                 mov     es, ax
seg007:0072                 assume es:nothing
seg007:0072                 mov     al, es:0
seg007:0076                 cmp     al, 21h ; '!'
seg007:0078                 jz      short loc_1691E
seg007:007A                 mov     ax, 4
seg007:007D                 retf
seg007:007E ; ---------------------------------------------------------------------------
seg007:007E
seg007:007E loc_1691E:                              ; CODE XREF: sub_168A2+76␘j
seg007:007E                 mov     ax, 9
seg007:0081                 retf
seg007:0082 ; ---------------------------------------------------------------------------
seg007:0082
seg007:0082 loc_16922:                              ; CODE XREF: sub_168A2+69␘j
seg007:0082                 mov     dx, 3BAh
seg007:0085                 in      al, dx          ; Video status bits:
seg007:0085                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg007:0085                                         ; 1: 1=light pen is triggered; 0=armed
seg007:0085                                         ; 2: 1=light pen switch is open; 0=closed
seg007:0085                                         ; 3: 1=vertical sync pulse is occurring.
seg007:0086                 and     al, 80h
seg007:0088                 mov     ah, al
seg007:008A                 mov     cx, 8000h
seg007:008D
seg007:008D loc_1692D:                              ; CODE XREF: sub_168A2+90␙j
seg007:008D                 in      al, dx          ; Video status bits:
seg007:008D                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg007:008D                                         ; 1: 1=light pen is triggered; 0=armed
seg007:008D                                         ; 2: 1=light pen switch is open; 0=closed
seg007:008D                                         ; 3: 1=vertical sync pulse is occurring.
seg007:008E                 and     al, 80h
seg007:0090                 cmp     ah, al
seg007:0092                 loope   loc_1692D
seg007:0094                 jnz     short loc_1693A
seg007:0096                 mov     ax, 7
seg007:0099                 retf
seg007:009A ; ---------------------------------------------------------------------------
seg007:009A
seg007:009A loc_1693A:                              ; CODE XREF: sub_168A2+92␘j
seg007:009A                 mov     ax, 0Bh
seg007:009D                 retf
seg007:009D sub_168A2       endp
seg007:009D
seg007:009D seg007          ends
seg007:009D
seg008:000E ; ---------------------------------------------------------------------------
seg008:000E
seg008:000E ; Segment type: Pure code
seg008:000E seg008          segment byte public 'CODE' use16
seg008:000E                 assume cs:seg008
seg008:000E                 ;org 0Eh
seg008:000E                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg008:000E
