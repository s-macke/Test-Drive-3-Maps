seg005:15CF ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:15CF
seg005:15CF
seg005:15CF sub_D4EF        proc far                ; CODE XREF: sub_1DAA+34E␘P
seg005:15CF                 push    si
seg005:15D0                 push    di
seg005:15D1                 push    es
seg005:15D2                 push    ds
seg005:15D3                 push    bp
seg005:15D4                 sub     si, si
seg005:15D6                 mov     bx, word_1F17A
seg005:15DA                 shl     bx, 1
seg005:15DC                 mov     es, word ptr [bx-7028h]
seg005:15E0                 mov     bx, word_2D628
seg005:15E4                 cmp     bl, 0Dh
seg005:15E7                 jz      short loc_D545
seg005:15E9                 cmp     bl, 9
seg005:15EC                 jz      short loc_D519
seg005:15EE                 cmp     bl, 13h
seg005:15F1                 jz      short loc_D51C
seg005:15F3                 pop     bp
seg005:15F4                 pop     ds
seg005:15F5                 pop     es
seg005:15F6                 pop     di
seg005:15F7                 pop     si
seg005:15F8                 retf
seg005:15F9 ; ---------------------------------------------------------------------------
seg005:15F9
seg005:15F9 loc_D519:                               ; CODE XREF: sub_D4EF+1D␘j
seg005:15F9                 jmp     loc_D5D3
seg005:15FC ; ---------------------------------------------------------------------------
seg005:15FC
seg005:15FC loc_D51C:                               ; CODE XREF: sub_D4EF+22␘j
seg005:15FC                 mov     di, 13Eh
seg005:15FF                 mov     ax, es
seg005:1601                 mov     ds, ax
seg005:1603                 mov     bl, 0C8h ; '+'
seg005:1605
seg005:1605 loc_D525:                               ; CODE XREF: sub_D4EF+4E␙j
seg005:1605                 mov     cx, 50h ; 'P'
seg005:1608
seg005:1608 loc_D528:                               ; CODE XREF: sub_D4EF+42␙j
seg005:1608                 lodsw
seg005:1609                 xchg    al, ah
seg005:160B                 mov     es:[di], ax
seg005:160E                 sub     di, 2
seg005:1611                 loop    loc_D528
seg005:1613                 add     si, 0A0h ; 'á'
seg005:1617                 add     di, 1E0h
seg005:161B                 dec     bl
seg005:161D                 jnz     short loc_D525
seg005:161F                 pop     bp
seg005:1620                 pop     ds
seg005:1621                 pop     es
seg005:1622                 pop     di
seg005:1623                 pop     si
seg005:1624                 retf
seg005:1625 ; ---------------------------------------------------------------------------
seg005:1625
seg005:1625 loc_D545:                               ; CODE XREF: sub_D4EF+18␘j
seg005:1625                 mov     bl, 0C8h ; '+'
seg005:1627                 mov     di, 27h ; '''
seg005:162A                 mov     dx, 3CEh
seg005:162D                 mov     ax, 5
seg005:1630                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1630                                         ; mode register.Data bits:
seg005:1630                                         ; 0-1: Write mode 0-2
seg005:1630                                         ; 2: test condition
seg005:1630                                         ; 3: read mode: 1=color compare, 0=direct
seg005:1630                                         ; 4: 1=use odd/even RAM addressing
seg005:1630                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg005:1631                 mov     ax, 1
seg005:1634                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1634                                         ; enable set/reset
seg005:1635                 mov     ax, 0FF08h
seg005:1638                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1638                                         ; unknown register
seg005:1639                 mov     ax, 3
seg005:163C                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:163C                                         ; data rotate and function select for write mode 00. Bits:
seg005:163C                                         ; 0-2: set rotate count for write mode 00
seg005:163C                                         ; 3-4: fn for write modes 00 and 02
seg005:163C                                         ;      00=no change; 01=AND; 10=OR; 11=XOR
seg005:163D
seg005:163D loc_D55D:                               ; CODE XREF: sub_D4EF+DC␙j
seg005:163D                 mov     bh, 14h
seg005:163F
seg005:163F loc_D55F:                               ; CODE XREF: sub_D4EF+D2␙j
seg005:163F                 push    bx
seg005:1640                 mov     dx, 3CEh
seg005:1643                 mov     ax, 4
seg005:1646                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1646                                         ; read map select.
seg005:1646                                         ; Data bits 0-2 select map # for read mode 00.
seg005:1647                 mov     bl, es:[si]
seg005:164A                 mov     ax, 104h
seg005:164D                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:164D                                         ; unknown register
seg005:164E                 mov     bh, es:[si]
seg005:1651                 mov     ax, 204h
seg005:1654                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1654                                         ; unknown register
seg005:1655                 mov     cl, es:[si]
seg005:1658                 mov     ax, 304h
seg005:165B                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:165B                                         ; unknown register
seg005:165C                 mov     ch, es:[si]
seg005:165F                 mov     bp, 8
seg005:1662                 sub     dx, dx
seg005:1664                 sub     ax, ax
seg005:1666
seg005:1666 loc_D586:                               ; CODE XREF: sub_D4EF+A8␙j
seg005:1666                 shr     bl, 1
seg005:1668                 rcl     al, 1
seg005:166A                 shr     bh, 1
seg005:166C                 rcl     ah, 1
seg005:166E                 shr     cl, 1
seg005:1670                 rcl     dl, 1
seg005:1672                 shr     ch, 1
seg005:1674                 rcl     dh, 1
seg005:1676                 dec     bp
seg005:1677                 jnz     short loc_D586
seg005:1679                 mov     bx, ax
seg005:167B                 mov     cx, dx
seg005:167D                 mov     dx, 3C4h
seg005:1680                 mov     ax, 102h
seg005:1683                 out     dx, ax          ; EGA: sequencer address reg
seg005:1683                                         ; unknown register
seg005:1684                 mov     es:[di], bl
seg005:1687                 mov     ax, 202h
seg005:168A                 out     dx, ax          ; EGA: sequencer address reg
seg005:168A                                         ; unknown register
seg005:168B                 mov     es:[di], bh
seg005:168E                 mov     ax, 402h
seg005:1691                 out     dx, ax          ; EGA: sequencer address reg
seg005:1691                                         ; unknown register
seg005:1692                 mov     es:[di], cl
seg005:1695                 mov     ax, 802h
seg005:1698                 out     dx, ax          ; EGA: sequencer address reg
seg005:1698                                         ; unknown register
seg005:1699                 mov     es:[di], ch
seg005:169C                 inc     si
seg005:169D                 dec     di
seg005:169E                 pop     bx
seg005:169F                 dec     bh
seg005:16A1                 jnz     short loc_D55F
seg005:16A3                 add     si, 14h
seg005:16A6                 add     di, 3Ch ; '<'
seg005:16A9                 dec     bl
seg005:16AB                 jnz     short loc_D55D
seg005:16AD                 pop     bp
seg005:16AE                 pop     ds
seg005:16AF                 pop     es
seg005:16B0                 pop     di
seg005:16B1                 pop     si
seg005:16B2                 retf
seg005:16B3 ; ---------------------------------------------------------------------------
seg005:16B3
seg005:16B3 loc_D5D3:                               ; CODE XREF: sub_D4EF:loc_D519␘j
seg005:16B3                 mov     di, 9Eh ; 'P'
seg005:16B6                 mov     ax, es
seg005:16B8                 mov     ds, ax
seg005:16BA                 mov     cx, 404h
seg005:16BD
seg005:16BD loc_D5DD:                               ; CODE XREF: sub_D4EF+129␙j
seg005:16BD                 mov     dh, 32h ; '2'
seg005:16BF                 push    si
seg005:16C0                 push    di
seg005:16C1
seg005:16C1 loc_D5E1:                               ; CODE XREF: sub_D4EF+11B␙j
seg005:16C1                 mov     dl, 14h
seg005:16C3
seg005:16C3 loc_D5E3:                               ; CODE XREF: sub_D4EF+110␙j
seg005:16C3                 lodsw
seg005:16C4                 xchg    al, ah
seg005:16C6                 ror     al, cl
seg005:16C8                 ror     ah, cl
seg005:16CA                 mov     es:[di], ax
seg005:16CD                 sub     di, 2
seg005:16D0                 lodsw
seg005:16D1                 xchg    al, ah
seg005:16D3                 ror     al, cl
seg005:16D5                 ror     ah, cl
seg005:16D7                 mov     es:[di], ax
seg005:16DA                 sub     di, 2
seg005:16DD                 dec     dl
seg005:16DF                 jnz     short loc_D5E3
seg005:16E1                 add     si, 50h ; 'P'
seg005:16E4                 add     di, 0F0h ; '='
seg005:16E8                 dec     dh
seg005:16EA                 jnz     short loc_D5E1
seg005:16EC                 pop     di
seg005:16ED                 pop     si
seg005:16EE                 add     si, 2000h
seg005:16F2                 add     di, 2000h
seg005:16F6                 dec     ch
seg005:16F8                 jnz     short loc_D5DD
seg005:16FA                 pop     bp
seg005:16FB                 pop     ds
seg005:16FC                 pop     es
seg005:16FD                 pop     di
seg005:16FE                 pop     si
seg005:16FF                 retf
seg005:16FF sub_D4EF        endp
seg005:16FF
seg005:1700
