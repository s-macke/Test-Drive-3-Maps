seg028:026C ; ---------------------------------------------------------------------------
seg028:026D                 db 0E7h, 0, 0E7h, 0, 0E7h, 0, 0E7h, 0, 0D5h, 0, 0D5h, 0
seg028:026D                 db 0D5h, 0, 0E7h, 0, 0D5h, 0, 0D5h, 0, 0D5h, 0, 35h, 0
seg028:026D                 db 35h, 0, 0E7h, 0, 0E7h, 0, 0E7h, 0, 0E7h, 0, 0E7h, 0
seg028:026D                 db 0E7h, 0, 0E7h, 0
seg028:026D seg028          ends
seg028:026D
seg029:0005 ; ---------------------------------------------------------------------------
seg029:0005
seg029:0005 ; Segment type: Pure code
seg029:0005 seg029          segment byte public 'CODE' use16
seg029:0005                 assume cs:seg029
seg029:0005                 ;org 5
seg029:0005                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg029:0005                 db 82h, 0
seg029:0007
