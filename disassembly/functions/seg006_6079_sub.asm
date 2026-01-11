seg006:6079 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6079
seg006:6079
seg006:6079 sub_13EC9       proc far                ; CODE XREF: sub_76D6+3B9␘P
seg006:6079                 push    si
seg006:607A                 mov     bx, 2
seg006:607D                 mov     si, 0
seg006:6080                 call    sub_13F16
seg006:6083                 mov     bx, 4
seg006:6086                 mov     si, 3
seg006:6089                 call    sub_13F16
seg006:608C                 mov     ax, word_2ACA5
seg006:608F                 mov     cl, byte_2ACA7
seg006:6093                 mov     byte_2DAFF, cl
seg006:6097                 mov     byte_2DB00, ah
seg006:609B                 mov     byte_2DB01, al
seg006:609E                 mov     ax, word_28597
seg006:60A1                 mov     byte_2DB07, ah
seg006:60A5                 mov     byte_2DB08, al
seg006:60A8                 mov     ax, word_2ACA8
seg006:60AB                 mov     cl, byte_2ACAA
seg006:60AF                 mov     byte_2DB1A, cl
seg006:60B3                 mov     byte_2DB1B, ah
seg006:60B7                 mov     byte_2DB1C, al
seg006:60BA                 mov     ax, word_28599
seg006:60BD                 mov     byte_2DB22, ah
seg006:60C1                 mov     byte_2DB23, al
seg006:60C4                 pop     si
seg006:60C5                 retf
seg006:60C5 sub_13EC9       endp
seg006:60C5
seg006:60C6
