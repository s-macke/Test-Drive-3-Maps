seg006:6502 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6502
seg006:6502 ; Attributes: bp-based frame
seg006:6502
seg006:6502 sub_14352       proc far                ; CODE XREF: sub_94F4+798␘P
seg006:6502                                         ; sub_BD61+70␘P
seg006:6502
seg006:6502 arg_0           = word ptr  6
seg006:6502
seg006:6502                 push    bp
seg006:6503                 mov     bp, sp
seg006:6505                 mov     ax, [bp+arg_0]
seg006:6508                 mov     ah, al
seg006:650A                 or      al, al
seg006:650C                 jns     short loc_14360
seg006:650E                 neg     al
seg006:6510
seg006:6510 loc_14360:                              ; CODE XREF: sub_14352+A␘j
seg006:6510                 mov     bl, al
seg006:6512                 and     bx, 7Fh
seg006:6515                 shr     bx, 1
seg006:6517                 shr     bx, 1
seg006:6519                 mov     dl, [bx-4415h]
seg006:651D                 or      ah, ah
seg006:651F                 js      short loc_14373
seg006:6521                 neg     dl
seg006:6523
seg006:6523 loc_14373:                              ; CODE XREF: sub_14352+1D␘j
seg006:6523                 mov     al, dl
seg006:6525                 sub     ah, ah
seg006:6527                 pop     bp
seg006:6528                 retf
seg006:6528 sub_14352       endp
seg006:6528
seg006:6529
