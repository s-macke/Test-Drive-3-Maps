seg005:0754 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0754
seg005:0754 ; Attributes: bp-based frame
seg005:0754
seg005:0754 sub_C674        proc far                ; CODE XREF: sub_27D0+229␘P
seg005:0754                                         ; sub_27D0+255␘P ...
seg005:0754
seg005:0754 arg_0           = byte ptr  6
seg005:0754 arg_2           = byte ptr  8
seg005:0754
seg005:0754                 push    bp
seg005:0755                 mov     bp, sp
seg005:0757                 mov     al, [bp+arg_0]
seg005:075A                 shl     al, 1
seg005:075C                 shl     al, 1
seg005:075E                 shl     al, 1
seg005:0760                 mov     byte_280D3, al
seg005:0763                 mov     al, [bp+arg_2]
seg005:0766                 sub     ah, ah
seg005:0768                 shl     ax, 1
seg005:076A                 shl     ax, 1
seg005:076C                 shl     ax, 1
seg005:076E                 mov     word_280D1, ax
seg005:0771                 pop     bp
seg005:0772                 retf
seg005:0772 sub_C674        endp
seg005:0772
seg005:0773
