; sub_1A852 reads from a file handle using int 21h AH=3Fh and applies text-mode translation (CR/LF, ^Z).
; Uses int 21h AH=44h to detect device handles and AH=42h to adjust file position when peeking ahead.
