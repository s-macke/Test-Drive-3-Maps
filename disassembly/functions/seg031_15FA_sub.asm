seg031:15FA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:15FA
seg031:15FA ; Attributes: bp-based frame
seg031:15FA
seg031:15FA sub_1A45A       proc far                ; CODE XREF: sub_19F08+28B␘p
seg031:15FA
seg031:15FA var_4           = byte ptr -4
seg031:15FA var_2           = word ptr -2
seg031:15FA arg_0           = word ptr  6
seg031:15FA
seg031:15FA                 push    bp
seg031:15FB                 mov     bp, sp
seg031:15FD                 sub     sp, 4
seg031:1600                 mov     ax, word_2BD46
seg031:1603                 mov     [bp+var_2], ax
seg031:1606                 cmp     [bp+arg_0], 67h ; 'g'
seg031:160A                 jz      short loc_1A472
seg031:160C                 cmp     [bp+arg_0], 47h ; 'G'
seg031:1610                 jnz     short loc_1A476
seg031:1612
seg031:1612 loc_1A472:                              ; CODE XREF: sub_1A45A+10␘j
seg031:1612                 mov     al, 1
seg031:1614                 jmp     short loc_1A478
seg031:1616 ; ---------------------------------------------------------------------------
seg031:1616
seg031:1616 loc_1A476:                              ; CODE XREF: sub_1A45A+16␘j
seg031:1616                 sub     al, al
seg031:1618
seg031:1618 loc_1A478:                              ; CODE XREF: sub_1A45A+1A␘j
seg031:1618                 mov     [bp+var_4], al
seg031:161B                 cmp     word_2BD4A, 0
seg031:1620                 jnz     short loc_1A488
seg031:1622                 mov     word_2BD52, 6
seg031:1628
seg031:1628 loc_1A488:                              ; CODE XREF: sub_1A45A+26␘j
seg031:1628                 cmp     [bp+var_4], 0
seg031:162C                 jz      short loc_1A49B
seg031:162E                 cmp     word_2BD52, 0
seg031:1633                 jnz     short loc_1A49B
seg031:1635                 mov     word_2BD52, 1
seg031:163B
seg031:163B loc_1A49B:                              ; CODE XREF: sub_1A45A+32␘j
seg031:163B                                         ; sub_1A45A+39␘j
seg031:163B                 push    word_2BD3E
seg031:163F                 push    word_2BD52
seg031:1643                 push    [bp+arg_0]
seg031:1646                 push    word_2BD56
seg031:164A                 push    [bp+var_2]
seg031:164D                 call    off_2B662
seg031:1651                 add     sp, 0Ah
seg031:1654                 cmp     [bp+var_4], 0
seg031:1658                 jz      short loc_1A4CC
seg031:165A                 cmp     word_2BD38, 0
seg031:165F                 jnz     short loc_1A4CC
seg031:1661                 push    word_2BD56
seg031:1665                 call    off_2B666
seg031:1669                 add     sp, 2
seg031:166C
seg031:166C loc_1A4CC:                              ; CODE XREF: sub_1A45A+5E␘j
seg031:166C                                         ; sub_1A45A+65␘j
seg031:166C                 cmp     word_2BD38, 0
seg031:1671                 jz      short loc_1A4E5
seg031:1673                 cmp     word_2BD52, 0
seg031:1678                 jnz     short loc_1A4E5
seg031:167A                 push    word_2BD56
seg031:167E                 call    off_2B66E
seg031:1682                 add     sp, 2
seg031:1685
seg031:1685 loc_1A4E5:                              ; CODE XREF: sub_1A45A+77␘j
seg031:1685                                         ; sub_1A45A+7E␘j
seg031:1685                 add     word_2BD46, 8
seg031:168A                 mov     word_2BD5A, 0
seg031:1690                 mov     ax, word_2BD42
seg031:1693                 or      ax, word_2BD48
seg031:1697                 jz      short loc_1A50C
seg031:1699                 push    [bp+var_2]
seg031:169C                 call    off_2B672
seg031:16A0                 add     sp, 2
seg031:16A3                 or      ax, ax
seg031:16A5                 jz      short loc_1A50C
seg031:16A7                 mov     ax, 1
seg031:16AA                 jmp     short loc_1A50E
seg031:16AC ; ---------------------------------------------------------------------------
seg031:16AC
seg031:16AC loc_1A50C:                              ; CODE XREF: sub_1A45A+9D␘j
seg031:16AC                                         ; sub_1A45A+AB␘j
seg031:16AC                 sub     ax, ax
seg031:16AE
seg031:16AE loc_1A50E:                              ; CODE XREF: sub_1A45A+B0␘j
seg031:16AE                 push    ax
seg031:16AF                 push    cs
seg031:16B0                 call    near ptr sub_1A622
seg031:16B3                 mov     sp, bp
seg031:16B5                 pop     bp
seg031:16B6                 retf
seg031:16B6 sub_1A45A       endp
seg031:16B6
seg031:16B6 ; ---------------------------------------------------------------------------
seg031:16B7                 align 2
seg031:16B8
