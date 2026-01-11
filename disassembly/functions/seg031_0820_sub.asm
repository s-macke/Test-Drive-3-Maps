seg031:0820 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0820
seg031:0820 ; Attributes: bp-based frame
seg031:0820
seg031:0820 sub_19680       proc far                ; CODE XREF: sub_0+21␘P
seg031:0820
seg031:0820 arg_0           = word ptr  6
seg031:0820 arg_2           = word ptr  8
seg031:0820
seg031:0820                 push    bp
seg031:0821                 mov     bp, sp
seg031:0823                 push    [bp+arg_2]
seg031:0826                 push    [bp+arg_0]
seg031:0829                 sub     ax, ax
seg031:082B                 push    ax
seg031:082C                 push    cs
seg031:082D                 call    near ptr sub_19696
seg031:0830                 add     sp, 6
seg031:0833                 pop     bp
seg031:0834                 retf
seg031:0834 sub_19680       endp
seg031:0834
seg031:0834 ; ---------------------------------------------------------------------------
seg031:0835                 align 2
seg031:0836
