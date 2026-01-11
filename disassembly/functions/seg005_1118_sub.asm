seg005:1118 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1118
seg005:1118 ; Attributes: bp-based frame
seg005:1118
seg005:1118 sub_D038        proc far                ; CODE XREF: sub_EC6+166␘P
seg005:1118                                         ; sub_1688+2A␘P ...
seg005:1118
seg005:1118 arg_0           = word ptr  6
seg005:1118
seg005:1118                 push    bp
seg005:1119                 mov     bp, sp
seg005:111B                 mov     ax, [bp+arg_0]
seg005:111E                 call    sub_D045
seg005:1123                 pop     bp
seg005:1124                 retf
seg005:1124 sub_D038        endp
seg005:1124
seg005:1125
