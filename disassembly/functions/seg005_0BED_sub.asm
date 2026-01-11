seg005:0BED ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0BED
seg005:0BED
seg005:0BED sub_CB0D        proc far                ; CODE XREF: sub_399E+7␘P
seg005:0BED                 push    si
seg005:0BEE                 mov     dx, 1
seg005:0BF1
seg005:0BF1 loc_CB11:                               ; CODE XREF: sub_CB0D+2D␙j
seg005:0BF1                 push    dx
seg005:0BF2                 mov     bx, 0Ah
seg005:0BF5                 mov     cx, 300h
seg005:0BF8                 sub     si, si
seg005:0BFA
seg005:0BFA loc_CB1A:                               ; CODE XREF: sub_CB0D+23␙j
seg005:0BFA                 mov     al, [si+0B6Ah]
seg005:0BFE                 mul     dl
seg005:0C00                 add     ax, 8
seg005:0C03                 shr     ax, 1
seg005:0C05                 shr     ax, 1
seg005:0C07                 shr     ax, 1
seg005:0C09                 shr     ax, 1
seg005:0C0B                 mov     cs:[bx], al
seg005:0C0E                 inc     bx
seg005:0C0F                 inc     si
seg005:0C10                 loop    loc_CB1A
seg005:0C12                 call    sub_CA08
seg005:0C15                 pop     dx
seg005:0C16                 inc     dx
seg005:0C17                 cmp     dl, 11h
seg005:0C1A                 jnz     short loc_CB11
seg005:0C1C                 pop     si
seg005:0C1D                 retf
seg005:0C1D sub_CB0D        endp
seg005:0C1D
seg005:0C1E
