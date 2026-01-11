seg004:0007 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:0007
seg004:0007
seg004:0007 sub_A8B7        proc far                ; CODE XREF: sub_10D4:loc_1328␘P
seg004:0007                 push    si
seg004:0008                 push    di
seg004:0009                 push    es
seg004:000A                 push    ds
seg004:000B                 push    bp
seg004:000C                 mov     bx, 300h
seg004:000F                 mov     ah, 48h
seg004:0011                 int     21h             ; DOS - 2+ - ALLOCATE MEMORY
seg004:0011                                         ; BX = number of 16-byte paragraphs desired
seg004:0013                 mov     word_20798, ax
seg004:0016                 mov     word_2DACE, ax
seg004:0019                 mov     word_2DACC, 0
seg004:001F                 mov     ax, 1
seg004:0022                 jnb     short loc_A8D6
seg004:0024                 sub     ax, ax
seg004:0026
seg004:0026 loc_A8D6:                               ; CODE XREF: sub_A8B7+1B␘j
seg004:0026                 pop     bp
seg004:0027                 pop     ds
seg004:0028                 pop     es
seg004:0029                 pop     di
seg004:002A                 pop     si
seg004:002B                 retf
seg004:002B sub_A8B7        endp
seg004:002B
seg004:002C
