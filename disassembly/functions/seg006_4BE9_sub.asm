seg006:4BE9 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4BE9
seg006:4BE9
seg006:4BE9 sub_12A39       proc near               ; CODE XREF: sub_1118F+23␘p
seg006:4BE9                 inc     byte_2ACAB
seg006:4BED                 sub     ch, ch
seg006:4BEF                 mov     byte_2ACBA, ch
seg006:4BF3                 cmp     byte_28477, 0
seg006:4BF8                 jnz     short loc_12A66
seg006:4BFA                 dec     byte_2ACB8
seg006:4BFE                 jnz     short loc_12A66
seg006:4C00                 mov     al, byte_2ACB9
seg006:4C03                 inc     al
seg006:4C05                 and     al, 3
seg006:4C07                 mov     byte_2ACB9, al
seg006:4C0A                 mov     ah, 5Ah ; 'Z'
seg006:4C0C                 test    al, 1
seg006:4C0E                 jz      short loc_12A62
seg006:4C10                 mov     ah, 9
seg006:4C12
seg006:4C12 loc_12A62:                              ; CODE XREF: sub_12A39+25␘j
seg006:4C12                 mov     byte_2ACB8, ah
seg006:4C16
seg006:4C16 loc_12A66:                              ; CODE XREF: sub_12A39+F␘j
seg006:4C16                                         ; sub_12A39+15␘j
seg006:4C16                 inc     byte_2ACBB
seg006:4C1A                 mov     bx, word_2945F
seg006:4C1E                 shl     bx, 1
seg006:4C20                 jmp     short loc_12A7C
seg006:4C22 ; ---------------------------------------------------------------------------
seg006:4C22
seg006:4C22 loc_12A72:                              ; CODE XREF: sub_12A39+46␙j
seg006:4C22                 cmp     word ptr [bx-4D7Bh], 0
seg006:4C27                 jz      short loc_12A7C
seg006:4C29                 call    sub_12A82
seg006:4C2C
seg006:4C2C loc_12A7C:                              ; CODE XREF: sub_12A39+37␘j
seg006:4C2C                                         ; sub_12A39+3E␘j
seg006:4C2C                 sub     bx, 2
seg006:4C2F                 jns     short loc_12A72
seg006:4C31                 retn
seg006:4C31 sub_12A39       endp
seg006:4C31
seg006:4C32
