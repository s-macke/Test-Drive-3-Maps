seg006:7A17 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7A17
seg006:7A17
seg006:7A17 sub_15867       proc near               ; CODE XREF: sub_11408+177␘p
seg006:7A17                 cmp     byte_2BF82, 0
seg006:7A1C                 jnz     short locret_15875
seg006:7A1E                 cmp     byte_2A6BC, 0
seg006:7A23                 jnz     short loc_15876
seg006:7A25
seg006:7A25 locret_15875:                           ; CODE XREF: sub_15867+5␘j
seg006:7A25                 retn
seg006:7A26 ; ---------------------------------------------------------------------------
seg006:7A26
seg006:7A26 loc_15876:                              ; CODE XREF: sub_15867+C␘j
seg006:7A26                 sub     bx, bx
seg006:7A28                 mov     byte_2AD29, bl
seg006:7A2C                 mov     si, 2
seg006:7A2F                 mov     ax, [bx+7B8Eh]
seg006:7A33                 push    ax
seg006:7A34                 mov     ax, [si+7B8Eh]
seg006:7A38                 push    ax
seg006:7A39                 mov     word_2AA86, 0FFFFh
seg006:7A3F                 mov     ax, word_2847B
seg006:7A42                 neg     ax
seg006:7A44                 sub     dx, dx
seg006:7A46                 mov     cl, byte_2848C
seg006:7A4A                 or      cl, cl
seg006:7A4C                 jz      short loc_158AB
seg006:7A4E                 mov     ch, cl
seg006:7A50                 jns     short loc_158A4
seg006:7A52                 neg     cl
seg006:7A54
seg006:7A54 loc_158A4:                              ; CODE XREF: sub_15867+39␘j
seg006:7A54                 mov     dx, 580h
seg006:7A57                 sar     dx, cl
seg006:7A59                 sub     ax, dx
seg006:7A5B
seg006:7A5B loc_158AB:                              ; CODE XREF: sub_15867+35␘j
seg006:7A5B                 sar     ax, 1
seg006:7A5D                 add     ax, 0Fh
seg006:7A60                 shl     dx, 1
seg006:7A62                 add     dx, ax
seg006:7A64                 mov     [si+7B8Eh], dx
seg006:7A68                 mov     [bx+7B8Eh], ax
seg006:7A6C                 mov     ax, word_2AA8C
seg006:7A6F                 mov     word_2AA9B, ax
seg006:7A72                 sub     ax, ax
seg006:7A74                 mov     cx, 0B00h
seg006:7A77                 call    sub_159A5
seg006:7A7A                 sub     bx, bx
seg006:7A7C                 mov     si, 2
seg006:7A7F                 mov     ax, word_2AA8E
seg006:7A82                 mov     word_2AA9B, ax
seg006:7A85                 sub     ax, ax
seg006:7A87                 mov     cx, 0B00h
seg006:7A8A                 call    sub_15A60
seg006:7A8D                 sub     bx, bx
seg006:7A8F                 mov     si, 2
seg006:7A92                 pop     ax
seg006:7A93                 mov     [si+7B8Eh], ax
seg006:7A97                 pop     ax
seg006:7A98                 mov     [bx+7B8Eh], ax
seg006:7A9C                 retn
seg006:7A9C sub_15867       endp
seg006:7A9C
seg006:7A9D
