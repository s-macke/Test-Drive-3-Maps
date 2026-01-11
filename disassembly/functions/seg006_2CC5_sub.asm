seg006:2CC5 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2CC5
seg006:2CC5
seg006:2CC5 sub_10B15       proc near               ; CODE XREF: sub_10F0A:loc_10F9B␙p
seg006:2CC5                 push    bx
seg006:2CC6                 test    byte_2A9BF, 80h
seg006:2CCB                 jz      short loc_10B1F
seg006:2CCD                 shl     dx, 1
seg006:2CCF
seg006:2CCF loc_10B1F:                              ; CODE XREF: sub_10B15+6␘j
seg006:2CCF                 mov     bx, [bx-7592h]
seg006:2CD3                 mov     bl, [bx-6681h]
seg006:2CD7                 and     bl, 3Fh
seg006:2CDA                 mov     byte_2A9C2, bl
seg006:2CDE                 sub     bh, bh
seg006:2CE0                 mov     cl, [bx-6B13h]
seg006:2CE4                 sub     ch, ch
seg006:2CE6                 and     cl, 0F8h
seg006:2CE9                 shl     cx, 1
seg006:2CEB                 shl     cx, 1
seg006:2CED                 shl     cx, 1
seg006:2CEF                 mov     ax, 1FFh
seg006:2CF2                 mov     byte_28469, 0
seg006:2CF7                 cmp     cx, dx
seg006:2CF9                 jz      short loc_10B65
seg006:2CFB                 jb      short loc_10B54
seg006:2CFD                 xchg    cx, dx
seg006:2CFF                 mov     byte_28469, 4
seg006:2D04
seg006:2D04 loc_10B54:                              ; CODE XREF: sub_10B15+36␘j
seg006:2D04                 xchg    cx, dx
seg006:2D06                 sub     ax, ax
seg006:2D08                 or      cx, cx
seg006:2D0A                 jz      short loc_10B7C
seg006:2D0C                 div     cx
seg006:2D0E                 rol     ax, 1
seg006:2D10                 xchg    al, ah
seg006:2D12                 and     ah, 1
seg006:2D15
seg006:2D15 loc_10B65:                              ; CODE XREF: sub_10B15+34␘j
seg006:2D15                 mov     bx, ax
seg006:2D17                 shl     bx, 1
seg006:2D19                 add     bx, 1172h
seg006:2D1D                 mov     ax, cs:[bx]
seg006:2D20                 cmp     byte_28469, 0
seg006:2D25                 jz      short loc_10B7C
seg006:2D27                 neg     ax
seg006:2D29                 add     ah, 40h ; '@'
seg006:2D2C
seg006:2D2C loc_10B7C:                              ; CODE XREF: sub_10B15+45␘j
seg006:2D2C                                         ; sub_10B15+60␘j
seg006:2D2C                 mov     byte_2A9C0, ah
seg006:2D30                 pop     bx
seg006:2D31                 retn
seg006:2D31 sub_10B15       endp
seg006:2D31
seg006:2D32
