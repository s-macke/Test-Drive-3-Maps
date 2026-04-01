; sub_18ABD contains VGA/EGA palette setup via int 10h.
; Uses AH=10h, AL=12h to set 0x10 DAC registers from unk_2B0E2.
; Also sets palette registers via AL=02h with 17-byte tables (unk_2B0C2/unk_2B0D2).
; Sets INT 43h vector to F000:FA6E via int 21h AH=25h (AL=43h).
