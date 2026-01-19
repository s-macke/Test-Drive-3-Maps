seg015:0041 ; ---------------------------------------------------------------------------
seg015:0042                 db 2Ah, 0, 2Ah, 0, 2Ah, 0, 2Ah, 0, 18h, 0, 18h, 0, 18h
seg015:0042                 db 0, 3Eh, 0, 18h, 0, 18h, 0, 18h, 0, 14h, 0, 14h, 0, 2Ah
seg015:0042                 db 0, 2Ah, 0, 2Ah, 0, 2Ah, 0, 3Eh, 0, 3Eh, 0, 18h, 0, 2Ah
seg015:0042                 db 0
seg015:0042 seg015          ends
seg015:0042
seg016:000C ; ---------------------------------------------------------------------------
seg016:000C
seg016:000C ; Segment type: Pure code
seg016:000C seg016          segment byte public 'CODE' use16
seg016:000C                 assume cs:seg016
seg016:000C                 ;org 0Ch
seg016:000C                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg016:000C
