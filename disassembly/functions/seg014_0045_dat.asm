seg014:0045 ; ---------------------------------------------------------------------------
seg014:0046                 db 2Eh, 0, 2Eh, 0, 2Eh, 0, 2Eh, 0, 1Ch, 0, 1Ch, 0, 1Ch
seg014:0046                 db 0, 1Ch, 0, 1Ch, 0, 1Ch, 0, 1Ch, 0, 18h, 0, 18h, 0, 2Eh
seg014:0046                 db 0, 2Eh, 0, 2Eh, 0, 2Eh, 0, 42h, 0, 42h, 0, 1Ch, 0, 2Eh
seg014:0046                 db 0
seg014:0046 seg014          ends
seg014:0046
seg015:0000 ; ---------------------------------------------------------------------------
seg015:0000
seg015:0000 ; Segment type: Pure code
seg015:0000 seg015          segment byte public 'CODE' use16
seg015:0000                 assume cs:seg015
seg015:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg015:0000
