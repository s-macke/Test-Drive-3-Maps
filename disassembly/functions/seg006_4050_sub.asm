seg006:4050 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4050
seg006:4050
seg006:4050 sub_11EA0       proc near               ; CODE XREF: sub_11C38:loc_11CAD␘p
seg006:4050                                         ; sub_11CB1+84␘p ...
seg006:4050                 push    es
seg006:4051                 mov     es, word_280BC
seg006:4055                 sub     si, 20h ; ' '
seg006:4058                 add     bp, 20h ; ' '
seg006:405B                 mov     bx, word_2AA86
seg006:405F                 mov     dx, 0FFE0h
seg006:4062
seg006:4062 loc_11EB2:                              ; CODE XREF: sub_11EA0:loc_1200B␙j
seg006:4062                 or      bx, bx
seg006:4064                 jns     short loc_11EBE
seg006:4066                 jmp     loc_11F60
seg006:4069 ; ---------------------------------------------------------------------------
seg006:4069
seg006:4069 loc_11EB9:                              ; CODE XREF: sub_11EA0+40␙j
seg006:4069                 jmp     loc_1200E
seg006:406C ; ---------------------------------------------------------------------------
seg006:406C
seg006:406C loc_11EBC:                              ; CODE XREF: sub_11EA0+22␙j
seg006:406C                 pop     es
seg006:406D                 retn
seg006:406E ; ---------------------------------------------------------------------------
seg006:406E
seg006:406E loc_11EBE:                              ; CODE XREF: sub_11EA0+14␘j
seg006:406E                                         ; sub_11EA0+10B␙j ...
seg006:406E                 cmp     bx, word_2AA7B
seg006:4072                 jnb     short loc_11EBC
seg006:4074                 mov     ax, bx
seg006:4076                 add     ax, word_2AAAB
seg006:407A                 sub     ax, word_2AA7B
seg006:407E                 js      short loc_11EDA
seg006:4080                 mov     word_2AAAD, 0
seg006:4086                 sub     word_2AAAB, ax
seg006:408A
seg006:408A loc_11EDA:                              ; CODE XREF: sub_11EA0+2E␘j
seg006:408A                 shl     bx, 1
seg006:408C                 cmp     byte_2AA84, bh
seg006:4090                 jz      short loc_11EB9
seg006:4092
seg006:4092 loc_11EE2:                              ; CODE XREF: sub_11EA0+B3␙j
seg006:4092                 mov     ax, si
seg006:4094                 and     ax, dx
seg006:4096                 mov     cx, bp
seg006:4098                 and     cx, dx
seg006:409A                 cmp     cx, 2800h
seg006:409E                 jbe     short loc_11F02
seg006:40A0                 cmp     cx, 0A800h
seg006:40A4                 ja      short loc_11F44
seg006:40A6                 cmp     ax, 27E0h
seg006:40A9                 jbe     short loc_11EFF
seg006:40AB                 cmp     ax, cx
seg006:40AD                 jbe     short loc_11F44
seg006:40AF
seg006:40AF loc_11EFF:                              ; CODE XREF: sub_11EA0+59␘j
seg006:40AF                 mov     cx, 2800h
seg006:40B2
seg006:40B2 loc_11F02:                              ; CODE XREF: sub_11EA0+4E␘j
seg006:40B2                 sub     cx, ax
seg006:40B4                 jns     short loc_11F08
seg006:40B6                 sub     cx, cx
seg006:40B8
seg006:40B8 loc_11F08:                              ; CODE XREF: sub_11EA0+64␘j
seg006:40B8                 cmp     ax, 27E0h
seg006:40BB                 jbe     short loc_11F18
seg006:40BD                 cmp     ax, 8000h
seg006:40C0                 jbe     short loc_11F44
seg006:40C2                 add     cx, ax
seg006:40C4                 js      short loc_11F44
seg006:40C6                 sub     ax, ax
seg006:40C8
seg006:40C8 loc_11F18:                              ; CODE XREF: sub_11EA0+6B␘j
seg006:40C8                 shl     ax, 1
seg006:40CA                 shl     ax, 1
seg006:40CC                 rol     ax, 1
seg006:40CE                 xchg    al, ah
seg006:40D0                 shl     cx, 1
seg006:40D2                 shl     cx, 1
seg006:40D4                 rol     cx, 1
seg006:40D6                 xchg    cl, ch
seg006:40D8                 mov     di, [bx-4823h]
seg006:40DC                 add     di, ax
seg006:40DE                 shl     al, 1
seg006:40E0                 xor     al, bl
seg006:40E2                 and     al, 2
seg006:40E4                 mov     ax, word_2AA9B
seg006:40E7                 jnz     short loc_11F3B
seg006:40E9                 xchg    al, ah
seg006:40EB
seg006:40EB loc_11F3B:                              ; CODE XREF: sub_11EA0+97␘j
seg006:40EB                 shr     cx, 1
seg006:40ED                 jz      short loc_11F43
seg006:40EF                 rep stosw
seg006:40F1                 jnb     short loc_11F44
seg006:40F3
seg006:40F3 loc_11F43:                              ; CODE XREF: sub_11EA0+9D␘j
seg006:40F3                 stosb
seg006:40F4
seg006:40F4 loc_11F44:                              ; CODE XREF: sub_11EA0+54␘j
seg006:40F4                                         ; sub_11EA0+5D␘j ...
seg006:40F4                 add     bx, 2
seg006:40F7                 sub     si, word_2AA9D
seg006:40FB                 sub     bp, word_2AA9F
seg006:40FF                 dec     word_2AAAB
seg006:4103                 jnz     short loc_11EE2
seg006:4105
seg006:4105 loc_11F55:                              ; CODE XREF: sub_11EA0+1F7␙j
seg006:4105                 shr     bx, 1
seg006:4107
seg006:4107 loc_11F57:                              ; CODE XREF: sub_11EA0+EF␙j
seg006:4107                                         ; sub_11EA0+F5␙j
seg006:4107                 cmp     word_2AAAD, 0
seg006:410C                 jnz     short loc_11FB5
seg006:410E                 pop     es
seg006:410F                 retn
seg006:4110 ; ---------------------------------------------------------------------------
seg006:4110
seg006:4110 loc_11F60:                              ; CODE XREF: sub_11EA0+16␘j
seg006:4110                 mov     cx, bx
seg006:4112                 neg     cx
seg006:4114                 sub     bx, bx
seg006:4116                 mov     ax, word_2AA9D
seg006:4119                 mov     di, word_2AA9F
seg006:411D                 sub     word_2AAAB, cx
seg006:4121                 jz      short loc_11F75
seg006:4123                 jns     short loc_11F97
seg006:4125
seg006:4125 loc_11F75:                              ; CODE XREF: sub_11EA0+D1␘j
seg006:4125                 mov     bx, word_2AAAB
seg006:4129                 add     cx, bx
seg006:412B                 shr     cx, 1
seg006:412D                 jz      short loc_11F91
seg006:412F                 jnb     short loc_11F85
seg006:4131                 sub     si, ax
seg006:4133                 sub     bp, di
seg006:4135
seg006:4135 loc_11F85:                              ; CODE XREF: sub_11EA0+DF␘j
seg006:4135                                         ; sub_11EA0+ED␙j
seg006:4135                 sub     si, ax
seg006:4137                 sub     bp, di
seg006:4139                 sub     si, ax
seg006:413B                 sub     bp, di
seg006:413D                 loop    loc_11F85
seg006:413F                 jmp     short loc_11F57
seg006:4141 ; ---------------------------------------------------------------------------
seg006:4141
seg006:4141 loc_11F91:                              ; CODE XREF: sub_11EA0+DD␘j
seg006:4141                 sub     si, ax
seg006:4143                 sub     bp, di
seg006:4145                 jmp     short loc_11F57
seg006:4147 ; ---------------------------------------------------------------------------
seg006:4147
seg006:4147 loc_11F97:                              ; CODE XREF: sub_11EA0+D3␘j
seg006:4147                 shr     cx, 1
seg006:4149                 jz      short loc_11FAE
seg006:414B                 jnb     short loc_11FA1
seg006:414D                 sub     si, ax
seg006:414F                 sub     bp, di
seg006:4151
seg006:4151 loc_11FA1:                              ; CODE XREF: sub_11EA0+FB␘j
seg006:4151                                         ; sub_11EA0+109␙j
seg006:4151                 sub     si, ax
seg006:4153                 sub     bp, di
seg006:4155                 sub     si, ax
seg006:4157                 sub     bp, di
seg006:4159                 loop    loc_11FA1
seg006:415B                 jmp     loc_11EBE
seg006:415E ; ---------------------------------------------------------------------------
seg006:415E
seg006:415E loc_11FAE:                              ; CODE XREF: sub_11EA0+F9␘j
seg006:415E                 sub     si, ax
seg006:4160                 sub     bp, di
seg006:4162                 jmp     loc_11EBE
seg006:4165 ; ---------------------------------------------------------------------------
seg006:4165
seg006:4165 loc_11FB5:                              ; CODE XREF: sub_11EA0+BC␘j
seg006:4165                 mov     ax, word_2AAAF
seg006:4168                 xchg    ax, word_2AAAD
seg006:416C                 xchg    ax, word_2AAAB
seg006:4170                 mov     word_2AAAF, 0
seg006:4176                 mov     al, byte_2AA9A
seg006:4179                 xchg    al, byte_2AA99
seg006:417D                 test    al, 1
seg006:417F                 jz      short loc_11FEC
seg006:4181                 mov     si, word_2AAB5
seg006:4185                 xchg    si, word_2AAB1
seg006:4189                 sub     si, 20h ; ' '
seg006:418C                 mov     cx, word_2AAA7
seg006:4190                 xchg    cx, word_2844C
seg006:4194                 mov     word_2AA9D, cx
seg006:4198                 sub     si, word_2AA9D
seg006:419C
seg006:419C loc_11FEC:                              ; CODE XREF: sub_11EA0+12F␘j
seg006:419C                 test    al, 2
seg006:419E                 jz      short loc_1200B
seg006:41A0                 mov     bp, word_2AAB7
seg006:41A4                 xchg    bp, word_2AAB3
seg006:41A8                 add     bp, 20h ; ' '
seg006:41AB                 mov     cx, word_2AAA9
seg006:41AF                 xchg    cx, word_2844E
seg006:41B3                 mov     word_2AA9F, cx
seg006:41B7                 sub     bp, word_2AA9F
seg006:41BB
seg006:41BB loc_1200B:                              ; CODE XREF: sub_11EA0+14E␘j
seg006:41BB                 jmp     loc_11EB2
seg006:41BE ; ---------------------------------------------------------------------------
seg006:41BE
seg006:41BE loc_1200E:                              ; CODE XREF: sub_11EA0:loc_11EB9␘j
seg006:41BE                 cmp     word_2AA9B, 707h
seg006:41C4                 jnz     short loc_1201F
seg006:41C6                 cmp     byte_285B3, 0
seg006:41CB                 jz      short loc_1201F
seg006:41CD                 pop     es
seg006:41CE                 retn
seg006:41CF ; ---------------------------------------------------------------------------
seg006:41CF
seg006:41CF loc_1201F:                              ; CODE XREF: sub_11EA0+174␘j
seg006:41CF                                         ; sub_11EA0+17B␘j ...
seg006:41CF                 mov     ax, si
seg006:41D1                 and     ax, dx
seg006:41D3                 mov     cx, bp
seg006:41D5                 and     cx, dx
seg006:41D7                 cmp     cx, 2800h
seg006:41DB                 jbe     short loc_1203F
seg006:41DD                 cmp     cx, 0A800h
seg006:41E1                 ja      short loc_12086
seg006:41E3                 cmp     ax, 27E0h
seg006:41E6                 jbe     short loc_1203C
seg006:41E8                 cmp     ax, cx
seg006:41EA                 jbe     short loc_12086
seg006:41EC
seg006:41EC loc_1203C:                              ; CODE XREF: sub_11EA0+196␘j
seg006:41EC                 mov     cx, 2800h
seg006:41EF
seg006:41EF loc_1203F:                              ; CODE XREF: sub_11EA0+18B␘j
seg006:41EF                 sub     cx, ax
seg006:41F1                 jns     short loc_12045
seg006:41F3                 sub     cx, cx
seg006:41F5
seg006:41F5 loc_12045:                              ; CODE XREF: sub_11EA0+1A1␘j
seg006:41F5                 cmp     ax, 27E0h
seg006:41F8                 jbe     short loc_12055
seg006:41FA                 cmp     ax, 8000h
seg006:41FD                 jbe     short loc_12086
seg006:41FF                 add     cx, ax
seg006:4201                 js      short loc_12086
seg006:4203                 sub     ax, ax
seg006:4205
seg006:4205 loc_12055:                              ; CODE XREF: sub_11EA0+1A8␘j
seg006:4205                 shl     ax, 1
seg006:4207                 shl     ax, 1
seg006:4209                 rol     ax, 1
seg006:420B                 xchg    al, ah
seg006:420D                 shl     cx, 1
seg006:420F                 shl     cx, 1
seg006:4211                 rol     cx, 1
seg006:4213                 xchg    cl, ch
seg006:4215                 mov     di, [bx-4823h]
seg006:4219                 add     di, ax
seg006:421B                 shl     al, 1
seg006:421D                 xor     al, bl
seg006:421F                 and     al, 2
seg006:4221                 mov     ax, word_2AA9B
seg006:4224                 jnz     short loc_12078
seg006:4226                 xchg    al, ah
seg006:4228
seg006:4228 loc_12078:                              ; CODE XREF: sub_11EA0+1D4␘j
seg006:4228                 shr     cx, 1
seg006:422A                 jz      short loc_120A2
seg006:422C                 jb      short loc_1209A
seg006:422E
seg006:422E loc_1207E:                              ; CODE XREF: sub_11EA0+1E4␙j
seg006:422E                 or      es:[di], ax
seg006:4231                 add     di, 2
seg006:4234                 loop    loc_1207E
seg006:4236
seg006:4236 loc_12086:                              ; CODE XREF: sub_11EA0+191␘j
seg006:4236                                         ; sub_11EA0+19A␘j ...
seg006:4236                 add     bx, 2
seg006:4239                 sub     si, word_2AA9D
seg006:423D                 sub     bp, word_2AA9F
seg006:4241                 dec     word_2AAAB
seg006:4245                 jnz     short loc_1201F
seg006:4247                 jmp     loc_11F55
seg006:424A ; ---------------------------------------------------------------------------
seg006:424A
seg006:424A loc_1209A:                              ; CODE XREF: sub_11EA0+1DC␘j
seg006:424A                                         ; sub_11EA0+200␙j
seg006:424A                 or      es:[di], ax
seg006:424D                 add     di, 2
seg006:4250                 loop    loc_1209A
seg006:4252
seg006:4252 loc_120A2:                              ; CODE XREF: sub_11EA0+1DA␘j
seg006:4252                 or      es:[di], al
seg006:4255                 jmp     short loc_12086
seg006:4255 sub_11EA0       endp
seg006:4255
seg006:4257
