; sub_1A930 handles text-mode writes; if the handle has the append flag (0x20), seeks to EOF via int 21h AH=42h (AL=2).
; Uses sub_1A9D8 to emit data with CR/LF expansion and ^Z handling.
