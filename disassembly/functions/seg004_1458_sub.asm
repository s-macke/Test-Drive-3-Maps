seg004:1458 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:1458
seg004:1458
seg004:1458 sub_BD08        proc near               ; CODE XREF: seg004:1402␘p
seg004:1458                                         ; seg004:1422␘p
seg004:1458                 mov     di, bx
seg004:145A                 mov     word ptr [di-6681h], 8
seg004:1460                 add     bx, 2
seg004:1463                 mov     si, bx
seg004:1465                 mov     word ptr [si-6681h], 7
seg004:146B                 add     bx, 2
seg004:146E                 mov     word ptr [bx-6681h], 6
seg004:1474                 add     ax, 8
seg004:1477                 mov     [bx-6401h], ax
seg004:147B                 sub     ax, 6
seg004:147E                 mov     [si-6401h], ax
seg004:1482                 sub     ax, 4
seg004:1485                 mov     [di-6401h], ax
seg004:1489                 mov     [bx-6181h], dx
seg004:148D                 add     dx, 3
seg004:1490                 mov     [si-6181h], dx
seg004:1494                 sub     dx, 7
seg004:1497                 mov     [di-6181h], dx
seg004:149B                 add     cx, 4
seg004:149E                 mov     [bx-5F01h], cx
seg004:14A2                 sub     cx, 8
seg004:14A5                 mov     [si-5F01h], cx
seg004:14A9                 add     cx, 14h
seg004:14AC                 mov     [di-5F01h], cx
seg004:14B0                 retn
seg004:14B0 sub_BD08        endp
seg004:14B0
seg004:14B1
