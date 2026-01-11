seg006:01DF ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:01DF
seg006:01DF
seg006:01DF sub_E02F        proc near               ; CODE XREF: seg006:098E␙p
seg006:01DF                 mov     cl, byte_2D895
seg006:01E3                 cmp     cl, 1
seg006:01E6                 jnz     short loc_E03C
seg006:01E8
seg006:01E8 loc_E038:                               ; CODE XREF: sub_E02F+14␙j
seg006:01E8                                         ; sub_E02F+23␙j
seg006:01E8                 call    sub_DFDE
seg006:01EB                 retn
seg006:01EC ; ---------------------------------------------------------------------------
seg006:01EC
seg006:01EC loc_E03C:                               ; CODE XREF: sub_E02F+7␘j
seg006:01EC                 mov     ch, byte_2A6C1
seg006:01F0                 cmp     ch, 2
seg006:01F3                 jbe     short loc_E038
seg006:01F5                 mov     al, 1
seg006:01F7                 add     al, cl
seg006:01F9                 cmp     ch, al
seg006:01FB                 ja      short loc_E054
seg006:01FD                 mov     byte_2A6C1, 2
seg006:0202                 jmp     short loc_E038
seg006:0204 ; ---------------------------------------------------------------------------
seg006:0204
seg006:0204 loc_E054:                               ; CODE XREF: sub_E02F+1C␘j
seg006:0204                 mov     ah, al
seg006:0206                 add     ah, cl
seg006:0208                 cmp     ch, ah
seg006:020A                 jbe     short loc_E05E
seg006:020C                 add     al, cl
seg006:020E
seg006:020E loc_E05E:                               ; CODE XREF: sub_E02F+2B␘j
seg006:020E                 mov     byte_2A6C1, al
seg006:0211                 mov     dx, word_20314
seg006:0215                 mov     byte_2A6C0, dl
seg006:0219                 call    sub_DFCB
seg006:021E                 retn
seg006:021E sub_E02F        endp
seg006:021E
seg006:021F ; ---------------------------------------------------------------------------
seg006:021F                 xor     byte_2A6C5, 1
seg006:0224                 retn
seg006:0225 ; ---------------------------------------------------------------------------
seg006:0225                 cmp     byte_2849E, 0
seg006:022A                 jnz     short loc_E0F4
seg006:022C                 mov     word_2AAC0, 0
seg006:0232                 xor     byte_28477, 1
seg006:0237                 jz      short loc_E0DB
seg006:0239                 sub     ax, ax
seg006:023B                 push    ax
seg006:023C                 call    sub_D045
seg006:0241                 add     sp, 2
seg006:0244                 mov     byte_2AA3F, 1
seg006:0249                 mov     ah, byte ptr word_28484+1
seg006:024D                 mov     byte_28497, ah
seg006:0251                 mov     byte_207B8, 1
seg006:0256                 mov     byte_28499, 0
seg006:025B                 mov     word_28491, 0
seg006:0261                 mov     ax, word_291DF
seg006:0264                 mov     word_28493, ax
seg006:0267                 mov     byte_28498, 40h ; '@'
seg006:026C                 mov     ax, word_2AA6F
seg006:026F                 mov     word_2A6CE, ax
seg006:0272                 mov     ax, word_2ACC7
seg006:0275                 mov     word_2A6D0, ax
seg006:0278                 mov     ax, word_284AB
seg006:027B                 mov     word_28495, ax
seg006:027E                 mov     al, byte_2ACC6
seg006:0281                 mov     byte_2A6D2, al
seg006:0284                 mov     al, byte_2AA85
seg006:0287                 mov     byte_2A6D3, al
seg006:028A                 retn
seg006:028B ; ---------------------------------------------------------------------------
seg006:028B
seg006:028B loc_E0DB:                               ; CODE XREF: seg006:0237␘j
seg006:028B                 mov     ax, word_2A6CE
seg006:028E                 mov     word_2AA6F, ax
seg006:0291                 mov     ax, word_2A6D0
seg006:0294                 mov     word_2ACC7, ax
seg006:0297                 mov     al, byte_2A6D2
seg006:029A                 mov     byte_2ACC6, al
seg006:029D                 mov     al, byte_2A6D3
seg006:02A0                 mov     byte_2AA85, al
seg006:02A3                 retn
seg006:02A4 ; ---------------------------------------------------------------------------
seg006:02A4
seg006:02A4 loc_E0F4:                               ; CODE XREF: seg006:022A␘j
seg006:02A4                 cmp     byte_2A777, 0
seg006:02A9                 jz      short locret_E107
seg006:02AB                 mov     ax, 1
seg006:02AE                 push    ax
seg006:02AF                 call    sub_E254
seg006:02B4                 add     sp, 2
seg006:02B7
seg006:02B7 locret_E107:                            ; CODE XREF: seg006:02A9␘j
seg006:02B7                 retn
seg006:02B8 ; ---------------------------------------------------------------------------
seg006:02B8                 cmp     byte_28477, 0
seg006:02BD                 jnz     short locret_E114
seg006:02BF                 xor     byte_2AC65, 1
seg006:02C4
seg006:02C4 locret_E114:                            ; CODE XREF: seg006:02BD␘j
seg006:02C4                 retn
seg006:02C5 ; ---------------------------------------------------------------------------
seg006:02C5                 cmp     byte_28477, 0
seg006:02CA                 jnz     short locret_E121
seg006:02CC                 xor     byte_2A6C2, 1
seg006:02D1
seg006:02D1 locret_E121:                            ; CODE XREF: seg006:02CA␘j
seg006:02D1                 retn
seg006:02D2 ; ---------------------------------------------------------------------------
seg006:02D2                 xor     byte_2A6C6, 1
seg006:02D7                 mov     word_2AAC0, 0
seg006:02DD                 mov     al, byte_2A6C6
seg006:02E0                 add     al, 0Ah
seg006:02E2                 sub     ah, ah
seg006:02E4                 push    ax
seg006:02E5                 call    sub_1688
seg006:02EA                 add     sp, 2
seg006:02ED                 call    sub_11D68
seg006:02F2                 cmp     word_2AA7B, 60h ; '`'
seg006:02F7                 jz      short loc_E19E
seg006:02F9                 sub     ax, ax
seg006:02FB                 push    ax
seg006:02FC                 call    far ptr sub_16BB0
seg006:0301                 add     sp, 2
seg006:0304                 sub     ax, ax
seg006:0306                 push    ax
seg006:0307                 call    far ptr sub_16A93
seg006:030C                 add     sp, 2
seg006:030F                 mov     ax, 6Fh ; 'o'
seg006:0312                 push    ax
seg006:0313                 mov     ax, 10h
seg006:0316                 push    ax
seg006:0317                 mov     ax, 27h ; '''
seg006:031A                 push    ax
seg006:031B                 sub     ax, ax
seg006:031D                 push    ax
seg006:031E                 call    far ptr sub_172BD
seg006:0323                 add     sp, 4
seg006:0326                 mov     ax, 13Fh
seg006:0329                 push    ax
seg006:032A                 mov     ax, 118h
seg006:032D                 push    ax
seg006:032E                 call    far ptr sub_172BD
seg006:0333                 add     sp, 8
seg006:0336                 mov     ax, 6Fh ; 'o'
seg006:0339                 push    ax
seg006:033A                 mov     ax, 50h ; 'P'
seg006:033D                 push    ax
seg006:033E                 mov     ax, 117h
seg006:0341                 push    ax
seg006:0342                 mov     ax, 28h ; '('
seg006:0345                 push    ax
seg006:0346                 call    far ptr sub_172BD
seg006:034B                 add     sp, 8
seg006:034E
seg006:034E loc_E19E:                               ; CODE XREF: seg006:02F7␘j
seg006:034E                 push    word_1F17A
seg006:0352                 call    far ptr sub_16BB0
seg006:0357                 add     sp, 2
seg006:035A                 mov     word_2AD1E, 0FFFFh
seg006:0360                 retn
seg006:0361 ; ---------------------------------------------------------------------------
seg006:0361                 mov     al, byte_2A6C7
seg006:0364                 inc     al
seg006:0366                 cmp     al, 3
seg006:0368                 jb      short loc_E1BC
seg006:036A                 sub     al, al
seg006:036C
seg006:036C loc_E1BC:                               ; CODE XREF: seg006:0368␘j
seg006:036C                 mov     byte_2A6C7, al
seg006:036F                 call    sub_E1DA
seg006:0372                 sub     ah, ah
seg006:0374                 mov     al, byte_2A6C7
seg006:0377                 add     ax, 1Bh
seg006:037A                 push    ax
seg006:037B                 call    sub_1688
seg006:0380                 add     sp, 2
seg006:0383                 mov     word_2AD1E, 0FFFFh
seg006:0389                 retn
seg006:038A
