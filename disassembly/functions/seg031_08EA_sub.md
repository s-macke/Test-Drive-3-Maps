; sub_1974A installs an INT 24h (critical error) handler.
; Saves previous vector to dword_2B470 and sets new vector to seg031:090D.
; Uses int 21h AH=25h (AL=24h) to install the new DOS critical error vector.
; Handler saves regs, calls old handler via dword_2B470, restores, then iret.
