seg005:0C1E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0C1E
seg005:0C1E
seg005:0C1E sub_CB3E        proc far                ; CODE XREF: sub_3990+7␘P
seg005:0C1E                 push    es
seg005:0C1F                 mov     bx, 0Ah
seg005:0C22                 mov     cx, 300h
seg005:0C25                 sub     ax, ax
seg005:0C27
seg005:0C27 loc_CB47:                               ; CODE XREF: sub_CB3E+D␙j
seg005:0C27                 mov     cs:[bx], al
seg005:0C2A                 inc     bx
seg005:0C2B                 loop    loc_CB47
seg005:0C2D                 call    sub_CA08
seg005:0C30                 pop     es
seg005:0C31                 retf
seg005:0C31 sub_CB3E        endp
seg005:0C31
seg005:0C32
