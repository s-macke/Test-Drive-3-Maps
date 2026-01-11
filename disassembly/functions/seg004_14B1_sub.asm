seg004:14B1 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:14B1
seg004:14B1
seg004:14B1 sub_BD61        proc near               ; CODE XREF: seg004:136C␘p
seg004:14B1                 push    bp
seg004:14B2                 push    di
seg004:14B3                 mov     di, 207h
seg004:14B6                 mov     dx, 0FFFh
seg004:14B9                 mov     bp, 0FFFFh
seg004:14BC                 mov     bx, word_207B4
seg004:14C0
seg004:14C0 loc_BD70:                               ; CODE XREF: sub_BD61+19␙j
seg004:14C0                 mov     ax, cs:[bx+di]
seg004:14C3                 add     bx, 2
seg004:14C6                 and     bx, dx
seg004:14C8                 cmp     ax, bp
seg004:14CA                 jnz     short loc_BD70
seg004:14CC                 mov     ax, cs:[bx+di]
seg004:14CF                 mov     word_28CDF, ax
seg004:14D2                 mov     word_295A5, ax
seg004:14D5                 add     bx, 2
seg004:14D8                 and     bx, dx
seg004:14DA                 mov     ax, cs:[bx+di]
seg004:14DD                 mov     word_28F5F, ax
seg004:14E0                 mov     word_296E5, ax
seg004:14E3                 add     bx, 2
seg004:14E6                 and     bx, dx
seg004:14E8                 mov     ax, cs:[bx+di]
seg004:14EB                 mov     word_291DF, ax
seg004:14EE                 sub     ax, word_284AB
seg004:14F2                 shl     ax, 1
seg004:14F4                 shl     ax, 1
seg004:14F6                 shl     ax, 1
seg004:14F8                 mov     word_29825, ax
seg004:14FB                 add     bx, 2
seg004:14FE                 and     bx, dx
seg004:1500                 mov     ax, cs:[bx+di]
seg004:1503                 mov     word_2847D, ax
seg004:1506                 sub     ah, 40h ; '@'
seg004:1509                 mov     al, ah
seg004:150B                 mov     word_29965, ax
seg004:150E                 add     bx, 2
seg004:1511                 and     bx, dx
seg004:1513                 mov     ax, cs:[bx+di]
seg004:1516                 mov     word_2847B, ax
seg004:1519                 add     bx, 2
seg004:151C                 and     bx, dx
seg004:151E                 push    bx
seg004:151F                 push    dx
seg004:1520                 push    ax
seg004:1521                 call    sub_14352
seg004:1526                 add     sp, 2
seg004:1529                 mov     ah, al
seg004:152B                 sub     al, al
seg004:152D                 mov     word_29AA5, ax
seg004:1530                 pop     dx
seg004:1531                 pop     bx
seg004:1532                 call    sub_BEAC
seg004:1535                 mov     word_207B4, bx
seg004:1539                 pop     di
seg004:153A                 pop     bp
seg004:153B                 retn
seg004:153B sub_BD61        endp
seg004:153B
seg004:153C
