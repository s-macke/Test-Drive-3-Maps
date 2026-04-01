; sub_1447B is one of the traced line/edge rasterizers.
;
; It checks word0 bits 12:11 (mask 0x1800) from the current runtime polygon:
; - 0: plain line path via sub_1218E
; - non-zero: alternate patterned-line path via sub_11EA0 and a small selector table
;
; These bits are therefore active renderer flags/work bits, not part of primitive arity.
