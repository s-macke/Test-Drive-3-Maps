; sub_12A82 refreshes runtime polygon fill values from the material code in word3.
;
; It reads runtime record +6 (original word3), isolates bits 15:11, and for codes
; 0..13 selects special or animated fill words written back to runtime record +8.
; Higher material codes fall through to default handling.
;
; This is the main traced evidence that word3 high bits are surface/material/effect
; codes rather than unused padding.
