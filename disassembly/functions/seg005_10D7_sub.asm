seg005:10D7 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:10D7
seg005:10D7
seg005:10D7 sub_CFF7        proc far                ; CODE XREF: sub_3BD4+1D␘P
seg005:10D7                 cli
seg005:10D8                 mov     al, 36h ; '6'
seg005:10DA                 out     43h, al         ; Timer 8253-5 (AT: 8254.2).
seg005:10DC                 sub     al, al
seg005:10DE                 out     40h, al         ; Timer 8253-5 (AT: 8254.2).
seg005:10E0                 out     40h, al         ; Timer 8253-5 (AT: 8254.2).
seg005:10E2                 sti
seg005:10E3                 push    ds
seg005:10E4                 lds     dx, cs:dword_CFC3
seg005:10E9                 mov     ax, 2508h
seg005:10EC                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg005:10EC                                         ; AL = interrupt number
seg005:10EC                                         ; DS:DX = new vector to be used for specified interrupt
seg005:10EE                 pop     ds
seg005:10EF                 retf
seg005:10EF sub_CFF7        endp
seg005:10EF
seg005:10EF ; ---------------------------------------------------------------------------
seg005:10F0                 db 50h, 1Eh, 0B8h
seg005:10F3                 dw seg dseg
seg005:10F5                 db 8Eh, 0D8h, 9Ah, 0D2h, 3
seg005:10FA                 dw seg seg033
seg005:10FC                 db 0FFh, 6, 0A0h, 0, 0FEh, 6, 69h, 90h, 80h, 26h, 69h
seg005:10FC                 db 90h, 7, 1Fh, 74h, 6, 0B0h, 20h, 0E6h, 20h, 58h, 0CFh
seg005:10FC                 db 58h, 2Eh, 0FFh, 2Eh, 0A3h, 10h
seg005:1118
