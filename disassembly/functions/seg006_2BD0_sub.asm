seg006:2BD0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2BD0
seg006:2BD0
seg006:2BD0 sub_10A20       proc near               ; CODE XREF: sub_10566:loc_105B3␘p
seg006:2BD0                 push    es
seg006:2BD1                 push    bx
seg006:2BD2                 xchg    si, cx
seg006:2BD4                 mov     al, [si]
seg006:2BD6                 xchg    si, cx
seg006:2BD8                 sub     dx, dx
seg006:2BDA                 mov     byte_2A9C4, dh
seg006:2BDE
seg006:2BDE loc_10A2E:                              ; CODE XREF: sub_10A20+5F␙j
seg006:2BDE                 mov     al, byte ptr word_2A9F5+1
seg006:2BE1                 shl     al, 1
seg006:2BE3                 rcl     byte_2A9F4, 1
seg006:2BE7                 rcl     byte ptr word_2A9F5, 1
seg006:2BEB                 rcl     byte ptr word_2A9F5+1, 1
seg006:2BEF                 jb      short loc_10A44
seg006:2BF1                 jmp     short loc_10A69
seg006:2BF1 ; ---------------------------------------------------------------------------
seg006:2BF3                 align 2
seg006:2BF4
seg006:2BF4 loc_10A44:                              ; CODE XREF: sub_10A20+1F␘j
seg006:2BF4                 inc     byte_2A9C4
seg006:2BF8                 push    cx
seg006:2BF9                 push    si
seg006:2BFA                 mov     bx, [si]
seg006:2BFC                 add     bx, 240Ch
seg006:2C00                 mov     si, word_2A9CB
seg006:2C04                 mov     byte ptr es:[si], 1
seg006:2C08                 mov     si, cx
seg006:2C0A                 mov     cl, [si]
seg006:2C0C                 call    sub_10C50
seg006:2C0F                 pop     si
seg006:2C10                 pop     cx
seg006:2C11                 inc     word_2A9CB
seg006:2C15                 sub     dx, di
seg006:2C17                 neg     dx
seg006:2C19
seg006:2C19 loc_10A69:                              ; CODE XREF: sub_10A20+21␘j
seg006:2C19                 add     cx, 2
seg006:2C1C                 add     si, 2
seg006:2C1F                 dec     byte_2846D
seg006:2C23                 jz      short loc_10A81
seg006:2C25                 add     di, dx
seg006:2C27                 cmp     di, word_2A9CF
seg006:2C2B                 jnb     short loc_10A81
seg006:2C2D                 sub     di, dx
seg006:2C2F                 jmp     short loc_10A2E
seg006:2C31 ; ---------------------------------------------------------------------------
seg006:2C31
seg006:2C31 loc_10A81:                              ; CODE XREF: sub_10A20+53␘j
seg006:2C31                                         ; sub_10A20+5B␘j
seg006:2C31                 mov     bx, word_2A9CD
seg006:2C35                 mov     es:[bx], dl
seg006:2C38                 mov     al, byte_2A9C4
seg006:2C3B                 inc     bx
seg006:2C3C                 mov     es:[bx], al
seg006:2C3F                 pop     bx
seg006:2C40                 pop     es
seg006:2C41                 retn
seg006:2C41 sub_10A20       endp
seg006:2C41
seg006:2C42
