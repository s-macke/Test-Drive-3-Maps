seg006:5E7A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:5E7A
seg006:5E7A
seg006:5E7A sub_13CCA       proc near               ; CODE XREF: sub_1118F+26␘p
seg006:5E7A                 cmp     byte_28477, 0
seg006:5E7F                 jz      short loc_13CD2
seg006:5E81                 retn
seg006:5E82 ; ---------------------------------------------------------------------------
seg006:5E82
seg006:5E82 loc_13CD2:                              ; CODE XREF: sub_13CCA+5␘j
seg006:5E82                 mov     al, byte_2AC9F
seg006:5E85                 or      al, al
seg006:5E87                 jz      short loc_13CDE
seg006:5E89                 dec     al
seg006:5E8B                 mov     byte_2AC9F, al
seg006:5E8E
seg006:5E8E loc_13CDE:                              ; CODE XREF: sub_13CCA+D␘j
seg006:5E8E                 mov     byte_2A6FA, 0
seg006:5E93                 mov     byte_28456, 0
seg006:5E98                 mov     byte_28457, 0
seg006:5E9D                 mov     bx, word_29461
seg006:5EA1                 shl     bx, 1
seg006:5EA3
seg006:5EA3 loc_13CF3:                              ; CODE XREF: sub_13CCA+32␙j
seg006:5EA3                                         ; sub_13CCA+40␙j
seg006:5EA3                 jmp     loc_13E31
seg006:5EA6 ; ---------------------------------------------------------------------------
seg006:5EA6
seg006:5EA6 loc_13CF6:                              ; CODE XREF: sub_13CCA+16C␙j
seg006:5EA6                 test    word ptr [bx-5C7Bh], 2000h
seg006:5EAC                 jz      short loc_13CF3
seg006:5EAE                 mov     ax, [bx-5C7Bh]
seg006:5EB2                 and     al, 3Fh
seg006:5EB4                 cmp     al, 11h
seg006:5EB6                 jz      short loc_13D0C
seg006:5EB8                 cmp     al, 30h ; '0'
seg006:5EBA                 jnz     short loc_13CF3
seg006:5EBC
seg006:5EBC loc_13D0C:                              ; CODE XREF: sub_13CCA+3C␘j
seg006:5EBC                 cmp     word ptr [bx-4D7Bh], 0
seg006:5EC1                 jnz     short loc_13D42
seg006:5EC3                 mov     ax, [bx-5B3Bh]
seg006:5EC7                 sub     ax, word_295A5
seg006:5ECB                 jns     short loc_13D1F
seg006:5ECD                 neg     ax
seg006:5ECF
seg006:5ECF loc_13D1F:                              ; CODE XREF: sub_13CCA+51␘j
seg006:5ECF                 mov     dx, [bx-59FBh]
seg006:5ED3                 sub     dx, word_296E5
seg006:5ED7                 jns     short loc_13D2B
seg006:5ED9                 neg     dx
seg006:5EDB
seg006:5EDB loc_13D2B:                              ; CODE XREF: sub_13CCA+5D␘j
seg006:5EDB                 add     dx, ax
seg006:5EDD                 mov     ax, 21h ; '!'
seg006:5EE0                 cmp     dx, 800h
seg006:5EE4                 jb      short loc_13DAD
seg006:5EE6                 mov     ax, 11h
seg006:5EE9                 cmp     dx, 0C00h
seg006:5EED                 jb      short loc_13DAD
seg006:5EEF                 jmp     loc_13E31
seg006:5EF2 ; ---------------------------------------------------------------------------
seg006:5EF2
seg006:5EF2 loc_13D42:                              ; CODE XREF: sub_13CCA+47␘j
seg006:5EF2                 cmp     byte_1FBE9, 0
seg006:5EF7                 jz      short loc_13D8B
seg006:5EF9                 test    word ptr [bx-5C7Bh], 4000h
seg006:5EFF                 jz      short loc_13D8B
seg006:5F01                 mov     si, 2
seg006:5F04                 mov     cl, 2
seg006:5F06
seg006:5F06 loc_13D56:                              ; CODE XREF: sub_13CCA+BF␙j
seg006:5F06                 mov     ax, [bx-5B3Bh]
seg006:5F0A                 sub     ax, [si-5B3Bh]
seg006:5F0E                 jns     short loc_13D62
seg006:5F10                 neg     ax
seg006:5F12
seg006:5F12 loc_13D62:                              ; CODE XREF: sub_13CCA+94␘j
seg006:5F12                 mov     dx, [bx-59FBh]
seg006:5F16                 sub     dx, [si-59FBh]
seg006:5F1A                 jns     short loc_13D6E
seg006:5F1C                 neg     dx
seg006:5F1E
seg006:5F1E loc_13D6E:                              ; CODE XREF: sub_13CCA+A0␘j
seg006:5F1E                 add     ax, dx
seg006:5F20                 cmp     ax, 0D8h ; '+'
seg006:5F23                 jnb     short loc_13D84
seg006:5F25                 mov     al, [bx-577Ah]
seg006:5F29                 sub     al, [si-577Ah]
seg006:5F2D                 add     al, 40h ; '@'
seg006:5F2F                 js      short loc_13D84
seg006:5F31                 jmp     loc_13E5C
seg006:5F34 ; ---------------------------------------------------------------------------
seg006:5F34
seg006:5F34 loc_13D84:                              ; CODE XREF: sub_13CCA+A9␘j
seg006:5F34                                         ; sub_13CCA+B5␘j
seg006:5F34                 add     si, 2
seg006:5F37                 dec     cl
seg006:5F39                 jnz     short loc_13D56
seg006:5F3B
seg006:5F3B loc_13D8B:                              ; CODE XREF: sub_13CCA+7D␘j
seg006:5F3B                                         ; sub_13CCA+85␘j
seg006:5F3B                 mov     si, [bx-513Bh]
seg006:5F3F                 shl     si, 1
seg006:5F41                 mov     ax, [si+628Eh]
seg006:5F45                 shr     ax, 1
seg006:5F47                 shr     ax, 1
seg006:5F49                 shr     ax, 1
seg006:5F4B                 shr     ax, 1
seg006:5F4D                 shr     ax, 1
seg006:5F4F                 shr     ax, 1
seg006:5F51                 shr     ax, 1
seg006:5F53                 neg     ax
seg006:5F55                 add     ax, 6Fh ; 'o'
seg006:5F58                 jns     short loc_13DAD
seg006:5F5A                 jmp     loc_13E31
seg006:5F5D ; ---------------------------------------------------------------------------
seg006:5F5D
seg006:5F5D loc_13DAD:                              ; CODE XREF: sub_13CCA+6A␘j
seg006:5F5D                                         ; sub_13CCA+73␘j ...
seg006:5F5D                 cmp     ax, 20h ; ' '
seg006:5F60                 jb      short loc_13E28
seg006:5F62                 test    word ptr [bx-5C7Bh], 4000h
seg006:5F68                 jz      short loc_13DBE
seg006:5F6A                 inc     byte_28457
seg006:5F6E
seg006:5F6E loc_13DBE:                              ; CODE XREF: sub_13CCA+EE␘j
seg006:5F6E                 cmp     ax, 50h ; 'P'
seg006:5F71                 jb      short loc_13E28
seg006:5F73                 cmp     byte_2AC9F, 0
seg006:5F78                 jnz     short loc_13E28
seg006:5F7A                 mov     dx, [bx-5C7Bh]
seg006:5F7E                 test    dh, 40h
seg006:5F81                 jnz     short loc_13E10
seg006:5F83                 cmp     byte_2D84F, 0Ch
seg006:5F88                 jb      short loc_13E28
seg006:5F8A                 or      dx, 40C0h
seg006:5F8E                 mov     [bx-5C7Bh], dx
seg006:5F92                 mov     dl, byte_2D84F
seg006:5F96                 mov     byte_2AC8F, dl
seg006:5F9A                 mov     dx, [bx-527Bh]
seg006:5F9E                 test    dx, 0FFC0h
seg006:5FA2                 jnz     short loc_13DFD
seg006:5FA4                 add     dx, 40h ; '@'
seg006:5FA7                 mov     [bx-527Bh], dx
seg006:5FAB                 jmp     short loc_13E10
seg006:5FAD ; ---------------------------------------------------------------------------
seg006:5FAD
seg006:5FAD loc_13DFD:                              ; CODE XREF: sub_13CCA+128␘j
seg006:5FAD                 mov     dx, [bx-577Bh]
seg006:5FB1                 sub     dx, word_29965
seg006:5FB5                 sub     dh, 40h ; '@'
seg006:5FB8                 js      short loc_13E10
seg006:5FBA                 mov     word_2AC9B, bx
seg006:5FBE                 jmp     short loc_13E28
seg006:5FC0 ; ---------------------------------------------------------------------------
seg006:5FC0
seg006:5FC0 loc_13E10:                              ; CODE XREF: sub_13CCA+107␘j
seg006:5FC0                                         ; sub_13CCA+131␘j ...
seg006:5FC0                 cmp     ax, 65h ; 'e'
seg006:5FC3                 jb      short loc_13E28
seg006:5FC5                 inc     byte_28456
seg006:5FC9                 mov     dl, byte_2ACA0
seg006:5FCD                 inc     dl
seg006:5FCF                 mov     byte_2ACA0, dl
seg006:5FD3                 cmp     dl, 1Eh
seg006:5FD6                 jnb     short loc_13E75
seg006:5FD8
seg006:5FD8 loc_13E28:                              ; CODE XREF: sub_13CCA+E6␘j
seg006:5FD8                                         ; sub_13CCA+F7␘j ...
seg006:5FD8                 cmp     byte_2A6FA, al
seg006:5FDC                 jnb     short loc_13E31
seg006:5FDE                 mov     byte_2A6FA, al
seg006:5FE1
seg006:5FE1 loc_13E31:                              ; CODE XREF: sub_13CCA:loc_13CF3␘j
seg006:5FE1                                         ; sub_13CCA+75␘j ...
seg006:5FE1                 sub     bx, 2
seg006:5FE4                 jz      short loc_13E39
seg006:5FE6                 jmp     loc_13CF6
seg006:5FE9 ; ---------------------------------------------------------------------------
seg006:5FE9
seg006:5FE9 loc_13E39:                              ; CODE XREF: sub_13CCA+16A␘j
seg006:5FE9                 cmp     byte_28456, 0
seg006:5FEE                 jnz     short loc_13E45
seg006:5FF0                 mov     byte_2ACA0, 0
seg006:5FF5
seg006:5FF5 loc_13E45:                              ; CODE XREF: sub_13CCA+174␘j
seg006:5FF5                 mov     ax, 14h
seg006:5FF8                 cmp     byte_28457, 0
seg006:5FFD                 jnz     short loc_13E52
seg006:5FFF                 add     ax, 80h ; 'Ç'
seg006:6002
seg006:6002 loc_13E52:                              ; CODE XREF: sub_13CCA+183␘j
seg006:6002                 push    ax
seg006:6003                 call    sub_D045
seg006:6008                 add     sp, 2
seg006:600B                 retn
seg006:600C ; ---------------------------------------------------------------------------
seg006:600C
seg006:600C loc_13E5C:                              ; CODE XREF: sub_13CCA+B7␘j
seg006:600C                 shr     si, 1
seg006:600E                 inc     byte ptr [si-4450h]
seg006:6012                 mov     byte_2AA90, 3
seg006:6017                 mov     byte_2AC9A, 2Ch ; ','
seg006:601C                 mov     byte_2AC9F, 96h ; 'û'
seg006:6021                 call    sub_13E9E
seg006:6024                 retn
seg006:6025 ; ---------------------------------------------------------------------------
seg006:6025
seg006:6025 loc_13E75:                              ; CODE XREF: sub_13CCA+15C␘j
seg006:6025                 mov     byte_2AA90, 3
seg006:602A                 mov     byte_2AC9A, 21h ; '!'
seg006:602F                 mov     byte_2AC9F, 96h ; 'û'
seg006:6034                 call    sub_13E9E
seg006:6037                 inc     byte_2AC90
seg006:603B                 mov     al, byte_2A6F5
seg006:603E                 add     al, 14h
seg006:6040                 cmp     al, 3Ch ; '<'
seg006:6042                 jb      short loc_13E9A
seg006:6044                 inc     byte_2A6F6
seg006:6048                 sub     al, 3Ch ; '<'
seg006:604A
seg006:604A loc_13E9A:                              ; CODE XREF: sub_13CCA+1C8␘j
seg006:604A                 mov     byte_2A6F5, al
seg006:604D                 retn
seg006:604D sub_13CCA       endp
seg006:604D
seg006:604E
