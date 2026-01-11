seg004:153C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:153C
seg004:153C
seg004:153C sub_BDEC        proc near               ; CODE XREF: seg004:1287␘p
seg004:153C                 mov     si, word_29461
seg004:1540                 shl     si, 1
seg004:1542                 jmp     short loc_BE04
seg004:1542 ; ---------------------------------------------------------------------------
seg004:1544                 db 90h
seg004:1545 ; ---------------------------------------------------------------------------
seg004:1545
seg004:1545 loc_BDF5:                               ; CODE XREF: sub_BDEC+1B␙j
seg004:1545                 test    word ptr [si-5C7Bh], 2000h
seg004:154B                 jz      short loc_BE04
seg004:154D                 cmp     word ptr [si-4D7Bh], 0
seg004:1552                 jnz     short loc_BE0A
seg004:1554
seg004:1554 loc_BE04:                               ; CODE XREF: sub_BDEC+6␘j
seg004:1554                                         ; sub_BDEC+F␘j ...
seg004:1554                 sub     si, 2
seg004:1557                 jnz     short loc_BDF5
seg004:1559                 retn
seg004:155A ; ---------------------------------------------------------------------------
seg004:155A
seg004:155A loc_BE0A:                               ; CODE XREF: sub_BDEC+16␘j
seg004:155A                 mov     cx, si
seg004:155C                 shr     cx, 1
seg004:155E                 mov     ax, [si-563Bh]
seg004:1562                 mov     al, cl
seg004:1564                 cmp     ax, bp
seg004:1566                 jnz     short loc_BE19
seg004:1568                 dec     ax
seg004:1569
seg004:1569 loc_BE19:                               ; CODE XREF: sub_BDEC+2A␘j
seg004:1569                 mov     cs:[bx+di], ax
seg004:156C                 add     bx, 2
seg004:156F                 and     bx, dx
seg004:1571                 mov     ax, [si-5C7Bh]
seg004:1575                 cmp     ax, bp
seg004:1577                 jnz     short loc_BE2A
seg004:1579                 dec     ax
seg004:157A
seg004:157A loc_BE2A:                               ; CODE XREF: sub_BDEC+3B␘j
seg004:157A                 mov     cs:[bx+di], ax
seg004:157D                 add     bx, 2
seg004:1580                 and     bx, dx
seg004:1582                 mov     ax, [si-5B3Bh]
seg004:1586                 cmp     ax, bp
seg004:1588                 jnz     short loc_BE3B
seg004:158A                 dec     ax
seg004:158B
seg004:158B loc_BE3B:                               ; CODE XREF: sub_BDEC+4C␘j
seg004:158B                 mov     cs:[bx+di], ax
seg004:158E                 add     bx, 2
seg004:1591                 and     bx, dx
seg004:1593                 mov     ax, [si-59FBh]
seg004:1597                 cmp     ax, bp
seg004:1599                 jnz     short loc_BE4C
seg004:159B                 dec     ax
seg004:159C
seg004:159C loc_BE4C:                               ; CODE XREF: sub_BDEC+5D␘j
seg004:159C                 mov     cs:[bx+di], ax
seg004:159F                 add     bx, 2
seg004:15A2                 and     bx, dx
seg004:15A4                 mov     ax, [si-58BBh]
seg004:15A8                 cmp     ax, bp
seg004:15AA                 jnz     short loc_BE5D
seg004:15AC                 dec     ax
seg004:15AD
seg004:15AD loc_BE5D:                               ; CODE XREF: sub_BDEC+6E␘j
seg004:15AD                 mov     cs:[bx+di], ax
seg004:15B0                 add     bx, 2
seg004:15B3                 and     bx, dx
seg004:15B5                 mov     ax, [si-577Bh]
seg004:15B9                 cmp     ax, bp
seg004:15BB                 jnz     short loc_BE6E
seg004:15BD                 dec     ax
seg004:15BE
seg004:15BE loc_BE6E:                               ; CODE XREF: sub_BDEC+7F␘j
seg004:15BE                 mov     cs:[bx+di], ax
seg004:15C1                 add     bx, 2
seg004:15C4                 and     bx, dx
seg004:15C6                 mov     ax, [si-54FBh]
seg004:15CA                 cmp     ax, bp
seg004:15CC                 jnz     short loc_BE7F
seg004:15CE                 dec     ax
seg004:15CF
seg004:15CF loc_BE7F:                               ; CODE XREF: sub_BDEC+90␘j
seg004:15CF                 mov     cs:[bx+di], ax
seg004:15D2                 add     bx, 2
seg004:15D5                 and     bx, dx
seg004:15D7                 mov     ax, [si-53BBh]
seg004:15DB                 cmp     ax, bp
seg004:15DD                 jnz     short loc_BE90
seg004:15DF                 dec     ax
seg004:15E0
seg004:15E0 loc_BE90:                               ; CODE XREF: sub_BDEC+A1␘j
seg004:15E0                 mov     cs:[bx+di], ax
seg004:15E3                 add     bx, 2
seg004:15E6                 and     bx, dx
seg004:15E8                 mov     ax, [si-527Bh]
seg004:15EC                 cmp     ax, bp
seg004:15EE                 jnz     short loc_BEA1
seg004:15F0                 dec     ax
seg004:15F1
seg004:15F1 loc_BEA1:                               ; CODE XREF: sub_BDEC+B2␘j
seg004:15F1                 mov     cs:[bx+di], ax
seg004:15F4                 add     bx, 2
seg004:15F7                 and     bx, dx
seg004:15F9                 jmp     loc_BE04
seg004:15F9 sub_BDEC        endp
seg004:15F9
seg004:15FC
