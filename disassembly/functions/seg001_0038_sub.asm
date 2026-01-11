seg001:0038 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:0038
seg001:0038 ; Attributes: bp-based frame
seg001:0038
seg001:0038 sub_1D78        proc far                ; CODE XREF: sub_0+6AC␘P
seg001:0038
seg001:0038 var_2           = word ptr -2
seg001:0038
seg001:0038                 push    bp
seg001:0039                 mov     bp, sp
seg001:003B                 sub     sp, 2
seg001:003E                 push    si
seg001:003F                 mov     [bp+var_2], 0
seg001:0044
seg001:0044 loc_1D84:                               ; CODE XREF: sub_1D78+2B␙j
seg001:0044                 mov     bx, [bp+var_2]
seg001:0047                 mov     al, [bx+9C6h]
seg001:004B                 mov     cx, ax
seg001:004D                 mov     al, 1Bh
seg001:004F                 mul     byte_1FAA4
seg001:0053                 mov     bx, ax
seg001:0055                 mov     si, [bp+var_2]
seg001:0058                 mov     [bx+si-1617h], cl
seg001:005C                 inc     [bp+var_2]
seg001:005F                 cmp     [bp+var_2], 19h
seg001:0063                 jl      short loc_1D84
seg001:0065                 pop     si
seg001:0066                 mov     sp, bp
seg001:0068                 pop     bp
seg001:0069                 retf
seg001:0069 sub_1D78        endp
seg001:0069
seg001:006A
