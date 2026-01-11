seg031:19D2 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:19D2
seg031:19D2 ; Attributes: bp-based frame
seg031:19D2
seg031:19D2 sub_1A832       proc far                ; CODE XREF: sub_190A2+52␘P
seg031:19D2
seg031:19D2 arg_2           = word ptr  6
seg031:19D2
seg031:19D2 ; FUNCTION CHUNK AT seg031:1F90 SIZE 00000008 BYTES
seg031:19D2
seg031:19D2                 push    bp
seg031:19D3                 mov     bp, sp
seg031:19D5                 mov     bx, [bp+arg_2]
seg031:19D8                 cmp     bx, word_2B440
seg031:19DC                 jb      short loc_1A844
seg031:19DE                 mov     ax, 900h
seg031:19E1                 stc
seg031:19E2                 jmp     short loc_1A84F
seg031:19E4 ; ---------------------------------------------------------------------------
seg031:19E4
seg031:19E4 loc_1A844:                              ; CODE XREF: sub_1A832+A␘j
seg031:19E4                 mov     ah, 3Eh
seg031:19E6                 int     21h             ; DOS - 2+ - CLOSE A FILE WITH HANDLE
seg031:19E6                                         ; BX = file handle
seg031:19E8                 jb      short loc_1A84F
seg031:19EA                 mov     byte ptr [bx-3C9Eh], 0
seg031:19EF
seg031:19EF loc_1A84F:                              ; CODE XREF: sub_1A832+10␘j
seg031:19EF                                         ; sub_1A832+16␘j
seg031:19EF                 jmp     loc_1ADF0
seg031:19EF sub_1A832       endp
seg031:19EF
seg031:19F2
