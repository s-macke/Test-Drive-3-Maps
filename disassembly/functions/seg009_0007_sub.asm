seg009:0007 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg009:0007
seg009:0007
seg009:0007 sub_16A07       proc far                ; CODE XREF: sub_8DC+6␘P
seg009:0007                 mov     al, byte_2AD33
seg009:000A                 or      al, al
seg009:000C                 jl      short loc_16A10
seg009:000E                 cbw
seg009:000F                 retf
seg009:0010 ; ---------------------------------------------------------------------------
seg009:0010
seg009:0010 loc_16A10:                              ; CODE XREF: sub_16A07+5␘j
seg009:0010                 push    si
seg009:0011                 push    di
seg009:0012                 mov     ah, 0Fh
seg009:0014                 int     10h             ; - VIDEO - GET CURRENT VIDEO MODE
seg009:0014                                         ; Return: AH = number of columns on screen
seg009:0014                                         ; AL = current video mode
seg009:0014                                         ; BH = current active display page
seg009:0016                 cbw
seg009:0017                 pop     di
seg009:0018                 pop     si
seg009:0019                 retf
seg009:0019 sub_16A07       endp
seg009:0019
seg009:0019 seg009          ends
seg009:0019
seg010:000A ; ---------------------------------------------------------------------------
seg010:000A
seg010:000A ; Segment type: Pure code
seg010:000A seg010          segment byte public 'CODE' use16
seg010:000A                 assume cs:seg010
seg010:000A                 ;org 0Ah
seg010:000A                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg010:000A
