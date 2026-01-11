seg006:0999 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0999
seg006:0999
seg006:0999 sub_E7E9        proc near               ; CODE XREF: sub_153B8+25␙p
seg006:0999                 cmp     word_1F16A, 1
seg006:099E                 jnz     short loc_E84B
seg006:09A0                 cmp     byte_28477, 0
seg006:09A5                 jnz     short loc_E84B
seg006:09A7                 sub     bx, bx
seg006:09A9                 cmp     byte_2A6F1, bl
seg006:09AD                 jz      short loc_E820
seg006:09AF                 inc     byte_2A6F2
seg006:09B3                 mov     al, byte_2A6F2
seg006:09B6                 mov     ah, al
seg006:09B8                 shr     ah, 1
seg006:09BA                 add     al, ah
seg006:09BC                 shr     al, 1
seg006:09BE                 mov     byte_2A6F4, al
seg006:09C1                 cmp     byte_2A6F2, 5
seg006:09C6                 jb      short loc_E841
seg006:09C8                 inc     byte_2A6F5
seg006:09CC                 mov     byte_2A6F4, bl
seg006:09D0
seg006:09D0 loc_E820:                               ; CODE XREF: sub_E7E9+14␘j
seg006:09D0                 mov     byte_2A6F2, bl
seg006:09D4                 cmp     byte_2A6F5, 3Ch ; '<'
seg006:09D9                 jb      short loc_E841
seg006:09DB                 mov     byte_2A6F5, bl
seg006:09DF                 inc     byte_2A6F6
seg006:09E3                 cmp     byte_2A6F6, 3Ch ; '<'
seg006:09E8                 jb      short loc_E841
seg006:09EA                 dec     byte_2A6F6
seg006:09EE                 nop
seg006:09EF                 nop
seg006:09F0                 nop
seg006:09F1
seg006:09F1 loc_E841:                               ; CODE XREF: sub_E7E9+2D␘j
seg006:09F1                                         ; sub_E7E9+40␘j ...
seg006:09F1                 call    sub_E851
seg006:09F4                 call    sub_E98A
seg006:09F7                 call    sub_EA80
seg006:09FA                 retn
seg006:09FB ; ---------------------------------------------------------------------------
seg006:09FB
seg006:09FB loc_E84B:                               ; CODE XREF: sub_E7E9+5␘j
seg006:09FB                                         ; sub_E7E9+C␘j
seg006:09FB                 mov     byte_2A6F2, 0
seg006:0A00                 retn
seg006:0A00 sub_E7E9        endp
seg006:0A00
seg006:0A01
