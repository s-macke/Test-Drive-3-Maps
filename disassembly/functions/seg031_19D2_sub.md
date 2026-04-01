; sub_1A832 closes a file handle with int 21h AH=3Eh when BX < word_2B440.
; Clears the per-handle flag byte on success; invalid handles return AX=900h with CF set.
