seg000:164C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:164C
seg000:164C ; Attributes: bp-based frame
seg000:164C
seg000:164C sub_164C        proc far                ; CODE XREF: sub_141E+F␘p
seg000:164C
seg000:164C var_C           = word ptr -0Ch
seg000:164C var_A           = word ptr -0Ah
seg000:164C var_8           = word ptr -8
seg000:164C var_6           = word ptr -6
seg000:164C var_4           = word ptr -4
seg000:164C var_2           = word ptr -2
seg000:164C arg_0           = word ptr  6
seg000:164C
seg000:164C                 push    bp
seg000:164D                 mov     bp, sp
seg000:164F                 sub     sp, 0Ch
seg000:1652                 mov     ax, 101h
seg000:1655                 push    ax
seg000:1656                 push    [bp+arg_0]
seg000:1659                 push    cs
seg000:165A                 call    near ptr sub_15BC
seg000:165D                 add     sp, 4
seg000:1660                 mov     [bp+var_4], ax
seg000:1663                 mov     [bp+var_2], dx
seg000:1666                 mov     ax, 10Fh
seg000:1669                 push    ax
seg000:166A                 push    [bp+arg_0]
seg000:166D                 push    cs
seg000:166E                 call    near ptr sub_1606
seg000:1671                 mov     [bp+var_8], ax
seg000:1674                 mov     [bp+var_6], dx
seg000:1677                 mov     dx, [bp+var_4]
seg000:167A                 or      dx, [bp+var_6]
seg000:167D                 mov     [bp+var_C], ax
seg000:1680                 mov     [bp+var_A], dx
seg000:1683                 mov     sp, bp
seg000:1685                 pop     bp
seg000:1686                 retf
seg000:1686 sub_164C        endp
seg000:1686
seg000:1686 ; ---------------------------------------------------------------------------
seg000:1687                 align 2
seg000:1688
