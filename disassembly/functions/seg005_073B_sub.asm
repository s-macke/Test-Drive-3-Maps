seg005:073B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:073B
seg005:073B ; Attributes: bp-based frame
seg005:073B
seg005:073B sub_C65B        proc far                ; CODE XREF: sub_1688+11A␘P
seg005:073B                                         ; sub_1DAA+A0E␘P ...
seg005:073B
seg005:073B arg_0           = word ptr  6
seg005:073B arg_2           = word ptr  8
seg005:073B
seg005:073B                 push    bp
seg005:073C                 mov     bp, sp
seg005:073E                 mov     ax, [bp+arg_2]
seg005:0741                 mov     ah, al
seg005:0743                 sub     al, al
seg005:0745                 mov     word_280CD, ax
seg005:0748                 mov     ax, [bp+arg_0]
seg005:074B                 mov     ah, al
seg005:074D                 sub     al, al
seg005:074F                 mov     word_280CF, ax
seg005:0752                 pop     bp
seg005:0753                 retf
seg005:0753 sub_C65B        endp
seg005:0753
seg005:0754
