seg000:0C34 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0C34
seg000:0C34 ; Attributes: bp-based frame
seg000:0C34
seg000:0C34 sub_C34         proc far                ; CODE XREF: sub_8DC+111␘p
seg000:0C34
seg000:0C34 arg_0           = word ptr  6
seg000:0C34
seg000:0C34                 push    bp
seg000:0C35                 mov     bp, sp
seg000:0C37                 mov     ax, 20h ; ' '
seg000:0C3A                 push    ax
seg000:0C3B                 mov     ax, 8
seg000:0C3E                 push    ax
seg000:0C3F                 call    sub_1B1FC
seg000:0C44                 add     sp, 4
seg000:0C47                 push    [bp+arg_0]
seg000:0C4A                 mov     ax, 438h
seg000:0C4D                 push    ax
seg000:0C4E                 call    sub_194CE
seg000:0C53                 add     sp, 4
seg000:0C56                 pop     bp
seg000:0C57                 retf
seg000:0C57 sub_C34         endp
seg000:0C57
seg000:0C58
