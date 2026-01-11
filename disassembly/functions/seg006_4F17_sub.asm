seg006:4F17 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4F17
seg006:4F17
seg006:4F17 sub_12D67       proc near               ; CODE XREF: sub_12A2C+3␘p
seg006:4F17                 mov     ax, word_2AC95
seg006:4F1A                 or      al, al
seg006:4F1C                 jz      short loc_12D70
seg006:4F1E                 dec     al
seg006:4F20
seg006:4F20 loc_12D70:                              ; CODE XREF: sub_12D67+5␘j
seg006:4F20                 or      ah, ah
seg006:4F22                 jz      short loc_12D76
seg006:4F24                 dec     ah
seg006:4F26
seg006:4F26 loc_12D76:                              ; CODE XREF: sub_12D67+B␘j
seg006:4F26                 mov     word_2AC95, ax
seg006:4F29                 mov     ax, word_2AC97
seg006:4F2C                 or      al, al
seg006:4F2E                 jz      short loc_12D82
seg006:4F30                 dec     al
seg006:4F32
seg006:4F32 loc_12D82:                              ; CODE XREF: sub_12D67+17␘j
seg006:4F32                 or      ah, ah
seg006:4F34                 jz      short loc_12D88
seg006:4F36                 dec     ah
seg006:4F38
seg006:4F38 loc_12D88:                              ; CODE XREF: sub_12D67+1D␘j
seg006:4F38                 mov     word_2AC97, ax
seg006:4F3B                 mov     al, byte_2AC99
seg006:4F3E                 or      al, al
seg006:4F40                 jz      short loc_12D94
seg006:4F42                 dec     al
seg006:4F44
seg006:4F44 loc_12D94:                              ; CODE XREF: sub_12D67+29␘j
seg006:4F44                 mov     byte_2AC99, al
seg006:4F47                 mov     ax, word_2AACC
seg006:4F4A                 mov     word_2AAC4, ax
seg006:4F4D                 mov     ax, word_2AACA
seg006:4F50                 xchg    ax, word_2AAC2
seg006:4F54                 push    ax
seg006:4F55                 mov     bx, 1
seg006:4F58                 cmp     byte_1FAA3, 0
seg006:4F5D                 jnz     short loc_12DB3
seg006:4F5F                 mov     bx, word_29461
seg006:4F63
seg006:4F63 loc_12DB3:                              ; CODE XREF: sub_12D67+46␘j
seg006:4F63                 shl     bx, 1
seg006:4F65                 jmp     short loc_12DD4
seg006:4F65 ; ---------------------------------------------------------------------------
seg006:4F67                 align 2
seg006:4F68
seg006:4F68 loc_12DB8:                              ; CODE XREF: sub_12D67+1F8␙j
seg006:4F68                 mov     byte_2ACAD, 1
seg006:4F6D                 cmp     byte_28477, bl
seg006:4F71                 jnz     short loc_12DCC
seg006:4F73                 mov     byte_2ACAD, 0
seg006:4F78                 or      bx, bx
seg006:4F7A                 jz      short loc_12DD4
seg006:4F7C
seg006:4F7C loc_12DCC:                              ; CODE XREF: sub_12D67+5A␘j
seg006:4F7C                 test    word ptr [bx-5C7Bh], 2000h
seg006:4F82                 jnz     short loc_12DDA
seg006:4F84
seg006:4F84 loc_12DD4:                              ; CODE XREF: sub_12D67+4E␘j
seg006:4F84                                         ; sub_12D67+63␘j ...
seg006:4F84                 jmp     loc_12F5A
seg006:4F87 ; ---------------------------------------------------------------------------
seg006:4F87                 jmp     loc_12F46
seg006:4F8A ; ---------------------------------------------------------------------------
seg006:4F8A
seg006:4F8A loc_12DDA:                              ; CODE XREF: sub_12D67+6B␘j
seg006:4F8A                 sub     cx, cx
seg006:4F8C                 mov     word_2ACAE, cx
seg006:4F90                 mov     word_2ACB0, cx
seg006:4F94                 mov     word_2ACB2, cx
seg006:4F98                 cmp     byte_2849E, ch
seg006:4F9C                 jnz     short loc_12E35
seg006:4F9E                 cmp     byte_1FAA3, ch
seg006:4FA2                 jnz     short loc_12E00
seg006:4FA4                 cmp     byte_28477, ch
seg006:4FA8                 jnz     short loc_12E35
seg006:4FAA                 cmp     byte_2A6F1, ch
seg006:4FAE                 jz      short loc_12E35
seg006:4FB0
seg006:4FB0 loc_12E00:                              ; CODE XREF: sub_12D67+8B␘j
seg006:4FB0                 call    sub_13132
seg006:4FB3                 test    word ptr [bx-5C7Bh], 2000h
seg006:4FB9                 jz      short loc_12DD4
seg006:4FBB                 cmp     byte_1FAA3, 0
seg006:4FC0                 jnz     short loc_12E35
seg006:4FC2                 mov     ax, [bx-54FBh]
seg006:4FC6                 mov     dx, ax
seg006:4FC8                 cbw
seg006:4FC9                 xchg    ax, dx
seg006:4FCA                 mov     al, ah
seg006:4FCC                 cbw
seg006:4FCD                 mov     cx, ax
seg006:4FCF                 mov     ax, [bx-563Bh]
seg006:4FD3                 cbw
seg006:4FD4                 shl     ax, 1
seg006:4FD6                 shl     ax, 1
seg006:4FD8                 test    word ptr [bx-5C7Bh], 1000h
seg006:4FDE                 jz      short loc_12E79
seg006:4FE0                 cmp     bx, 4
seg006:4FE3                 jbe     short loc_12E38
seg006:4FE5
seg006:4FE5 loc_12E35:                              ; CODE XREF: sub_12D67+85␘j
seg006:4FE5                                         ; sub_12D67+91␘j ...
seg006:4FE5                 jmp     loc_12EB8
seg006:4FE8 ; ---------------------------------------------------------------------------
seg006:4FE8
seg006:4FE8 loc_12E38:                              ; CODE XREF: sub_12D67+CC␘j
seg006:4FE8                 or      bx, bx
seg006:4FEA                 jz      short loc_12E35
seg006:4FEC                 cmp     byte_1FBE9, 0
seg006:4FF1                 jz      short loc_12E35
seg006:4FF3                 shr     bx, 1
seg006:4FF5                 push    ax
seg006:4FF6                 mov     al, [bx-444Ch]
seg006:4FFA                 shl     bx, 1
seg006:4FFC                 or      al, al
seg006:4FFE                 pop     ax
seg006:4FFF                 jnz     short loc_12E79
seg006:5001                 shr     bx, 1
seg006:5003                 push    ax
seg006:5004                 mov     al, [bx-444Eh]
seg006:5008                 inc     al
seg006:500A                 cmp     al, 1Eh
seg006:500C                 jb      short loc_12E70
seg006:500E                 mov     al, bl
seg006:5010                 shl     al, 1
seg006:5012                 shl     al, 1
seg006:5014                 shl     al, 1
seg006:5016                 shl     al, 1
seg006:5018                 add     al, 1Eh
seg006:501A                 mov     [bx-444Ch], al
seg006:501E                 sub     al, al
seg006:5020
seg006:5020 loc_12E70:                              ; CODE XREF: sub_12D67+F5␘j
seg006:5020                 mov     [bx-444Eh], al
seg006:5024                 pop     ax
seg006:5025                 shl     bx, 1
seg006:5027                 jmp     short loc_12EB8
seg006:5029 ; ---------------------------------------------------------------------------
seg006:5029
seg006:5029 loc_12E79:                              ; CODE XREF: sub_12D67+C7␘j
seg006:5029                                         ; sub_12D67+E8␘j
seg006:5029                 test    word ptr [bx-5C7Bh], 8000h
seg006:502F                 jz      short loc_12E87
seg006:5031                 sar     dx, 1
seg006:5033                 sar     cx, 1
seg006:5035                 sar     ax, 1
seg006:5037
seg006:5037 loc_12E87:                              ; CODE XREF: sub_12D67+118␘j
seg006:5037                 add     word_2ACAE, dx
seg006:503B                 add     dx, [bx-5B3Bh]
seg006:503F                 and     dx, 7FFFh
seg006:5043                 mov     [bx-5B3Bh], dx
seg006:5047                 add     word_2ACB0, cx
seg006:504B                 add     cx, [bx-59FBh]
seg006:504F                 and     cx, 3FFFh
seg006:5053                 mov     [bx-59FBh], cx
seg006:5057                 add     [bx-58BBh], ax
seg006:505B                 mov     dx, [bx-58BBh]
seg006:505F                 and     dx, 7
seg006:5062                 add     ax, dx
seg006:5064                 add     word_2ACB2, ax
seg006:5068
seg006:5068 loc_12EB8:                              ; CODE XREF: sub_12D67:loc_12E35␘j
seg006:5068                                         ; sub_12D67+110␘j
seg006:5068                 mov     ax, [bx-5B3Bh]
seg006:506C                 sub     ax, word_28486
seg006:5070                 shl     ax, 1
seg006:5072                 sar     ax, 1
seg006:5074                 add     ax, word_2A6C8
seg006:5078                 cmp     ax, word_2A6CA
seg006:507C                 ja      short loc_12F46
seg006:507E                 sub     ax, word_2A6C8
seg006:5082                 jns     short loc_12ED6
seg006:5084                 neg     ax
seg006:5086
seg006:5086 loc_12ED6:                              ; CODE XREF: sub_12D67+16B␘j
seg006:5086                 mov     dx, ax
seg006:5088                 mov     ax, [bx-59FBh]
seg006:508C                 sub     ax, word_28488
seg006:5090                 shl     ax, 1
seg006:5092                 shl     ax, 1
seg006:5094                 sar     ax, 1
seg006:5096                 sar     ax, 1
seg006:5098                 add     ax, word_2A6C8
seg006:509C                 cmp     ax, word_2A6CA
seg006:50A0                 ja      short loc_12F46
seg006:50A2                 sub     ax, word_2A6C8
seg006:50A6                 jns     short loc_12EFA
seg006:50A8                 neg     ax
seg006:50AA
seg006:50AA loc_12EFA:                              ; CODE XREF: sub_12D67+18F␘j
seg006:50AA                 add     dx, ax
seg006:50AC                 mov     ax, [bx-513Bh]
seg006:50B0                 mov     word_2ACB4, ax
seg006:50B3                 mov     ax, [bx-4FFBh]
seg006:50B7                 mov     word_2ACB6, ax
seg006:50BA                 call    sub_12F6F
seg006:50BD                 mov     al, byte_2AD0C
seg006:50C0                 or      al, al
seg006:50C2                 jnz     short loc_12F50
seg006:50C4                 mov     ax, word_2ACB6
seg006:50C7                 cmp     ax, [bx-4FFBh]
seg006:50CB                 jnz     short loc_12F39
seg006:50CD                 mov     ax, word_2ACB4
seg006:50D0                 cmp     ax, [bx-513Bh]
seg006:50D4                 jnz     short loc_12F39
seg006:50D6                 mov     ax, word_2AAC2
seg006:50D9                 cmp     ax, [bx-4EBBh]
seg006:50DD                 jnz     short loc_12F39
seg006:50DF                 mov     ax, [bx-4D7Bh]
seg006:50E3                 add     word_2AAC2, ax
seg006:50E7                 jmp     short loc_12F5A
seg006:50E9 ; ---------------------------------------------------------------------------
seg006:50E9
seg006:50E9 loc_12F39:                              ; CODE XREF: sub_12D67+1B4␘j
seg006:50E9                                         ; sub_12D67+1BD␘j ...
seg006:50E9                 push    bx
seg006:50EA                 mov     word_2AD0E, 0
seg006:50F0                 call    sub_15153
seg006:50F3                 pop     bx
seg006:50F4                 jmp     short loc_12F5A
seg006:50F6 ; ---------------------------------------------------------------------------
seg006:50F6
seg006:50F6 loc_12F46:                              ; CODE XREF: sub_12D67+70␘j
seg006:50F6                                         ; sub_12D67+165␘j ...
seg006:50F6                 sub     dx, dx
seg006:50F8                 mov     [bx-513Bh], dx
seg006:50FC                 mov     [bx-4FFBh], dx
seg006:5100
seg006:5100 loc_12F50:                              ; CODE XREF: sub_12D67+1AB␘j
seg006:5100                 sub     dx, dx
seg006:5102                 mov     [bx-4EBBh], dx
seg006:5106                 mov     [bx-4D7Bh], dx
seg006:510A
seg006:510A loc_12F5A:                              ; CODE XREF: sub_12D67:loc_12DD4␘j
seg006:510A                                         ; sub_12D67+1D0␘j ...
seg006:510A                 sub     bx, 2
seg006:510D                 js      short loc_12F62
seg006:510F                 jmp     loc_12DB8
seg006:5112 ; ---------------------------------------------------------------------------
seg006:5112
seg006:5112 loc_12F62:                              ; CODE XREF: sub_12D67+1F6␘j
seg006:5112                 pop     ax
seg006:5113                 cmp     ax, word_2AAC2
seg006:5117                 jz      short locret_12F6E
seg006:5119                 mov     byte_2AD0D, 1
seg006:511E
seg006:511E locret_12F6E:                           ; CODE XREF: sub_12D67+200␘j
seg006:511E                 retn
seg006:511E sub_12D67       endp
seg006:511E
seg006:511F
