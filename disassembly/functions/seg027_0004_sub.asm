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
