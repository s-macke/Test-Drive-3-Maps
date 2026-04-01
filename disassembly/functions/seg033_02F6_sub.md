; sub_1E286 reads 0x162 bytes into dseg:C63E from a file handle.
; Size 0x162 = 354 bytes, which matches 112*3 + 18; possible palette block plus header.
; Related buffer is cleared by sub_1E209.
; Uses int 21h (3Dh/3Fh/42h/48h/3Eh) to open, read, seek, allocate, and close the file.
