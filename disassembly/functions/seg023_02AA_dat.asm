seg023:02AA ; ---------------------------------------------------------------------------
seg023:02AB                 db 28h, 0, 28h, 0, 28h, 0, 28h, 0, 62h, 0, 62h, 0, 85h
seg023:02AB                 db 0, 28h, 0, 0A5h, 2, 0AEh, 0, 0A5h, 2, 0FDh, 0, 0D2h
seg023:02AB                 db 0, 9Eh, 1, 9Eh, 1, 9Eh, 1, 9Eh, 1, 9Eh, 1, 9Eh
seg023:02AB seg023          ends
seg023:02AB
seg024:0000 ; ---------------------------------------------------------------------------
seg024:0000
seg024:0000 ; Segment type: Pure code
seg024:0000 seg024          segment byte public 'CODE' use16
seg024:0000                 assume cs:seg024
seg024:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg024:0000                 db 1, 0F1h, 1, 24h, 2
seg024:0005
