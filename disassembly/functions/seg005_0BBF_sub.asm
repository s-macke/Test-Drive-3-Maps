seg005:0BBF ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0BBF
seg005:0BBF
seg005:0BBF sub_CADF        proc far                ; CODE XREF: sub_39BA+7␘P
seg005:0BBF                 push    si
seg005:0BC0                 mov     dx, 0Fh
seg005:0BC3
seg005:0BC3 loc_CAE3:                               ; CODE XREF: sub_CADF+2A␙j
seg005:0BC3                 push    dx
seg005:0BC4                 mov     bx, 0Ah
seg005:0BC7                 mov     cx, 180h
seg005:0BCA                 sub     si, si
seg005:0BCC
seg005:0BCC loc_CAEC:                               ; CODE XREF: sub_CADF+23␙j
seg005:0BCC                 mov     al, [si+0B6Ah]
seg005:0BD0                 mul     dl
seg005:0BD2                 add     ax, 8
seg005:0BD5                 shr     ax, 1
seg005:0BD7                 shr     ax, 1
seg005:0BD9                 shr     ax, 1
seg005:0BDB                 shr     ax, 1
seg005:0BDD                 mov     cs:[bx], al
seg005:0BE0                 inc     bx
seg005:0BE1                 inc     si
seg005:0BE2                 loop    loc_CAEC
seg005:0BE4                 call    sub_CA45
seg005:0BE7                 pop     dx
seg005:0BE8                 dec     dx
seg005:0BE9                 jns     short loc_CAE3
seg005:0BEB                 pop     si
seg005:0BEC                 retf
seg005:0BEC sub_CADF        endp
seg005:0BEC
seg005:0BED
