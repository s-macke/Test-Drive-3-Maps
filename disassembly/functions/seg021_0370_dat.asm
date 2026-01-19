seg021:0370 ; ---------------------------------------------------------------------------
seg021:0371                 db 39h, 0, 39h, 0, 39h, 0, 39h, 0, 71h, 0, 71h, 0, 0D1h
seg021:0371                 db 0, 39h, 0, 6Bh, 3, 29h, 1, 6Bh, 3, 0B9h, 1, 88h, 1
seg021:0371                 db 33h, 2, 33h, 2, 33h, 2, 33h, 2, 33h, 2, 33h, 2, 0C6h
seg021:0371                 db 2, 0FAh, 2
seg021:0371 seg021          ends
seg021:0371
seg022:000B ; ---------------------------------------------------------------------------
seg022:000B
seg022:000B ; Segment type: Pure code
seg022:000B seg022          segment byte public 'CODE' use16
seg022:000B                 assume cs:seg022
seg022:000B                 ;org 0Bh
seg022:000B                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg022:000B
