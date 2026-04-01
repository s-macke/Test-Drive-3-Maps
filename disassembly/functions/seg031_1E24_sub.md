; sub_1AC84 resizes a DOS memory block via int 21h AH=4Ah as part of the allocator.
; Updates word_2B3C2 when resizing the primary block; returns with CF set on failure.
