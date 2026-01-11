seg006:4A6F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4A6F
seg006:4A6F
seg006:4A6F sub_128BF       proc near               ; CODE XREF: sub_1238C+11␘p
seg006:4A6F                 mov     bx, 946Dh
seg006:4A72                 mov     ax, word_284B9
seg006:4A75                 cmp     byte_2A777, 0
seg006:4A7A                 jz      short loc_128D2
seg006:4A7C                 mov     bx, 943Dh
seg006:4A7F                 mov     ax, 707h
seg006:4A82
seg006:4A82 loc_128D2:                              ; CODE XREF: sub_128BF+B␘j
seg006:4A82                 cmp     byte_2AD25, 0
seg006:4A87                 jz      short loc_128DA
seg006:4A89                 retn
seg006:4A8A ; ---------------------------------------------------------------------------
seg006:4A8A
seg006:4A8A loc_128DA:                              ; CODE XREF: sub_128BF+18␘j
seg006:4A8A                 push    ax
seg006:4A8B                 mov     si, 0C68h
seg006:4A8E                 mov     cx, 0Ch
seg006:4A91
seg006:4A91 loc_128E1:                              ; CODE XREF: sub_128BF+4F␙j
seg006:4A91                 mov     dx, [bx]
seg006:4A93                 add     bx, 2
seg006:4A96                 mov     ax, [bx]
seg006:4A98                 add     bx, 2
seg006:4A9B                 shl     dx, 1
seg006:4A9D                 shl     dx, 1
seg006:4A9F                 shl     dx, 1
seg006:4AA1                 shl     dx, 1
seg006:4AA3                 shl     dx, 1
seg006:4AA5                 cmp     byte_2A6C6, 0
seg006:4AAA                 jz      short loc_12903
seg006:4AAC                 sub     ax, 10h
seg006:4AAF                 sub     dx, 500h
seg006:4AB3
seg006:4AB3 loc_12903:                              ; CODE XREF: sub_128BF+3B␘j
seg006:4AB3                 mov     [si+560Eh], ax
seg006:4AB7                 mov     [si+498Eh], dx
seg006:4ABB                 add     si, 2
seg006:4ABE                 loop    loc_128E1
seg006:4AC0                 mov     ax, word_284B7
seg006:4AC3                 mov     word_2AA9B, ax
seg006:4AC6                 call    sub_1297C
seg006:4AC9                 add     sp, 2
seg006:4ACC                 retn
seg006:4ACC sub_128BF       endp
seg006:4ACC
seg006:4ACD
