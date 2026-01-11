seg002:0CCE ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:0CCE
seg002:0CCE
seg002:0CCE sub_839E        proc far                ; CODE XREF: sub_7FD4+3B8␘p
seg002:0CCE                 sub     ax, ax
seg002:0CD0                 mov     word_1F17A, ax
seg002:0CD3                 push    ax
seg002:0CD4                 call    far ptr sub_16BB0
seg002:0CD9                 add     sp, 2
seg002:0CDC                 sub     ax, ax
seg002:0CDE                 push    ax
seg002:0CDF                 mov     ax, 0Fh
seg002:0CE2                 push    ax
seg002:0CE3                 call    sub_C65B
seg002:0CE8                 add     sp, 4
seg002:0CEB                 call    sub_153B8
seg002:0CF0                 call    sub_154A1
seg002:0CF5                 cmp     byte_28477, 0
seg002:0CFA                 jnz     short loc_83D1
seg002:0CFC                 call    sub_D300
seg002:0D01
seg002:0D01 loc_83D1:                               ; CODE XREF: sub_839E+2C␘j
seg002:0D01                 sub     ax, ax
seg002:0D03                 mov     word_1F17A, ax
seg002:0D06                 push    ax
seg002:0D07                 call    far ptr sub_16BB0
seg002:0D0C                 add     sp, 2
seg002:0D0F                 retf
seg002:0D0F sub_839E        endp
seg002:0D0F
seg002:0D10
