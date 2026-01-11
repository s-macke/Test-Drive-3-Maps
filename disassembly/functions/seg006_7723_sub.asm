seg006:7723 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7723
seg006:7723
seg006:7723 sub_15573       proc near               ; CODE XREF: sub_10DFA+F␘p
seg006:7723                 mov     bx, 2
seg006:7726                 mov     cx, word_2849A
seg006:772A                 dec     cx
seg006:772B                 shl     cx, 1
seg006:772D                 add     cx, 880Eh
seg006:7731                 mov     si, bx
seg006:7733                 cmp     byte_28477, bh
seg006:7737                 jz      short loc_1558B
seg006:7739                 sub     si, si
seg006:773B
seg006:773B loc_1558B:                              ; CODE XREF: sub_15573+14␘j
seg006:773B                 add     si, 880Eh
seg006:773F                 push    si
seg006:7740                 push    cx
seg006:7741                 call    sub_15598
seg006:7744                 add     sp, 4
seg006:7747                 retn
seg006:7747 sub_15573       endp
seg006:7747
seg006:7748
