seg006:4626 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4626
seg006:4626
seg006:4626 sub_12476       proc near               ; CODE XREF: sub_123A8+57␘p
seg006:4626                                         ; sub_123A8+63␘p
seg006:4626                 shl     si, 1
seg006:4628                 shl     si, 1
seg006:462A                 add     si, 2
seg006:462D
seg006:462D loc_1247D:                              ; CODE XREF: sub_12476+24␙j
seg006:462D                 push    di
seg006:462E                 add     di, [si-45E2h]
seg006:4632                 and     di, 7FFFh
seg006:4636                 cmp     di, bx
seg006:4638                 jnb     short loc_1248B
seg006:463A                 stosb
seg006:463B
seg006:463B loc_1248B:                              ; CODE XREF: sub_12476+12␘j
seg006:463B                 xor     di, 4000h
seg006:463F                 cmp     di, 7800h
seg006:4643                 jnb     short loc_12496
seg006:4645                 stosb
seg006:4646
seg006:4646 loc_12496:                              ; CODE XREF: sub_12476+1D␘j
seg006:4646                 pop     di
seg006:4647                 sub     si, 2
seg006:464A                 jns     short loc_1247D
seg006:464C                 retn
seg006:464C sub_12476       endp
seg006:464C
seg006:464D
