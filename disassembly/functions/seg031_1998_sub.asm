seg031:1998 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1998
seg031:1998 ; Attributes: bp-based frame
seg031:1998
seg031:1998 sub_1A7F8       proc far                ; CODE XREF: sub_1916A+7␘P
seg031:1998                 push    bp
seg031:1999                 mov     bp, sp
seg031:199B                 sub     sp, 2
seg031:199E                 push    si
seg031:199F                 mov     si, 0C39Ah
seg031:19A2                 mov     cx, word_2B592
seg031:19A6
seg031:19A6 loc_1A806:                              ; CODE XREF: sub_1A7F8+31␙j
seg031:19A6                 test    byte ptr [si+6], 83h
seg031:19AA                 jnz     short loc_1A822
seg031:19AC                 sub     ax, ax
seg031:19AE                 mov     [si+2], ax
seg031:19B1                 mov     [si+6], al
seg031:19B4                 mov     [si+4], ax
seg031:19B7                 mov     [si], ax
seg031:19B9                 mov     byte ptr [si+7], 0FFh
seg031:19BD                 mov     ax, si
seg031:19BF                 jmp     short loc_1A82D
seg031:19BF ; ---------------------------------------------------------------------------
seg031:19C1                 align 2
seg031:19C2
seg031:19C2 loc_1A822:                              ; CODE XREF: sub_1A7F8+12␘j
seg031:19C2                 mov     ax, si
seg031:19C4                 add     si, 8
seg031:19C7                 cmp     ax, cx
seg031:19C9                 jnz     short loc_1A806
seg031:19CB                 sub     ax, ax
seg031:19CD
seg031:19CD loc_1A82D:                              ; CODE XREF: sub_1A7F8+27␘j
seg031:19CD                 pop     si
seg031:19CE                 mov     sp, bp
seg031:19D0                 pop     bp
seg031:19D1                 retf
seg031:19D1 sub_1A7F8       endp
seg031:19D1
seg031:19D2
