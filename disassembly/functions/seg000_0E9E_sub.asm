seg000:0E9E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0E9E
seg000:0E9E
seg000:0E9E sub_E9E         proc far                ; CODE XREF: sub_1DAA:loc_1F34␙P
seg000:0E9E                                         ; sub_372E+57␙P ...
seg000:0E9E                 mov     ax, 4E6Dh
seg000:0EA1                 mov     dx, 41C6h
seg000:0EA4                 push    dx
seg000:0EA5                 push    ax
seg000:0EA6                 push    word_1F1B4
seg000:0EAA                 push    word_1F1B2
seg000:0EAE                 call    sub_1983C
seg000:0EB3                 add     ax, 3039h
seg000:0EB6                 adc     dx, 0
seg000:0EB9                 mov     word_1F1B2, ax
seg000:0EBC                 mov     word_1F1B4, dx
seg000:0EC0                 mov     ax, dx
seg000:0EC2                 and     ah, 7Fh
seg000:0EC5                 retf
seg000:0EC5 sub_E9E         endp
seg000:0EC5
seg000:0EC6
