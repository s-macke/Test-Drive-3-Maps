; sub_1C3E polls joystick state when word_1F172 is nonzero.
; Saves previous axis values (word_1F1A2/1F1AC -> 1F1A4/1F1AE) then calls sub_C600 (gameport read).
; If any button bits are set, sets byte_28467|=0x10 and returns 0x0D.
; Otherwise calls sub_1C9E to update byte_28467 with direction bits based on calibrated min/max.
; Uses the low nibble of byte_28467 to index a lookup table at dseg:00AA for the return code.
; Table bytes live in the contiguous data starting at dseg:00A2 (aOiOVa/aTs/aFsc/aCus).
; See dseg_0000_dat.md for the byte-level table layout.
; Writes the result to *arg_0 and returns it in AX.
