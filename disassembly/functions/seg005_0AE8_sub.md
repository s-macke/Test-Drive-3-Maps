; sub_CA08 writes VGA DAC entries via ports 3C8h/3C9h.
; Uses CS buffer starting at offset 0Ah.
; Loops in blocks of 32 entries until BL wraps (0x100 entries).
