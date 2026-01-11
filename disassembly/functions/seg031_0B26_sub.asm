seg031:0B26 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0B26
seg031:0B26 ; Attributes: bp-based frame
seg031:0B26
seg031:0B26 sub_19986       proc far                ; CODE XREF: start+28␘P
seg031:0B26                                         ; start+B2␘P ...
seg031:0B26                 push    bp
seg031:0B27                 mov     bp, sp
seg031:0B29                 mov     ax, 0FCh ; 'n'
seg031:0B2C                 push    ax
seg031:0B2D                 call    sub_19A01
seg031:0B32                 cmp     word_2B478, 0
seg031:0B37                 jz      short loc_1999D
seg031:0B39                 call    dword ptr unk_2B476
seg031:0B3D
seg031:0B3D loc_1999D:                              ; CODE XREF: sub_19986+11␘j
seg031:0B3D                 mov     ax, 0FFh
seg031:0B40                 push    ax
seg031:0B41                 call    sub_19A01
seg031:0B46                 mov     sp, bp
seg031:0B48                 pop     bp
seg031:0B49                 retf
seg031:0B49 sub_19986       endp
seg031:0B49
seg031:0B4A
