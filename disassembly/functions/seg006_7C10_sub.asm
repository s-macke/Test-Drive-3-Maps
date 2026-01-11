seg006:7C10 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7C10
seg006:7C10
seg006:7C10 sub_15A60       proc near               ; CODE XREF: sub_15867+73␘p
seg006:7C10                 mov     dx, ax
seg006:7C12                 sub     dx, cx
seg006:7C14                 cmp     dx, 8000h
seg006:7C18                 jnz     short loc_15A6B
seg006:7C1A                 retn
seg006:7C1B ; ---------------------------------------------------------------------------
seg006:7C1B
seg006:7C1B loc_15A6B:                              ; CODE XREF: sub_15A60+8␘j
seg006:7C1B                 sub     dx, dx
seg006:7C1D                 mov     word_2AAAD, dx
seg006:7C21                 mov     word_2AAAF, dx
seg006:7C25                 mov     byte_2AA99, 3
seg006:7C2A                 mov     word_2844C, dx
seg006:7C2E                 mov     word_2844E, dx
seg006:7C32                 mov     word_2AAB1, ax
seg006:7C35                 mov     word_2AAB3, cx
seg006:7C39                 mov     word_2AA9D, dx
seg006:7C3D                 mov     word_2AA9F, dx
seg006:7C41                 mov     dx, [bx+7B8Eh]
seg006:7C45                 mov     bx, [si+7B8Eh]
seg006:7C49                 sar     dx, 1
seg006:7C4B                 sar     bx, 1
seg006:7C4D                 mov     si, ax
seg006:7C4F                 mov     bp, cx
seg006:7C51                 cmp     dx, bx
seg006:7C53                 jle     short loc_15AA9
seg006:7C55                 xchg    bp, si
seg006:7C57                 xchg    bx, dx
seg006:7C59
seg006:7C59 loc_15AA9:                              ; CODE XREF: sub_15A60+43␘j
seg006:7C59                 mov     word_2AA86, dx
seg006:7C5D                 mov     ax, 13h
seg006:7C60                 sub     ax, bx
seg006:7C62                 js      short loc_15AB7
seg006:7C64                 mov     word_2AAAD, ax
seg006:7C67
seg006:7C67 loc_15AB7:                              ; CODE XREF: sub_15A60+52␘j
seg006:7C67                 sub     bx, dx
seg006:7C69                 inc     bx
seg006:7C6A                 mov     word_2AAAB, bx
seg006:7C6E                 dec     bx
seg006:7C6F                 jz      short loc_15AD9
seg006:7C71                 mov     ax, bp
seg006:7C73                 sub     ax, si
seg006:7C75                 neg     ax
seg006:7C77                 cwd
seg006:7C78                 mov     bp, si
seg006:7C7A                 idiv    bx
seg006:7C7C                 cmp     ax, word_2AA9D
seg006:7C80                 jle     short loc_15AD6
seg006:7C82                 xchg    ax, word_2AA9D
seg006:7C86
seg006:7C86 loc_15AD6:                              ; CODE XREF: sub_15A60+70␘j
seg006:7C86                 mov     word_2AA9F, ax
seg006:7C89
seg006:7C89 loc_15AD9:                              ; CODE XREF: sub_15A60+5F␘j
seg006:7C89                 call    sub_15ADD
seg006:7C8C                 retn
seg006:7C8C sub_15A60       endp
seg006:7C8C
seg006:7C8D
