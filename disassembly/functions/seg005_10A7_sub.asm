seg005:10A7 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:10A7
seg005:10A7
seg005:10A7 sub_CFC7        proc far                ; CODE XREF: sub_3A2A+27␘P
seg005:10A7                 push    ds
seg005:10A8                 push    cs
seg005:10A9                 pop     ds
seg005:10AA                 assume ds:seg005
seg005:10AA                 mov     ax, 3508h
seg005:10AD                 int     21h             ; DOS - 2+ - GET INTERRUPT VECTOR
seg005:10AD                                         ; AL = interrupt number
seg005:10AD                                         ; Return: ES:BX = value of interrupt vector
seg005:10AF                 mov     word ptr cs:dword_CFC3, bx
seg005:10B4                 mov     word ptr cs:dword_CFC3+2, es
seg005:10B9                 mov     dx, 10F0h
seg005:10BC                 mov     ax, 2508h
seg005:10BF                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg005:10BF                                         ; AL = interrupt number
seg005:10BF                                         ; DS:DX = new vector to be used for specified interrupt
seg005:10C1                 cli
seg005:10C2                 mov     al, 36h ; '6'
seg005:10C4                 out     43h, al         ; Timer 8253-5 (AT: 8254.2).
seg005:10C6                 mov     word ptr ds:0C5EAh, 2000h
seg005:10CC                 sub     al, al
seg005:10CE                 out     40h, al         ; Timer 8253-5 (AT: 8254.2).
seg005:10D0                 mov     al, 20h ; ' '
seg005:10D2                 out     40h, al         ; Timer 8253-5 (AT: 8254.2).
seg005:10D4                 sti
seg005:10D5                 pop     ds
seg005:10D6                 assume ds:dseg
seg005:10D6                 retf
seg005:10D6 sub_CFC7        endp
seg005:10D6
seg005:10D7
