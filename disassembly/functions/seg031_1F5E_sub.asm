seg031:1F5E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1F5E
seg031:1F5E ; Attributes: bp-based frame
seg031:1F5E
seg031:1F5E sub_1ADBE       proc near               ; CODE XREF: sub_190A2+AD␘P
seg031:1F5E
seg031:1F5E arg_2           = word ptr  6
seg031:1F5E
seg031:1F5E                 push    bp
seg031:1F5F                 mov     bp, sp
seg031:1F61                 mov     dx, [bp+arg_2]
seg031:1F64                 mov     ah, 41h
seg031:1F66                 int     21h             ; DOS - 2+ - DELETE A FILE (UNLINK)
seg031:1F66                                         ; DS:DX -> ASCIZ pathname of file to delete (no wildcards allowed)
seg031:1F68                 jmp     loc_1ADF0
seg031:1F68 sub_1ADBE       endp
seg031:1F68
seg031:1F68 ; ---------------------------------------------------------------------------
seg031:1F6B                 align 2
seg031:1F6C
