seg022:02AD ; ---------------------------------------------------------------------------
seg022:02AE                 db 2Bh, 0, 2Bh, 0, 2Bh, 0, 2Bh, 0, 65h, 0, 65h, 0, 88h
seg022:02AE                 db 0, 2Bh, 0, 0A8h, 2, 0B1h, 0, 0A8h, 2, 0, 1, 0D5h, 0
seg022:02AE                 db 0A1h, 1, 0A1h, 1, 0A1h, 1, 0A1h, 1, 0A1h, 1, 0A1h, 1
seg022:02AE                 db 0F4h, 1, 27h, 2
seg022:02AE seg022          ends
seg022:02AE
seg023:0008 ; ---------------------------------------------------------------------------
seg023:0008
seg023:0008 ; Segment type: Pure code
seg023:0008 seg023          segment byte public 'CODE' use16
seg023:0008                 assume cs:seg023
seg023:0008                 ;org 8
seg023:0008                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg023:0008
