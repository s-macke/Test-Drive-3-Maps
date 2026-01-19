; sub_198B8 divides two unsigned 32-bit values: (arg_2:arg_0) / (arg_6:arg_4).
; Uses 32/16 fast path when high word of divisor is zero; otherwise normalizes and corrects.
; Returns quotient in DX:AX (DX cleared for large divisors).
