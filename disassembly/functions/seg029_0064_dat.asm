seg029:0064 ; ---------------------------------------------------------------------------
seg029:0065                 db 33h, 0C0h, 8Eh, 0C0h, 57h, 56h, 0B4h, 12h, 0B3h, 10h
seg029:0065                 db 0CDh, 10h, 5Eh, 5Fh, 80h, 0FBh, 10h, 74h, 1Ah, 26h
seg029:0065                 db 0A0h, 87h, 4, 0A8h, 8, 75h, 12h, 0A8h, 2, 75h, 0Eh
seg029:0065                 db 80h, 0E1h, 0Fh, 80h, 0F9h, 9, 75h, 6, 8Ah, 0C3h, 0FEh
seg029:0065                 db 0C0h
seg029:0065 seg029          ends
seg029:0065
seg030:0000 ; ---------------------------------------------------------------------------
seg030:0000 ; ---------------------------------------------------------------------------
seg030:0000
seg030:0000 ; Segment type: Pure code
seg030:0000 seg030          segment byte public 'CODE' use16
seg030:0000                 assume cs:seg030
seg030:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg030:0000                 cbw
seg030:0001                 retf
seg030:0002 ; ---------------------------------------------------------------------------
seg030:0002                 xor     ax, ax
seg030:0004                 retf
seg030:0005
