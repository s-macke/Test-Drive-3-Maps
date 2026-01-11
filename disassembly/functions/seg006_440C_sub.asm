seg006:440C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:440C
seg006:440C
seg006:440C sub_1225C       proc near               ; CODE XREF: sub_111BD+64␘p
seg006:440C                 push    bx
seg006:440D                 push    cx
seg006:440E                 mov     ax, 4
seg006:4411                 call    sub_D045
seg006:4416                 mov     byte_28468, 5
seg006:441B                 mov     byte_2AA91, 3
seg006:4420                 add     bp, 2
seg006:4423                 mov     dx, es:[bp+0]
seg006:4427                 cmp     dh, 6
seg006:442A                 jz      short loc_1227F
seg006:442C                 sub     bp, 0Ah
seg006:442F
seg006:442F loc_1227F:                              ; CODE XREF: sub_1225C+1E␘j
seg006:442F                 sub     bp, 8
seg006:4432                 mov     bx, es:[bp+0]
seg006:4436                 and     word ptr es:[bp+0], 0E7FFh
seg006:443C                 and     bx, 7FFh
seg006:4440                 shl     bx, 1
seg006:4442                 mov     ax, [bx+240Eh]
seg006:4446                 add     ax, 6
seg006:4449                 add     bp, 6
seg006:444C                 mov     bx, es:[bp+0]
seg006:4450                 and     bx, 7FFh
seg006:4454                 or      bh, 18h
seg006:4457                 mov     es:[bp+0], bx
seg006:445B                 add     bp, 4
seg006:445E                 and     word ptr es:[bp+0], 0E7FFh
seg006:4464                 mov     bx, es:[bp+0]
seg006:4468                 and     bx, 7FFh
seg006:446C                 shl     bx, 1
seg006:446E                 mov     dx, [bx+240Eh]
seg006:4472                 sub     dx, ax
seg006:4474                 mov     [bx+240Eh], ax
seg006:4478                 add     [bx+3D0Eh], dx
seg006:447C                 add     bp, 2
seg006:447F                 mov     bx, es:[bp+0]
seg006:4483                 and     bx, 7FFh
seg006:4487                 shl     bx, 1
seg006:4489                 mov     dx, [bx+240Eh]
seg006:448D                 inc     ax
seg006:448E                 mov     [bx+240Eh], ax
seg006:4492                 sub     dx, ax
seg006:4494                 add     [bx+3D0Eh], dx
seg006:4498                 add     bp, 4
seg006:449B                 mov     bx, es:[bp+0]
seg006:449F                 and     bx, 7FFh
seg006:44A3                 or      bh, 18h
seg006:44A6                 mov     es:[bp+0], bx
seg006:44AA                 pop     cx
seg006:44AB                 pop     bx
seg006:44AC                 retn
seg006:44AC sub_1225C       endp
seg006:44AC
seg006:44AD
