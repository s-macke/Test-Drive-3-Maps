seg031:06B0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:06B0
seg031:06B0 ; Attributes: bp-based frame
seg031:06B0
seg031:06B0 sub_19510       proc far                ; CODE XREF: sub_1344+8␘P
seg031:06B0                                         ; sub_1344+18␘P ...
seg031:06B0
seg031:06B0 arg_0           = dword ptr  6
seg031:06B0
seg031:06B0                 push    bp
seg031:06B1                 mov     bp, sp
seg031:06B3                 les     bx, [bp+arg_0]
seg031:06B6                 assume es:nothing
seg031:06B6                 mov     ax, es
seg031:06B8                 or      ax, bx
seg031:06BA                 jz      short loc_19521
seg031:06BC                 or      byte ptr es:[bx-2], 1
seg031:06C1
seg031:06C1 loc_19521:                              ; CODE XREF: sub_19510+A␘j
seg031:06C1                 mov     sp, bp
seg031:06C3                 pop     bp
seg031:06C4                 retf
seg031:06C4 sub_19510       endp
seg031:06C4
seg031:06C5
