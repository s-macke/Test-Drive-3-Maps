; sub_CFC7 hooks the timer interrupt.
; Uses int 21h AH=35h to save INT 08h to dword_CFC3, then AH=25h to set INT 08h to seg005:10F0.
