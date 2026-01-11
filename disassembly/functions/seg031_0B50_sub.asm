seg031:0B50 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0B50
seg031:0B50
seg031:0B50 sub_199B0       proc far                ; CODE XREF: sub_1901B+15␘P
seg031:0B50                 push    si
seg031:0B51                 xor     si, si
seg031:0B53                 mov     cx, 42h ; 'B'
seg031:0B56                 xor     ah, ah
seg031:0B58                 cld
seg031:0B59
seg031:0B59 loc_199B9:                              ; CODE XREF: sub_199B0+C␙j
seg031:0B59                 lodsb
seg031:0B5A                 xor     ah, al
seg031:0B5C                 loop    loc_199B9
seg031:0B5E                 xor     ah, 55h
seg031:0B61                 jz      short loc_199D4
seg031:0B63                 call    sub_19986
seg031:0B68                 mov     ax, 1
seg031:0B6B                 push    ax
seg031:0B6C                 call    sub_19A01
seg031:0B71                 mov     ax, 1
seg031:0B74
seg031:0B74 loc_199D4:                              ; CODE XREF: sub_199B0+11␘j
seg031:0B74                 pop     si
seg031:0B75                 retf
seg031:0B75 sub_199B0       endp
seg031:0B75
seg031:0B76
