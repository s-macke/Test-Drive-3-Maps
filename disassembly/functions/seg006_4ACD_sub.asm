seg006:4ACD ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4ACD
seg006:4ACD
seg006:4ACD sub_1291D       proc near               ; CODE XREF: seg006:loc_E35E␘p
seg006:4ACD                                         ; sub_154A1+B7␙p
seg006:4ACD                 cmp     byte_28477, 0
seg006:4AD2                 jz      short loc_12925
seg006:4AD4                 retn
seg006:4AD5 ; ---------------------------------------------------------------------------
seg006:4AD5
seg006:4AD5 loc_12925:                              ; CODE XREF: sub_1291D+5␘j
seg006:4AD5                 mov     byte_2849E, 1
seg006:4ADA                 mov     bx, seg seg004
seg006:4ADD                 mov     dx, es
seg006:4ADF                 mov     es, bx
seg006:4AE1                 assume es:seg004
seg006:4AE1                 mov     bx, 207h
seg006:4AE4                 add     bx, word_207B4
seg006:4AE8                 mov     word ptr es:[bx], 0FFFFh
seg006:4AED                 mov     es, dx
seg006:4AEF                 assume es:dseg
seg006:4AEF                 mov     bx, word_207B4
seg006:4AF3                 add     bx, 2
seg006:4AF6                 and     bx, 7FFh
seg006:4AFA                 mov     word_207B4, bx
seg006:4AFE                 mov     byte_28477, 1
seg006:4B03                 mov     word_28491, 0FFF0h
seg006:4B09                 mov     byte_28499, 0
seg006:4B0E                 mov     byte_2AA3F, 1
seg006:4B13                 mov     ax, word_284AB
seg006:4B16                 add     ax, 26h ; '&'
seg006:4B19                 mov     word_28495, ax
seg006:4B1C                 mov     ax, word_2032A
seg006:4B1F                 mov     byte_28498, 30h ; '0'
seg006:4B24                 add     ah, 10h
seg006:4B27                 mov     byte_28497, ah
seg006:4B2B                 retn
seg006:4B2B sub_1291D       endp
seg006:4B2B
seg006:4B2C
