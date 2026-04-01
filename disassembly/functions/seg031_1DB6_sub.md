; sub_1AC16 allocates DOS memory via int 21h AH=48h based on the requested size in DX.
; Stores segment/size pairs in the table at dseg:C2E8 and returns FFFF:FFFF on failure.
