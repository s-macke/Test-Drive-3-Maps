seg035:0024 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg035:0024
seg035:0024
seg035:0024 sub_1F054       proc far                ; CODE XREF: sub_1E158+41␘P
seg035:0024                                         ; sub_1EF8A+2A␘P
seg035:0024                 push    bx
seg035:0025                 push    cx
seg035:0026                 push    dx
seg035:0027                 push    si
seg035:0028                 mov     ax, 6004h
seg035:002B                 call    sub_1F03A
seg035:0030                 mov     ax, 8004h
seg035:0033                 call    sub_1F03A
seg035:0038                 mov     dx, 388h
seg035:003B                 in      al, dx
seg035:003C                 mov     bl, al
seg035:003E                 mov     ax, 0FF02h
seg035:0041                 call    sub_1F03A
seg035:0046                 mov     ax, 2104h
seg035:0049                 call    sub_1F03A
seg035:004E                 mov     cl, 0C8h ; '+'
seg035:0050                 mov     dx, 388h
seg035:0053
seg035:0053 loc_1F083:                              ; CODE XREF: sub_1F054+30␙j
seg035:0053                 in      al, dx
seg035:0054                 loop    loc_1F083
seg035:0056                 in      al, dx
seg035:0057                 mov     bh, al
seg035:0059                 mov     ax, 6004h
seg035:005C                 call    sub_1F03A
seg035:0061                 mov     ax, 8004h
seg035:0064                 call    sub_1F03A
seg035:0069                 sub     ax, ax
seg035:006B                 and     bl, 0E0h
seg035:006E                 jnz     short loc_1F0AA
seg035:0070                 and     bh, 0E0h
seg035:0073                 cmp     bh, 0C0h ; '+'
seg035:0076                 jnz     short loc_1F0AA
seg035:0078                 mov     al, 1
seg035:007A
seg035:007A loc_1F0AA:                              ; CODE XREF: sub_1F054+4A␘j
seg035:007A                                         ; sub_1F054+52␘j
seg035:007A                 or      ax, ax
seg035:007C                 jz      short loc_1F0D9
seg035:007E                 mov     cx, 0F5h ; ')'
seg035:0081
seg035:0081 loc_1F0B1:                              ; CODE XREF: sub_1F054+64␙j
seg035:0081                 mov     ax, cx
seg035:0083                 call    sub_1F03A
seg035:0088                 loop    loc_1F0B1
seg035:008A                 mov     ax, 6004h
seg035:008D                 call    sub_1F03A
seg035:0092                 mov     ax, 20BDh
seg035:0095                 mov     byte_2B6CC, 20h ; ' '
seg035:009A                 call    sub_1F03A
seg035:009F                 mov     ax, 2001h
seg035:00A2                 call    sub_1F03A
seg035:00A7                 mov     al, 1
seg035:00A9
seg035:00A9 loc_1F0D9:                              ; CODE XREF: sub_1F054+58␘j
seg035:00A9                 pop     si
seg035:00AA                 pop     dx
seg035:00AB                 pop     cx
seg035:00AC                 pop     bx
seg035:00AD                 retf
seg035:00AD sub_1F054       endp
seg035:00AD
seg035:00AD ; ---------------------------------------------------------------------------
seg035:00AE                 align 4
seg035:00AE seg035          ends
seg035:00AE
