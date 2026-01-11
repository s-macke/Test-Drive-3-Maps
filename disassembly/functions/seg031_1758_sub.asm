seg031:1758 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1758
seg031:1758 ; Attributes: bp-based frame
seg031:1758
seg031:1758 sub_1A5B8       proc far                ; CODE XREF: sub_19F08+2B1␘p
seg031:1758                                         ; sub_1A36E+D0␘p ...
seg031:1758
seg031:1758 arg_0           = dword ptr  6
seg031:1758 arg_4           = word ptr  0Ah
seg031:1758
seg031:1758                 push    bp
seg031:1759                 mov     bp, sp
seg031:175B                 sub     sp, 2
seg031:175E                 push    di
seg031:175F                 push    si
seg031:1760                 mov     si, [bp+arg_4]
seg031:1763                 cmp     word_2BD50, 0
seg031:1768                 jnz     short loc_1A61C
seg031:176A                 jmp     short loc_1A5EA
seg031:176C ; ---------------------------------------------------------------------------
seg031:176C
seg031:176C loc_1A5CC:                              ; CODE XREF: sub_1A5B8+40␙j
seg031:176C                 push    word_2BD3A
seg031:1770                 les     bx, [bp+arg_0]
seg031:1773                 mov     al, es:[bx]
seg031:1776                 cbw
seg031:1777                 push    ax
seg031:1778                 call    sub_19AEE
seg031:177D                 add     sp, 4
seg031:1780
seg031:1780 loc_1A5E0:                              ; CODE XREF: sub_1A5B8+54␙j
seg031:1780                 inc     ax
seg031:1781                 jnz     short loc_1A5E7
seg031:1783                 inc     word_2BD50
seg031:1787
seg031:1787 loc_1A5E7:                              ; CODE XREF: sub_1A5B8+29␘j
seg031:1787                 inc     word ptr [bp+arg_0]
seg031:178A
seg031:178A loc_1A5EA:                              ; CODE XREF: sub_1A5B8+12␘j
seg031:178A                 mov     ax, si
seg031:178C                 dec     si
seg031:178D                 or      ax, ax
seg031:178F                 jz      short loc_1A60E
seg031:1791                 mov     bx, word_2BD3A
seg031:1795                 dec     word ptr [bx+2]
seg031:1798                 js      short loc_1A5CC
seg031:179A                 les     bx, [bp+arg_0]
seg031:179D                 mov     al, es:[bx]
seg031:17A0                 mov     bx, word_2BD3A
seg031:17A4                 mov     di, [bx]
seg031:17A6                 inc     word ptr [bx]
seg031:17A8                 mov     [di], al
seg031:17AA                 sub     ah, ah
seg031:17AC                 jmp     short loc_1A5E0
seg031:17AE ; ---------------------------------------------------------------------------
seg031:17AE
seg031:17AE loc_1A60E:                              ; CODE XREF: sub_1A5B8+37␘j
seg031:17AE                 cmp     word_2BD50, 0
seg031:17B3                 jnz     short loc_1A61C
seg031:17B5                 mov     ax, [bp+arg_4]
seg031:17B8                 add     word_2BD4E, ax
seg031:17BC
seg031:17BC loc_1A61C:                              ; CODE XREF: sub_1A5B8+10␘j
seg031:17BC                                         ; sub_1A5B8+5B␘j
seg031:17BC                 pop     si
seg031:17BD                 pop     di
seg031:17BE                 mov     sp, bp
seg031:17C0                 pop     bp
seg031:17C1                 retf
seg031:17C1 sub_1A5B8       endp
seg031:17C1
seg031:17C2
