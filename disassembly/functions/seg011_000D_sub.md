; sub_16A2D prints a "$"-terminated message at seg011:0038 using int 21h AH=09h (only if word_2B1C2 == 0).
; Reads cursor position via int 10h and calls sub_18DD5 when not at row/col 0.
