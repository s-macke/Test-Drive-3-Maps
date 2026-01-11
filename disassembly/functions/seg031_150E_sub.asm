seg031:150E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:150E
seg031:150E ; Attributes: bp-based frame
seg031:150E
seg031:150E sub_1A36E       proc far                ; CODE XREF: sub_19F08+27A␘p
seg031:150E
seg031:150E var_E           = dword ptr -0Eh
seg031:150E var_8           = word ptr -8
seg031:150E var_6           = word ptr -6
seg031:150E var_4           = word ptr -4
seg031:150E arg_0           = word ptr  6
seg031:150E
seg031:150E                 push    bp
seg031:150F                 mov     bp, sp
seg031:1511                 sub     sp, 10h
seg031:1514                 push    di
seg031:1515                 push    si
seg031:1516                 cmp     [bp+arg_0], 0
seg031:151A                 jz      short loc_1A390
seg031:151C                 mov     si, 1
seg031:151F                 mov     ax, word_2BD46
seg031:1522                 mov     [bp+var_8], ax
seg031:1525                 mov     [bp+var_6], ds
seg031:1528                 add     word_2BD46, 2
seg031:152D                 jmp     loc_1A421
seg031:1530 ; ---------------------------------------------------------------------------
seg031:1530
seg031:1530 loc_1A390:                              ; CODE XREF: sub_1A36E+C␘j
seg031:1530                 cmp     word_2BD40, 10h
seg031:1535                 jnz     short loc_1A3AE
seg031:1537                 mov     bx, word_2BD46
seg031:153B                 mov     ax, [bx]
seg031:153D                 mov     dx, [bx+2]
seg031:1540                 mov     [bp+var_8], ax
seg031:1543                 mov     [bp+var_6], dx
seg031:1546                 add     word_2BD46, 4
seg031:154B                 jmp     short loc_1A3C2
seg031:154B ; ---------------------------------------------------------------------------
seg031:154D                 align 2
seg031:154E
seg031:154E loc_1A3AE:                              ; CODE XREF: sub_1A36E+27␘j
seg031:154E                 mov     bx, word_2BD46
seg031:1552                 mov     ax, [bx]
seg031:1554                 mov     [bp+var_4], ax
seg031:1557                 mov     [bp+var_8], ax
seg031:155A                 mov     [bp+var_6], ds
seg031:155D                 add     word_2BD46, 2
seg031:1562
seg031:1562 loc_1A3C2:                              ; CODE XREF: sub_1A36E+3D␘j
seg031:1562                 cmp     word_2BD40, 10h
seg031:1567                 jnz     short loc_1A3D6
seg031:1569                 mov     ax, [bp+var_8]
seg031:156C                 or      ax, [bp+var_6]
seg031:156F                 jnz     short loc_1A3E5
seg031:1571                 mov     ax, 0C4B4h
seg031:1574                 jmp     short loc_1A3DF
seg031:1576 ; ---------------------------------------------------------------------------
seg031:1576
seg031:1576 loc_1A3D6:                              ; CODE XREF: sub_1A36E+59␘j
seg031:1576                 cmp     [bp+var_4], 0
seg031:157A                 jnz     short loc_1A3E5
seg031:157C                 mov     ax, 0C4BBh
seg031:157F
seg031:157F loc_1A3DF:                              ; CODE XREF: sub_1A36E+66␘j
seg031:157F                 mov     [bp+var_8], ax
seg031:1582                 mov     [bp+var_6], ds
seg031:1585
seg031:1585 loc_1A3E5:                              ; CODE XREF: sub_1A36E+61␘j
seg031:1585                                         ; sub_1A36E+6C␘j
seg031:1585                 mov     ax, [bp+var_8]
seg031:1588                 mov     dx, [bp+var_6]
seg031:158B                 mov     word ptr [bp+var_E], ax
seg031:158E                 mov     word ptr [bp+var_E+2], dx
seg031:1591                 sub     si, si
seg031:1593                 cmp     word_2BD4A, si
seg031:1597                 jz      short loc_1A415
seg031:1599                 mov     cx, word_2BD52
seg031:159D                 jmp     short loc_1A40D
seg031:159D ; ---------------------------------------------------------------------------
seg031:159F                 align 2
seg031:15A0
seg031:15A0 loc_1A400:                              ; CODE XREF: sub_1A36E+A3␙j
seg031:15A0                 les     bx, [bp+var_E]
seg031:15A3                 assume es:nothing
seg031:15A3                 inc     word ptr [bp+var_E]
seg031:15A6                 cmp     byte ptr es:[bx], 0
seg031:15AA                 jz      short loc_1A421
seg031:15AC                 inc     si
seg031:15AD
seg031:15AD loc_1A40D:                              ; CODE XREF: sub_1A36E+8F␘j
seg031:15AD                 cmp     cx, si
seg031:15AF                 jle     short loc_1A421
seg031:15B1                 jmp     short loc_1A400
seg031:15B1 ; ---------------------------------------------------------------------------
seg031:15B3                 align 2
seg031:15B4
seg031:15B4 loc_1A414:                              ; CODE XREF: sub_1A36E+B1␙j
seg031:15B4                 inc     si
seg031:15B5
seg031:15B5 loc_1A415:                              ; CODE XREF: sub_1A36E+89␘j
seg031:15B5                 les     bx, [bp+var_E]
seg031:15B8                 inc     word ptr [bp+var_E]
seg031:15BB                 cmp     byte ptr es:[bx], 0
seg031:15BF                 jnz     short loc_1A414
seg031:15C1
seg031:15C1 loc_1A421:                              ; CODE XREF: sub_1A36E+1F␘j
seg031:15C1                                         ; sub_1A36E+9C␘j ...
seg031:15C1                 mov     di, word_2BD58
seg031:15C5                 sub     di, si
seg031:15C7                 cmp     word_2BD44, 0
seg031:15CC                 jnz     short loc_1A436
seg031:15CE                 push    di
seg031:15CF                 push    cs
seg031:15D0                 call    near ptr sub_1A558
seg031:15D3                 add     sp, 2
seg031:15D6
seg031:15D6 loc_1A436:                              ; CODE XREF: sub_1A36E+BE␘j
seg031:15D6                 push    si
seg031:15D7                 push    [bp+var_6]
seg031:15DA                 push    [bp+var_8]
seg031:15DD                 push    cs
seg031:15DE                 call    near ptr sub_1A5B8
seg031:15E1                 add     sp, 6
seg031:15E4                 cmp     word_2BD44, 0
seg031:15E9                 jz      short loc_1A453
seg031:15EB                 push    di
seg031:15EC                 push    cs
seg031:15ED                 call    near ptr sub_1A558
seg031:15F0                 add     sp, 2
seg031:15F3
seg031:15F3 loc_1A453:                              ; CODE XREF: sub_1A36E+DB␘j
seg031:15F3                 pop     si
seg031:15F4                 pop     di
seg031:15F5                 mov     sp, bp
seg031:15F7                 pop     bp
seg031:15F8                 retf
seg031:15F8 sub_1A36E       endp
seg031:15F8
seg031:15F8 ; ---------------------------------------------------------------------------
seg031:15F9                 align 2
seg031:15FA
