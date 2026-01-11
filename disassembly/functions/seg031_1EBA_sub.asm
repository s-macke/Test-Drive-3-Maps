seg031:1EBA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1EBA
seg031:1EBA ; Attributes: bp-based frame
seg031:1EBA
seg031:1EBA sub_1AD1A       proc far                ; CODE XREF: sub_190A2+A1␘P
seg031:1EBA
seg031:1EBA arg_2           = word ptr  6
seg031:1EBA arg_4           = word ptr  8
seg031:1EBA arg_6           = word ptr  0Ah
seg031:1EBA
seg031:1EBA ; FUNCTION CHUNK AT seg031:22BE SIZE 00000053 BYTES
seg031:1EBA
seg031:1EBA                 push    bp
seg031:1EBB                 mov     bp, sp
seg031:1EBD                 push    si
seg031:1EBE                 push    di
seg031:1EBF                 mov     bl, 1
seg031:1EC1                 mov     cx, [bp+arg_6]
seg031:1EC4                 mov     ax, [bp+arg_2]
seg031:1EC7                 xor     dx, dx
seg031:1EC9                 cmp     cx, 0Ah
seg031:1ECC                 jnz     short loc_1AD2F
seg031:1ECE                 cwd
seg031:1ECF
seg031:1ECF loc_1AD2F:                              ; CODE XREF: sub_1AD1A+12␘j
seg031:1ECF                 mov     di, [bp+arg_4]
seg031:1ED2                 jmp     loc_1B11E
seg031:1ED2 sub_1AD1A       endp
seg031:1ED2
seg031:1ED2 ; ---------------------------------------------------------------------------
seg031:1ED5                 align 2
seg031:1ED6
