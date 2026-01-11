seg006:0CF0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0CF0
seg006:0CF0
seg006:0CF0 sub_EB40        proc far                ; CODE XREF: sub_94F4+13A9␘P
seg006:0CF0                 cmp     word_1FBE4, 3
seg006:0CF5                 jb      short locret_EB90
seg006:0CF7                 cmp     byte_2AA97, 0
seg006:0CFC                 jnz     short locret_EB90
seg006:0CFE                 mov     al, byte_2A778
seg006:0D01                 inc     al
seg006:0D03                 and     al, 3
seg006:0D05                 mov     byte_2A778, al
seg006:0D08                 jnz     short locret_EB90
seg006:0D0A                 cmp     byte_2A6C1, 1
seg006:0D0F                 jz      short loc_EB69
seg006:0D11                 mov     ax, word_1F1B4
seg006:0D14                 test    ah, 3
seg006:0D17                 jnz     short loc_EB76
seg006:0D19
seg006:0D19 loc_EB69:                               ; CODE XREF: sub_EB40+1F␘j
seg006:0D19                 mov     ax, 0Ah
seg006:0D1C                 call    sub_D045
seg006:0D21                 mov     ax, 20h ; ' '
seg006:0D24                 jmp     short loc_EB8C
seg006:0D26 ; ---------------------------------------------------------------------------
seg006:0D26
seg006:0D26 loc_EB76:                               ; CODE XREF: sub_EB40+27␘j
seg006:0D26                 mov     cl, byte_2A6C1
seg006:0D2A                 cmp     cl, 1
seg006:0D2D                 jz      short locret_EB90
seg006:0D2F                 mov     ax, 0Bh
seg006:0D32                 call    sub_D045
seg006:0D37                 mov     ax, 100h
seg006:0D3A                 shl     ax, cl
seg006:0D3C
seg006:0D3C loc_EB8C:                               ; CODE XREF: sub_EB40+34␘j
seg006:0D3C                 or      word_28472, ax
seg006:0D40
seg006:0D40 locret_EB90:                            ; CODE XREF: sub_EB40+5␘j
seg006:0D40                                         ; sub_EB40+C␘j ...
seg006:0D40                 retf
seg006:0D40 sub_EB40        endp
seg006:0D40
seg006:0D41
