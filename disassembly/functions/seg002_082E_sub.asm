seg002:082E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:082E
seg002:082E
seg002:082E sub_7EFE        proc far                ; CODE XREF: sub_3186+256␘P
seg002:082E                                         ; sub_76D6+3C␘p ...
seg002:082E                 mov     byte_2A6BB, 1
seg002:0833                 sub     al, al
seg002:0835                 mov     byte_20380, al
seg002:0838                 sub     ah, ah
seg002:083A                 mov     word_20266, ax
seg002:083D                 mov     word_20268, 0
seg002:0843                 call    sub_BAB7
seg002:0848                 mov     byte_28468, 1
seg002:084D                 call    sub_EC6D
seg002:0852                 cmp     byte_1FAA3, 0
seg002:0857                 jnz     short loc_7F3E
seg002:0859                 cmp     byte_1FABE, 0
seg002:085E                 jz      short loc_7F3E
seg002:0860                 mov     al, byte_2A6B6
seg002:0863                 sub     ah, ah
seg002:0865                 push    ax
seg002:0866                 call    sub_3A5C
seg002:086B                 add     sp, 2
seg002:086E
seg002:086E loc_7F3E:                               ; CODE XREF: sub_7EFE+29␘j
seg002:086E                                         ; sub_7EFE+30␘j
seg002:086E                 call    sub_10131
seg002:0873                 sub     ax, ax
seg002:0875                 mov     word_2037E, ax
seg002:0878                 mov     word_2037C, ax
seg002:087B                 sub     dx, dx
seg002:087D                 mov     word_2033A, ax
seg002:0880                 mov     word_2033C, dx
seg002:0884                 mov     word_2032E, ax
seg002:0887                 mov     word_20330, dx
seg002:088B                 mov     word_2847B, ax
seg002:088E                 mov     byte_2D851, al
seg002:0891                 sub     ah, ah
seg002:0893                 mov     word_20328, ax
seg002:0896                 mov     word_20384, ax
seg002:0899                 mov     word_20386, dx
seg002:089D                 mov     byte_2D62A, 20h ; ' '
seg002:08A2                 mov     al, byte ptr word_29965
seg002:08A5                 add     al, 40h ; '@'
seg002:08A7                 mov     ch, al
seg002:08A9                 sub     cl, cl
seg002:08AB                 mov     word_2847D, cx
seg002:08AF                 mov     word_2032A, cx
seg002:08B3                 mov     word_2032C, cx
seg002:08B7                 mov     ax, word_28CDF
seg002:08BA                 mov     cl, 7
seg002:08BC
seg002:08BC loc_7F8C:                               ; CODE XREF: sub_7EFE+94␙j
seg002:08BC                 shl     ax, 1
seg002:08BE                 rcl     dx, 1
seg002:08C0                 dec     cl
seg002:08C2                 jnz     short loc_7F8C
seg002:08C4                 mov     word_2033E, ax
seg002:08C7                 mov     word_20340, dx
seg002:08CB                 mov     ax, word_28F5F
seg002:08CE                 sub     dx, dx
seg002:08D0                 mov     cl, 7
seg002:08D2
seg002:08D2 loc_7FA2:                               ; CODE XREF: sub_7EFE+AA␙j
seg002:08D2                 shl     ax, 1
seg002:08D4                 rcl     dx, 1
seg002:08D6                 dec     cl
seg002:08D8                 jnz     short loc_7FA2
seg002:08DA                 mov     word_20342, ax
seg002:08DD                 mov     word_20344, dx
seg002:08E1                 mov     ax, word_291DF
seg002:08E4                 sub     ax, word_284AB
seg002:08E8                 mov     word_2AA6F, ax
seg002:08EB                 cwd
seg002:08EC                 mov     cl, 7
seg002:08EE
seg002:08EE loc_7FBE:                               ; CODE XREF: sub_7EFE+C6␙j
seg002:08EE                 shl     ax, 1
seg002:08F0                 rcl     dx, 1
seg002:08F2                 dec     cl
seg002:08F4                 jnz     short loc_7FBE
seg002:08F6                 mov     word_20346, ax
seg002:08F9                 mov     word_20348, dx
seg002:08FD                 mov     byte_2A6FC, 0FFh
seg002:0902                 retf
seg002:0902 sub_7EFE        endp
seg002:0902
seg002:0902 ; ---------------------------------------------------------------------------
seg002:0903                 align 2
seg002:0904
