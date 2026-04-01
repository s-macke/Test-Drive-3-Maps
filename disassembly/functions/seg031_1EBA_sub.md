; sub_1AD1A formats arg_2 into ASCII at arg_4 using base arg_6 (digits 0-9 then A..).
; For base 10 it sign-extends and emits a leading '-' for negative values.
; Uses a 32-bit division loop (DX:BX) and reverses the digits in-place.
; Used by sub_190A2 to append a decimal slot id to the delete path.
