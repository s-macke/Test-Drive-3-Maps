seg000:15BC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:15BC
seg000:15BC ; Attributes: bp-based frame
seg000:15BC
seg000:15BC sub_15BC        proc far                ; CODE XREF: sub_164C+E␙p
seg000:15BC
seg000:15BC var_6           = word ptr -6
seg000:15BC var_4           = word ptr -4
seg000:15BC var_2           = word ptr -2
seg000:15BC arg_0           = word ptr  6
seg000:15BC arg_2           = word ptr  8
seg000:15BC
seg000:15BC                 push    bp
seg000:15BD                 mov     bp, sp
seg000:15BF                 sub     sp, 6
seg000:15C2                 push    si
seg000:15C3                 mov     [bp+var_4], 0
seg000:15C8                 push    [bp+arg_0]
seg000:15CB                 call    sub_19648
seg000:15D0                 add     sp, 2
seg000:15D3                 dec     ax
seg000:15D4                 mov     [bp+var_6], ax
seg000:15D7                 mov     [bp+var_2], ax
seg000:15DA                 jmp     short loc_15F5
seg000:15DC ; ---------------------------------------------------------------------------
seg000:15DC
seg000:15DC loc_15DC:                               ; CODE XREF: sub_15BC+3D␙j
seg000:15DC                 mov     ax, [bp+arg_2]
seg000:15DF                 mul     [bp+var_4]
seg000:15E2                 mov     bx, [bp+var_2]
seg000:15E5                 mov     si, [bp+arg_0]
seg000:15E8                 mov     cx, ax
seg000:15EA                 mov     al, [bx+si]
seg000:15EC                 cbw
seg000:15ED                 add     ax, cx
seg000:15EF                 mov     [bp+var_4], ax
seg000:15F2                 dec     [bp+var_2]
seg000:15F5
seg000:15F5 loc_15F5:                               ; CODE XREF: sub_15BC+1E␘j
seg000:15F5                 cmp     [bp+var_2], 0FFFFh
seg000:15F9                 jg      short loc_15DC
seg000:15FB                 mov     ax, [bp+var_4]
seg000:15FE                 sub     dx, dx
seg000:1600                 pop     si
seg000:1601                 mov     sp, bp
seg000:1603                 pop     bp
seg000:1604                 retf
seg000:1604 sub_15BC        endp
seg000:1604
seg000:1604 ; ---------------------------------------------------------------------------
seg000:1605                 align 2
seg000:1606
