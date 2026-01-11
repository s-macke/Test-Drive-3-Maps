seg031:0937 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0937
seg031:0937 ; Attributes: bp-based frame
seg031:0937
seg031:0937 sub_19797       proc far                ; CODE XREF: seg000:0836␘P
seg031:0937
seg031:0937 arg_2           = word ptr  6
seg031:0937
seg031:0937 ; FUNCTION CHUNK AT seg031:0927 SIZE 00000010 BYTES
seg031:0937
seg031:0937                 push    bp
seg031:0938                 mov     bp, sp
seg031:093A                 mov     ax, [bp+arg_2]
seg031:093D                 jmp     short loc_19787
seg031:093D sub_19797       endp
seg031:093D
seg031:093D ; ---------------------------------------------------------------------------
seg031:093F                 align 2
seg031:0940
