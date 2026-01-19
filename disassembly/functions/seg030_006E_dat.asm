seg030:006E ; ---------------------------------------------------------------------------
seg030:006F                 db 1Dh, 0, 1Dh, 0, 1Dh, 0, 1Dh, 0, 29h, 0, 29h, 0, 29h
seg030:006F                 db 0, 1Dh, 0, 29h, 0, 29h, 0, 29h, 0, 29h, 0, 29h, 0, 31h
seg030:006F                 db 0, 31h, 0, 31h, 0, 31h, 0, 31h, 0, 31h, 0, 29h, 0, 5Fh
seg030:006F                 db 2 dup(0)
seg030:006F seg030          ends
seg030:006F
seg031:000A ; ---------------------------------------------------------------------------
seg031:000A
seg031:000A ; Segment type: Pure code
seg031:000A seg031          segment byte public 'CODE' use16
seg031:000A                 assume cs:seg031
seg031:000A                 ;org 0Ah
seg031:000A                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg031:000A                 db 10h dup(0)
seg031:001A                 assume ss:seg037, ds:nothing
seg031:001A
