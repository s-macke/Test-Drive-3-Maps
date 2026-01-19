; sub_CA45 writes VGA DAC entries via ports 3C8h/3C9h.
; Uses CS buffer starting at offset 0Ah (filled by callers).
; Loops in blocks of 32 entries, total 0x80 entries (bl up to 7Fh).
