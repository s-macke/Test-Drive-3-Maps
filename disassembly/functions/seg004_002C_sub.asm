seg004:002C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:002C
seg004:002C
seg004:002C sub_A8DC        proc far                ; CODE XREF: sub_1344+D0␘P
seg004:002C                 push    si
seg004:002D                 push    di
seg004:002E                 push    es
seg004:002F                 push    ds
seg004:0030                 push    bp
seg004:0031                 mov     es, word_20798
seg004:0035                 mov     ah, 49h
seg004:0037                 int     21h             ; DOS - 2+ - FREE MEMORY
seg004:0037                                         ; ES = segment address of area to be freed
seg004:0039                 pop     bp
seg004:003A                 pop     ds
seg004:003B                 pop     es
seg004:003C                 pop     di
seg004:003D                 pop     si
seg004:003E                 retf
seg004:003E sub_A8DC        endp
seg004:003E
seg004:003F
