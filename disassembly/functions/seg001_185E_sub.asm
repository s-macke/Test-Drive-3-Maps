seg001:185E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:185E
seg001:185E ; Attributes: bp-based frame
seg001:185E
seg001:185E sub_359E        proc far                ; CODE XREF: sub_1688+E3␘P
seg001:185E                                         ; sub_1688+10B␘P ...
seg001:185E
seg001:185E arg_0           = word ptr  6
seg001:185E arg_2           = word ptr  8
seg001:185E arg_4           = word ptr  0Ah
seg001:185E arg_6           = word ptr  0Ch
seg001:185E
seg001:185E                 push    bp
seg001:185F                 mov     bp, sp
seg001:1861                 push    [bp+arg_4]
seg001:1864                 push    [bp+arg_0]
seg001:1867                 call    sub_16A1A
seg001:186C                 add     sp, 4
seg001:186F                 push    [bp+arg_4]
seg001:1872                 push    [bp+arg_2]
seg001:1875                 call    sub_1693E
seg001:187A                 add     sp, 4
seg001:187D                 push    [bp+arg_6]
seg001:1880                 push    [bp+arg_2]
seg001:1883                 call    sub_1693E
seg001:1888                 add     sp, 4
seg001:188B                 push    [bp+arg_6]
seg001:188E                 push    [bp+arg_0]
seg001:1891                 call    sub_1693E
seg001:1896                 add     sp, 4
seg001:1899                 push    [bp+arg_4]
seg001:189C                 push    [bp+arg_0]
seg001:189F                 call    sub_1693E
seg001:18A4                 add     sp, 4
seg001:18A7                 pop     bp
seg001:18A8                 retf
seg001:18A8 sub_359E        endp
seg001:18A8
seg001:18A8 ; ---------------------------------------------------------------------------
seg001:18A9                 align 2
seg001:18AA
