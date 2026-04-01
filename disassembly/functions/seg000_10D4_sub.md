; sub_10D4 allocates the 0x57B0-byte block at word_2D8A8/2D8AA (track/road record buffer).
; Layout (offsets from base):
; - +0x0000..+0x3E7F: 0x640 records x 0x0A bytes (5 words), filled in sub_15153 and accessed by sub_12A82.
; - +0x3E80..+0x4AFF: word_2C1A8 table of 0x640 word offsets into the record array (built in sub_112C5).
; - +0x4B00..+0x577F: word_2BF7E table of 0x640 derived 16-bit values (built in sub_112E8, searched in sub_111BD).
; - +0x5780..+0x57AF: word_2D8A0 table used as a 0x20-entry lookup in sub_102E8 (remaining bytes appear unused here).
