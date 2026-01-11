seg005:08A8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:08A8
seg005:08A8 ; Attributes: bp-based frame
seg005:08A8
seg005:08A8 sub_C7C8        proc far                ; CODE XREF: sub_CA8+69␘P
seg005:08A8                                         ; sub_D3C+69␘P ...
seg005:08A8
seg005:08A8 arg_0           = word ptr  6
seg005:08A8 arg_2           = word ptr  8
seg005:08A8 arg_4           = word ptr  0Ah
seg005:08A8 arg_6           = word ptr  0Ch
seg005:08A8
seg005:08A8                 push    bp
seg005:08A9                 mov     bp, sp
seg005:08AB                 push    ds
seg005:08AC                 mov     bx, [bp+arg_6]
seg005:08AF                 mov     cx, [bp+arg_4]
seg005:08B2                 mov     dx, [bp+arg_0]
seg005:08B5                 mov     ax, [bp+arg_2]
seg005:08B8                 mov     ds, ax
seg005:08BA                 mov     ah, 3Fh
seg005:08BC                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg005:08BC                                         ; BX = file handle, CX = number of bytes to read
seg005:08BC                                         ; DS:DX -> buffer
seg005:08BE                 pop     ds
seg005:08BF                 pop     bp
seg005:08C0                 retf
seg005:08C0 sub_C7C8        endp
seg005:08C0
seg005:08C1
