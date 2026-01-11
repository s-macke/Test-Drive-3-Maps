seg002:0006 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:0006
seg002:0006 ; Attributes: bp-based frame
seg002:0006
seg002:0006 sub_76D6        proc far                ; CODE XREF: sub_0+707␘P
seg002:0006
seg002:0006 var_6           = word ptr -6
seg002:0006 var_4           = word ptr -4
seg002:0006 var_2           = word ptr -2
seg002:0006
seg002:0006                 push    bp
seg002:0007                 mov     bp, sp
seg002:0009                 sub     sp, 6
seg002:000C                 mov     byte_28478, 0
seg002:0011                 call    sub_4534
seg002:0016                 sub     al, al
seg002:0018                 mov     byte_2DD64, al
seg002:001B                 mov     byte_2BF82, al
seg002:001E                 mov     byte_28477, al
seg002:0021                 mov     word_280C8, 10h
seg002:0027                 sub     ax, ax
seg002:0029                 push    ax
seg002:002A                 call    sub_D038
seg002:002F                 add     sp, 2
seg002:0032                 sub     ax, ax
seg002:0034                 push    ax
seg002:0035                 call    sub_1E040
seg002:003A                 add     sp, 2
seg002:003D                 push    cs
seg002:003E                 call    near ptr sub_83E0
seg002:0041                 push    cs
seg002:0042                 call    near ptr sub_7EFE
seg002:0045                 push    cs
seg002:0046                 call    near ptr sub_8758
seg002:0049                 push    cs
seg002:004A                 call    near ptr sub_7FD4
seg002:004D                 push    cs
seg002:004E                 call    near ptr sub_877A
seg002:0051                 push    cs
seg002:0052                 call    near ptr sub_89C2
seg002:0055                 push    cs
seg002:0056                 call    near ptr sub_8C80
seg002:0059                 push    cs
seg002:005A                 call    near ptr sub_8D70
seg002:005D                 mov     byte_28147, 0
seg002:0062                 cmp     byte_1FBE8, 1
seg002:0067                 jnz     short loc_773C
seg002:0069                 jmp     loc_7A7E
seg002:006C ; ---------------------------------------------------------------------------
seg002:006C
seg002:006C loc_773C:                               ; CODE XREF: sub_76D6+61␘j
seg002:006C                 mov     al, byte_1FAA4
seg002:006F                 add     al, 30h ; '0'
seg002:0071                 mov     byte_208BF, al
seg002:0074                 mov     ax, 9
seg002:0077                 push    ax
seg002:0078                 call    sub_1688
seg002:007D                 add     sp, 2
seg002:0080                 jmp     loc_7A7E
seg002:0080 ; ---------------------------------------------------------------------------
seg002:0083                 align 2
seg002:0084
seg002:0084 loc_7754:                               ; CODE XREF: sub_76D6+3AF␙j
seg002:0084                 mov     al, byte ptr word_1F180
seg002:0087                 sub     al, byte ptr [bp+var_4]
seg002:008A                 mov     byte_2A6F8, al
seg002:008D                 mov     ax, word_1F180
seg002:0090                 mov     [bp+var_4], ax
seg002:0093                 mov     al, byte_28477
seg002:0096                 cmp     byte_2DD64, al
seg002:009A                 jnz     short loc_7778
seg002:009C                 mov     ax, word_2DA64
seg002:009F                 cmp     word_1F16A, ax
seg002:00A3                 jnz     short loc_7778
seg002:00A5                 jmp     loc_78E8
seg002:00A8 ; ---------------------------------------------------------------------------
seg002:00A8
seg002:00A8 loc_7778:                               ; CODE XREF: sub_76D6+94␘j
seg002:00A8                                         ; sub_76D6+9D␘j
seg002:00A8                 cmp     byte_2BF42, 0
seg002:00AD                 jz      short loc_77AB
seg002:00AF                 sub     ax, ax
seg002:00B1                 push    ax
seg002:00B2                 mov     ax, 1
seg002:00B5                 push    ax
seg002:00B6                 mov     ax, 0ABh ; '½'
seg002:00B9                 push    ax
seg002:00BA                 mov     ax, 0F8h ; '°'
seg002:00BD                 push    ax
seg002:00BE                 mov     ax, 97h ; 'ù'
seg002:00C1                 push    ax
seg002:00C2                 mov     ax, 68h ; 'h'
seg002:00C5                 push    ax
seg002:00C6                 mov     ax, 107h
seg002:00C9                 push    ax
seg002:00CA                 mov     ax, 0D0h ; '-'
seg002:00CD                 push    ax
seg002:00CE                 call    far ptr sub_17BE5
seg002:00D3                 add     sp, 10h
seg002:00D6                 mov     byte_2BF42, 0
seg002:00DB
seg002:00DB loc_77AB:                               ; CODE XREF: sub_76D6+A7␘j
seg002:00DB                 cmp     byte_2D851, 0
seg002:00E0                 jz      short loc_77B6
seg002:00E2                 push    cs
seg002:00E3                 call    near ptr sub_7EFE
seg002:00E6
seg002:00E6 loc_77B6:                               ; CODE XREF: sub_76D6+DA␘j
seg002:00E6                 push    cs
seg002:00E7                 call    near ptr sub_8758
seg002:00EA                 mov     ax, word_2DA64
seg002:00ED                 cmp     word_1F16A, ax
seg002:00F1                 jz      short loc_77C6
seg002:00F3                 jmp     loc_786C
seg002:00F6 ; ---------------------------------------------------------------------------
seg002:00F6
seg002:00F6 loc_77C6:                               ; CODE XREF: sub_76D6+EB␘j
seg002:00F6                 cmp     byte_2A777, 0
seg002:00FB                 jnz     short loc_77D0
seg002:00FD                 jmp     loc_7889
seg002:0100 ; ---------------------------------------------------------------------------
seg002:0100
seg002:0100 loc_77D0:                               ; CODE XREF: sub_76D6+F5␘j
seg002:0100                 cmp     byte_2AD25, 0
seg002:0105                 jz      short loc_77DE
seg002:0107                 push    cs
seg002:0108                 call    near ptr sub_9076
seg002:010B                 jmp     short loc_77E2
seg002:010B ; ---------------------------------------------------------------------------
seg002:010D                 align 2
seg002:010E
seg002:010E loc_77DE:                               ; CODE XREF: sub_76D6+FF␘j
seg002:010E                 push    cs
seg002:010F                 call    near ptr sub_92AC
seg002:0112
seg002:0112 loc_77E2:                               ; CODE XREF: sub_76D6+105␘j
seg002:0112                 mov     [bp+var_6], 1
seg002:0117                 jmp     short loc_77FF
seg002:0117 ; ---------------------------------------------------------------------------
seg002:0119                 align 2
seg002:011A
seg002:011A loc_77EA:                               ; CODE XREF: sub_76D6+134␙j
seg002:011A                                         ; sub_76D6+13B␙j
seg002:011A                 mov     ax, 1
seg002:011D                 push    ax
seg002:011E                 call    sub_16A5D
seg002:0123                 add     sp, 2
seg002:0126
seg002:0126 loc_77F6:                               ; CODE XREF: sub_76D6+141␙j
seg002:0126                 call    sub_EC6D
seg002:012B                 add     [bp+var_6], 2
seg002:012F
seg002:012F loc_77FF:                               ; CODE XREF: sub_76D6+111␘j
seg002:012F                 cmp     [bp+var_6], 50h ; 'P'
seg002:0133                 jge     short loc_781A
seg002:0135                 cmp     byte_2AD25, 0
seg002:013A                 jz      short loc_77EA
seg002:013C                 cmp     byte_2AD26, 1
seg002:0141                 jnz     short loc_77EA
seg002:0143                 push    cs
seg002:0144                 call    near ptr sub_911E
seg002:0147                 jmp     short loc_77F6
seg002:0147 ; ---------------------------------------------------------------------------
seg002:0149                 align 2
seg002:014A
seg002:014A loc_781A:                               ; CODE XREF: sub_76D6+12D␘j
seg002:014A                 cmp     byte_2AD25, 0
seg002:014F                 jz      short loc_7855
seg002:0151                 cmp     byte_2AD26, 1
seg002:0156                 jnz     short loc_7855
seg002:0158                 mov     ax, 1
seg002:015B                 mov     word_1F17A, ax
seg002:015E                 push    ax
seg002:015F                 call    far ptr sub_16BB0
seg002:0164                 add     sp, 2
seg002:0167                 mov     ax, 67h ; 'g'
seg002:016A                 push    ax
seg002:016B                 push    cs
seg002:016C                 call    near ptr sub_9312
seg002:016F                 add     sp, 2
seg002:0172                 sub     ax, ax
seg002:0174                 mov     word_1F17A, ax
seg002:0177                 push    ax
seg002:0178                 call    far ptr sub_16BB0
seg002:017D                 add     sp, 2
seg002:0180                 mov     byte_280DC, 0
seg002:0185
seg002:0185 loc_7855:                               ; CODE XREF: sub_76D6+149␘j
seg002:0185                                         ; sub_76D6+150␘j
seg002:0185                 mov     byte_2AD26, 0
seg002:018A                 mov     byte_207B8, 0
seg002:018F                 sub     ax, ax
seg002:0191                 push    ax
seg002:0192                 call    sub_E254
seg002:0197                 add     sp, 2
seg002:019A                 jmp     short loc_7889
seg002:019C ; ---------------------------------------------------------------------------
seg002:019C
seg002:019C loc_786C:                               ; CODE XREF: sub_76D6+ED␘j
seg002:019C                 sub     al, al
seg002:019E                 mov     byte_2BF42, al
seg002:01A1                 mov     byte_2D620, al
seg002:01A4                 mov     byte_2D8A6, al
seg002:01A7                 mov     bl, byte_2A6C1
seg002:01AB                 sub     bh, bh
seg002:01AD                 mov     al, [bx-188Bh]
seg002:01B1                 mov     byte_2BF47, al
seg002:01B4                 inc     al
seg002:01B6                 mov     byte_2C184, al
seg002:01B9
seg002:01B9 loc_7889:                               ; CODE XREF: sub_76D6+F7␘j
seg002:01B9                                         ; sub_76D6+194␘j
seg002:01B9                 mov     al, byte_28477
seg002:01BC                 cmp     byte_2DD64, al
seg002:01C0                 jz      short loc_789A
seg002:01C2                 or      al, al
seg002:01C4                 jnz     short loc_789A
seg002:01C6                 push    cs
seg002:01C7                 call    near ptr sub_7B8C
seg002:01CA
seg002:01CA loc_789A:                               ; CODE XREF: sub_76D6+1BA␘j
seg002:01CA                                         ; sub_76D6+1BE␘j
seg002:01CA                 mov     al, byte_28477
seg002:01CD                 cmp     byte_2DD64, al
seg002:01D1                 jz      short loc_78AB
seg002:01D3                 or      al, al
seg002:01D5                 jz      short loc_78AB
seg002:01D7                 push    cs
seg002:01D8                 call    near ptr sub_7C5C
seg002:01DB
seg002:01DB loc_78AB:                               ; CODE XREF: sub_76D6+1CB␘j
seg002:01DB                                         ; sub_76D6+1CF␘j
seg002:01DB                 mov     al, byte_28477
seg002:01DE                 mov     byte_2DD64, al
seg002:01E1                 cmp     byte_28476, 0
seg002:01E6                 jnz     short loc_78C0
seg002:01E8                 mov     ax, word_1F16A
seg002:01EB                 mov     word_2DA64, ax
seg002:01EE                 jmp     short loc_78C5
seg002:01F0 ; ---------------------------------------------------------------------------
seg002:01F0
seg002:01F0 loc_78C0:                               ; CODE XREF: sub_76D6+1E0␘j
seg002:01F0                 mov     byte_28476, 0
seg002:01F5
seg002:01F5 loc_78C5:                               ; CODE XREF: sub_76D6+1E8␘j
seg002:01F5                 cmp     word_1F16A, 2
seg002:01FA                 jnz     short loc_78DA
seg002:01FC                 mov     byte_2A6F1, 1
seg002:0201                 mov     word_1F16A, 1
seg002:0207                 jmp     loc_7A7E
seg002:020A ; ---------------------------------------------------------------------------
seg002:020A
seg002:020A loc_78DA:                               ; CODE XREF: sub_76D6+1F4␘j
seg002:020A                 sub     ax, ax
seg002:020C                 mov     word_1F17A, ax
seg002:020F                 push    ax
seg002:0210                 call    far ptr sub_16BB0
seg002:0215                 add     sp, 2
seg002:0218
seg002:0218 loc_78E8:                               ; CODE XREF: sub_76D6+9F␘j
seg002:0218                 cmp     word_28474, 0
seg002:021D                 jz      short loc_7904
seg002:021F                 mov     ax, word_28474
seg002:0222                 mov     [bp+var_2], ax
seg002:0225                 mov     word_28474, 0
seg002:022B                 push    ax
seg002:022C                 call    sub_1688
seg002:0231                 add     sp, 2
seg002:0234
seg002:0234 loc_7904:                               ; CODE XREF: sub_76D6+217␘j
seg002:0234                 call    sub_153B8
seg002:0239                 sub     ax, ax
seg002:023B                 push    ax
seg002:023C                 push    cs
seg002:023D                 call    near ptr sub_7ADE
seg002:0240                 add     sp, 2
seg002:0243                 call    sub_154A1
seg002:0248                 mov     ax, 1
seg002:024B                 push    ax
seg002:024C                 push    cs
seg002:024D                 call    near ptr sub_7ADE
seg002:0250                 add     sp, 2
seg002:0253                 cmp     byte_2A777, 0
seg002:0258                 jnz     short loc_7941
seg002:025A                 cmp     byte_28477, 0
seg002:025F                 jnz     short loc_7941
seg002:0261                 push    cs
seg002:0262                 call    near ptr sub_877A
seg002:0265                 push    cs
seg002:0266                 call    near ptr sub_8C80
seg002:0269                 push    cs
seg002:026A                 call    near ptr sub_8D70
seg002:026D                 push    cs
seg002:026E                 call    near ptr sub_8FFE
seg002:0271
seg002:0271 loc_7941:                               ; CODE XREF: sub_76D6+252␘j
seg002:0271                                         ; sub_76D6+259␘j
seg002:0271                 cmp     word_1F16A, 3
seg002:0276                 jz      short loc_7954
seg002:0278                 cmp     word_1F16A, 2
seg002:027D                 jz      short loc_7954
seg002:027F                 call    sub_D300
seg002:0284
seg002:0284 loc_7954:                               ; CODE XREF: sub_76D6+270␘j
seg002:0284                                         ; sub_76D6+277␘j
seg002:0284                 mov     ax, 2
seg002:0287                 push    ax
seg002:0288                 push    cs
seg002:0289                 call    near ptr sub_7ADE
seg002:028C                 add     sp, 2
seg002:028F                 call    sub_E9E
seg002:0294                 mov     [bp+var_2], ax
seg002:0297                 mov     al, byte_2AA85
seg002:029A                 cmp     byte_2BF40, al
seg002:029E                 jz      short loc_79C7
seg002:02A0                 cmp     byte_28477, 0
seg002:02A5                 jnz     short loc_79C1
seg002:02A7                 sub     ah, ah
seg002:02A9                 cmp     ax, 1Ch
seg002:02AC                 jz      short loc_7996
seg002:02AE                 cmp     ax, 1Dh
seg002:02B1                 jz      short loc_7A00
seg002:02B3                 cmp     ax, 1Eh
seg002:02B6                 jnz     short loc_798B
seg002:02B8                 jmp     loc_7A40
seg002:02BB ; ---------------------------------------------------------------------------
seg002:02BB
seg002:02BB loc_798B:                               ; CODE XREF: sub_76D6+2B0␘j
seg002:02BB                 cmp     ax, 1Fh
seg002:02BE                 jnz     short loc_7993
seg002:02C0                 jmp     loc_7A74
seg002:02C3 ; ---------------------------------------------------------------------------
seg002:02C3
seg002:02C3 loc_7993:                               ; CODE XREF: sub_76D6+2B8␘j
seg002:02C3                 jmp     short loc_79C1
seg002:02C3 ; ---------------------------------------------------------------------------
seg002:02C5                 align 2
seg002:02C6
seg002:02C6 loc_7996:                               ; CODE XREF: sub_76D6+2A6␘j
seg002:02C6                 cmp     byte ptr word_2AC63, 0
seg002:02CB                 jnz     short loc_79A2
seg002:02CD                 mov     byte_2D830, 1
seg002:02D2
seg002:02D2 loc_79A2:                               ; CODE XREF: sub_76D6+2C5␘j
seg002:02D2                 cmp     byte ptr word_2AC63, 4
seg002:02D7                 jnz     short loc_79AE
seg002:02D9                 mov     byte_2D830, 0
seg002:02DE
seg002:02DE loc_79AE:                               ; CODE XREF: sub_76D6+2D1␘j
seg002:02DE                 cmp     byte_2D830, 1
seg002:02E3                 jnz     short loc_79BC
seg002:02E5                 add     byte ptr word_2AC63, 2
seg002:02EA                 jmp     short loc_79C1
seg002:02EC ; ---------------------------------------------------------------------------
seg002:02EC
seg002:02EC loc_79BC:                               ; CODE XREF: sub_76D6+2DD␘j
seg002:02EC                 sub     byte ptr word_2AC63, 2
seg002:02F1
seg002:02F1 loc_79C1:                               ; CODE XREF: sub_76D6+29F␘j
seg002:02F1                                         ; sub_76D6:loc_7993␘j ...
seg002:02F1                 mov     al, byte_2AA85
seg002:02F4                 mov     byte_2BF40, al
seg002:02F7
seg002:02F7 loc_79C7:                               ; CODE XREF: sub_76D6+298␘j
seg002:02F7                 cmp     byte_1F168, 0
seg002:02FC                 jnz     short loc_79E7
seg002:02FE                 cmp     byte_2A6F6, 2
seg002:0303                 jnz     short loc_79E7
seg002:0305                 mov     ax, 1Fh
seg002:0308                 push    ax
seg002:0309                 call    sub_1688
seg002:030E                 add     sp, 2
seg002:0311                 mov     word_1F16A, 3
seg002:0317
seg002:0317 loc_79E7:                               ; CODE XREF: sub_76D6+2F6␘j
seg002:0317                                         ; sub_76D6+2FD␘j ...
seg002:0317                 mov     ax, word_1F180
seg002:031A                 sub     ax, [bp+var_4]
seg002:031D                 cmp     ax, 5
seg002:0320                 jb      short loc_79F5
seg002:0322                 jmp     loc_7A7E
seg002:0325 ; ---------------------------------------------------------------------------
seg002:0325
seg002:0325 loc_79F5:                               ; CODE XREF: sub_76D6+31A␘j
seg002:0325                 call    sub_E9E
seg002:032A                 mov     [bp+var_2], ax
seg002:032D                 jmp     short loc_79E7
seg002:032D ; ---------------------------------------------------------------------------
seg002:032F                 align 2
seg002:0330
seg002:0330 loc_7A00:                               ; CODE XREF: sub_76D6+2AB␘j
seg002:0330                 cmp     byte ptr word_2AC5F, 0
seg002:0335                 jnz     short loc_7A0C
seg002:0337                 mov     byte_2D830, 1
seg002:033C
seg002:033C loc_7A0C:                               ; CODE XREF: sub_76D6+32F␘j
seg002:033C                 cmp     byte ptr word_2AC5F, 8
seg002:0341                 jnz     short loc_7A18
seg002:0343                 mov     byte_2D830, 0
seg002:0348
seg002:0348 loc_7A18:                               ; CODE XREF: sub_76D6+33B␘j
seg002:0348                 cmp     byte_2D830, 1
seg002:034D                 jnz     short loc_7A2C
seg002:034F                 add     byte ptr word_2AC5F, 4
seg002:0354
seg002:0354 loc_7A24:                               ; CODE XREF: sub_76D6+393␙j
seg002:0354                 mov     byte_285B4, 1
seg002:0359                 jmp     short loc_7A38
seg002:0359 ; ---------------------------------------------------------------------------
seg002:035B                 align 2
seg002:035C
seg002:035C loc_7A2C:                               ; CODE XREF: sub_76D6+347␘j
seg002:035C                 sub     byte ptr word_2AC5F, 4
seg002:0361
seg002:0361 loc_7A31:                               ; CODE XREF: sub_76D6+39B␙j
seg002:0361                 jnz     short loc_7A38
seg002:0363                 mov     byte_285B4, 0
seg002:0368
seg002:0368 loc_7A38:                               ; CODE XREF: sub_76D6+353␘j
seg002:0368                                         ; sub_76D6:loc_7A31␘j
seg002:0368                 call    sub_102E8
seg002:036D                 jmp     short loc_79C1
seg002:036D ; ---------------------------------------------------------------------------
seg002:036F                 align 2
seg002:0370
seg002:0370 loc_7A40:                               ; CODE XREF: sub_76D6+2B2␘j
seg002:0370                 mov     byte ptr word_2AC5F, 0
seg002:0375                 cmp     byte ptr word_2AC61, 0
seg002:037A                 jnz     short loc_7A51
seg002:037C                 mov     byte_2D830, 1
seg002:0381
seg002:0381 loc_7A51:                               ; CODE XREF: sub_76D6+374␘j
seg002:0381                 cmp     byte ptr word_2AC61, 8
seg002:0386                 jnz     short loc_7A5D
seg002:0388                 mov     byte_2D830, 0
seg002:038D
seg002:038D loc_7A5D:                               ; CODE XREF: sub_76D6+380␘j
seg002:038D                 cmp     byte_2D830, 1
seg002:0392                 jnz     short loc_7A6C
seg002:0394                 add     byte ptr word_2AC61, 4
seg002:0399                 jmp     short loc_7A24
seg002:0399 ; ---------------------------------------------------------------------------
seg002:039B                 align 2
seg002:039C
seg002:039C loc_7A6C:                               ; CODE XREF: sub_76D6+38C␘j
seg002:039C                 sub     byte ptr word_2AC61, 4
seg002:03A1                 jmp     short loc_7A31
seg002:03A1 ; ---------------------------------------------------------------------------
seg002:03A3                 align 2
seg002:03A4
seg002:03A4 loc_7A74:                               ; CODE XREF: sub_76D6+2BA␘j
seg002:03A4                 mov     word_1F16A, 3
seg002:03AA                 jmp     loc_79C1
seg002:03AA ; ---------------------------------------------------------------------------
seg002:03AD                 align 2
seg002:03AE
seg002:03AE loc_7A7E:                               ; CODE XREF: sub_76D6+63␘j
seg002:03AE                                         ; sub_76D6+7A␘j ...
seg002:03AE                 cmp     word_1F16A, 3
seg002:03B3                 jz      short loc_7A88
seg002:03B5                 jmp     loc_7754
seg002:03B8 ; ---------------------------------------------------------------------------
seg002:03B8
seg002:03B8 loc_7A88:                               ; CODE XREF: sub_76D6+3AD␘j
seg002:03B8                 cmp     byte_1FBE9, 0
seg002:03BD                 jz      short loc_7A94
seg002:03BF                 call    sub_13EC9
seg002:03C4
seg002:03C4 loc_7A94:                               ; CODE XREF: sub_76D6+3B7␘j
seg002:03C4                 mov     byte_28468, 1
seg002:03C9                 call    sub_EC6D
seg002:03CE                 sub     ax, ax
seg002:03D0                 push    ax
seg002:03D1                 call    sub_D038
seg002:03D6                 add     sp, 2
seg002:03D9                 call    sub_3990
seg002:03DE                 sub     ax, ax
seg002:03E0                 mov     word_1F17A, ax
seg002:03E3                 push    ax
seg002:03E4                 call    far ptr sub_16BB0
seg002:03E9                 add     sp, 2
seg002:03EC                 sub     ax, ax
seg002:03EE                 push    ax
seg002:03EF                 call    far ptr sub_16A93
seg002:03F4                 add     sp, 2
seg002:03F7                 mov     ax, 0C7h ; '¦'
seg002:03FA                 push    ax
seg002:03FB                 sub     ax, ax
seg002:03FD                 push    ax
seg002:03FE                 mov     ax, 13Fh
seg002:0401                 push    ax
seg002:0402                 sub     ax, ax
seg002:0404                 push    ax
seg002:0405                 call    far ptr sub_172BD
seg002:040A                 mov     sp, bp
seg002:040C                 pop     bp
seg002:040D                 retf
seg002:040D sub_76D6        endp
seg002:040D
seg002:040E
