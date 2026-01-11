seg002:04BC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:04BC
seg002:04BC
seg002:04BC sub_7B8C        proc far                ; CODE XREF: sub_76D6+1C1␘p
seg002:04BC                 mov     byte_2A6BB, 1
seg002:04C1                 mov     al, byte_2A6B6
seg002:04C4                 sub     ah, ah
seg002:04C6                 push    ax
seg002:04C7                 call    sub_3A5C
seg002:04CC                 add     sp, 2
seg002:04CF                 sub     ax, ax
seg002:04D1                 push    ax
seg002:04D2                 mov     ax, 1
seg002:04D5                 push    ax
seg002:04D6                 mov     ax, 0Fh
seg002:04D9                 push    ax
seg002:04DA                 sub     ax, ax
seg002:04DC                 push    ax
seg002:04DD                 mov     ax, 0Fh
seg002:04E0                 push    ax
seg002:04E1                 sub     ax, ax
seg002:04E3                 push    ax
seg002:04E4                 mov     ax, 13Fh
seg002:04E7                 push    ax
seg002:04E8                 sub     ax, ax
seg002:04EA                 push    ax
seg002:04EB                 call    far ptr sub_17BE5
seg002:04F0                 add     sp, 10h
seg002:04F3                 mov     ax, 1
seg002:04F6                 mov     word_1F17A, ax
seg002:04F9                 push    ax
seg002:04FA                 call    far ptr sub_16BB0
seg002:04FF                 add     sp, 2
seg002:0502                 mov     ax, 240Ch
seg002:0505                 push    ds
seg002:0506                 push    ax
seg002:0507                 push    word_2D8AE
seg002:050B                 push    word_2D8AC
seg002:050F                 call    sub_A8EF
seg002:0514                 add     sp, 8
seg002:0517                 sub     ax, ax
seg002:0519                 push    ax
seg002:051A                 mov     ax, 7
seg002:051D                 push    ax
seg002:051E                 sub     ax, ax
seg002:0520                 push    ax
seg002:0521                 mov     ax, 98h ; 'ÿ'
seg002:0524                 push    ax
seg002:0525                 mov     ax, 17Ah
seg002:0528                 push    ax
seg002:0529                 mov     ax, 240Ch
seg002:052C                 push    ax
seg002:052D                 call    sub_7696
seg002:0532                 add     sp, 0Ch
seg002:0535                 push    cs
seg002:0536                 call    near ptr sub_949A
seg002:0539                 sub     ax, ax
seg002:053B                 mov     word_1F17A, ax
seg002:053E                 push    ax
seg002:053F                 call    far ptr sub_16BB0
seg002:0544                 add     sp, 2
seg002:0547                 sub     ax, ax
seg002:0549                 push    ax
seg002:054A                 mov     ax, 1
seg002:054D                 push    ax
seg002:054E                 mov     ax, 0C7h ; '¦'
seg002:0551                 push    ax
seg002:0552                 sub     ax, ax
seg002:0554                 push    ax
seg002:0555                 mov     ax, 67h ; 'g'
seg002:0558                 push    ax
seg002:0559                 mov     ax, 10h
seg002:055C                 push    ax
seg002:055D                 mov     ax, 13Fh
seg002:0560                 push    ax
seg002:0561                 sub     ax, ax
seg002:0563                 push    ax
seg002:0564                 call    far ptr sub_17BE5
seg002:0569                 add     sp, 10h
seg002:056C                 mov     al, 0FFh
seg002:056E                 mov     byte_2D8A7, al
seg002:0571                 mov     byte_2DB50, al
seg002:0574                 mov     byte_2BF46, al
seg002:0577                 mov     byte_2C18D, al
seg002:057A                 mov     byte_2A6FC, al
seg002:057D                 mov     byte_2D852, al
seg002:0580                 mov     byte_2BF42, 0
seg002:0585                 mov     byte_2BF82, 0
seg002:058A                 retf
seg002:058A sub_7B8C        endp
seg002:058A
seg002:058A ; ---------------------------------------------------------------------------
seg002:058B                 align 2
seg002:058C
