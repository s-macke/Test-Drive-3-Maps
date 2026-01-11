seg034:0008 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg034:0008
seg034:0008 ; Attributes: bp-based frame
seg034:0008
seg034:0008 sub_1F028       proc far                ; CODE XREF: sub_1E286+1B␘P
seg034:0008
seg034:0008 arg_0           = dword ptr  6
seg034:0008
seg034:0008                 push    bp
seg034:0009                 mov     bp, sp
seg034:000B                 push    es
seg034:000C                 les     ax, [bp+arg_0]
seg034:000F                 mov     ah, 49h
seg034:0011                 int     21h             ; DOS - 2+ - FREE MEMORY
seg034:0011                                         ; ES = segment address of area to be freed
seg034:0013                 jb      short loc_1F037
seg034:0015                 sub     ax, ax
seg034:0017
seg034:0017 loc_1F037:                              ; CODE XREF: sub_1F028+B␘j
seg034:0017                 pop     es
seg034:0018                 pop     bp
seg034:0019                 retf
seg034:0019 sub_1F028       endp
seg034:0019
seg034:0019 seg034          ends
seg034:0019
seg035:000A ; ---------------------------------------------------------------------------
seg035:000A
seg035:000A ; Segment type: Pure code
seg035:000A seg035          segment byte public 'CODE' use16
seg035:000A                 assume cs:seg035
seg035:000A                 ;org 0Ah
seg035:000A                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg035:000A
