seg006:2C42 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2C42
seg006:2C42
seg006:2C42 sub_10A92       proc near               ; CODE XREF: sub_10566+48␘p
seg006:2C42                 push    es
seg006:2C43                 push    bx
seg006:2C44                 xchg    si, cx
seg006:2C46                 mov     al, [si]
seg006:2C48                 xchg    si, cx
seg006:2C4A                 sub     dx, dx
seg006:2C4C                 mov     byte_2A9C4, dh
seg006:2C50
seg006:2C50 loc_10AA0:                              ; CODE XREF: sub_10A92+70␙j
seg006:2C50                 push    di
seg006:2C51                 mov     bl, byte_2A9C1
seg006:2C55                 add     byte_2A9C4, bl
seg006:2C59                 push    cx
seg006:2C5A                 push    si
seg006:2C5B                 mov     bx, [si]
seg006:2C5D                 add     bx, 240Ch
seg006:2C61                 mov     si, cx
seg006:2C63                 mov     cl, [si]
seg006:2C65                 call    sub_10CD0
seg006:2C68                 pop     si
seg006:2C69                 pop     bx
seg006:2C6A                 pop     dx
seg006:2C6B                 sub     dx, di
seg006:2C6D                 neg     dx
seg006:2C6F                 push    si
seg006:2C70                 mov     si, word_2A9CB
seg006:2C74                 mov     cl, byte_2A9C1
seg006:2C78                 mov     es:[si], cl
seg006:2C7B                 mov     al, byte ptr word_2A9F5+1
seg006:2C7E                 shl     al, 1
seg006:2C80                 rcl     byte_2A9F4, 1
seg006:2C84                 rcl     byte ptr word_2A9F5, 1
seg006:2C88                 rcl     byte ptr word_2A9F5+1, 1
seg006:2C8C                 jnb     short loc_10AE5
seg006:2C8E                 inc     byte_2A9C4
seg006:2C92                 inc     byte ptr es:[si]
seg006:2C95
seg006:2C95 loc_10AE5:                              ; CODE XREF: sub_10A92+4A␘j
seg006:2C95                 pop     si
seg006:2C96                 mov     cx, bx
seg006:2C98                 add     cx, 2
seg006:2C9B                 inc     word_2A9CB
seg006:2C9F                 add     si, 2
seg006:2CA2                 dec     byte_2846D
seg006:2CA6                 jz      short loc_10B04
seg006:2CA8                 add     di, dx
seg006:2CAA                 cmp     di, word_2A9CF
seg006:2CAE                 jnb     short loc_10B04
seg006:2CB0                 sub     di, dx
seg006:2CB2                 jmp     short loc_10AA0
seg006:2CB4 ; ---------------------------------------------------------------------------
seg006:2CB4
seg006:2CB4 loc_10B04:                              ; CODE XREF: sub_10A92+64␘j
seg006:2CB4                                         ; sub_10A92+6C␘j
seg006:2CB4                 mov     bx, word_2A9CD
seg006:2CB8                 mov     es:[bx], dl
seg006:2CBB                 mov     al, byte_2A9C4
seg006:2CBE                 inc     bx
seg006:2CBF                 mov     es:[bx], al
seg006:2CC2                 pop     bx
seg006:2CC3                 pop     es
seg006:2CC4                 retn
seg006:2CC4 sub_10A92       endp
seg006:2CC4
seg006:2CC5
