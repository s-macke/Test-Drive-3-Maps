seg001:33C2 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:33C2
seg001:33C2
seg001:33C2 sub_5102        proc far                ; CODE XREF: sub_4E16+11␘p
seg001:33C2                                         ; sub_4E16+1F2␘p
seg001:33C2                 xor     byte_280DC, 80h
seg001:33C7                 mov     ax, 1057h
seg001:33CA                 push    ax
seg001:33CB                 mov     ax, 0AC1h
seg001:33CE                 push    ax
seg001:33CF                 call    sub_195EA
seg001:33D4                 add     sp, 4
seg001:33D7                 mov     ax, 0ABAh
seg001:33DA                 push    ax
seg001:33DB                 call    sub_CA8
seg001:33E0                 add     sp, 2
seg001:33E3                 mov     ax, 1
seg001:33E6                 mov     word_1F17A, ax
seg001:33E9                 push    ax
seg001:33EA                 call    far ptr sub_16BB0
seg001:33EF                 add     sp, 2
seg001:33F2                 mov     ax, 0Fh
seg001:33F5                 push    ax
seg001:33F6                 call    far ptr sub_16A93
seg001:33FB                 add     sp, 2
seg001:33FE                 mov     ax, 53h ; 'S'
seg001:3401                 push    ax
seg001:3402                 push    ax
seg001:3403                 mov     ax, 6Fh ; 'o'
seg001:3406                 push    ax
seg001:3407                 sub     ax, ax
seg001:3409                 push    ax
seg001:340A                 call    far ptr sub_172BD
seg001:340F                 add     sp, 8
seg001:3412                 mov     ax, word_1FBDE
seg001:3415                 mov     cx, ax
seg001:3417                 shl     ax, 1
seg001:3419                 add     ax, cx
seg001:341B                 shl     ax, 1
seg001:341D                 add     ax, 9E0h
seg001:3420                 push    ax
seg001:3421                 mov     ax, 0ABCh
seg001:3424                 push    ax
seg001:3425                 call    sub_195EA
seg001:342A                 add     sp, 4
seg001:342D                 mov     ax, 105Eh
seg001:3430                 push    ax
seg001:3431                 mov     ax, 0AC1h
seg001:3434                 push    ax
seg001:3435                 call    sub_195EA
seg001:343A                 add     sp, 4
seg001:343D                 push    word_2BF4E
seg001:3441                 push    word_2BF4C
seg001:3445                 mov     ax, 0ABAh
seg001:3448                 push    ax
seg001:3449                 call    sub_E26
seg001:344E                 add     sp, 6
seg001:3451                 mov     ax, 240Ch
seg001:3454                 push    ds
seg001:3455                 push    ax
seg001:3456                 push    word_2BF4E
seg001:345A                 push    word_2BF4C
seg001:345E                 call    sub_A8EF
seg001:3463                 add     sp, 8
seg001:3466                 sub     ax, ax
seg001:3468                 push    ax
seg001:3469                 mov     ax, 0C7h ; '¦'
seg001:346C                 push    ax
seg001:346D                 mov     ax, 70h ; 'p'
seg001:3470                 push    ax
seg001:3471                 mov     ax, 0D0h ; '-'
seg001:3474                 push    ax
seg001:3475                 push    word_1FC46
seg001:3479                 mov     ax, 240Ch
seg001:347C                 push    ax
seg001:347D                 push    cs
seg001:347E                 call    near ptr sub_7696
seg001:3481                 add     sp, 0Ch
seg001:3484                 mov     ax, 1065h
seg001:3487                 push    ax
seg001:3488                 mov     ax, 0AC1h
seg001:348B                 push    ax
seg001:348C                 call    sub_195EA
seg001:3491                 add     sp, 4
seg001:3494                 push    word_2BF4E
seg001:3498                 push    word_2BF4C
seg001:349C                 mov     ax, 0ABAh
seg001:349F                 push    ax
seg001:34A0                 call    sub_E26
seg001:34A5                 add     sp, 6
seg001:34A8                 mov     ax, 240Ch
seg001:34AB                 push    ds
seg001:34AC                 push    ax
seg001:34AD                 push    word_2BF4E
seg001:34B1                 push    word_2BF4C
seg001:34B5                 call    sub_A8EF
seg001:34BA                 add     sp, 8
seg001:34BD                 sub     ax, ax
seg001:34BF                 push    ax
seg001:34C0                 mov     ax, 52h ; 'R'
seg001:34C3                 push    ax
seg001:34C4                 sub     ax, ax
seg001:34C6                 push    ax
seg001:34C7                 mov     ax, 70h ; 'p'
seg001:34CA                 push    ax
seg001:34CB                 push    word_1FC36
seg001:34CF                 mov     ax, 240Ch
seg001:34D2                 push    ax
seg001:34D3                 push    cs
seg001:34D4                 call    near ptr sub_7696
seg001:34D7                 add     sp, 0Ch
seg001:34DA                 mov     ax, 106Ah
seg001:34DD                 push    ax
seg001:34DE                 mov     ax, 0AC1h
seg001:34E1                 push    ax
seg001:34E2                 call    sub_195EA
seg001:34E7                 add     sp, 4
seg001:34EA                 push    word_2BF4E
seg001:34EE                 push    word_2BF4C
seg001:34F2                 mov     ax, 0ABAh
seg001:34F5                 push    ax
seg001:34F6                 call    sub_E26
seg001:34FB                 add     sp, 6
seg001:34FE                 mov     ax, 240Ch
seg001:3501                 push    ds
seg001:3502                 push    ax
seg001:3503                 push    word_2BF4E
seg001:3507                 push    word_2BF4C
seg001:350B                 call    sub_A8EF
seg001:3510                 add     sp, 8
seg001:3513                 sub     ax, ax
seg001:3515                 push    ax
seg001:3516                 mov     ax, 0C7h ; '¦'
seg001:3519                 push    ax
seg001:351A                 sub     ax, ax
seg001:351C                 push    ax
seg001:351D                 mov     ax, 70h ; 'p'
seg001:3520                 push    ax
seg001:3521                 push    word_1FC38
seg001:3525                 mov     ax, 240Ch
seg001:3528                 push    ax
seg001:3529                 push    cs
seg001:352A                 call    near ptr sub_7696
seg001:352D                 add     sp, 0Ch
seg001:3530                 mov     ax, 106Fh
seg001:3533                 push    ax
seg001:3534                 mov     ax, 0AC1h
seg001:3537                 push    ax
seg001:3538                 call    sub_195EA
seg001:353D                 add     sp, 4
seg001:3540                 push    word_2BF4E
seg001:3544                 push    word_2BF4C
seg001:3548                 mov     ax, 0ABAh
seg001:354B                 push    ax
seg001:354C                 call    sub_E26
seg001:3551                 add     sp, 6
seg001:3554                 mov     ax, 240Ch
seg001:3557                 push    ds
seg001:3558                 push    ax
seg001:3559                 push    word_2BF4E
seg001:355D                 push    word_2BF4C
seg001:3561                 call    sub_A8EF
seg001:3566                 add     sp, 8
seg001:3569                 sub     ax, ax
seg001:356B                 push    ax
seg001:356C                 mov     ax, 52h ; 'R'
seg001:356F                 push    ax
seg001:3570                 mov     ax, 70h ; 'p'
seg001:3573                 push    ax
seg001:3574                 mov     ax, 0D0h ; '-'
seg001:3577                 push    ax
seg001:3578                 push    word_1FC30
seg001:357C                 mov     ax, 240Ch
seg001:357F                 push    ax
seg001:3580                 push    cs
seg001:3581                 call    near ptr sub_7696
seg001:3584                 add     sp, 0Ch
seg001:3587                 push    cs
seg001:3588                 call    near ptr sub_391C
seg001:358B                 mov     ax, 1
seg001:358E                 mov     word_1F17A, ax
seg001:3591                 push    ax
seg001:3592                 call    far ptr sub_16BB0
seg001:3597                 add     sp, 2
seg001:359A                 mov     ax, 1074h
seg001:359D                 push    ax
seg001:359E                 mov     ax, 0AC1h
seg001:35A1                 push    ax
seg001:35A2                 call    sub_195EA
seg001:35A7                 add     sp, 4
seg001:35AA                 push    word_2BF4E
seg001:35AE                 push    word_2BF4C
seg001:35B2                 mov     ax, 0ABAh
seg001:35B5                 push    ax
seg001:35B6                 call    sub_E26
seg001:35BB                 add     sp, 6
seg001:35BE                 mov     ax, 240Ch
seg001:35C1                 push    ds
seg001:35C2                 push    ax
seg001:35C3                 push    word_2BF4E
seg001:35C7                 push    word_2BF4C
seg001:35CB                 call    sub_A8EF
seg001:35D0                 add     sp, 8
seg001:35D3                 sub     ax, ax
seg001:35D5                 push    ax
seg001:35D6                 mov     ax, 0C7h ; '¦'
seg001:35D9                 push    ax
seg001:35DA                 mov     ax, 70h ; 'p'
seg001:35DD                 push    ax
seg001:35DE                 mov     ax, 0D0h ; '-'
seg001:35E1                 push    ax
seg001:35E2                 push    word_1FC48
seg001:35E6                 mov     ax, 240Ch
seg001:35E9                 push    ax
seg001:35EA                 push    cs
seg001:35EB                 call    near ptr sub_7696
seg001:35EE                 add     sp, 0Ch
seg001:35F1                 sub     ax, ax
seg001:35F3                 mov     word_1F17A, ax
seg001:35F6                 push    ax
seg001:35F7                 call    far ptr sub_16BB0
seg001:35FC                 add     sp, 2
seg001:35FF                 retf
seg001:35FF sub_5102        endp
seg001:35FF
seg001:3600
