seg031:0528 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0528
seg031:0528 ; Attributes: bp-based frame
seg031:0528
seg031:0528 sub_19388       proc far                ; CODE XREF: sub_8DC+279␘P
seg031:0528                                         ; sub_8DC+294␘P ...
seg031:0528
seg031:0528 var_8           = word ptr -8
seg031:0528 var_6           = word ptr -6
seg031:0528 var_4           = word ptr -4
seg031:0528 var_2           = word ptr -2
seg031:0528 arg_0           = word ptr  6
seg031:0528 arg_2           = word ptr  8
seg031:0528 arg_4           = word ptr  0Ah
seg031:0528 arg_6           = word ptr  0Ch
seg031:0528
seg031:0528                 push    bp
seg031:0529                 mov     bp, sp
seg031:052B                 sub     sp, 8
seg031:052E                 push    di
seg031:052F                 push    si
seg031:0530                 mov     si, [bp+arg_0]
seg031:0533                 mov     di, [bp+arg_6]
seg031:0536                 mov     ax, [bp+arg_2]
seg031:0539                 mul     [bp+arg_4]
seg031:053C                 mov     [bp+var_2], ax
seg031:053F                 mov     [bp+var_4], ax
seg031:0542                 cmp     [bp+arg_2], 0
seg031:0546                 jz      short loc_193AE
seg031:0548                 cmp     [bp+arg_4], 0
seg031:054C                 jnz     short loc_193B4
seg031:054E
seg031:054E loc_193AE:                              ; CODE XREF: sub_19388+1E␘j
seg031:054E                                         ; sub_19388+69␙j ...
seg031:054E                 sub     ax, ax
seg031:0550                 jmp     loc_194C8
seg031:0550 ; ---------------------------------------------------------------------------
seg031:0553                 align 2
seg031:0554
seg031:0554 loc_193B4:                              ; CODE XREF: sub_19388+24␘j
seg031:0554                 test    byte ptr [di+6], 0Ch
seg031:0558                 jnz     short loc_19423
seg031:055A                 mov     bx, di
seg031:055C                 sub     bx, 0C39Ah
seg031:0560                 mov     cl, 3
seg031:0562                 sar     bx, cl
seg031:0564                 mov     ax, bx
seg031:0566                 shl     bx, 1
seg031:0568                 add     bx, ax
seg031:056A                 shl     bx, 1
seg031:056C                 test    byte ptr [bx-3BC6h], 1
seg031:0571                 jnz     short loc_19423
seg031:0573                 test    [bp+var_4], 1FFh
seg031:0578                 jnz     short loc_193FC
seg031:057A                 push    [bp+var_4]
seg031:057D                 push    si
seg031:057E                 mov     al, [di+7]
seg031:0581                 cbw
seg031:0582                 push    ax
seg031:0583                 call    sub_1A930
seg031:0588                 add     sp, 6
seg031:058B                 mov     [bp+var_8], ax
seg031:058E                 cmp     ax, 0FFFFh
seg031:0591                 jz      short loc_193AE
seg031:0593
seg031:0593 loc_193F3:                              ; CODE XREF: sub_19388+13C␙j
seg031:0593                 sub     dx, dx
seg031:0595                 div     [bp+arg_2]
seg031:0598                 jmp     loc_194C8
seg031:0598 ; ---------------------------------------------------------------------------
seg031:059B                 align 2
seg031:059C
seg031:059C loc_193FC:                              ; CODE XREF: sub_19388+50␘j
seg031:059C                 dec     word ptr [di+2]
seg031:059F                 js      short loc_1940C
seg031:05A1                 mov     al, [si]
seg031:05A3                 mov     bx, [di]
seg031:05A5                 inc     word ptr [di]
seg031:05A7                 mov     [bx], al
seg031:05A9                 jmp     short loc_19419
seg031:05A9 ; ---------------------------------------------------------------------------
seg031:05AB                 align 2
seg031:05AC
seg031:05AC loc_1940C:                              ; CODE XREF: sub_19388+77␘j
seg031:05AC                 push    di
seg031:05AD                 mov     al, [si]
seg031:05AF                 cbw
seg031:05B0                 push    ax
seg031:05B1                 call    sub_19AEE
seg031:05B6                 add     sp, 4
seg031:05B9
seg031:05B9 loc_19419:                              ; CODE XREF: sub_19388+81␘j
seg031:05B9                 test    byte ptr [di+6], 20h
seg031:05BD                 jnz     short loc_193AE
seg031:05BF                 inc     si
seg031:05C0                 dec     [bp+var_4]
seg031:05C3
seg031:05C3 loc_19423:                              ; CODE XREF: sub_19388+30␘j
seg031:05C3                                         ; sub_19388+49␘j
seg031:05C3                 test    byte ptr [di+6], 8
seg031:05C7                 jnz     short loc_1946B
seg031:05C9                 mov     bx, di
seg031:05CB                 sub     bx, 0C39Ah
seg031:05CF                 mov     cl, 3
seg031:05D1                 sar     bx, cl
seg031:05D3                 mov     ax, bx
seg031:05D5                 shl     bx, 1
seg031:05D7                 add     bx, ax
seg031:05D9                 shl     bx, 1
seg031:05DB                 test    byte ptr [bx-3BC6h], 1
seg031:05E0                 jz      short loc_194A2
seg031:05E2                 jmp     short loc_1946B
seg031:05E4 ; ---------------------------------------------------------------------------
seg031:05E4
seg031:05E4 loc_19444:                              ; CODE XREF: sub_19388+ED␙j
seg031:05E4                 dec     word ptr [di+2]
seg031:05E7                 js      short loc_19454
seg031:05E9                 mov     al, [si]
seg031:05EB                 mov     bx, [di]
seg031:05ED                 inc     word ptr [di]
seg031:05EF                 mov     [bx], al
seg031:05F1                 jmp     short loc_19461
seg031:05F1 ; ---------------------------------------------------------------------------
seg031:05F3                 align 2
seg031:05F4
seg031:05F4 loc_19454:                              ; CODE XREF: sub_19388+BF␘j
seg031:05F4                 push    di
seg031:05F5                 mov     al, [si]
seg031:05F7                 cbw
seg031:05F8                 push    ax
seg031:05F9                 call    sub_19AEE
seg031:05FE                 add     sp, 4
seg031:0601
seg031:0601 loc_19461:                              ; CODE XREF: sub_19388+C9␘j
seg031:0601                 test    byte ptr [di+6], 20h
seg031:0605                 jnz     short loc_194BE
seg031:0607                 inc     si
seg031:0608                 dec     [bp+var_4]
seg031:060B
seg031:060B loc_1946B:                              ; CODE XREF: sub_19388+9F␘j
seg031:060B                                         ; sub_19388+BA␘j ...
seg031:060B                 cmp     [bp+var_4], 0
seg031:060F                 jz      short loc_194BE
seg031:0611                 cmp     word ptr [di+2], 0
seg031:0615                 jz      short loc_19444
seg031:0617                 mov     ax, [di+2]
seg031:061A                 sub     ax, [bp+var_4]
seg031:061D                 sbb     cx, cx
seg031:061F                 and     ax, cx
seg031:0621                 add     ax, [bp+var_4]
seg031:0624                 mov     [bp+var_6], ax
seg031:0627                 push    ax
seg031:0628                 push    si
seg031:0629                 push    word ptr [di]
seg031:062B                 call    sub_1AD92
seg031:0630                 add     sp, 6
seg031:0633                 mov     ax, [bp+var_6]
seg031:0636                 add     [di], ax
seg031:0638                 add     si, ax
seg031:063A                 sub     [bp+var_4], ax
seg031:063D                 sub     [di+2], ax
seg031:0640                 jmp     short loc_1946B
seg031:0642 ; ---------------------------------------------------------------------------
seg031:0642
seg031:0642 loc_194A2:                              ; CODE XREF: sub_19388+B8␘j
seg031:0642                 push    [bp+var_4]
seg031:0645                 push    si
seg031:0646                 mov     al, [di+7]
seg031:0649                 cbw
seg031:064A                 push    ax
seg031:064B                 call    sub_1A930
seg031:0650                 add     sp, 6
seg031:0653                 mov     [bp+var_8], ax
seg031:0656                 cmp     ax, 0FFFFh
seg031:0659                 jz      short loc_194BE
seg031:065B                 sub     [bp+var_4], ax
seg031:065E
seg031:065E loc_194BE:                              ; CODE XREF: sub_19388+DD␘j
seg031:065E                                         ; sub_19388+E7␘j ...
seg031:065E                 mov     ax, [bp+var_2]
seg031:0661                 sub     ax, [bp+var_4]
seg031:0664                 jmp     loc_193F3
seg031:0664 ; ---------------------------------------------------------------------------
seg031:0667                 align 2
seg031:0668
seg031:0668 loc_194C8:                              ; CODE XREF: sub_19388+28␘j
seg031:0668                                         ; sub_19388+70␘j
seg031:0668                 pop     si
seg031:0669                 pop     di
seg031:066A                 mov     sp, bp
seg031:066C                 pop     bp
seg031:066D                 retf
seg031:066D sub_19388       endp
seg031:066D
seg031:066E
