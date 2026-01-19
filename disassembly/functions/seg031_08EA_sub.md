; sub_1974A installs an INT 24h (critical error) handler.
; Saves previous vector to dword_2B470 and sets new vector to seg031:090D.
; Handler saves regs, calls old handler via dword_2B470, restores, then iret.
