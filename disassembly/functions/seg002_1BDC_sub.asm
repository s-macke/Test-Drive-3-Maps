seg002:1BDC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:1BDC
seg002:1BDC
seg002:1BDC sub_92AC        proc far                ; CODE XREF: sub_76D6+109␘p
seg002:1BDC                 mov     ax, 240Ch
seg002:1BDF                 push    ds
seg002:1BE0                 push    ax
seg002:1BE1                 push    word_2D84C
seg002:1BE5                 push    word_2D84A
seg002:1BE9                 call    sub_A8EF
seg002:1BEE                 add     sp, 8
seg002:1BF1                 mov     ax, 2
seg002:1BF4                 push    ax
seg002:1BF5                 call    sub_D038
seg002:1BFA                 add     sp, 2
seg002:1BFD                 sub     ax, ax
seg002:1BFF                 mov     word_1F17A, ax
seg002:1C02                 push    ax
seg002:1C03                 call    far ptr sub_16BB0
seg002:1C08                 add     sp, 2
seg002:1C0B                 cmp     word_2D628, 13h
seg002:1C10                 jnz     short loc_92EC
seg002:1C12                 mov     ax, 5Fh ; '_'
seg002:1C15                 push    ax
seg002:1C16                 mov     ax, 23C2h
seg002:1C19                 jmp     short loc_92F3
seg002:1C19 ; ---------------------------------------------------------------------------
seg002:1C1B                 align 2
seg002:1C1C
seg002:1C1C loc_92EC:                               ; CODE XREF: sub_92AC+34␘j
seg002:1C1C                 mov     ax, 5Fh ; '_'
seg002:1C1F                 push    ax
seg002:1C20                 mov     ax, 19E1h
seg002:1C23
seg002:1C23 loc_92F3:                               ; CODE XREF: sub_92AC+3D␘j
seg002:1C23                 push    ax
seg002:1C24                 mov     ax, 240Ch
seg002:1C27                 push    ax
seg002:1C28                 call    sub_D681
seg002:1C2D                 add     sp, 6
seg002:1C30                 call    sub_158ED
seg002:1C35                 mov     word_2AABE, 0
seg002:1C3B                 call    sub_D300
seg002:1C40                 retf
seg002:1C40 sub_92AC        endp
seg002:1C40
seg002:1C40 ; ---------------------------------------------------------------------------
seg002:1C41                 align 2
seg002:1C42
