seg000:0C58 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0C58
seg000:0C58 ; Attributes: bp-based frame
seg000:0C58
seg000:0C58 sub_C58         proc far                ; CODE XREF: sub_8DC+1BD␘p
seg000:0C58
seg000:0C58 arg_0           = word ptr  6
seg000:0C58
seg000:0C58                 push    bp
seg000:0C59                 mov     bp, sp
seg000:0C5B                 mov     ax, 20h ; ' '
seg000:0C5E                 push    ax
seg000:0C5F                 mov     ax, 11h
seg000:0C62                 push    ax
seg000:0C63                 call    sub_1B1FC
seg000:0C68                 add     sp, 4
seg000:0C6B                 push    [bp+arg_0]
seg000:0C6E                 mov     ax, 43Ch
seg000:0C71                 push    ax
seg000:0C72                 call    sub_194CE
seg000:0C77                 add     sp, 4
seg000:0C7A                 pop     bp
seg000:0C7B                 retf
seg000:0C7B sub_C58         endp
seg000:0C7B
seg000:0C7C
