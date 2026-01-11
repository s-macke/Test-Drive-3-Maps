seg002:10AA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:10AA
seg002:10AA
seg002:10AA sub_877A        proc far                ; CODE XREF: sub_76D6+48␘p
seg002:10AA                                         ; sub_76D6+25C␘p
seg002:10AA                 cmp     byte_2A6C5, 0
seg002:10AF                 jz      short loc_878C
seg002:10B1                 cmp     byte_2BF42, 0
seg002:10B6                 jnz     short loc_878C
seg002:10B8                 push    cs
seg002:10B9                 call    near ptr sub_8808
seg002:10BC
seg002:10BC loc_878C:                               ; CODE XREF: sub_877A+5␘j
seg002:10BC                                         ; sub_877A+C␘j
seg002:10BC                 cmp     byte_2D8A6, 0
seg002:10C1                 jnz     short loc_87BA
seg002:10C3                 mov     al, byte_2C184
seg002:10C6                 cmp     byte_2BF47, al
seg002:10CA                 jz      short loc_87BA
seg002:10CC                 jbe     short loc_87A4
seg002:10CE                 inc     byte_2C184
seg002:10D2                 jmp     short loc_87A8
seg002:10D4 ; ---------------------------------------------------------------------------
seg002:10D4
seg002:10D4 loc_87A4:                               ; CODE XREF: sub_877A+22␘j
seg002:10D4                 dec     byte_2C184
seg002:10D8
seg002:10D8 loc_87A8:                               ; CODE XREF: sub_877A+28␘j
seg002:10D8                 push    cs
seg002:10D9                 call    near ptr sub_8808
seg002:10DC                 mov     al, byte_2BF47
seg002:10DF                 cmp     byte_2C184, al
seg002:10E3                 jnz     short loc_87BA
seg002:10E5                 mov     byte_2D8A6, 10h
seg002:10EA
seg002:10EA loc_87BA:                               ; CODE XREF: sub_877A+17␘j
seg002:10EA                                         ; sub_877A+20␘j ...
seg002:10EA                 cmp     byte_2A6C5, 0
seg002:10EF                 jnz     short loc_87FB
seg002:10F1                 cmp     byte_2D8A6, 0
seg002:10F6                 jnz     short loc_87FB
seg002:10F8                 cmp     byte_2BF42, 1
seg002:10FD                 jnz     short loc_87FB
seg002:10FF                 sub     ax, ax
seg002:1101                 push    ax
seg002:1102                 mov     ax, 1
seg002:1105                 push    ax
seg002:1106                 mov     ax, 0ABh ; '½'
seg002:1109                 push    ax
seg002:110A                 mov     ax, 0F8h ; '°'
seg002:110D                 push    ax
seg002:110E                 mov     ax, 97h ; 'ù'
seg002:1111                 push    ax
seg002:1112                 mov     ax, 68h ; 'h'
seg002:1115                 push    ax
seg002:1116                 mov     ax, 107h
seg002:1119                 push    ax
seg002:111A                 mov     ax, 0D0h ; '-'
seg002:111D                 push    ax
seg002:111E                 call    far ptr sub_17BE5
seg002:1123                 add     sp, 10h
seg002:1126                 mov     byte_2BF42, 0
seg002:112B
seg002:112B loc_87FB:                               ; CODE XREF: sub_877A+45␘j
seg002:112B                                         ; sub_877A+4C␘j ...
seg002:112B                 cmp     byte_2D8A6, 0
seg002:1130                 jz      short locret_8806
seg002:1132                 dec     byte_2D8A6
seg002:1136
seg002:1136 locret_8806:                            ; CODE XREF: sub_877A+86␘j
seg002:1136                 retf
seg002:1136 sub_877A        endp
seg002:1136
seg002:1136 ; ---------------------------------------------------------------------------
seg002:1137                 align 2
seg002:1138
