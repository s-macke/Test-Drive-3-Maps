seg035:000A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg035:000A
seg035:000A
seg035:000A sub_1F03A       proc far                ; CODE XREF: sub_1E739+2B␘P
seg035:000A                                         ; sub_1E76B+3C␘P ...
seg035:000A                 push    cx
seg035:000B                 push    dx
seg035:000C                 mov     dx, 388h
seg035:000F                 out     dx, al
seg035:0010                 mov     cx, 6
seg035:0013
seg035:0013 loc_1F043:                              ; CODE XREF: sub_1F03A+A␙j
seg035:0013                 in      al, dx
seg035:0014                 loop    loc_1F043
seg035:0016                 inc     dx
seg035:0017                 mov     al, ah
seg035:0019                 out     dx, al
seg035:001A                 dec     dx
seg035:001B                 mov     cx, 23h ; '#'
seg035:001E
seg035:001E loc_1F04E:                              ; CODE XREF: sub_1F03A+15␙j
seg035:001E                 in      al, dx
seg035:001F                 loop    loc_1F04E
seg035:0021                 pop     dx
seg035:0022                 pop     cx
seg035:0023                 retf
seg035:0023 sub_1F03A       endp
seg035:0023
seg035:0024
