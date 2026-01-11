seg005:0B63 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0B63
seg005:0B63
seg005:0B63 sub_CA83        proc far                ; CODE XREF: sub_39AC+7␘P
seg005:0B63                 push    si
seg005:0B64                 mov     dx, 0Fh
seg005:0B67
seg005:0B67 loc_CA87:                               ; CODE XREF: sub_CA83+2A␙j
seg005:0B67                 push    dx
seg005:0B68                 mov     bx, 0Ah
seg005:0B6B                 mov     cx, 300h
seg005:0B6E                 sub     si, si
seg005:0B70
seg005:0B70 loc_CA90:                               ; CODE XREF: sub_CA83+23␙j
seg005:0B70                 mov     al, [si+0B6Ah]
seg005:0B74                 mul     dl
seg005:0B76                 add     ax, 8
seg005:0B79                 shr     ax, 1
seg005:0B7B                 shr     ax, 1
seg005:0B7D                 shr     ax, 1
seg005:0B7F                 shr     ax, 1
seg005:0B81                 mov     cs:[bx], al
seg005:0B84                 inc     bx
seg005:0B85                 inc     si
seg005:0B86                 loop    loc_CA90
seg005:0B88                 call    sub_CA08
seg005:0B8B                 pop     dx
seg005:0B8C                 dec     dx
seg005:0B8D                 jns     short loc_CA87
seg005:0B8F                 pop     si
seg005:0B90                 retf
seg005:0B90 sub_CA83        endp
seg005:0B90
seg005:0B91
