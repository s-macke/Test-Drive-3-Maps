seg002:19A6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:19A6
seg002:19A6
seg002:19A6 sub_9076        proc far                ; CODE XREF: sub_76D6+102␘p
seg002:19A6                 mov     ax, 1
seg002:19A9                 mov     word_1F17A, ax
seg002:19AC                 push    ax
seg002:19AD                 call    far ptr sub_16BB0
seg002:19B2                 add     sp, 2
seg002:19B5                 mov     ax, 240Ch
seg002:19B8                 push    ds
seg002:19B9                 push    ax
seg002:19BA                 push    word_2D842
seg002:19BE                 push    word_2D840
seg002:19C2                 call    sub_A8EF
seg002:19C7                 add     sp, 8
seg002:19CA                 mov     byte_280DC, 0
seg002:19CF                 cmp     word_2D628, 13h
seg002:19D4                 jnz     short loc_90BA
seg002:19D6                 sub     ax, ax
seg002:19D8                 push    ax
seg002:19D9                 mov     ax, 5Fh ; '_'
seg002:19DC                 push    ax
seg002:19DD                 sub     ax, ax
seg002:19DF                 push    ax
seg002:19E0                 mov     ax, 0A0h ; 'á'
seg002:19E3                 push    ax
seg002:19E4                 mov     ax, 1729h
seg002:19E7                 jmp     short loc_90CB
seg002:19E7 ; ---------------------------------------------------------------------------
seg002:19E9                 align 2
seg002:19EA
seg002:19EA loc_90BA:                               ; CODE XREF: sub_9076+2E␘j
seg002:19EA                 sub     ax, ax
seg002:19EC                 push    ax
seg002:19ED                 mov     ax, 5Fh ; '_'
seg002:19F0                 push    ax
seg002:19F1                 sub     ax, ax
seg002:19F3                 push    ax
seg002:19F4                 mov     ax, 0A0h ; 'á'
seg002:19F7                 push    ax
seg002:19F8                 mov     ax, 12EAh
seg002:19FB
seg002:19FB loc_90CB:                               ; CODE XREF: sub_9076+41␘j
seg002:19FB                 push    ax
seg002:19FC                 mov     ax, 240Ch
seg002:19FF                 push    ax
seg002:1A00                 call    sub_7696
seg002:1A05                 add     sp, 0Ch
seg002:1A08                 mov     ax, 6
seg002:1A0B                 push    ax
seg002:1A0C                 call    sub_D038
seg002:1A11                 add     sp, 2
seg002:1A14                 mov     ax, 1
seg002:1A17                 push    ax
seg002:1A18                 push    ax
seg002:1A19                 mov     ax, 5Fh ; '_'
seg002:1A1C                 push    ax
seg002:1A1D                 mov     ax, 0A0h ; 'á'
seg002:1A20                 push    ax
seg002:1A21                 mov     ax, 5Fh ; '_'
seg002:1A24                 push    ax
seg002:1A25                 sub     ax, ax
seg002:1A27                 push    ax
seg002:1A28                 mov     ax, 9Fh ; 'ƒ'
seg002:1A2B                 push    ax
seg002:1A2C                 sub     ax, ax
seg002:1A2E                 push    ax
seg002:1A2F                 call    far ptr sub_17BE5
seg002:1A34                 add     sp, 10h
seg002:1A37                 push    cs
seg002:1A38                 call    near ptr sub_911E
seg002:1A3B                 sub     ax, ax
seg002:1A3D                 mov     word_1F17A, ax
seg002:1A40                 push    ax
seg002:1A41                 call    far ptr sub_16BB0
seg002:1A46                 add     sp, 2
seg002:1A49                 push    cs
seg002:1A4A                 call    near ptr sub_949A
seg002:1A4D                 retf
seg002:1A4D sub_9076        endp
seg002:1A4D
seg002:1A4E
