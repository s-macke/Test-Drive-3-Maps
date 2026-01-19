seg020:00D2 ; ---------------------------------------------------------------------------
seg020:00D3                 db 0CFh, 0, 0CFh, 0, 0CFh, 0, 0CFh, 0, 20h, 0, 20h, 0
seg020:00D3                 db 20h, 0, 0CFh, 0, 0CFh, 0, 33h, 0, 0CFh, 0, 4Eh, 0, 46h
seg020:00D3                 db 0, 63h, 0, 63h
seg020:00D3 seg020          ends
seg020:00D3
seg021:0000 ; ---------------------------------------------------------------------------
seg021:0000
seg021:0000 ; Segment type: Pure code
seg021:0000 seg021          segment byte public 'CODE' use16
seg021:0000                 assume cs:seg021
seg021:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg021:0000                 db 0, 63h, 0, 63h, 0, 63h, 0, 63h, 0, 82h, 0, 82h, 0
seg021:000D
