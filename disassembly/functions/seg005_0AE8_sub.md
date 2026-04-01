; sub_CA08 waits for VGA retrace (port 3DAh) and writes DAC entries via ports 3C8h/3C9h.
; Reads palette data from CS:000A (filled by sub_CB52), outputting 32 entries per pass until all 256 are written.
