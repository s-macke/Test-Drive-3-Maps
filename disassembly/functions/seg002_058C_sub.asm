seg002:058C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:058C
seg002:058C
seg002:058C sub_7C5C        proc far                ; CODE XREF: sub_76D6+1D2␘p
seg002:058C                 sub     ax, ax
seg002:058E                 push    ax
seg002:058F                 call    sub_1E040
seg002:0594                 add     sp, 2
seg002:0597                 mov     ax, 1
seg002:059A                 push    ax
seg002:059B                 sub     ax, ax
seg002:059D                 push    ax
seg002:059E                 mov     ax, 0Fh
seg002:05A1                 push    ax
seg002:05A2                 sub     ax, ax
seg002:05A4                 push    ax
seg002:05A5                 mov     ax, 0Fh
seg002:05A8                 push    ax
seg002:05A9                 sub     ax, ax
seg002:05AB                 push    ax
seg002:05AC                 mov     ax, 13Fh
seg002:05AF                 push    ax
seg002:05B0                 sub     ax, ax
seg002:05B2                 push    ax
seg002:05B3                 call    far ptr sub_17BE5
seg002:05B8                 add     sp, 10h
seg002:05BB                 sub     ax, ax
seg002:05BD                 mov     word_1F17A, ax
seg002:05C0                 push    ax
seg002:05C1                 call    far ptr sub_16BB0
seg002:05C6                 add     sp, 2
seg002:05C9                 sub     ax, ax
seg002:05CB                 push    ax
seg002:05CC                 call    far ptr sub_16A93
seg002:05D1                 add     sp, 2
seg002:05D4                 mov     ax, 0Fh
seg002:05D7                 push    ax
seg002:05D8                 sub     ax, ax
seg002:05DA                 push    ax
seg002:05DB                 mov     ax, 13Fh
seg002:05DE                 push    ax
seg002:05DF                 sub     ax, ax
seg002:05E1                 push    ax
seg002:05E2                 call    far ptr sub_172BD
seg002:05E7                 add     sp, 8
seg002:05EA                 push    cs
seg002:05EB                 call    near ptr sub_7CC4
seg002:05EE                 mov     byte_2BF82, 1
seg002:05F3                 retf
seg002:05F3 sub_7C5C        endp
seg002:05F3
seg002:05F4
