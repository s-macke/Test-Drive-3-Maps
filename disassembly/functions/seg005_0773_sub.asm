seg005:0773 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0773
seg005:0773 ; Attributes: bp-based frame
seg005:0773
seg005:0773 sub_C693        proc far                ; CODE XREF: sub_3186+11F␘P
seg005:0773                                         ; sub_372E+22␘P ...
seg005:0773
seg005:0773 arg_0           = byte ptr  6
seg005:0773 arg_2           = byte ptr  8
seg005:0773
seg005:0773                 push    bp
seg005:0774                 mov     bp, sp
seg005:0776                 mov     al, [bp+arg_0]
seg005:0779                 mov     byte_280D3, al
seg005:077C                 mov     al, [bp+arg_2]
seg005:077F                 sub     ah, ah
seg005:0781                 shl     ax, 1
seg005:0783                 shl     ax, 1
seg005:0785                 shl     ax, 1
seg005:0787                 mov     word_280D1, ax
seg005:078A                 pop     bp
seg005:078B                 retf
seg005:078B sub_C693        endp
seg005:078B
seg005:078C
