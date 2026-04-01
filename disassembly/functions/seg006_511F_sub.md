; sub_12F6F consumes an entry from SCENETTO.BIN via word_2D83C/2D83E and parses the
; object-only 8-byte header form.
;
; Header handling:
; - bytes +0/+1 provide the polygon/point counts for the primary shape
; - add si, 7 after reading byte +1 lands on start+8, so the primary vertex arrays begin at +8
; - if DX > 0x200, it backs up to start+4, reads bytes +4/+5 as alternate counts, then adds
;   the word at +6 and another +2, landing on start+8+offset for the alternate shape
;
; This is a traced original-game parse site for the "8-byte object header" variant used in
; SCENETTO.BIN, including the embedded alternate/LOD subshape pointer at +6.
