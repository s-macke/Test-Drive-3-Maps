seg031:1BFA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1BFA
seg031:1BFA ; Attributes: bp-based frame
seg031:1BFA
seg031:1BFA sub_1AA5A       proc far                ; CODE XREF: sub_19C4C+16␘P
seg031:1BFA
seg031:1BFA arg_0           = word ptr  6
seg031:1BFA
seg031:1BFA                 push    bp
seg031:1BFB                 mov     bp, sp
seg031:1BFD                 mov     bx, [bp+arg_0]
seg031:1C00                 or      bx, bx
seg031:1C02                 jz      short loc_1AA68
seg031:1C04                 or      byte ptr [bx-2], 1
seg031:1C08
seg031:1C08 loc_1AA68:                              ; CODE XREF: sub_1AA5A+8␘j
seg031:1C08                 mov     sp, bp
seg031:1C0A                 pop     bp
seg031:1C0B                 retf
seg031:1C0B sub_1AA5A       endp
seg031:1C0B
seg031:1C0C
