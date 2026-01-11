seg031:1F32 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1F32
seg031:1F32 ; Attributes: bp-based frame
seg031:1F32
seg031:1F32 sub_1AD92       proc far                ; CODE XREF: sub_19196+18B␘P
seg031:1F32                                         ; sub_19388+103␘P
seg031:1F32
seg031:1F32 arg_0           = word ptr  6
seg031:1F32 arg_2           = word ptr  8
seg031:1F32 arg_4           = word ptr  0Ah
seg031:1F32
seg031:1F32                 push    bp
seg031:1F33                 mov     bp, sp
seg031:1F35                 mov     dx, di
seg031:1F37                 mov     bx, si
seg031:1F39                 mov     ax, ds
seg031:1F3B                 mov     es, ax
seg031:1F3D                 mov     si, [bp+arg_2]
seg031:1F40                 mov     di, [bp+arg_0]
seg031:1F43                 mov     ax, di
seg031:1F45                 mov     cx, [bp+arg_4]
seg031:1F48                 jcxz    short loc_1ADB8
seg031:1F4A                 test    al, 1
seg031:1F4C                 jz      short loc_1ADB0
seg031:1F4E                 movsb
seg031:1F4F                 dec     cx
seg031:1F50
seg031:1F50 loc_1ADB0:                              ; CODE XREF: sub_1AD92+1A␘j
seg031:1F50                 shr     cx, 1
seg031:1F52                 rep movsw
seg031:1F54                 adc     cx, cx
seg031:1F56                 rep movsb
seg031:1F58
seg031:1F58 loc_1ADB8:                              ; CODE XREF: sub_1AD92+16␘j
seg031:1F58                 mov     si, bx
seg031:1F5A                 mov     di, dx
seg031:1F5C                 pop     bp
seg031:1F5D                 retf
seg031:1F5D sub_1AD92       endp
seg031:1F5D
seg031:1F5E
