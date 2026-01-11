seg006:2FC3 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2FC3
seg006:2FC3
seg006:2FC3 sub_10E13       proc near               ; CODE XREF: sub_10DFA:loc_10E0E␘p
seg006:2FC3                 mov     cx, word_2849A
seg006:2FC7                 dec     cx
seg006:2FC8                 shl     cx, 1
seg006:2FCA                 add     cx, 880Eh
seg006:2FCE                 mov     ax, 2
seg006:2FD1                 mov     si, ax
seg006:2FD3                 cmp     byte_28477, ah
seg006:2FD7                 jz      short loc_10E2B
seg006:2FD9                 sub     si, si
seg006:2FDB
seg006:2FDB loc_10E2B:                              ; CODE XREF: sub_10E13+14␘j
seg006:2FDB                 add     si, 880Eh
seg006:2FDF                 push    si
seg006:2FE0                 push    cx
seg006:2FE1                 call    sub_15647
seg006:2FE4                 add     sp, 4
seg006:2FE7                 retn
seg006:2FE7 sub_10E13       endp
seg006:2FE7
seg006:2FE8
