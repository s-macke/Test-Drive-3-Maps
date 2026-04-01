; sub_141E searches a 14-byte table at dseg:049E for a key derived from arg_0 (sub_164C on arg_0+2).
; sub_164C returns AX=sum(i*byte[i]) and DX=rolling hash (base 0x101).
; On match, loads word_2DB58/word_2DB5A from the entry, sets byte_1F1C0 (type), and updates the base
; filename at dseg:00DA (drive letter + "data" + ".dat").
; Table layout (14 bytes per entry):
; - +0x00 key_low, +0x02 key_high (compared with sub_164C result)
; - +0x04 type byte (stored in byte_1F1C0), +0x05 unused
; - +0x06 offset_low, +0x08 offset_high (seek via sub_C776)
; - +0x0A length_low, +0x0C length_high (stored in word_2DB58/2DB5A)
; If the file is not open, attempts sub_C790; on failure, prints a disk prompt (A/B) via sub_194CE and
; waits for input before retrying.
; Returns the file handle in AX, or 0 when no matching entry is found.
