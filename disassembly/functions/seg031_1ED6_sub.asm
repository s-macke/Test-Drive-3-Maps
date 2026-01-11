seg031:1ED6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1ED6
seg031:1ED6 ; Attributes: bp-based frame
seg031:1ED6
seg031:1ED6 sub_1AD36       proc far                ; CODE XREF: sub_19696+1E␘P
seg031:1ED6
seg031:1ED6 arg_0           = byte ptr  6
seg031:1ED6 arg_2           = word ptr  8
seg031:1ED6 arg_4           = byte ptr  0Ah
seg031:1ED6
seg031:1ED6                 push    bp
seg031:1ED7                 mov     bp, sp
seg031:1ED9                 mov     ah, [bp+arg_0]
seg031:1EDC                 mov     dx, [bp+arg_2]
seg031:1EDF                 mov     al, [bp+arg_4]
seg031:1EE2                 int     21h             ; DOS -
seg031:1EE4                 mov     sp, bp
seg031:1EE6                 pop     bp
seg031:1EE7                 retf
seg031:1EE7 sub_1AD36       endp
seg031:1EE7
seg031:1EE8
