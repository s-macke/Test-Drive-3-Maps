; sub_111BD scans the derived polygon-key table and interprets word3 bits 15:11
; as a polygon material / special-surface code.
;
; Observed behavior:
; - codes 0..2 participate in nearby-surface tests
; - codes 0x18..0x1B dispatch to special handlers (sub_1225C / sub_122FD)
; - other values mostly bypass the special-case logic here
