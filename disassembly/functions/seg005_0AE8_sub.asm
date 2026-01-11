seg005:0AE8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0AE8
seg005:0AE8
seg005:0AE8 sub_CA08        proc near               ; CODE XREF: sub_CA83+25␙p
seg005:0AE8                                         ; sub_CB0D+25␙p ...
seg005:0AE8                 push    ds
seg005:0AE9                 sub     bx, bx
seg005:0AEB                 mov     si, 0Ah
seg005:0AEE                 mov     ax, cs
seg005:0AF0                 mov     ds, ax
seg005:0AF2                 assume ds:seg005
seg005:0AF2
seg005:0AF2 loc_CA12:                               ; CODE XREF: sub_CA08+39␙j
seg005:0AF2                 mov     dx, 3DAh
seg005:0AF5
seg005:0AF5 loc_CA15:                               ; CODE XREF: sub_CA08+20␙j
seg005:0AF5                 mov     cx, 6
seg005:0AF8
seg005:0AF8 loc_CA18:                               ; CODE XREF: sub_CA08+13␙j
seg005:0AF8                                         ; sub_CA08+17␙j
seg005:0AF8                 in      al, dx          ; Video status bits:
seg005:0AF8                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg005:0AF8                                         ; 1: 1=light pen is triggered; 0=armed
seg005:0AF8                                         ; 2: 1=light pen switch is open; 0=closed
seg005:0AF8                                         ; 3: 1=vertical sync pulse is occurring.
seg005:0AF9                 test    al, 8
seg005:0AFB                 jnz     short loc_CA18
seg005:0AFD                 test    al, 1
seg005:0AFF                 jz      short loc_CA18
seg005:0B01                 cli
seg005:0B02
seg005:0B02 loc_CA22:                               ; CODE XREF: sub_CA08+1D␙j
seg005:0B02                 in      al, dx          ; Video status bits:
seg005:0B02                                         ; 0: retrace.  1=display is in vert or horiz retrace.
seg005:0B02                                         ; 1: 1=light pen is triggered; 0=armed
seg005:0B02                                         ; 2: 1=light pen switch is open; 0=closed
seg005:0B02                                         ; 3: 1=vertical sync pulse is occurring.
seg005:0B03                 test    al, 1
seg005:0B05                 loopne  loc_CA22
seg005:0B07                 sti
seg005:0B08                 jz      short loc_CA15
seg005:0B0A
seg005:0B0A loc_CA2A:                               ; CODE XREF: sub_CA08+35␙j
seg005:0B0A                 mov     dx, 3C8h
seg005:0B0D                 mov     al, bl
seg005:0B0F                 out     dx, al
seg005:0B10                 lodsb
seg005:0B11                 inc     dx
seg005:0B12                 out     dx, al
seg005:0B13                 lodsw
seg005:0B14                 out     dx, al
seg005:0B15                 mov     al, ah
seg005:0B17                 out     dx, al
seg005:0B18                 inc     bl
seg005:0B1A                 test    bl, 1Fh
seg005:0B1D                 jnz     short loc_CA2A
seg005:0B1F                 or      bl, bl
seg005:0B21                 jnz     short loc_CA12
seg005:0B23                 pop     ds
seg005:0B24                 assume ds:dseg
seg005:0B24                 retn
seg005:0B24 sub_CA08        endp
seg005:0B24
seg005:0B25
