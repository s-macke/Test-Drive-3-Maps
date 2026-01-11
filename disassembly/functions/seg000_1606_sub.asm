seg000:1606 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:1606
seg000:1606 ; Attributes: bp-based frame
seg000:1606
seg000:1606 sub_1606        proc far                ; CODE XREF: sub_164C+22␙p
seg000:1606
seg000:1606 var_6           = word ptr -6
seg000:1606 var_4           = word ptr -4
seg000:1606 var_2           = word ptr -2
seg000:1606 arg_0           = word ptr  6
seg000:1606
seg000:1606                 push    bp
seg000:1607                 mov     bp, sp
seg000:1609                 sub     sp, 6
seg000:160C                 push    si
seg000:160D                 mov     [bp+var_4], 0
seg000:1612                 push    [bp+arg_0]
seg000:1615                 call    sub_19648
seg000:161A                 add     sp, 2
seg000:161D                 dec     ax
seg000:161E                 mov     [bp+var_6], ax
seg000:1621                 mov     [bp+var_2], 0
seg000:1626                 jmp     short loc_1639
seg000:1628 ; ---------------------------------------------------------------------------
seg000:1628
seg000:1628 loc_1628:                               ; CODE XREF: sub_1606+39␙j
seg000:1628                 mov     bx, [bp+var_2]
seg000:162B                 mov     si, [bp+arg_0]
seg000:162E                 mov     al, [bx+si]
seg000:1630                 cbw
seg000:1631                 imul    bx
seg000:1633                 add     [bp+var_4], ax
seg000:1636                 inc     [bp+var_2]
seg000:1639
seg000:1639 loc_1639:                               ; CODE XREF: sub_1606+20␘j
seg000:1639                 mov     ax, [bp+var_6]
seg000:163C                 cmp     [bp+var_2], ax
seg000:163F                 jl      short loc_1628
seg000:1641                 mov     ax, [bp+var_4]
seg000:1644                 sub     dx, dx
seg000:1646                 pop     si
seg000:1647                 mov     sp, bp
seg000:1649                 pop     bp
seg000:164A                 retf
seg000:164A sub_1606        endp
seg000:164A
seg000:164A ; ---------------------------------------------------------------------------
seg000:164B                 align 2
seg000:164C
