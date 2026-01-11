seg005:0870 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0870
seg005:0870 ; Attributes: bp-based frame
seg005:0870
seg005:0870 sub_C790        proc far                ; CODE XREF: sub_CA8+1A␘P
seg005:0870                                         ; sub_D3C+1A␘P ...
seg005:0870
seg005:0870 arg_0           = word ptr  6
seg005:0870
seg005:0870                 push    bp
seg005:0871                 mov     bp, sp
seg005:0873                 mov     dx, [bp+arg_0]
seg005:0876                 mov     ax, 3D00h
seg005:0879                 int     21h             ; DOS - 2+ - OPEN DISK FILE WITH HANDLE
seg005:0879                                         ; DS:DX -> ASCIZ filename
seg005:0879                                         ; AL = access mode
seg005:0879                                         ; 0 - read
seg005:087B                 jnb     short loc_C7A0
seg005:087D                 mov     ax, 0FFFFh
seg005:0880
seg005:0880 loc_C7A0:                               ; CODE XREF: sub_C790+B␘j
seg005:0880                 pop     bp
seg005:0881                 retf
seg005:0881 sub_C790        endp
seg005:0881
seg005:0882
