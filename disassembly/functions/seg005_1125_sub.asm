seg005:1125 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1125
seg005:1125
seg005:1125 sub_D045        proc far                ; CODE XREF: sub_D038+6␘P
seg005:1125                                         ; sub_DFDE+33␙P ...
seg005:1125                 push    bx
seg005:1126                 cmp     byte_1F17C, 1
seg005:112B                 jnz     short loc_D07E
seg005:112D                 or      ax, ax
seg005:112F                 jnz     short loc_D068
seg005:1131                 cli
seg005:1132                 call    sub_1EFFE
seg005:1137                 sti
seg005:1138                 mov     cx, 18h
seg005:113B                 sub     bx, bx
seg005:113D                 mov     al, 0FFh
seg005:113F
seg005:113F loc_D05F:                               ; CODE XREF: sub_D045+1F␙j
seg005:113F                 mov     [bx-6F7Eh], al
seg005:1143                 inc     bx
seg005:1144                 loop    loc_D05F
seg005:1146                 pop     bx
seg005:1147                 retf
seg005:1148 ; ---------------------------------------------------------------------------
seg005:1148
seg005:1148 loc_D068:                               ; CODE XREF: sub_D045+A␘j
seg005:1148                 cmp     al, 2
seg005:114A                 jz      short loc_D077
seg005:114C                 cmp     al, 6
seg005:114E                 jz      short loc_D077
seg005:1150                 cmp     byte_28477, 0
seg005:1155                 jnz     short loc_D07E
seg005:1157
seg005:1157 loc_D077:                               ; CODE XREF: sub_D045+25␘j
seg005:1157                                         ; sub_D045+29␘j
seg005:1157                 cmp     byte ptr word_1F16F, 0
seg005:115C                 jz      short loc_D080
seg005:115E
seg005:115E loc_D07E:                               ; CODE XREF: sub_D045+6␘j
seg005:115E                                         ; sub_D045+30␘j ...
seg005:115E                 pop     bx
seg005:115F                 retf
seg005:1160 ; ---------------------------------------------------------------------------
seg005:1160
seg005:1160 loc_D080:                               ; CODE XREF: sub_D045+37␘j
seg005:1160                 mov     ah, al
seg005:1162                 and     al, 7Fh
seg005:1164                 cmp     al, 14h
seg005:1166                 jnz     short loc_D091
seg005:1168                 cmp     byte_28582, 0
seg005:116D                 jz      short loc_D091
seg005:116F                 mov     al, 17h
seg005:1171
seg005:1171 loc_D091:                               ; CODE XREF: sub_D045+41␘j
seg005:1171                                         ; sub_D045+48␘j
seg005:1171                 or      ah, ah
seg005:1173                 jns     short loc_D0BC
seg005:1175                 sub     ah, ah
seg005:1177                 mov     bx, ax
seg005:1179                 mov     ah, [bx-6F7Eh]
seg005:117D                 cmp     ah, 0FFh
seg005:1180                 jz      short loc_D0BA
seg005:1182                 mov     byte ptr [bx-6F7Eh], 0FFh
seg005:1187                 mov     bl, ah
seg005:1189                 cmp     [bx-3505h], al
seg005:118D                 jnz     short loc_D0BA
seg005:118F                 push    bx
seg005:1190                 cli
seg005:1191                 call    sub_1E078
seg005:1196                 sti
seg005:1197                 add     sp, 2
seg005:119A
seg005:119A loc_D0BA:                               ; CODE XREF: sub_D045+5B␘j
seg005:119A                                         ; sub_D045+68␘j
seg005:119A                 pop     bx
seg005:119B                 retf
seg005:119C ; ---------------------------------------------------------------------------
seg005:119C
seg005:119C loc_D0BC:                               ; CODE XREF: sub_D045+4E␘j
seg005:119C                 sub     ah, ah
seg005:119E                 mov     bx, ax
seg005:11A0                 cmp     bx, 17h
seg005:11A3                 ja      short loc_D07E
seg005:11A5                 mov     al, [bx-6F96h]
seg005:11A9                 mov     cl, bl
seg005:11AB                 mov     ah, [bx-6F7Eh]
seg005:11AF                 cmp     ah, 0FFh
seg005:11B2                 jz      short loc_D0DE
seg005:11B4                 push    bx
seg005:11B5                 mov     bl, ah
seg005:11B7                 cmp     [bx-3505h], cl
seg005:11BB                 pop     bx
seg005:11BC                 jz      short loc_D07E
seg005:11BE
seg005:11BE loc_D0DE:                               ; CODE XREF: sub_D045+8D␘j
seg005:11BE                 push    bx
seg005:11BF                 shl     bx, 1
seg005:11C1                 mov     bx, [bx-6F66h]
seg005:11C5                 push    ax
seg005:11C6                 push    bx
seg005:11C7                 cmp     al, 7Fh ; '␡'
seg005:11C9                 jnz     short loc_D0F1
seg005:11CB                 cli
seg005:11CC                 call    sub_1EFFE
seg005:11D1
seg005:11D1 loc_D0F1:                               ; CODE XREF: sub_D045+A4␘j
seg005:11D1                 cli
seg005:11D2                 call    sub_1ED45
seg005:11D7                 sti
seg005:11D8                 add     sp, 4
seg005:11DB                 pop     bx
seg005:11DC                 sub     bh, bh
seg005:11DE                 mov     [bx-6F7Eh], al
seg005:11E2                 cmp     al, 0FFh
seg005:11E4                 jz      short loc_D11D
seg005:11E6                 mov     cl, bl
seg005:11E8                 mov     bl, al
seg005:11EA                 mov     [bx-3505h], cl
seg005:11EE                 cmp     cl, 0Fh
seg005:11F1                 jz      short loc_D118
seg005:11F3                 cmp     cl, 10h
seg005:11F6                 jnz     short loc_D11D
seg005:11F8
seg005:11F8 loc_D118:                               ; CODE XREF: sub_D045+CC␘j
seg005:11F8                 mov     byte_280CA, 1
seg005:11FD
seg005:11FD loc_D11D:                               ; CODE XREF: sub_D045+BF␘j
seg005:11FD                                         ; sub_D045+D1␘j
seg005:11FD                 pop     bx
seg005:11FE                 retf
seg005:11FE sub_D045        endp
seg005:11FE
seg005:11FF
