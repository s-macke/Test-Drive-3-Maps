; sub_11748 dispatches polygon drawing by bits 15:14 of word0.
;
; Dispatch groups:
; - 00b: point path (types 0 and 1)
; - 01b: line path  (types 2 and 3)
; - 10b: triangle path (types 4 and 5)
; - 11b: quad path (types 6 and 7)
;
; Bit 13 is therefore a secondary mode bit, not part of the vertex-count decision.
