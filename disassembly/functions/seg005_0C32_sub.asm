seg005:0C32 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0C32
seg005:0C32
seg005:0C32 sub_CB52        proc far                ; CODE XREF: sub_CA8+8A␘P
seg005:0C32                                         ; sub_3982+7␘P
seg005:0C32                 push    si
seg005:0C33                 push    es
seg005:0C34                 mov     bx, 0Ah
seg005:0C37                 mov     cx, 300h
seg005:0C3A                 sub     si, si
seg005:0C3C
seg005:0C3C loc_CB5C:                               ; CODE XREF: sub_CB52+13␙j
seg005:0C3C                 mov     al, [si+0B6Ah]
seg005:0C40                 mov     cs:[bx], al
seg005:0C43                 inc     bx
seg005:0C44                 inc     si
seg005:0C45                 loop    loc_CB5C
seg005:0C47                 call    sub_CA08
seg005:0C4A                 pop     es
seg005:0C4B                 pop     si
seg005:0C4C                 retf
seg005:0C4C sub_CB52        endp
seg005:0C4C
seg005:0C4D
