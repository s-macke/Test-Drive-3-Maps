seg031:030A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:030A
seg031:030A ; Attributes: bp-based frame
seg031:030A
seg031:030A sub_1916A       proc far                ; CODE XREF: sub_8DC+35␘P
seg031:030A                                         ; sub_8DC+25D␘P ...
seg031:030A
seg031:030A arg_0           = word ptr  6
seg031:030A arg_2           = word ptr  8
seg031:030A
seg031:030A                 push    bp
seg031:030B                 mov     bp, sp
seg031:030D                 sub     sp, 2
seg031:0310                 push    si
seg031:0311                 call    sub_1A7F8
seg031:0316                 mov     si, ax
seg031:0318                 or      si, si
seg031:031A                 jz      short loc_1918E
seg031:031C                 push    si
seg031:031D                 push    [bp+arg_2]
seg031:0320                 push    [bp+arg_0]
seg031:0323                 call    sub_19C7C
seg031:0328                 add     sp, 6
seg031:032B                 jmp     short loc_19190
seg031:032B ; ---------------------------------------------------------------------------
seg031:032D                 align 2
seg031:032E
seg031:032E loc_1918E:                              ; CODE XREF: sub_1916A+10␘j
seg031:032E                 sub     ax, ax
seg031:0330
seg031:0330 loc_19190:                              ; CODE XREF: sub_1916A+21␘j
seg031:0330                 pop     si
seg031:0331                 mov     sp, bp
seg031:0333                 pop     bp
seg031:0334                 retf
seg031:0334 sub_1916A       endp
seg031:0334
seg031:0334 ; ---------------------------------------------------------------------------
seg031:0335                 align 2
seg031:0336
