seg031:0336 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0336
seg031:0336 ; Attributes: bp-based frame
seg031:0336
seg031:0336 sub_19196       proc far                ; CODE XREF: sub_8DC+51␘P
seg031:0336                                         ; sub_8DC+79␘P ...
seg031:0336
seg031:0336 var_A           = word ptr -0Ah
seg031:0336 var_6           = word ptr -6
seg031:0336 var_4           = word ptr -4
seg031:0336 var_2           = word ptr -2
seg031:0336 arg_0           = word ptr  6
seg031:0336 arg_2           = word ptr  8
seg031:0336 arg_4           = word ptr  0Ah
seg031:0336 arg_6           = word ptr  0Ch
seg031:0336
seg031:0336                 push    bp
seg031:0337                 mov     bp, sp
seg031:0339                 sub     sp, 0Ah
seg031:033C                 push    di
seg031:033D                 push    si
seg031:033E                 mov     si, [bp+arg_6]
seg031:0341                 mov     ax, [bp+arg_2]
seg031:0344                 mul     [bp+arg_4]
seg031:0347                 mov     [bp+var_2], ax
seg031:034A                 mov     [bp+var_4], ax
seg031:034D                 cmp     [bp+arg_2], 0
seg031:0351                 jz      short loc_191B9
seg031:0353                 cmp     [bp+arg_4], 0
seg031:0357                 jnz     short loc_191C0
seg031:0359
seg031:0359 loc_191B9:                              ; CODE XREF: sub_19196+1B␘j
seg031:0359                 mov     ax, [bp+var_4]
seg031:035C                 jmp     loc_19382
seg031:035C ; ---------------------------------------------------------------------------
seg031:035F                 align 2
seg031:0360
seg031:0360 loc_191C0:                              ; CODE XREF: sub_19196+21␘j
seg031:0360                 test    byte ptr [si+6], 0Ch
seg031:0364                 jz      short loc_191C9
seg031:0366                 jmp     loc_1926B
seg031:0369 ; ---------------------------------------------------------------------------
seg031:0369
seg031:0369 loc_191C9:                              ; CODE XREF: sub_19196+2E␘j
seg031:0369                 mov     bx, si
seg031:036B                 sub     bx, 0C39Ah
seg031:036F                 mov     cl, 3
seg031:0371                 sar     bx, cl
seg031:0373                 mov     ax, bx
seg031:0375                 shl     bx, 1
seg031:0377                 add     bx, ax
seg031:0379                 shl     bx, 1
seg031:037B                 test    byte ptr [bx-3BC6h], 1
seg031:0380                 jz      short loc_191E5
seg031:0382                 jmp     loc_1926B
seg031:0385 ; ---------------------------------------------------------------------------
seg031:0385
seg031:0385 loc_191E5:                              ; CODE XREF: sub_19196+4A␘j
seg031:0385                 mov     al, [si+7]
seg031:0388                 cbw
seg031:0389                 mov     bx, ax
seg031:038B                 test    byte ptr [bx-3C9Eh], 80h
seg031:0390                 jnz     short loc_1923A
seg031:0392                 test    [bp+var_4], 1FFh
seg031:0397                 jnz     short loc_1923A
seg031:0399                 cmp     [bp+var_4], 0
seg031:039D                 jnz     short loc_19202
seg031:039F                 jmp     loc_192CE
seg031:03A2 ; ---------------------------------------------------------------------------
seg031:03A2
seg031:03A2 loc_19202:                              ; CODE XREF: sub_19196+67␘j
seg031:03A2                 cbw
seg031:03A3                 mov     [bp+var_A], ax
seg031:03A6
seg031:03A6 loc_19206:                              ; CODE XREF: sub_19196:loc_19237␙j
seg031:03A6                 push    [bp+var_4]
seg031:03A9                 push    [bp+arg_0]
seg031:03AC                 push    [bp+var_A]
seg031:03AF                 call    far ptr sub_1A852
seg031:03B4                 add     sp, 6
seg031:03B7                 mov     di, ax
seg031:03B9                 or      di, di
seg031:03BB                 jnz     short loc_19220
seg031:03BD                 jmp     loc_19363
seg031:03C0 ; ---------------------------------------------------------------------------
seg031:03C0
seg031:03C0 loc_19220:                              ; CODE XREF: sub_19196+85␘j
seg031:03C0                 cmp     di, 0FFFFh
seg031:03C3                 jnz     short loc_19228
seg031:03C5                 jmp     loc_19363
seg031:03C8 ; ---------------------------------------------------------------------------
seg031:03C8
seg031:03C8 loc_19228:                              ; CODE XREF: sub_19196+8D␘j
seg031:03C8                 sub     [bp+var_4], di
seg031:03CB                 add     [bp+arg_0], di
seg031:03CE                 cmp     [bp+var_4], 0
seg031:03D2                 jnz     short loc_19237
seg031:03D4                 jmp     loc_192CE
seg031:03D7 ; ---------------------------------------------------------------------------
seg031:03D7
seg031:03D7 loc_19237:                              ; CODE XREF: sub_19196+9C␘j
seg031:03D7                 jmp     short loc_19206
seg031:03D7 ; ---------------------------------------------------------------------------
seg031:03D9                 align 2
seg031:03DA
seg031:03DA loc_1923A:                              ; CODE XREF: sub_19196+5A␘j
seg031:03DA                                         ; sub_19196+61␘j
seg031:03DA                 dec     word ptr [si+2]
seg031:03DD                 js      short loc_1924A
seg031:03DF                 mov     bx, [si]
seg031:03E1                 inc     word ptr [si]
seg031:03E3                 mov     al, [bx]
seg031:03E5                 sub     ah, ah
seg031:03E7                 jmp     short loc_19253
seg031:03E7 ; ---------------------------------------------------------------------------
seg031:03E9                 align 2
seg031:03EA
seg031:03EA loc_1924A:                              ; CODE XREF: sub_19196+A7␘j
seg031:03EA                 push    si
seg031:03EB                 call    sub_19A2C
seg031:03F0                 add     sp, 2
seg031:03F3
seg031:03F3 loc_19253:                              ; CODE XREF: sub_19196+B1␘j
seg031:03F3                 mov     di, ax
seg031:03F5                 inc     ax
seg031:03F6                 jnz     short loc_1925E
seg031:03F8                 sub     ax, ax
seg031:03FA                 jmp     loc_19382
seg031:03FA ; ---------------------------------------------------------------------------
seg031:03FD                 align 2
seg031:03FE
seg031:03FE loc_1925E:                              ; CODE XREF: sub_19196+C0␘j
seg031:03FE                 mov     bx, [bp+arg_0]
seg031:0401                 inc     [bp+arg_0]
seg031:0404                 mov     ax, di
seg031:0406                 mov     [bx], al
seg031:0408                 dec     [bp+var_4]
seg031:040B
seg031:040B loc_1926B:                              ; CODE XREF: sub_19196+30␘j
seg031:040B                                         ; sub_19196+4C␘j
seg031:040B                 test    byte ptr [si+6], 8
seg031:040F                 jz      short loc_19274
seg031:0411                 jmp     loc_192FF
seg031:0414 ; ---------------------------------------------------------------------------
seg031:0414
seg031:0414 loc_19274:                              ; CODE XREF: sub_19196+D9␘j
seg031:0414                 mov     bx, si
seg031:0416                 sub     bx, 0C39Ah
seg031:041A                 mov     cl, 3
seg031:041C                 sar     bx, cl
seg031:041E                 mov     ax, bx
seg031:0420                 shl     bx, 1
seg031:0422                 add     bx, ax
seg031:0424                 shl     bx, 1
seg031:0426                 test    byte ptr [bx-3BC6h], 1
seg031:042B                 jnz     short loc_19290
seg031:042D                 jmp     loc_1933A
seg031:0430 ; ---------------------------------------------------------------------------
seg031:0430
seg031:0430 loc_19290:                              ; CODE XREF: sub_19196+F5␘j
seg031:0430                 jmp     short loc_192FF
seg031:0432 ; ---------------------------------------------------------------------------
seg031:0432
seg031:0432 loc_19292:                              ; CODE XREF: sub_19196+173␙j
seg031:0432                 cmp     [bp+var_4], 200h
seg031:0437                 jb      short loc_192E4
seg031:0439                 mov     ax, [bp+var_4]
seg031:043C                 mov     cl, 9
seg031:043E                 shr     ax, cl
seg031:0440                 shl     ax, cl
seg031:0442                 mov     [bp+var_6], ax
seg031:0445                 push    ax
seg031:0446                 push    [bp+arg_0]
seg031:0449                 mov     al, [si+7]
seg031:044C                 cbw
seg031:044D                 push    ax
seg031:044E                 call    far ptr sub_1A852
seg031:0453                 add     sp, 6
seg031:0456                 mov     di, ax
seg031:0458                 or      di, di
seg031:045A                 jz      short loc_192C1
seg031:045C                 cmp     di, 0FFFFh
seg031:045F                 jnz     short loc_192DC
seg031:0461
seg031:0461 loc_192C1:                              ; CODE XREF: sub_19196+124␘j
seg031:0461                 cmp     di, 0FFFFh
seg031:0464                 jnz     short loc_192C9
seg031:0466                 jmp     loc_1936B
seg031:0469 ; ---------------------------------------------------------------------------
seg031:0469
seg031:0469 loc_192C9:                              ; CODE XREF: sub_19196+12E␘j
seg031:0469                                         ; sub_19196+1D2␙j
seg031:0469                 mov     al, 10h
seg031:046B
seg031:046B loc_192CB:                              ; CODE XREF: sub_19196+1D7␙j
seg031:046B                 or      [si+6], al
seg031:046E
seg031:046E loc_192CE:                              ; CODE XREF: sub_19196+69␘j
seg031:046E                                         ; sub_19196+9E␘j ...
seg031:046E                 mov     ax, [bp+var_2]
seg031:0471                 sub     ax, [bp+var_4]
seg031:0474                 sub     dx, dx
seg031:0476                 div     [bp+arg_2]
seg031:0479                 jmp     loc_19382
seg031:047C ; ---------------------------------------------------------------------------
seg031:047C
seg031:047C loc_192DC:                              ; CODE XREF: sub_19196+129␘j
seg031:047C                 sub     [bp+var_4], di
seg031:047F                 add     [bp+arg_0], di
seg031:0482                 jmp     short loc_192FF
seg031:0484 ; ---------------------------------------------------------------------------
seg031:0484
seg031:0484 loc_192E4:                              ; CODE XREF: sub_19196+101␘j
seg031:0484                 push    si
seg031:0485                 call    sub_19A2C
seg031:048A                 add     sp, 2
seg031:048D                 mov     di, ax
seg031:048F                 inc     ax
seg031:0490                 jz      short loc_192CE
seg031:0492                 mov     bx, [bp+arg_0]
seg031:0495                 mov     ax, di
seg031:0497                 mov     [bx], al
seg031:0499                 inc     [bp+arg_0]
seg031:049C                 dec     [bp+var_4]
seg031:049F
seg031:049F loc_192FF:                              ; CODE XREF: sub_19196+DB␘j
seg031:049F                                         ; sub_19196:loc_19290␘j ...
seg031:049F                 cmp     [bp+var_4], 0
seg031:04A3                 jz      short loc_192CE
seg031:04A5                 cmp     word ptr [si+2], 0
seg031:04A9                 jz      short loc_19292
seg031:04AB                 mov     ax, [si+2]
seg031:04AE                 sub     ax, [bp+var_4]
seg031:04B1                 sbb     cx, cx
seg031:04B3                 and     ax, cx
seg031:04B5                 add     ax, [bp+var_4]
seg031:04B8                 mov     [bp+var_6], ax
seg031:04BB                 push    ax
seg031:04BC                 push    word ptr [si]
seg031:04BE                 push    [bp+arg_0]
seg031:04C1                 call    sub_1AD92
seg031:04C6                 add     sp, 6
seg031:04C9                 mov     ax, [bp+var_6]
seg031:04CC                 add     [si], ax
seg031:04CE                 add     [bp+arg_0], ax
seg031:04D1                 sub     [bp+var_4], ax
seg031:04D4                 sub     [si+2], ax
seg031:04D7                 jmp     short loc_192FF
seg031:04D7 ; ---------------------------------------------------------------------------
seg031:04D9                 align 2
seg031:04DA
seg031:04DA loc_1933A:                              ; CODE XREF: sub_19196+F7␘j
seg031:04DA                 cmp     [bp+var_4], 0
seg031:04DE                 jz      short loc_192CE
seg031:04E0                 mov     al, [si+7]
seg031:04E3                 cbw
seg031:04E4                 mov     [bp+var_A], ax
seg031:04E7
seg031:04E7 loc_19347:                              ; CODE XREF: sub_19196:loc_1937F␙j
seg031:04E7                 push    [bp+var_4]
seg031:04EA                 push    [bp+arg_0]
seg031:04ED                 push    [bp+var_A]
seg031:04F0                 call    far ptr sub_1A852
seg031:04F5                 add     sp, 6
seg031:04F8                 mov     di, ax
seg031:04FA                 or      di, di
seg031:04FC                 jz      short loc_19363
seg031:04FE                 cmp     di, 0FFFFh
seg031:0501                 jnz     short loc_19370
seg031:0503
seg031:0503 loc_19363:                              ; CODE XREF: sub_19196+87␘j
seg031:0503                                         ; sub_19196+8F␘j ...
seg031:0503                 cmp     di, 0FFFFh
seg031:0506                 jz      short loc_1936B
seg031:0508                 jmp     loc_192C9
seg031:050B ; ---------------------------------------------------------------------------
seg031:050B
seg031:050B loc_1936B:                              ; CODE XREF: sub_19196+130␘j
seg031:050B                                         ; sub_19196+1D0␘j
seg031:050B                 mov     al, 20h ; ' '
seg031:050D                 jmp     loc_192CB
seg031:0510 ; ---------------------------------------------------------------------------
seg031:0510
seg031:0510 loc_19370:                              ; CODE XREF: sub_19196+1CB␘j
seg031:0510                 sub     [bp+var_4], di
seg031:0513                 add     [bp+arg_0], di
seg031:0516                 cmp     [bp+var_4], 0
seg031:051A                 jnz     short loc_1937F
seg031:051C                 jmp     loc_192CE
seg031:051F ; ---------------------------------------------------------------------------
seg031:051F
seg031:051F loc_1937F:                              ; CODE XREF: sub_19196+1E4␘j
seg031:051F                 jmp     short loc_19347
seg031:051F ; ---------------------------------------------------------------------------
seg031:0521                 align 2
seg031:0522
seg031:0522 loc_19382:                              ; CODE XREF: sub_19196+26␘j
seg031:0522                                         ; sub_19196+C4␘j ...
seg031:0522                 pop     si
seg031:0523                 pop     di
seg031:0524                 mov     sp, bp
seg031:0526                 pop     bp
seg031:0527                 retf
seg031:0527 sub_19196       endp
seg031:0527
seg031:0528
