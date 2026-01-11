seg005:11FF ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:11FF
seg005:11FF ; Attributes: bp-based frame
seg005:11FF
seg005:11FF sub_D11F        proc far                ; CODE XREF: sub_1688+93␘P
seg005:11FF
seg005:11FF arg_0           = word ptr  6
seg005:11FF arg_2           = word ptr  8
seg005:11FF arg_4           = word ptr  0Ah
seg005:11FF arg_6           = word ptr  0Ch
seg005:11FF
seg005:11FF                 push    bp
seg005:1200                 mov     bp, sp
seg005:1202                 push    ds
seg005:1203                 push    di
seg005:1204                 push    si
seg005:1205                 push    es
seg005:1206                 mov     es, word_280BC
seg005:120A                 sub     di, di
seg005:120C                 mov     cx, [bp+arg_6]
seg005:120F                 sub     cx, [bp+arg_4]
seg005:1212                 inc     cx
seg005:1213                 mov     al, byte ptr word_2D628
seg005:1216                 cmp     al, 13h
seg005:1218                 jz      short loc_D1AE
seg005:121A                 cmp     al, 0Dh
seg005:121C                 jz      short loc_D141
seg005:121E                 jmp     loc_D1EB
seg005:1221 ; ---------------------------------------------------------------------------
seg005:1221
seg005:1221 loc_D141:                               ; CODE XREF: sub_D11F+1D␘j
seg005:1221                 mov     bx, [bp+arg_4]
seg005:1224                 shl     bx, 1
seg005:1226                 shl     bx, 1
seg005:1228                 shl     bx, 1
seg005:122A                 mov     ax, bx
seg005:122C                 shl     bx, 1
seg005:122E                 shl     bx, 1
seg005:1230                 add     ax, bx
seg005:1232                 mov     bx, [bp+arg_0]
seg005:1235                 shr     bx, 1
seg005:1237                 shr     bx, 1
seg005:1239                 shr     bx, 1
seg005:123B                 add     ax, bx
seg005:123D                 mov     si, ax
seg005:123F                 mov     dx, [bp+arg_2]
seg005:1242                 add     dx, 7
seg005:1245                 shr     dx, 1
seg005:1247                 shr     dx, 1
seg005:1249                 shr     dx, 1
seg005:124B                 sub     dx, bx
seg005:124D                 mov     bx, word_1F17A
seg005:1251                 shl     bx, 1
seg005:1253                 mov     ds, word ptr [bx-7028h]
seg005:1257                 mov     bx, cx
seg005:1259                 mov     cx, dx
seg005:125B                 mov     dx, 3CEh
seg005:125E                 mov     ax, 5
seg005:1261                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1261                                         ; mode register.Data bits:
seg005:1261                                         ; 0-1: Write mode 0-2
seg005:1261                                         ; 2: test condition
seg005:1261                                         ; 3: read mode: 1=color compare, 0=direct
seg005:1261                                         ; 4: 1=use odd/even RAM addressing
seg005:1261                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg005:1262
seg005:1262 loc_D182:                               ; CODE XREF: sub_D11F+87␙j
seg005:1262                 push    si
seg005:1263                 push    cx
seg005:1264
seg005:1264 loc_D184:                               ; CODE XREF: sub_D11F+7F␙j
seg005:1264                 mov     ax, 4
seg005:1267                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1267                                         ; read map select.
seg005:1267                                         ; Data bits 0-2 select map # for read mode 00.
seg005:1268                 mov     al, [si]
seg005:126A                 stosb
seg005:126B                 mov     ax, 104h
seg005:126E                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:126E                                         ; unknown register
seg005:126F                 mov     al, [si]
seg005:1271                 stosb
seg005:1272                 mov     ax, 204h
seg005:1275                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1275                                         ; unknown register
seg005:1276                 mov     al, [si]
seg005:1278                 stosb
seg005:1279                 mov     ax, 304h
seg005:127C                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:127C                                         ; unknown register
seg005:127D                 movsb
seg005:127E                 loop    loc_D184
seg005:1280                 pop     cx
seg005:1281                 pop     si
seg005:1282                 add     si, 28h ; '('
seg005:1285                 dec     bx
seg005:1286                 jnz     short loc_D182
seg005:1288                 pop     es
seg005:1289                 pop     si
seg005:128A                 pop     di
seg005:128B                 pop     ds
seg005:128C                 pop     bp
seg005:128D                 retf
seg005:128E ; ---------------------------------------------------------------------------
seg005:128E
seg005:128E loc_D1AE:                               ; CODE XREF: sub_D11F+19␘j
seg005:128E                 mov     bx, [bp+arg_4]
seg005:1291                 xchg    bl, bh
seg005:1293                 mov     ax, bx
seg005:1295                 shr     bx, 1
seg005:1297                 shr     bx, 1
seg005:1299                 add     ax, bx
seg005:129B                 add     ax, [bp+arg_0]
seg005:129E                 mov     si, ax
seg005:12A0                 mov     dx, [bp+arg_2]
seg005:12A3                 sub     dx, [bp+arg_0]
seg005:12A6                 inc     dx
seg005:12A7                 mov     bx, word_1F17A
seg005:12AB                 shl     bx, 1
seg005:12AD                 mov     ds, word ptr [bx-7028h]
seg005:12B1                 mov     bx, cx
seg005:12B3
seg005:12B3 loc_D1D3:                               ; CODE XREF: sub_D11F+C4␙j
seg005:12B3                 push    si
seg005:12B4                 mov     cx, dx
seg005:12B6                 shr     cx, 1
seg005:12B8                 rep movsw
seg005:12BA                 jnb     short loc_D1DD
seg005:12BC                 movsb
seg005:12BD
seg005:12BD loc_D1DD:                               ; CODE XREF: sub_D11F+BB␘j
seg005:12BD                 pop     si
seg005:12BE                 add     si, 140h
seg005:12C2                 dec     bx
seg005:12C3                 jnz     short loc_D1D3
seg005:12C5                 pop     es
seg005:12C6                 pop     si
seg005:12C7                 pop     di
seg005:12C8                 pop     ds
seg005:12C9                 pop     bp
seg005:12CA                 retf
seg005:12CB ; ---------------------------------------------------------------------------
seg005:12CB
seg005:12CB loc_D1EB:                               ; CODE XREF: sub_D11F+1F␘j
seg005:12CB                 mov     si, 3180h
seg005:12CE                 mov     ax, [bp+arg_0]
seg005:12D1                 and     ax, 0FFFCh
seg005:12D4                 shr     ax, 1
seg005:12D6                 add     si, ax
seg005:12D8                 mov     dx, [bp+arg_2]
seg005:12DB                 add     dx, 3
seg005:12DE                 shr     dx, 1
seg005:12E0                 shr     dx, 1
seg005:12E2                 shr     ax, 1
seg005:12E4                 sub     dx, ax
seg005:12E6                 mov     bx, word_1F17A
seg005:12EA                 shl     bx, 1
seg005:12EC                 mov     ds, word ptr [bx-7028h]
seg005:12F0                 mov     bx, cx
seg005:12F2
seg005:12F2 loc_D212:                               ; CODE XREF: sub_D11F+104␙j
seg005:12F2                 push    si
seg005:12F3                 mov     cx, dx
seg005:12F5                 rep movsw
seg005:12F7                 pop     si
seg005:12F8                 add     si, 2000h
seg005:12FC                 jns     short loc_D222
seg005:12FE                 add     si, 80A0h
seg005:1302
seg005:1302 loc_D222:                               ; CODE XREF: sub_D11F+FD␘j
seg005:1302                 dec     bx
seg005:1303                 jnz     short loc_D212
seg005:1305                 pop     es
seg005:1306                 pop     si
seg005:1307                 pop     di
seg005:1308                 pop     ds
seg005:1309                 pop     bp
seg005:130A                 retf
seg005:130A sub_D11F        endp
seg005:130A
seg005:130B
