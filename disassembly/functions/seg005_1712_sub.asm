seg005:1712 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1712
seg005:1712
seg005:1712 sub_D632        proc near               ; CODE XREF: sub_D22B+5B␘p
seg005:1712                 mov     dx, 3CEh
seg005:1715                 mov     ax, 5
seg005:1718                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1718                                         ; mode register.Data bits:
seg005:1718                                         ; 0-1: Write mode 0-2
seg005:1718                                         ; 2: test condition
seg005:1718                                         ; 3: read mode: 1=color compare, 0=direct
seg005:1718                                         ; 4: 1=use odd/even RAM addressing
seg005:1718                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg005:1719                 mov     ax, 1
seg005:171C                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:171C                                         ; enable set/reset
seg005:171D                 mov     ax, 0FF08h
seg005:1720                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1720                                         ; unknown register
seg005:1721                 mov     ax, 3
seg005:1724                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1724                                         ; data rotate and function select for write mode 00. Bits:
seg005:1724                                         ; 0-2: set rotate count for write mode 00
seg005:1724                                         ; 3-4: fn for write modes 00 and 02
seg005:1724                                         ;      00=no change; 01=AND; 10=OR; 11=XOR
seg005:1725                 mov     dx, (offset loc_3C3+1)
seg005:1728                 mov     ds, word_280BC
seg005:172C
seg005:172C loc_D64C:                               ; CODE XREF: sub_D632+41␙j
seg005:172C                 push    di
seg005:172D                 push    cx
seg005:172E
seg005:172E loc_D64E:                               ; CODE XREF: sub_D632+39␙j
seg005:172E                 mov     ax, 102h
seg005:1731                 out     dx, ax          ; EGA: sequencer address reg
seg005:1731                                         ; unknown register
seg005:1732                 lodsb
seg005:1733                 mov     es:[di], al
seg005:1736                 mov     ax, 202h
seg005:1739                 out     dx, ax          ; EGA: sequencer address reg
seg005:1739                                         ; unknown register
seg005:173A                 lodsb
seg005:173B                 mov     es:[di], al
seg005:173E                 mov     ax, 402h
seg005:1741                 out     dx, ax          ; EGA: sequencer address reg
seg005:1741                                         ; unknown register
seg005:1742                 lodsb
seg005:1743                 mov     es:[di], al
seg005:1746                 mov     ax, 802h
seg005:1749                 out     dx, ax          ; EGA: sequencer address reg
seg005:1749                                         ; unknown register
seg005:174A                 movsb
seg005:174B                 loop    loc_D64E
seg005:174D                 pop     cx
seg005:174E                 pop     di
seg005:174F                 add     di, 28h ; '('
seg005:1752                 dec     bx
seg005:1753                 jnz     short loc_D64C
seg005:1755                 mov     ax, 0F02h
seg005:1758                 out     dx, ax          ; EGA: sequencer address reg
seg005:1758                                         ; unknown register
seg005:1759                 mov     dx, 3CEh
seg005:175C                 mov     ax, 0FF01h
seg005:175F                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:175F                                         ; unknown register
seg005:1760                 retn
seg005:1760 sub_D632        endp
seg005:1760
seg005:1761
