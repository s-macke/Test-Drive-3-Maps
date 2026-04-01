; Lookup table at dseg:00AA (16 bytes) used by sub_1C3E.
; Index = low nibble of byte_28467.
; Table layout (by address/labels in dseg_0000_dat.asm):
; - dseg:00AA = 00h (terminator of aOiOVa at 00A2)
; - dseg:00AB..00AC = aTs (2 bytes)
; - dseg:00AD = 00h terminator
; - dseg:00AE..00B0 = aFsc (3 bytes)
; - dseg:00B1 = 00h terminator
; - dseg:00B2..00B4 = aCus (3 bytes)
; - dseg:00B5..00B9 = 00h padding bytes
;
; Table at dseg:049E (14-byte entries) used by sub_141E for data file lookup.
; Layout per entry:
; - +0x00 key_low (sub_1606 index*byte sum), +0x02 key_high (sub_15BC rolling hash)
; - +0x04 type byte (stored in byte_1F1C0), +0x05 unused
; - +0x06 offset_low, +0x08 offset_high (seek via sub_C776)
; - +0x0A length_low, +0x0C length_high (stored in word_2DB58/2DB5A)
; Table ends when key_low|key_high == 0.
