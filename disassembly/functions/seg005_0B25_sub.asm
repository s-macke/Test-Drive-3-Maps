seg005:0B25 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0B25
seg005:0B25
seg005:0B25 sub_CA45        proc near               ; CODE XREF: sub_CADF+25␙p
seg005:0B25                 push    ds
seg005:0B26                 sub     bx, bx
seg005:0B28                 mov     si, 0Ah
seg005:0B2B                 mov     ax, cs
seg005:0B2D                 mov     ds, ax
seg005:0B2F                 assume ds:seg005
seg005:0B2F
seg005:0B2F loc_CA4F:                               ; CODE XREF: sub_CA45+3A␙j
seg005:0B2F                 mov     dx, 3DAh
seg005:0B32
seg005:0B32 loc_CA52:                               ; CODE XREF: sub_CA45+20␙j
seg005:0B32                 mov     cx, 6
seg005:0B35
seg005:0B35 loc_CA55:                               ; CODE XREF: sub_CA45+13␙j
seg005:0B35                                         ; sub_CA45+17␙j
seg005:0B35                 in      al, dx          ; Video status bits:
seg005:0B35                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg005:0B35                                         ; 1: 1=light pen is triggered; 0=armed
seg005:0B35                                         ; 2: 1=light pen switch is open; 0=closed
seg005:0B35                                         ; 3: 1=vertical sync pulse is occurring.
seg005:0B36                 test    al, 8
seg005:0B38                 jnz     short loc_CA55
seg005:0B3A                 test    al, 1
seg005:0B3C                 jz      short loc_CA55
seg005:0B3E                 cli
seg005:0B3F
seg005:0B3F loc_CA5F:                               ; CODE XREF: sub_CA45+1D␙j
seg005:0B3F                 in      al, dx          ; Video status bits:
seg005:0B3F                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg005:0B3F                                         ; 1: 1=light pen is triggered; 0=armed
seg005:0B3F                                         ; 2: 1=light pen switch is open; 0=closed
seg005:0B3F                                         ; 3: 1=vertical sync pulse is occurring.
seg005:0B40                 test    al, 1
seg005:0B42                 loopne  loc_CA5F
seg005:0B44                 sti
seg005:0B45                 jz      short loc_CA52
seg005:0B47
seg005:0B47 loc_CA67:                               ; CODE XREF: sub_CA45+35␙j
seg005:0B47                 mov     dx, 3C8h
seg005:0B4A                 mov     al, bl
seg005:0B4C                 out     dx, al
seg005:0B4D                 lodsb
seg005:0B4E                 inc     dx
seg005:0B4F                 out     dx, al
seg005:0B50                 lodsw
seg005:0B51                 out     dx, al
seg005:0B52                 mov     al, ah
seg005:0B54                 out     dx, al
seg005:0B55                 inc     bl
seg005:0B57                 test    bl, 1Fh
seg005:0B5A                 jnz     short loc_CA67
seg005:0B5C                 test    bl, 7Fh
seg005:0B5F                 jnz     short loc_CA4F
seg005:0B61                 pop     ds
seg005:0B62                 assume ds:dseg
seg005:0B62                 retn
seg005:0B62 sub_CA45        endp
seg005:0B62
seg005:0B63
