seg000:0C7C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0C7C
seg000:0C7C ; Attributes: bp-based frame
seg000:0C7C
seg000:0C7C sub_C7C         proc far                ; CODE XREF: sub_8DC+211␘p
seg000:0C7C
seg000:0C7C arg_0           = word ptr  6
seg000:0C7C
seg000:0C7C                 push    bp
seg000:0C7D                 mov     bp, sp
seg000:0C7F                 mov     ax, 2Ch ; ','
seg000:0C82                 push    ax
seg000:0C83                 mov     ax, 15h
seg000:0C86                 push    ax
seg000:0C87                 call    sub_1B1FC
seg000:0C8C                 add     sp, 4
seg000:0C8F                 cmp     [bp+arg_0], 0
seg000:0C93                 jnz     short loc_C9A
seg000:0C95                 mov     ax, 440h
seg000:0C98                 jmp     short loc_C9D
seg000:0C9A ; ---------------------------------------------------------------------------
seg000:0C9A
seg000:0C9A loc_C9A:                                ; CODE XREF: sub_C7C+17␘j
seg000:0C9A                 mov     ax, 442h
seg000:0C9D
seg000:0C9D loc_C9D:                                ; CODE XREF: sub_C7C+1C␘j
seg000:0C9D                 push    ax
seg000:0C9E                 call    sub_194CE
seg000:0CA3                 add     sp, 2
seg000:0CA6                 pop     bp
seg000:0CA7                 retf
seg000:0CA7 sub_C7C         endp
seg000:0CA7
seg000:0CA8
