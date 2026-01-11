seg003:0004 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg003:0004
seg003:0004 ; Attributes: bp-based frame
seg003:0004
seg003:0004 sub_94F4        proc far                ; CODE XREF: sub_153B8+3A␙P
seg003:0004
seg003:0004 var_12          = word ptr -12h
seg003:0004 var_10          = word ptr -10h
seg003:0004 var_E           = word ptr -0Eh
seg003:0004 var_C           = word ptr -0Ch
seg003:0004 var_A           = word ptr -0Ah
seg003:0004 var_8           = word ptr -8
seg003:0004 var_6           = word ptr -6
seg003:0004 var_4           = word ptr -4
seg003:0004 var_2           = word ptr -2
seg003:0004
seg003:0004                 push    bp
seg003:0005                 mov     bp, sp
seg003:0007                 sub     sp, 12h
seg003:000B                 push    di
seg003:000C                 push    si
seg003:000D                 mov     [bp+var_8], 0
seg003:0012                 mov     ax, 4
seg003:0015                 mov     dx, 0
seg003:0018                 push    dx
seg003:0019                 push    ax
seg003:001A                 mov     ax, 12A4h
seg003:001D                 push    ax
seg003:001E                 call    sub_19870
seg003:0023                 mov     ax, word_2037E
seg003:0026                 sub     ax, word_2037C
seg003:002A                 cwd
seg003:002B                 mov     cx, ax
seg003:002D                 mov     bx, dx
seg003:002F                 shl     ax, 1
seg003:0031                 rcl     dx, 1
seg003:0033                 add     ax, cx
seg003:0035                 adc     dx, bx
seg003:0037                 shl     ax, 1
seg003:0039                 rcl     dx, 1
seg003:003B                 add     word_20384, ax
seg003:003F                 adc     word_20386, dx
seg003:0043                 mov     ax, word_2037C
seg003:0046                 mov     word_2037E, ax
seg003:0049                 mov     [bp+var_2], 0
seg003:004E                 jmp     loc_9544
seg003:0051 ; ---------------------------------------------------------------------------
seg003:0051
seg003:0051 loc_9541:                               ; CODE XREF: sub_94F4+B3␙j
seg003:0051                 inc     [bp+var_2]
seg003:0054
seg003:0054 loc_9544:                               ; CODE XREF: sub_94F4+4A␘j
seg003:0054                 cmp     [bp+var_2], 3
seg003:0058                 jl      short loc_954D
seg003:005A                 jmp     loc_95AA
seg003:005D ; ---------------------------------------------------------------------------
seg003:005D
seg003:005D loc_954D:                               ; CODE XREF: sub_94F4+54␘j
seg003:005D                 mov     bx, [bp+var_2]
seg003:0060                 shl     bx, 1
seg003:0062                 shl     bx, 1
seg003:0064                 mov     si, [bp+var_2]
seg003:0067                 shl     si, 1
seg003:0069                 shl     si, 1
seg003:006B                 mov     ax, [si+1276h]
seg003:006F                 mov     dx, [si+1278h]
seg003:0073                 mov     [bx+1282h], ax
seg003:0077                 mov     [bx+1284h], dx
seg003:007B                 mov     bx, [bp+var_2]
seg003:007E                 shl     bx, 1
seg003:0080                 shl     bx, 1
seg003:0082                 mov     si, [bp+var_2]
seg003:0085                 shl     si, 1
seg003:0087                 shl     si, 1
seg003:0089                 mov     ax, [si+126Ah]
seg003:008D                 mov     dx, [si+126Ch]
seg003:0091                 mov     [bx+1276h], ax
seg003:0095                 mov     [bx+1278h], dx
seg003:0099                 mov     bx, [bp+var_2]
seg003:009C                 shl     bx, 1
seg003:009E                 shl     bx, 1
seg003:00A0                 mov     si, [bp+var_2]
seg003:00A3                 shl     si, 1
seg003:00A5                 shl     si, 1
seg003:00A7                 mov     ax, [si+125Eh]
seg003:00AB                 mov     dx, [si+1260h]
seg003:00AF                 mov     [bx+126Ah], ax
seg003:00B3                 mov     [bx+126Ch], dx
seg003:00B7                 jmp     loc_9541
seg003:00BA ; ---------------------------------------------------------------------------
seg003:00BA
seg003:00BA loc_95AA:                               ; CODE XREF: sub_94F4+56␘j
seg003:00BA                 cmp     byte_20380, 0
seg003:00BF                 jnz     short loc_95B4
seg003:00C1                 jmp     loc_962D
seg003:00C4 ; ---------------------------------------------------------------------------
seg003:00C4
seg003:00C4 loc_95B4:                               ; CODE XREF: sub_94F4+BB␘j
seg003:00C4                 cmp     byte_2AA85, 10h
seg003:00C9                 jnb     short loc_95BE
seg003:00CB                 jmp     loc_962D
seg003:00CE ; ---------------------------------------------------------------------------
seg003:00CE
seg003:00CE loc_95BE:                               ; CODE XREF: sub_94F4+C5␘j
seg003:00CE                 cmp     byte_2AA85, 14h
seg003:00D3                 jbe     short loc_95C8
seg003:00D5                 jmp     loc_962D
seg003:00D8 ; ---------------------------------------------------------------------------
seg003:00D8
seg003:00D8 loc_95C8:                               ; CODE XREF: sub_94F4+CF␘j
seg003:00D8                 cmp     byte_2AA85, 12h
seg003:00DD                 jnz     short loc_95D2
seg003:00DF                 jmp     loc_962D
seg003:00E2 ; ---------------------------------------------------------------------------
seg003:00E2
seg003:00E2 loc_95D2:                               ; CODE XREF: sub_94F4+D9␘j
seg003:00E2                 test    byte ptr word_2AD23, 1
seg003:00E7                 jz      short loc_95DC
seg003:00E9                 jmp     loc_9624
seg003:00EC ; ---------------------------------------------------------------------------
seg003:00EC
seg003:00EC loc_95DC:                               ; CODE XREF: sub_94F4+E3␘j
seg003:00EC                 mov     ax, word_2A9AD
seg003:00EF                 mov     word_2A9B5, ax
seg003:00F2                 mov     ax, word_2A9AF
seg003:00F5                 mov     word_2A9B7, ax
seg003:00F8                 mov     ax, word_2A9B1
seg003:00FB                 mov     word_2A9B9, ax
seg003:00FE                 mov     ax, word_2A9B3
seg003:0101                 mov     word_2A9BB, ax
seg003:0104                 mov     ax, word_2A9A5
seg003:0107                 mov     word_2A9AD, ax
seg003:010A                 mov     ax, word_2A9A7
seg003:010D                 mov     word_2A9AF, ax
seg003:0110                 mov     ax, word_2A9A9
seg003:0113                 mov     word_2A9B1, ax
seg003:0116                 mov     ax, word_2A9AB
seg003:0119                 mov     word_2A9B3, ax
seg003:011C                 mov     ax, word_28CDF
seg003:011F                 mov     word_2A9A5, ax
seg003:0122                 mov     ax, word_28F5F
seg003:0125                 mov     word_2A9A7, ax
seg003:0128                 mov     ax, word_291DF
seg003:012B                 mov     word_2A9A9, ax
seg003:012E                 mov     ax, word_2847D
seg003:0131                 mov     word_2A9AB, ax
seg003:0134
seg003:0134 loc_9624:                               ; CODE XREF: sub_94F4+E5␘j
seg003:0134                 mov     ax, 0
seg003:0137                 mov     word_20328, ax
seg003:013A                 mov     byte_2A6BD, al
seg003:013D
seg003:013D loc_962D:                               ; CODE XREF: sub_94F4+BD␘j
seg003:013D                                         ; sub_94F4+C7␘j ...
seg003:013D                 cmp     word_2AC63, 0
seg003:0142                 jz      short loc_9637
seg003:0144                 jmp     loc_9640
seg003:0147 ; ---------------------------------------------------------------------------
seg003:0147
seg003:0147 loc_9637:                               ; CODE XREF: sub_94F4+13E␘j
seg003:0147                 mov     word_2D626, 0
seg003:014D                 jmp     loc_9698
seg003:0150 ; ---------------------------------------------------------------------------
seg003:0150
seg003:0150 loc_9640:                               ; CODE XREF: sub_94F4+140␘j
seg003:0150                 mov     ax, word_2AC63
seg003:0153                 mov     cl, 9
seg003:0155                 shl     ax, cl
seg003:0157                 mov     [bp+var_2], ax
seg003:015A                 mov     ax, word_1F1B2
seg003:015D                 and     ax, 9Ch
seg003:0160                 mov     [bp+var_10], ax
seg003:0163                 test    word_1F1B2, 4000h
seg003:0169                 jnz     short loc_965E
seg003:016B                 jmp     loc_9666
seg003:016E ; ---------------------------------------------------------------------------
seg003:016E
seg003:016E loc_965E:                               ; CODE XREF: sub_94F4+165␘j
seg003:016E                 mov     ax, [bp+var_10]
seg003:0171                 neg     ax
seg003:0173                 mov     [bp+var_10], ax
seg003:0176
seg003:0176 loc_9666:                               ; CODE XREF: sub_94F4+167␘j
seg003:0176                 mov     ax, word_2D626
seg003:0179                 add     [bp+var_10], ax
seg003:017C                 mov     ax, [bp+var_2]
seg003:017F                 shl     ax, 1
seg003:0181                 cmp     ax, [bp+var_10]
seg003:0184                 jl      short loc_9679
seg003:0186                 jmp     loc_9681
seg003:0189 ; ---------------------------------------------------------------------------
seg003:0189
seg003:0189 loc_9679:                               ; CODE XREF: sub_94F4+180␘j
seg003:0189                 mov     ax, [bp+var_2]
seg003:018C                 shl     ax, 1
seg003:018E                 mov     [bp+var_10], ax
seg003:0191
seg003:0191 loc_9681:                               ; CODE XREF: sub_94F4+182␘j
seg003:0191                 mov     ax, [bp+var_2]
seg003:0194                 cmp     [bp+var_10], ax
seg003:0197                 jl      short loc_968C
seg003:0199                 jmp     loc_9692
seg003:019C ; ---------------------------------------------------------------------------
seg003:019C
seg003:019C loc_968C:                               ; CODE XREF: sub_94F4+193␘j
seg003:019C                 mov     ax, [bp+var_2]
seg003:019F                 mov     [bp+var_10], ax
seg003:01A2
seg003:01A2 loc_9692:                               ; CODE XREF: sub_94F4+195␘j
seg003:01A2                 mov     ax, [bp+var_10]
seg003:01A5                 mov     word_2D626, ax
seg003:01A8
seg003:01A8 loc_9698:                               ; CODE XREF: sub_94F4+149␘j
seg003:01A8                 mov     ax, word_2032C
seg003:01AB                 and     ax, 0FFC0h
seg003:01AE                 mov     word_2847D, ax
seg003:01B1                 mov     [bp+var_A], ax
seg003:01B4                 mov     ax, word_2032A
seg003:01B7                 and     ax, 0FC00h
seg003:01BA                 mov     [bp+var_10], ax
seg003:01BD                 mov     ax, word_20346
seg003:01C0                 mov     dx, word_20348
seg003:01C4                 mov     word_2C19A, ax
seg003:01C7                 mov     word_2C19C, dx
seg003:01CB                 cmp     byte_2AA91, 0
seg003:01D0                 jnz     short loc_96C5
seg003:01D2                 jmp     loc_970E
seg003:01D5 ; ---------------------------------------------------------------------------
seg003:01D5
seg003:01D5 loc_96C5:                               ; CODE XREF: sub_94F4+1CC␘j
seg003:01D5                 mov     ax, 60h ; '`'
seg003:01D8                 mov     dx, 0
seg003:01DB                 push    dx
seg003:01DC                 push    ax
seg003:01DD                 mov     ax, word_1F1B2
seg003:01E0                 mov     dx, word_1F1B4
seg003:01E4                 and     ax, 1Ch
seg003:01E7                 and     dx, 0
seg003:01EA                 push    dx
seg003:01EB                 push    ax
seg003:01EC                 call    sub_1983C
seg003:01F1                 mov     cl, 2
seg003:01F3                 cmp     cl, 0
seg003:01F6                 jnz     short loc_96EB
seg003:01F8                 jmp     loc_96FC
seg003:01FB ; ---------------------------------------------------------------------------
seg003:01FB
seg003:01FB loc_96EB:                               ; CODE XREF: sub_94F4+1F2␘j
seg003:01FB                                         ; sub_94F4:loc_96F9␙j
seg003:01FB                 shr     dx, 1
seg003:01FD                 rcr     ax, 1
seg003:01FF                 dec     cl
seg003:0201                 cmp     cl, 0
seg003:0204                 jnz     short loc_96F9
seg003:0206                 jmp     loc_96FC
seg003:0209 ; ---------------------------------------------------------------------------
seg003:0209
seg003:0209 loc_96F9:                               ; CODE XREF: sub_94F4+200␘j
seg003:0209                 jmp     loc_96EB
seg003:020C ; ---------------------------------------------------------------------------
seg003:020C
seg003:020C loc_96FC:                               ; CODE XREF: sub_94F4+1F4␘j
seg003:020C                                         ; sub_94F4+202␘j
seg003:020C                 sub     ax, 0C0h ; '+'
seg003:020F                 sbb     dx, 0
seg003:0212                 add     word_20346, ax
seg003:0216                 adc     word_20348, dx
seg003:021A                 dec     byte_2AA91
seg003:021E
seg003:021E loc_970E:                               ; CODE XREF: sub_94F4+1CE␘j
seg003:021E                 mov     ax, 10h
seg003:0221                 mov     dx, 0
seg003:0224                 push    dx
seg003:0225                 push    ax
seg003:0226                 push    word_20330
seg003:022A                 push    word_2032E
seg003:022E                 call    sub_197A0
seg003:0233                 mov     [bp+var_2], ax
seg003:0236                 cmp     word_20330, 0
seg003:023B                 jl      short loc_9730
seg003:023D                 jmp     loc_973D
seg003:0240 ; ---------------------------------------------------------------------------
seg003:0240
seg003:0240 loc_9730:                               ; CODE XREF: sub_94F4+237␘j
seg003:0240                 add     [bp+var_10], 8000h
seg003:0245                 mov     ax, [bp+var_2]
seg003:0248                 neg     ax
seg003:024A                 mov     [bp+var_2], ax
seg003:024D
seg003:024D loc_973D:                               ; CODE XREF: sub_94F4+239␘j
seg003:024D                 push    [bp+var_2]
seg003:0250                 push    [bp+var_10]
seg003:0253                 call    sub_10017
seg003:0258                 add     sp, 4
seg003:025B                 mov     ax, word_2844C
seg003:025E                 cwd
seg003:025F                 mov     word_20332, ax
seg003:0262                 mov     word_20334, dx
seg003:0266                 mov     ax, word_2844E
seg003:0269                 cwd
seg003:026A                 mov     word_20336, ax
seg003:026D                 mov     word_20338, dx
seg003:0271                 cmp     byte_2A777, 0
seg003:0276                 jnz     short loc_976B
seg003:0278                 jmp     loc_9786
seg003:027B ; ---------------------------------------------------------------------------
seg003:027B
seg003:027B loc_976B:                               ; CODE XREF: sub_94F4+272␘j
seg003:027B                 mov     ax, 0
seg003:027E                 mov     dx, 0
seg003:0281                 mov     word_2033A, ax
seg003:0284                 mov     word_2033C, dx
seg003:0288                 mov     word_20336, ax
seg003:028B                 mov     word_20338, dx
seg003:028F                 mov     word_20332, ax
seg003:0292                 mov     word_20334, dx
seg003:0296
seg003:0296 loc_9786:                               ; CODE XREF: sub_94F4+274␘j
seg003:0296                 mov     ax, word_20332
seg003:0299                 mov     [bp+var_10], ax
seg003:029C                 cmp     ax, 0
seg003:029F                 jl      short loc_9794
seg003:02A1                 jmp     loc_979C
seg003:02A4 ; ---------------------------------------------------------------------------
seg003:02A4
seg003:02A4 loc_9794:                               ; CODE XREF: sub_94F4+29B␘j
seg003:02A4                 mov     ax, [bp+var_10]
seg003:02A7                 neg     ax
seg003:02A9                 mov     [bp+var_10], ax
seg003:02AC
seg003:02AC loc_979C:                               ; CODE XREF: sub_94F4+29D␘j
seg003:02AC                 mov     ax, word_20336
seg003:02AF                 mov     [bp+var_12], ax
seg003:02B2                 cmp     ax, 0
seg003:02B5                 jl      short loc_97AA
seg003:02B7                 jmp     loc_97B2
seg003:02BA ; ---------------------------------------------------------------------------
seg003:02BA
seg003:02BA loc_97AA:                               ; CODE XREF: sub_94F4+2B1␘j
seg003:02BA                 mov     ax, [bp+var_12]
seg003:02BD                 neg     ax
seg003:02BF                 mov     [bp+var_12], ax
seg003:02C2
seg003:02C2 loc_97B2:                               ; CODE XREF: sub_94F4+2B3␘j
seg003:02C2                 mov     ax, [bp+var_10]
seg003:02C5                 mov     word_20376, ax
seg003:02C8                 cmp     ax, [bp+var_12]
seg003:02CB                 jb      short loc_97C0
seg003:02CD                 jmp     loc_97C6
seg003:02D0 ; ---------------------------------------------------------------------------
seg003:02D0
seg003:02D0 loc_97C0:                               ; CODE XREF: sub_94F4+2C7␘j
seg003:02D0                 mov     ax, [bp+var_12]
seg003:02D3                 mov     word_20376, ax
seg003:02D6
seg003:02D6 loc_97C6:                               ; CODE XREF: sub_94F4+2C9␘j
seg003:02D6                 mov     ax, [bp+var_10]
seg003:02D9                 add     ax, [bp+var_12]
seg003:02DC                 mov     cx, word_20376
seg003:02E0                 shl     cx, 1
seg003:02E2                 add     ax, cx
seg003:02E4                 sub     dx, dx
seg003:02E6                 mov     cx, 0Ch
seg003:02E9                 div     cx
seg003:02EB                 mov     word_20374, ax
seg003:02EE                 mov     ax, [bp+var_10]
seg003:02F1                 add     ax, [bp+var_12]
seg003:02F4                 mov     cx, word_20376
seg003:02F8                 shl     cx, 1
seg003:02FA                 add     ax, cx
seg003:02FC                 sub     dx, dx
seg003:02FE                 mov     cx, 180h
seg003:0301                 div     cx
seg003:0303                 mov     word_20376, ax
seg003:0306                 mov     ax, 0Ch
seg003:0309                 mov     dx, 0
seg003:030C                 push    dx
seg003:030D                 push    ax
seg003:030E                 mov     ax, word_20332
seg003:0311                 mov     dx, word_20334
seg003:0315                 mov     cx, ax
seg003:0317                 mov     bx, dx
seg003:0319                 shl     ax, 1
seg003:031B                 rcl     dx, 1
seg003:031D                 add     ax, cx
seg003:031F                 adc     dx, bx
seg003:0321                 shl     ax, 1
seg003:0323                 rcl     dx, 1
seg003:0325                 push    dx
seg003:0326                 push    ax
seg003:0327                 call    sub_197A0
seg003:032C                 mov     word_20332, ax
seg003:032F                 mov     word_20334, dx
seg003:0333                 mov     ax, 0Ch
seg003:0336                 mov     dx, 0
seg003:0339                 push    dx
seg003:033A                 push    ax
seg003:033B                 mov     ax, word_20336
seg003:033E                 mov     dx, word_20338
seg003:0342                 mov     cx, ax
seg003:0344                 mov     bx, dx
seg003:0346                 shl     ax, 1
seg003:0348                 rcl     dx, 1
seg003:034A                 add     ax, cx
seg003:034C                 adc     dx, bx
seg003:034E                 shl     ax, 1
seg003:0350                 rcl     dx, 1
seg003:0352                 push    dx
seg003:0353                 push    ax
seg003:0354                 call    sub_197A0
seg003:0359                 mov     word_20336, ax
seg003:035C                 mov     word_20338, dx
seg003:0360                 mov     [bp+var_2], 0
seg003:0365                 jmp     loc_985B
seg003:0368 ; ---------------------------------------------------------------------------
seg003:0368
seg003:0368 loc_9858:                               ; CODE XREF: sub_94F4+38E␙j
seg003:0368                 inc     [bp+var_2]
seg003:036B
seg003:036B loc_985B:                               ; CODE XREF: sub_94F4+361␘j
seg003:036B                 cmp     [bp+var_2], 3
seg003:036F                 jl      short loc_9864
seg003:0371                 jmp     loc_9885
seg003:0374 ; ---------------------------------------------------------------------------
seg003:0374
seg003:0374 loc_9864:                               ; CODE XREF: sub_94F4+36B␘j
seg003:0374                 mov     bx, [bp+var_2]
seg003:0377                 shl     bx, 1
seg003:0379                 shl     bx, 1
seg003:037B                 mov     si, [bp+var_2]
seg003:037E                 shl     si, 1
seg003:0380                 shl     si, 1
seg003:0382                 mov     ax, [si+1252h]
seg003:0386                 mov     dx, [si+1254h]
seg003:038A                 add     [bx+125Eh], ax
seg003:038E                 adc     [bx+1260h], dx
seg003:0392                 jmp     loc_9858
seg003:0395 ; ---------------------------------------------------------------------------
seg003:0395
seg003:0395 loc_9885:                               ; CODE XREF: sub_94F4+36D␘j
seg003:0395                 mov     ax, word_2033E
seg003:0398                 mov     dx, word_20340
seg003:039C                 mov     cl, 7
seg003:039E                 cmp     cl, 0
seg003:03A1                 jnz     short loc_9896
seg003:03A3                 jmp     loc_98A7
seg003:03A6 ; ---------------------------------------------------------------------------
seg003:03A6
seg003:03A6 loc_9896:                               ; CODE XREF: sub_94F4+39D␘j
seg003:03A6                                         ; sub_94F4:loc_98A4␙j
seg003:03A6                 shr     dx, 1
seg003:03A8                 rcr     ax, 1
seg003:03AA                 dec     cl
seg003:03AC                 cmp     cl, 0
seg003:03AF                 jnz     short loc_98A4
seg003:03B1                 jmp     loc_98A7
seg003:03B4 ; ---------------------------------------------------------------------------
seg003:03B4
seg003:03B4 loc_98A4:                               ; CODE XREF: sub_94F4+3AB␘j
seg003:03B4                 jmp     loc_9896
seg003:03B7 ; ---------------------------------------------------------------------------
seg003:03B7
seg003:03B7 loc_98A7:                               ; CODE XREF: sub_94F4+39F␘j
seg003:03B7                                         ; sub_94F4+3AD␘j
seg003:03B7                 and     ax, 7FFFh
seg003:03BA                 mov     word_28CDF, ax
seg003:03BD                 mov     word_295A5, ax
seg003:03C0                 mov     al, byte ptr word_2033E
seg003:03C3                 and     al, 7Fh
seg003:03C5                 shl     al, 1
seg003:03C7                 mov     byte_28480, al
seg003:03CA                 mov     ax, word_20342
seg003:03CD                 mov     dx, word_20344
seg003:03D1                 mov     cl, 7
seg003:03D3                 cmp     cl, 0
seg003:03D6                 jnz     short loc_98CB
seg003:03D8                 jmp     loc_98DC
seg003:03DB ; ---------------------------------------------------------------------------
seg003:03DB
seg003:03DB loc_98CB:                               ; CODE XREF: sub_94F4+3D2␘j
seg003:03DB                                         ; sub_94F4:loc_98D9␙j
seg003:03DB                 shr     dx, 1
seg003:03DD                 rcr     ax, 1
seg003:03DF                 dec     cl
seg003:03E1                 cmp     cl, 0
seg003:03E4                 jnz     short loc_98D9
seg003:03E6                 jmp     loc_98DC
seg003:03E9 ; ---------------------------------------------------------------------------
seg003:03E9
seg003:03E9 loc_98D9:                               ; CODE XREF: sub_94F4+3E0␘j
seg003:03E9                 jmp     loc_98CB
seg003:03EC ; ---------------------------------------------------------------------------
seg003:03EC
seg003:03EC loc_98DC:                               ; CODE XREF: sub_94F4+3D4␘j
seg003:03EC                                         ; sub_94F4+3E2␘j
seg003:03EC                 and     ax, 3FFFh
seg003:03EF                 mov     word_28F5F, ax
seg003:03F2                 mov     word_296E5, ax
seg003:03F5                 mov     al, byte ptr word_20342
seg003:03F8                 and     al, 7Fh
seg003:03FA                 shl     al, 1
seg003:03FC                 mov     byte_28481, al
seg003:03FF                 mov     ax, word_20346
seg003:0402                 mov     dx, word_20348
seg003:0406                 mov     cl, 7
seg003:0408                 cmp     cl, 0
seg003:040B                 jnz     short loc_9900
seg003:040D                 jmp     loc_9911
seg003:0410 ; ---------------------------------------------------------------------------
seg003:0410
seg003:0410 loc_9900:                               ; CODE XREF: sub_94F4+407␘j
seg003:0410                                         ; sub_94F4:loc_990E␙j
seg003:0410                 shr     dx, 1
seg003:0412                 rcr     ax, 1
seg003:0414                 dec     cl
seg003:0416                 cmp     cl, 0
seg003:0419                 jnz     short loc_990E
seg003:041B                 jmp     loc_9911
seg003:041E ; ---------------------------------------------------------------------------
seg003:041E
seg003:041E loc_990E:                               ; CODE XREF: sub_94F4+415␘j
seg003:041E                 jmp     loc_9900
seg003:0421 ; ---------------------------------------------------------------------------
seg003:0421
seg003:0421 loc_9911:                               ; CODE XREF: sub_94F4+409␘j
seg003:0421                                         ; sub_94F4+417␘j
seg003:0421                 add     ax, word_284AB
seg003:0425                 mov     word_291DF, ax
seg003:0428                 mov     ax, word_291DF
seg003:042B                 sub     ax, word_284AB
seg003:042F                 mov     cl, 3
seg003:0431                 shl     ax, cl
seg003:0433                 mov     word_29825, ax
seg003:0436                 mov     ax, word_2847D
seg003:0439                 sub     ax, 4000h
seg003:043C                 and     ax, 0FF00h
seg003:043F                 mov     cl, 8
seg003:0441                 shr     ax, cl
seg003:0443                 mov     cx, 101h
seg003:0446                 mul     cx
seg003:0448                 mov     word_29965, ax
seg003:044B                 mov     ax, word_2AA6F
seg003:044E                 cwd
seg003:044F                 mov     cl, 7
seg003:0451                 cmp     cl, 0
seg003:0454                 jnz     short loc_9949
seg003:0456                 jmp     loc_995A
seg003:0459 ; ---------------------------------------------------------------------------
seg003:0459
seg003:0459 loc_9949:                               ; CODE XREF: sub_94F4+450␘j
seg003:0459                                         ; sub_94F4:loc_9957␙j
seg003:0459                 shl     ax, 1
seg003:045B                 rcl     dx, 1
seg003:045D                 dec     cl
seg003:045F                 cmp     cl, 0
seg003:0462                 jnz     short loc_9957
seg003:0464                 jmp     loc_995A
seg003:0467 ; ---------------------------------------------------------------------------
seg003:0467
seg003:0467 loc_9957:                               ; CODE XREF: sub_94F4+45E␘j
seg003:0467                 jmp     loc_9949
seg003:046A ; ---------------------------------------------------------------------------
seg003:046A
seg003:046A loc_995A:                               ; CODE XREF: sub_94F4+452␘j
seg003:046A                                         ; sub_94F4+460␘j
seg003:046A                 mov     [bp+var_E], ax
seg003:046D                 mov     [bp+var_C], dx
seg003:0470                 mov     byte_20380, 1
seg003:0475                 mov     ax, word_20346
seg003:0478                 mov     dx, word_20348
seg003:047C                 cmp     [bp+var_C], dx
seg003:047F                 jle     short loc_9974
seg003:0481                 jmp     loc_9A26
seg003:0484 ; ---------------------------------------------------------------------------
seg003:0484
seg003:0484 loc_9974:                               ; CODE XREF: sub_94F4+47B␘j
seg003:0484                 jge     short loc_9979
seg003:0486                 jmp     loc_9981
seg003:0489 ; ---------------------------------------------------------------------------
seg003:0489
seg003:0489 loc_9979:                               ; CODE XREF: sub_94F4:loc_9974␘j
seg003:0489                 cmp     [bp+var_E], ax
seg003:048C                 jb      short loc_9981
seg003:048E                 jmp     loc_9A26
seg003:0491 ; ---------------------------------------------------------------------------
seg003:0491
seg003:0491 loc_9981:                               ; CODE XREF: sub_94F4+482␘j
seg003:0491                                         ; sub_94F4+488␘j
seg003:0491                 mov     ax, word_28580
seg003:0494                 shl     ax, 1
seg003:0496                 shl     ax, 1
seg003:0498                 cwd
seg003:0499                 mov     cx, word_20346
seg003:049D                 mov     bx, word_20348
seg003:04A1                 sub     cx, [bp+var_E]
seg003:04A4                 sbb     bx, [bp+var_C]
seg003:04A7                 cmp     bx, dx
seg003:04A9                 jle     short loc_999E
seg003:04AB                 jmp     loc_99CF
seg003:04AE ; ---------------------------------------------------------------------------
seg003:04AE
seg003:04AE loc_999E:                               ; CODE XREF: sub_94F4+4A5␘j
seg003:04AE                 jge     short loc_99A3
seg003:04B0                 jmp     loc_99AA
seg003:04B3 ; ---------------------------------------------------------------------------
seg003:04B3
seg003:04B3 loc_99A3:                               ; CODE XREF: sub_94F4:loc_999E␘j
seg003:04B3                 cmp     cx, ax
seg003:04B5                 jbe     short loc_99AA
seg003:04B7                 jmp     loc_99CF
seg003:04BA ; ---------------------------------------------------------------------------
seg003:04BA
seg003:04BA loc_99AA:                               ; CODE XREF: sub_94F4+4AC␘j
seg003:04BA                                         ; sub_94F4+4B1␘j
seg003:04BA                 mov     ax, word_28580
seg003:04BD                 cwd
seg003:04BE                 cmp     word_2033C, dx
seg003:04C2                 jle     short loc_99B7
seg003:04C4                 jmp     loc_99CF
seg003:04C7 ; ---------------------------------------------------------------------------
seg003:04C7
seg003:04C7 loc_99B7:                               ; CODE XREF: sub_94F4+4BE␘j
seg003:04C7                 jge     short loc_99BC
seg003:04C9                 jmp     loc_99C5
seg003:04CC ; ---------------------------------------------------------------------------
seg003:04CC
seg003:04CC loc_99BC:                               ; CODE XREF: sub_94F4:loc_99B7␘j
seg003:04CC                 cmp     word_2033A, ax
seg003:04D0                 jbe     short loc_99C5
seg003:04D2                 jmp     loc_99CF
seg003:04D5 ; ---------------------------------------------------------------------------
seg003:04D5
seg003:04D5 loc_99C5:                               ; CODE XREF: sub_94F4+4C5␘j
seg003:04D5                                         ; sub_94F4+4CC␘j
seg003:04D5                 cmp     word_2033C, 0
seg003:04DA                 jl      short loc_99CF
seg003:04DC                 jmp     loc_9A06
seg003:04DF ; ---------------------------------------------------------------------------
seg003:04DF
seg003:04DF loc_99CF:                               ; CODE XREF: sub_94F4+4A7␘j
seg003:04DF                                         ; sub_94F4+4B3␘j ...
seg003:04DF                 mov     byte_20380, 0
seg003:04E4                 mov     ax, word_28580
seg003:04E7                 mov     cx, ax
seg003:04E9                 shl     ax, 1
seg003:04EB                 add     ax, cx
seg003:04ED                 cwd
seg003:04EE                 sub     ax, dx
seg003:04F0                 sar     ax, 1
seg003:04F2                 cwd
seg003:04F3                 sub     word_2033A, ax
seg003:04F7                 sbb     word_2033C, dx
seg003:04FB                 mov     word_28479, 0FFFDh
seg003:0501                 cmp     word_20330, 0
seg003:0506                 jl      short loc_99FB
seg003:0508                 jmp     loc_9A03
seg003:050B ; ---------------------------------------------------------------------------
seg003:050B
seg003:050B loc_99FB:                               ; CODE XREF: sub_94F4+502␘j
seg003:050B                 mov     ax, word_28479
seg003:050E                 neg     ax
seg003:0510                 mov     word_28479, ax
seg003:0513
seg003:0513 loc_9A03:                               ; CODE XREF: sub_94F4+504␘j
seg003:0513                 jmp     loc_9A26
seg003:0516 ; ---------------------------------------------------------------------------
seg003:0516
seg003:0516 loc_9A06:                               ; CODE XREF: sub_94F4+4D8␘j
seg003:0516                 cmp     word_2033C, 0
seg003:051B                 jge     short loc_9A10
seg003:051D                 jmp     loc_9A26
seg003:0520 ; ---------------------------------------------------------------------------
seg003:0520
seg003:0520 loc_9A10:                               ; CODE XREF: sub_94F4+517␘j
seg003:0520                 mov     ax, 0
seg003:0523                 mov     word_2033C, ax
seg003:0526                 mov     word_2033A, ax
seg003:0529                 mov     ax, [bp+var_E]
seg003:052C                 mov     dx, [bp+var_C]
seg003:052F                 mov     word_20346, ax
seg003:0532                 mov     word_20348, dx
seg003:0536
seg003:0536 loc_9A26:                               ; CODE XREF: sub_94F4+47D␘j
seg003:0536                                         ; sub_94F4+48A␘j ...
seg003:0536                 mov     ax, word_20346
seg003:0539                 mov     dx, word_20348
seg003:053D                 cmp     [bp+var_E], ax
seg003:0540                 jz      short loc_9A35
seg003:0542                 jmp     loc_9A73
seg003:0545 ; ---------------------------------------------------------------------------
seg003:0545
seg003:0545 loc_9A35:                               ; CODE XREF: sub_94F4+53C␘j
seg003:0545                 cmp     [bp+var_C], dx
seg003:0548                 jz      short loc_9A3D
seg003:054A                 jmp     loc_9A73
seg003:054D ; ---------------------------------------------------------------------------
seg003:054D
seg003:054D loc_9A3D:                               ; CODE XREF: sub_94F4+544␘j
seg003:054D                 mov     ax, word_2033A
seg003:0550                 or      ax, word_2033C
seg003:0554                 jz      short loc_9A49
seg003:0556                 jmp     loc_9A73
seg003:0559 ; ---------------------------------------------------------------------------
seg003:0559
seg003:0559 loc_9A49:                               ; CODE XREF: sub_94F4+550␘j
seg003:0559                 mov     al, byte_2ACC6
seg003:055C                 mov     byte_2847F, al
seg003:055F                 test    byte ptr word_28472, 4
seg003:0564                 jz      short loc_9A59
seg003:0566                 jmp     loc_9A6D
seg003:0569 ; ---------------------------------------------------------------------------
seg003:0569
seg003:0569 loc_9A59:                               ; CODE XREF: sub_94F4+560␘j
seg003:0569                 mov     ax, word_20320
seg003:056C                 imul    word_2ACC7
seg003:0570                 cwd
seg003:0571                 mov     cx, word_20322
seg003:0575                 idiv    cx
seg003:0577                 mov     word_28479, ax
seg003:057A                 jmp     loc_9A73
seg003:057D ; ---------------------------------------------------------------------------
seg003:057D
seg003:057D loc_9A6D:                               ; CODE XREF: sub_94F4+562␘j
seg003:057D                 mov     ax, word_2ACC7
seg003:0580                 mov     word_28479, ax
seg003:0583
seg003:0583 loc_9A73:                               ; CODE XREF: sub_94F4+53E␘j
seg003:0583                                         ; sub_94F4+546␘j ...
seg003:0583                 mov     ax, word_20346
seg003:0586                 mov     dx, word_20348
seg003:058A                 cmp     [bp+var_C], dx
seg003:058D                 jge     short loc_9A82
seg003:058F                 jmp     loc_9C54
seg003:0592 ; ---------------------------------------------------------------------------
seg003:0592
seg003:0592 loc_9A82:                               ; CODE XREF: sub_94F4+589␘j
seg003:0592                 jle     short loc_9A87
seg003:0594                 jmp     loc_9A8F
seg003:0597 ; ---------------------------------------------------------------------------
seg003:0597
seg003:0597 loc_9A87:                               ; CODE XREF: sub_94F4:loc_9A82␘j
seg003:0597                 cmp     [bp+var_E], ax
seg003:059A                 ja      short loc_9A8F
seg003:059C                 jmp     loc_9C54
seg003:059F ; ---------------------------------------------------------------------------
seg003:059F
seg003:059F loc_9A8F:                               ; CODE XREF: sub_94F4+590␘j
seg003:059F                                         ; sub_94F4+596␘j
seg003:059F                 mov     al, byte_2ACC6
seg003:05A2                 mov     byte_2847F, al
seg003:05A5                 test    byte ptr word_28472, 4
seg003:05AA                 jz      short loc_9A9F
seg003:05AC                 jmp     loc_9AB3
seg003:05AF ; ---------------------------------------------------------------------------
seg003:05AF
seg003:05AF loc_9A9F:                               ; CODE XREF: sub_94F4+5A6␘j
seg003:05AF                 mov     ax, word_20320
seg003:05B2                 imul    word_2ACC7
seg003:05B6                 cwd
seg003:05B7                 mov     cx, word_20322
seg003:05BB                 idiv    cx
seg003:05BD                 mov     word_28479, ax
seg003:05C0                 jmp     loc_9AB9
seg003:05C3 ; ---------------------------------------------------------------------------
seg003:05C3
seg003:05C3 loc_9AB3:                               ; CODE XREF: sub_94F4+5A8␘j
seg003:05C3                 mov     ax, word_2ACC7
seg003:05C6                 mov     word_28479, ax
seg003:05C9
seg003:05C9 loc_9AB9:                               ; CODE XREF: sub_94F4+5BC␘j
seg003:05C9                 mov     ax, word_284A9
seg003:05CC                 cwd
seg003:05CD                 xor     ax, dx
seg003:05CF                 sub     ax, dx
seg003:05D1                 mov     cx, 4
seg003:05D4                 sar     ax, cl
seg003:05D6                 xor     ax, dx
seg003:05D8                 sub     ax, dx
seg003:05DA                 mov     cx, ax
seg003:05DC                 shl     ax, 1
seg003:05DE                 shl     ax, 1
seg003:05E0                 add     ax, cx
seg003:05E2                 cwd
seg003:05E3                 mov     cx, [bp+var_E]
seg003:05E6                 mov     bx, [bp+var_C]
seg003:05E9                 sub     cx, word_20346
seg003:05ED                 sbb     bx, word_20348
seg003:05F1                 sub     cx, word_2033A
seg003:05F5                 sbb     bx, word_2033C
seg003:05F9                 cmp     bx, dx
seg003:05FB                 jge     short loc_9AF0
seg003:05FD                 jmp     loc_9B08
seg003:0600 ; ---------------------------------------------------------------------------
seg003:0600
seg003:0600 loc_9AF0:                               ; CODE XREF: sub_94F4+5F7␘j
seg003:0600                 jle     short loc_9AF5
seg003:0602                 jmp     loc_9AFC
seg003:0605 ; ---------------------------------------------------------------------------
seg003:0605
seg003:0605 loc_9AF5:                               ; CODE XREF: sub_94F4:loc_9AF0␘j
seg003:0605                 cmp     cx, ax
seg003:0607                 jnb     short loc_9AFC
seg003:0609                 jmp     loc_9B08
seg003:060C ; ---------------------------------------------------------------------------
seg003:060C
seg003:060C loc_9AFC:                               ; CODE XREF: sub_94F4+5FE␘j
seg003:060C                                         ; sub_94F4+603␘j
seg003:060C                 mov     ax, 13h
seg003:060F                 push    ax
seg003:0610                 call    sub_D038
seg003:0615                 add     sp, 2
seg003:0618
seg003:0618 loc_9B08:                               ; CODE XREF: sub_94F4+5F9␘j
seg003:0618                                         ; sub_94F4+605␘j
seg003:0618                 mov     ax, word_284A9
seg003:061B                 cwd
seg003:061C                 xor     ax, dx
seg003:061E                 sub     ax, dx
seg003:0620                 mov     cx, 4
seg003:0623                 sar     ax, cl
seg003:0625                 xor     ax, dx
seg003:0627                 sub     ax, dx
seg003:0629                 mov     cx, ax
seg003:062B                 mov     ax, word_1FBE4
seg003:062E                 shl     ax, 1
seg003:0630                 sub     ax, 24h ; '$'
seg003:0633                 neg     ax
seg003:0635                 imul    cx
seg003:0637                 cwd
seg003:0638                 mov     cx, [bp+var_E]
seg003:063B                 mov     bx, [bp+var_C]
seg003:063E                 sub     cx, word_20346
seg003:0642                 sbb     bx, word_20348
seg003:0646                 sub     cx, word_2033A
seg003:064A                 sbb     bx, word_2033C
seg003:064E                 cmp     bx, dx
seg003:0650                 jge     short loc_9B45
seg003:0652                 jmp     loc_9BA0
seg003:0655 ; ---------------------------------------------------------------------------
seg003:0655
seg003:0655 loc_9B45:                               ; CODE XREF: sub_94F4+64C␘j
seg003:0655                 jle     short loc_9B4A
seg003:0657                 jmp     loc_9B51
seg003:065A ; ---------------------------------------------------------------------------
seg003:065A
seg003:065A loc_9B4A:                               ; CODE XREF: sub_94F4:loc_9B45␘j
seg003:065A                 cmp     cx, ax
seg003:065C                 jnb     short loc_9B51
seg003:065E                 jmp     loc_9BA0
seg003:0661 ; ---------------------------------------------------------------------------
seg003:0661
seg003:0661 loc_9B51:                               ; CODE XREF: sub_94F4+653␘j
seg003:0661                                         ; sub_94F4+658␘j
seg003:0661                 mov     byte_2AA92, 1
seg003:0666                 mov     ax, 0
seg003:0669                 mov     dx, 0
seg003:066C                 mov     word_2033A, ax
seg003:066F                 mov     word_2033C, dx
seg003:0673                 mov     word_20336, ax
seg003:0676                 mov     word_20338, dx
seg003:067A                 mov     word_20332, ax
seg003:067D                 mov     word_20334, dx
seg003:0681                 mov     ax, word_20346
seg003:0684                 mov     dx, word_20348
seg003:0688                 mov     cl, 7
seg003:068A                 cmp     cl, 0
seg003:068D                 jnz     short loc_9B82
seg003:068F                 jmp     loc_9B93
seg003:0692 ; ---------------------------------------------------------------------------
seg003:0692
seg003:0692 loc_9B82:                               ; CODE XREF: sub_94F4+689␘j
seg003:0692                                         ; sub_94F4:loc_9B90␙j
seg003:0692                 shr     dx, 1
seg003:0694                 rcr     ax, 1
seg003:0696                 dec     cl
seg003:0698                 cmp     cl, 0
seg003:069B                 jnz     short loc_9B90
seg003:069D                 jmp     loc_9B93
seg003:06A0 ; ---------------------------------------------------------------------------
seg003:06A0
seg003:06A0 loc_9B90:                               ; CODE XREF: sub_94F4+697␘j
seg003:06A0                 jmp     loc_9B82
seg003:06A3 ; ---------------------------------------------------------------------------
seg003:06A3
seg003:06A3 loc_9B93:                               ; CODE XREF: sub_94F4+68B␘j
seg003:06A3                                         ; sub_94F4+699␘j
seg003:06A3                 add     ax, word_284AB
seg003:06A7                 sub     ax, 10h
seg003:06AA                 mov     word_291DF, ax
seg003:06AD                 jmp     loc_9BEB
seg003:06B0 ; ---------------------------------------------------------------------------
seg003:06B0
seg003:06B0 loc_9BA0:                               ; CODE XREF: sub_94F4+64E␘j
seg003:06B0                                         ; sub_94F4+65A␘j
seg003:06B0                 mov     ax, word_284A9
seg003:06B3                 cwd
seg003:06B4                 xor     ax, dx
seg003:06B6                 sub     ax, dx
seg003:06B8                 mov     cx, 4
seg003:06BB                 sar     ax, cl
seg003:06BD                 xor     ax, dx
seg003:06BF                 sub     ax, dx
seg003:06C1                 mov     cx, ax
seg003:06C3                 mov     ax, 12h
seg003:06C6                 sub     ax, word_1FBE4
seg003:06CA                 imul    cx
seg003:06CC                 cwd
seg003:06CD                 mov     cx, [bp+var_E]
seg003:06D0                 mov     bx, [bp+var_C]
seg003:06D3                 sub     cx, word_20346
seg003:06D7                 sbb     bx, word_20348
seg003:06DB                 sub     cx, word_2033A
seg003:06DF                 sbb     bx, word_2033C
seg003:06E3                 cmp     bx, dx
seg003:06E5                 jge     short loc_9BDA
seg003:06E7                 jmp     loc_9BEB
seg003:06EA ; ---------------------------------------------------------------------------
seg003:06EA
seg003:06EA loc_9BDA:                               ; CODE XREF: sub_94F4+6E1␘j
seg003:06EA                 jle     short loc_9BDF
seg003:06EC                 jmp     loc_9BE6
seg003:06EF ; ---------------------------------------------------------------------------
seg003:06EF
seg003:06EF loc_9BDF:                               ; CODE XREF: sub_94F4:loc_9BDA␘j
seg003:06EF                 cmp     cx, ax
seg003:06F1                 jnb     short loc_9BE6
seg003:06F3                 jmp     loc_9BEB
seg003:06F6 ; ---------------------------------------------------------------------------
seg003:06F6
seg003:06F6 loc_9BE6:                               ; CODE XREF: sub_94F4+6E8␘j
seg003:06F6                                         ; sub_94F4+6ED␘j
seg003:06F6                 call    far ptr sub_EB91
seg003:06FB
seg003:06FB loc_9BEB:                               ; CODE XREF: sub_94F4+6A9␘j
seg003:06FB                                         ; sub_94F4+6E3␘j ...
seg003:06FB                 cmp     word_2033C, 0
seg003:0700                 jge     short loc_9BF5
seg003:0702                 jmp     loc_9C1D
seg003:0705 ; ---------------------------------------------------------------------------
seg003:0705
seg003:0705 loc_9BF5:                               ; CODE XREF: sub_94F4+6FC␘j
seg003:0705                 mov     ax, 8
seg003:0708                 mov     dx, 0
seg003:070B                 push    dx
seg003:070C                 push    ax
seg003:070D                 mov     ax, [bp+var_E]
seg003:0710                 mov     dx, [bp+var_C]
seg003:0713                 sub     ax, word_20346
seg003:0717                 sbb     dx, word_20348
seg003:071B                 push    dx
seg003:071C                 push    ax
seg003:071D                 call    sub_197A0
seg003:0722                 add     word_2033A, ax
seg003:0726                 adc     word_2033C, dx
seg003:072A                 jmp     loc_9C41
seg003:072D ; ---------------------------------------------------------------------------
seg003:072D
seg003:072D loc_9C1D:                               ; CODE XREF: sub_94F4+6FE␘j
seg003:072D                 mov     ax, 8
seg003:0730                 mov     dx, 0
seg003:0733                 push    dx
seg003:0734                 push    ax
seg003:0735                 mov     ax, word_2033A
seg003:0738                 mov     dx, word_2033C
seg003:073C                 neg     ax
seg003:073E                 adc     dx, 0
seg003:0741                 neg     dx
seg003:0743                 push    dx
seg003:0744                 push    ax
seg003:0745                 call    sub_197A0
seg003:074A                 mov     word_2033A, ax
seg003:074D                 mov     word_2033C, dx
seg003:0751
seg003:0751 loc_9C41:                               ; CODE XREF: sub_94F4+726␘j
seg003:0751                 mov     ax, [bp+var_E]
seg003:0754                 mov     dx, [bp+var_C]
seg003:0757                 add     ax, 1
seg003:075A                 adc     dx, 0
seg003:075D                 mov     word_20346, ax
seg003:0760                 mov     word_20348, dx
seg003:0764
seg003:0764 loc_9C54:                               ; CODE XREF: sub_94F4+58B␘j
seg003:0764                                         ; sub_94F4+598␘j
seg003:0764                 mov     ax, word_2847B
seg003:0767                 add     ax, word_28479
seg003:076B                 mov     [bp+var_2], ax
seg003:076E                 cmp     byte_20380, 0
seg003:0773                 jnz     short loc_9C68
seg003:0775                 jmp     loc_9C6E
seg003:0778 ; ---------------------------------------------------------------------------
seg003:0778
seg003:0778 loc_9C68:                               ; CODE XREF: sub_94F4+76F␘j
seg003:0778                 mov     ax, word_20370
seg003:077B                 add     [bp+var_2], ax
seg003:077E
seg003:077E loc_9C6E:                               ; CODE XREF: sub_94F4+771␘j
seg003:077E                 cmp     [bp+var_2], 0FFh
seg003:0783                 jg      short loc_9C78
seg003:0785                 jmp     loc_9C82
seg003:0788 ; ---------------------------------------------------------------------------
seg003:0788
seg003:0788 loc_9C78:                               ; CODE XREF: sub_94F4+77F␘j
seg003:0788                 cmp     [bp+var_2], 0FF01h
seg003:078D                 jge     short loc_9C82
seg003:078F                 jmp     loc_9C88
seg003:0792 ; ---------------------------------------------------------------------------
seg003:0792
seg003:0792 loc_9C82:                               ; CODE XREF: sub_94F4+781␘j
seg003:0792                                         ; sub_94F4+789␘j
seg003:0792                 mov     ax, [bp+var_2]
seg003:0795                 mov     word_2847B, ax
seg003:0798
seg003:0798 loc_9C88:                               ; CODE XREF: sub_94F4+78B␘j
seg003:0798                 push    word_2847B
seg003:079C                 call    sub_14352
seg003:07A1                 add     sp, 2
seg003:07A4                 mov     ch, al
seg003:07A6                 sub     cl, cl
seg003:07A8                 mov     word_29AA5, cx
seg003:07AC                 mov     ax, word_20376
seg003:07AF                 mul     word_20376
seg003:07B3                 mov     word_20378, ax
seg003:07B6                 mov     word_2037A, 0
seg003:07BC                 cmp     byte_20380, 0
seg003:07C1                 jnz     short loc_9CB6
seg003:07C3                 jmp     loc_9CEB
seg003:07C6 ; ---------------------------------------------------------------------------
seg003:07C6
seg003:07C6 loc_9CB6:                               ; CODE XREF: sub_94F4+7BD␘j
seg003:07C6                 cmp     byte_2A6C1, 1
seg003:07CB                 jnz     short loc_9CC0
seg003:07CD                 jmp     loc_9CEB
seg003:07D0 ; ---------------------------------------------------------------------------
seg003:07D0
seg003:07D0 loc_9CC0:                               ; CODE XREF: sub_94F4+7C7␘j
seg003:07D0                 mov     ax, word_2030A
seg003:07D3                 cwd
seg003:07D4                 push    dx
seg003:07D5                 push    ax
seg003:07D6                 sub     ax, ax
seg003:07D8                 push    ax
seg003:07D9                 push    word_20376
seg003:07DD                 mov     bl, byte_2A6C1
seg003:07E1                 sub     bh, bh
seg003:07E3                 shl     bx, 1
seg003:07E5                 mov     ax, [bx+1212h]
seg003:07E9                 cwd
seg003:07EA                 push    dx
seg003:07EB                 push    ax
seg003:07EC                 call    sub_1983C
seg003:07F1                 push    dx
seg003:07F2                 push    ax
seg003:07F3                 call    sub_198B8
seg003:07F8                 mov     word_2037C, ax
seg003:07FB
seg003:07FB loc_9CEB:                               ; CODE XREF: sub_94F4+7BF␘j
seg003:07FB                                         ; sub_94F4+7C9␘j
seg003:07FB                 cmp     byte_20380, 0
seg003:0800                 jnz     short loc_9CF5
seg003:0802                 jmp     loc_9E4B
seg003:0805 ; ---------------------------------------------------------------------------
seg003:0805
seg003:0805 loc_9CF5:                               ; CODE XREF: sub_94F4+7FC␘j
seg003:0805                 mov     ax, word_2AC61
seg003:0808                 mov     cx, ax
seg003:080A                 shl     ax, 1
seg003:080C                 add     ax, cx
seg003:080E                 shl     ax, 1
seg003:0810                 mov     cx, word_2AC5F
seg003:0814                 mov     dx, cx
seg003:0816                 shl     cx, 1
seg003:0818                 add     cx, dx
seg003:081A                 add     ax, cx
seg003:081C                 sub     ax, 7Dh ; '}'
seg003:081F                 neg     ax
seg003:0821                 mov     word_2DAD8, ax
seg003:0824                 mov     al, byte ptr word_28472
seg003:0827                 and     ax, 4
seg003:082A                 shr     ax, 1
seg003:082C                 mov     [bp+var_12], ax
seg003:082F                 mov     al, byte_2AA85
seg003:0832                 sub     ah, ah
seg003:0834                 jmp     loc_9E20
seg003:0837 ; ---------------------------------------------------------------------------
seg003:0837
seg003:0837 loc_9D27:                               ; CODE XREF: sub_94F4+931␙j
seg003:0837                 mov     word_2DAD8, 0
seg003:083D                 jmp     loc_9E4B
seg003:0840 ; ---------------------------------------------------------------------------
seg003:0840
seg003:0840 loc_9D30:                               ; CODE XREF: sub_94F4+939␙j
seg003:0840                                         ; sub_94F4+951␙j
seg003:0840                 mov     ax, word_2DAD8
seg003:0843                 mov     cx, ax
seg003:0845                 shl     ax, 1
seg003:0847                 add     ax, cx
seg003:0849                 shr     ax, 1
seg003:084B                 shr     ax, 1
seg003:084D                 mov     word_2DAD8, ax
seg003:0850                 test    byte ptr word_1F1B2, 60h
seg003:0855                 jz      short loc_9D4A
seg003:0857                 jmp     loc_9D70
seg003:085A ; ---------------------------------------------------------------------------
seg003:085A
seg003:085A loc_9D4A:                               ; CODE XREF: sub_94F4+851␘j
seg003:085A                 cmp     word_20376, 0
seg003:085F                 jnz     short loc_9D54
seg003:0861                 jmp     loc_9D70
seg003:0864 ; ---------------------------------------------------------------------------
seg003:0864
seg003:0864 loc_9D54:                               ; CODE XREF: sub_94F4+85B␘j
seg003:0864                 cmp     byte_28468, 0
seg003:0869                 jz      short loc_9D5E
seg003:086B                 jmp     loc_9D70
seg003:086E ; ---------------------------------------------------------------------------
seg003:086E
seg003:086E loc_9D5E:                               ; CODE XREF: sub_94F4+865␘j
seg003:086E                 mov     al, byte ptr word_1F1B2
seg003:0871                 and     ax, 1Ch
seg003:0874                 shr     ax, 1
seg003:0876                 shr     ax, 1
seg003:0878                 add     al, byte ptr [bp+var_12]
seg003:087B                 inc     al
seg003:087D                 mov     byte_28468, al
seg003:0880
seg003:0880 loc_9D70:                               ; CODE XREF: sub_94F4+853␘j
seg003:0880                                         ; sub_94F4+85D␘j ...
seg003:0880                 jmp     loc_9E4B
seg003:0883 ; ---------------------------------------------------------------------------
seg003:0883
seg003:0883 loc_9D73:                               ; CODE XREF: sub_94F4+941␙j
seg003:0883                 test    byte ptr word_2AD23, 1
seg003:0888                 jz      short loc_9D7D
seg003:088A                 jmp     loc_9D93
seg003:088D ; ---------------------------------------------------------------------------
seg003:088D
seg003:088D loc_9D7D:                               ; CODE XREF: sub_94F4+884␘j
seg003:088D                 cmp     word_20376, 0
seg003:0892                 jnz     short loc_9D87
seg003:0894                 jmp     loc_9D93
seg003:0897 ; ---------------------------------------------------------------------------
seg003:0897
seg003:0897 loc_9D87:                               ; CODE XREF: sub_94F4+88E␘j
seg003:0897                 mov     ax, 11h
seg003:089A                 push    ax
seg003:089B                 call    sub_D038
seg003:08A0                 add     sp, 2
seg003:08A3
seg003:08A3 loc_9D93:                               ; CODE XREF: sub_94F4+886␘j
seg003:08A3                                         ; sub_94F4+890␘j
seg003:08A3                 mov     ax, word_2DAD8
seg003:08A6                 shl     ax, 1
seg003:08A8                 shl     ax, 1
seg003:08AA                 sub     dx, dx
seg003:08AC                 mov     cx, 5
seg003:08AF                 div     cx
seg003:08B1                 mov     word_2DAD8, ax
seg003:08B4                 test    byte ptr word_1F1B2, 70h
seg003:08B9                 jz      short loc_9DAE
seg003:08BB                 jmp     loc_9DCA
seg003:08BE ; ---------------------------------------------------------------------------
seg003:08BE
seg003:08BE loc_9DAE:                               ; CODE XREF: sub_94F4+8B5␘j
seg003:08BE                 cmp     word_20376, 0
seg003:08C3                 jnz     short loc_9DB8
seg003:08C5                 jmp     loc_9DCA
seg003:08C8 ; ---------------------------------------------------------------------------
seg003:08C8
seg003:08C8 loc_9DB8:                               ; CODE XREF: sub_94F4+8BF␘j
seg003:08C8                 cmp     byte_28468, 0
seg003:08CD                 jz      short loc_9DC2
seg003:08CF                 jmp     loc_9DCA
seg003:08D2 ; ---------------------------------------------------------------------------
seg003:08D2
seg003:08D2 loc_9DC2:                               ; CODE XREF: sub_94F4+8C9␘j
seg003:08D2                 mov     al, byte ptr [bp+var_12]
seg003:08D5                 inc     al
seg003:08D7                 mov     byte_28468, al
seg003:08DA
seg003:08DA loc_9DCA:                               ; CODE XREF: sub_94F4+8B7␘j
seg003:08DA                                         ; sub_94F4+8C1␘j ...
seg003:08DA                 jmp     loc_9E4B
seg003:08DD ; ---------------------------------------------------------------------------
seg003:08DD
seg003:08DD loc_9DCD:                               ; CODE XREF: sub_94F4+949␙j
seg003:08DD                 test    byte ptr word_2AD23, 1
seg003:08E2                 jz      short loc_9DD7
seg003:08E4                 jmp     loc_9DED
seg003:08E7 ; ---------------------------------------------------------------------------
seg003:08E7
seg003:08E7 loc_9DD7:                               ; CODE XREF: sub_94F4+8DE␘j
seg003:08E7                 cmp     word_20376, 0
seg003:08EC                 jnz     short loc_9DE1
seg003:08EE                 jmp     loc_9DED
seg003:08F1 ; ---------------------------------------------------------------------------
seg003:08F1
seg003:08F1 loc_9DE1:                               ; CODE XREF: sub_94F4+8E8␘j
seg003:08F1                 mov     ax, 11h
seg003:08F4                 push    ax
seg003:08F5                 call    sub_D038
seg003:08FA                 add     sp, 2
seg003:08FD
seg003:08FD loc_9DED:                               ; CODE XREF: sub_94F4+8E0␘j
seg003:08FD                                         ; sub_94F4+8EA␘j
seg003:08FD                 mov     ax, word_2DAD8
seg003:0900                 shl     ax, 1
seg003:0902                 shl     ax, 1
seg003:0904                 sub     dx, dx
seg003:0906                 mov     cx, 5
seg003:0909                 div     cx
seg003:090B                 mov     word_2DAD8, ax
seg003:090E                 cmp     word_20376, 0
seg003:0913                 jnz     short loc_9E08
seg003:0915                 jmp     loc_9E17
seg003:0918 ; ---------------------------------------------------------------------------
seg003:0918
seg003:0918 loc_9E08:                               ; CODE XREF: sub_94F4+90F␘j
seg003:0918                 cmp     byte_28468, 0
seg003:091D                 jz      short loc_9E12
seg003:091F                 jmp     loc_9E17
seg003:0922 ; ---------------------------------------------------------------------------
seg003:0922
seg003:0922 loc_9E12:                               ; CODE XREF: sub_94F4+919␘j
seg003:0922                 mov     byte_28468, 4
seg003:0927
seg003:0927 loc_9E17:                               ; CODE XREF: sub_94F4+911␘j
seg003:0927                                         ; sub_94F4+91B␘j
seg003:0927                 jmp     loc_9E4B
seg003:092A ; ---------------------------------------------------------------------------
seg003:092A
seg003:092A loc_9E1A:                               ; CODE XREF: sub_94F4:loc_9E48␙j
seg003:092A                 jmp     loc_9E4B
seg003:092D ; ---------------------------------------------------------------------------
seg003:092D                 jmp     loc_9E4B
seg003:0930 ; ---------------------------------------------------------------------------
seg003:0930
seg003:0930 loc_9E20:                               ; CODE XREF: sub_94F4+830␘j
seg003:0930                 cmp     ax, 0Eh
seg003:0933                 jnz     short loc_9E28
seg003:0935                 jmp     loc_9D27
seg003:0938 ; ---------------------------------------------------------------------------
seg003:0938
seg003:0938 loc_9E28:                               ; CODE XREF: sub_94F4+92F␘j
seg003:0938                 cmp     ax, 0Fh
seg003:093B                 jnz     short loc_9E30
seg003:093D                 jmp     loc_9D30
seg003:0940 ; ---------------------------------------------------------------------------
seg003:0940
seg003:0940 loc_9E30:                               ; CODE XREF: sub_94F4+937␘j
seg003:0940                 cmp     ax, 11h
seg003:0943                 jnz     short loc_9E38
seg003:0945                 jmp     loc_9D73
seg003:0948 ; ---------------------------------------------------------------------------
seg003:0948
seg003:0948 loc_9E38:                               ; CODE XREF: sub_94F4+93F␘j
seg003:0948                 cmp     ax, 12h
seg003:094B                 jnz     short loc_9E40
seg003:094D                 jmp     loc_9DCD
seg003:0950 ; ---------------------------------------------------------------------------
seg003:0950
seg003:0950 loc_9E40:                               ; CODE XREF: sub_94F4+947␘j
seg003:0950                 cmp     ax, 0FFh
seg003:0953                 jnz     short loc_9E48
seg003:0955                 jmp     loc_9D30
seg003:0958 ; ---------------------------------------------------------------------------
seg003:0958
seg003:0958 loc_9E48:                               ; CODE XREF: sub_94F4+94F␘j
seg003:0958                 jmp     loc_9E1A
seg003:095B ; ---------------------------------------------------------------------------
seg003:095B
seg003:095B loc_9E4B:                               ; CODE XREF: sub_94F4+7FE␘j
seg003:095B                                         ; sub_94F4+839␘j ...
seg003:095B                 mov     al, byte_2A6C0
seg003:095E                 sub     ah, ah
seg003:0960                 sub     cx, cx
seg003:0962                 push    cx
seg003:0963                 push    ax
seg003:0964                 mov     ax, word_20310
seg003:0967                 cwd
seg003:0968                 push    dx
seg003:0969                 push    ax
seg003:096A                 call    sub_1983C
seg003:096F                 mov     cx, ax
seg003:0971                 mov     ax, word_2030E
seg003:0974                 mov     bx, dx
seg003:0976                 cwd
seg003:0977                 add     cx, ax
seg003:0979                 adc     bx, dx
seg003:097B                 mov     word_2D898, cx
seg003:097F                 mov     word_2D89A, bx
seg003:0983                 push    word_2D89A
seg003:0987                 push    word_2D898
seg003:098B                 mov     ax, word_2037C
seg003:098E                 sub     dx, dx
seg003:0990                 add     ax, 200h
seg003:0993                 adc     dx, 0
seg003:0996                 push    dx
seg003:0997                 push    ax
seg003:0998                 call    sub_1983C
seg003:099D                 mov     cl, 0Ah
seg003:099F                 cmp     cl, 0
seg003:09A2                 jnz     short loc_9E97
seg003:09A4                 jmp     loc_9EA8
seg003:09A7 ; ---------------------------------------------------------------------------
seg003:09A7
seg003:09A7 loc_9E97:                               ; CODE XREF: sub_94F4+99E␘j
seg003:09A7                                         ; sub_94F4:loc_9EA5␙j
seg003:09A7                 shr     dx, 1
seg003:09A9                 rcr     ax, 1
seg003:09AB                 dec     cl
seg003:09AD                 cmp     cl, 0
seg003:09B0                 jnz     short loc_9EA5
seg003:09B2                 jmp     loc_9EA8
seg003:09B5 ; ---------------------------------------------------------------------------
seg003:09B5
seg003:09B5 loc_9EA5:                               ; CODE XREF: sub_94F4+9AC␘j
seg003:09B5                 jmp     loc_9E97
seg003:09B8 ; ---------------------------------------------------------------------------
seg003:09B8
seg003:09B8 loc_9EA8:                               ; CODE XREF: sub_94F4+9A0␘j
seg003:09B8                                         ; sub_94F4+9AE␘j
seg003:09B8                 mov     cx, ax
seg003:09BA                 mov     ax, word_2037C
seg003:09BD                 mov     bx, dx
seg003:09BF                 mul     word_2037C
seg003:09C3                 sub     dx, dx
seg003:09C5                 mov     si, 1Eh
seg003:09C8                 div     si
seg003:09CA                 sub     cx, ax
seg003:09CC                 sbb     bx, 0
seg003:09CF                 mov     word_2D898, cx
seg003:09D3                 mov     word_2D89A, bx
seg003:09D7                 mov     ax, word_20384
seg003:09DA                 mov     dx, word_20386
seg003:09DE                 add     word_2D898, ax
seg003:09E2                 adc     word_2D89A, dx
seg003:09E6                 mov     ax, word_20376
seg003:09E9                 cmp     word_20324, ax
seg003:09ED                 jbe     short loc_9EE2
seg003:09EF                 jmp     loc_9EEB
seg003:09F2 ; ---------------------------------------------------------------------------
seg003:09F2
seg003:09F2 loc_9EE2:                               ; CODE XREF: sub_94F4+9E9␘j
seg003:09F2                 mov     ax, 0
seg003:09F5                 mov     word_2D89A, ax
seg003:09F8                 mov     word_2D898, ax
seg003:09FB
seg003:09FB loc_9EEB:                               ; CODE XREF: sub_94F4+9EB␘j
seg003:09FB                 test    byte ptr word_28472, 20h
seg003:0A00                 jnz     short loc_9EF5
seg003:0A02                 jmp     loc_9F06
seg003:0A05 ; ---------------------------------------------------------------------------
seg003:0A05
seg003:0A05 loc_9EF5:                               ; CODE XREF: sub_94F4+9FC␘j
seg003:0A05                 mov     ax, 4
seg003:0A08                 mov     dx, 0
seg003:0A0B                 push    dx
seg003:0A0C                 push    ax
seg003:0A0D                 mov     ax, 0E7B8h
seg003:0A10                 push    ax
seg003:0A11                 call    sub_19870
seg003:0A16
seg003:0A16 loc_9F06:                               ; CODE XREF: sub_94F4+9FE␘j
seg003:0A16                 mov     ax, 100h
seg003:0A19                 mov     cl, byte_2A6C1
seg003:0A1D                 shl     ax, cl
seg003:0A1F                 test    word_28472, ax
seg003:0A23                 jnz     short loc_9F18
seg003:0A25                 jmp     loc_9F29
seg003:0A28 ; ---------------------------------------------------------------------------
seg003:0A28
seg003:0A28 loc_9F18:                               ; CODE XREF: sub_94F4+A1F␘j
seg003:0A28                 mov     ax, 4
seg003:0A2B                 mov     dx, 0
seg003:0A2E                 push    dx
seg003:0A2F                 push    ax
seg003:0A30                 mov     ax, 0E7B8h
seg003:0A33                 push    ax
seg003:0A34                 call    sub_19870
seg003:0A39
seg003:0A39 loc_9F29:                               ; CODE XREF: sub_94F4+A21␘j
seg003:0A39                 sub     ax, ax
seg003:0A3B                 push    ax
seg003:0A3C                 push    word_2037C
seg003:0A40                 sub     ax, ax
seg003:0A42                 push    ax
seg003:0A43                 push    word_2037C
seg003:0A47                 call    sub_1983C
seg003:0A4C                 mov     word_2D838, ax
seg003:0A4F                 mov     word_2D83A, dx
seg003:0A53                 sub     ax, ax
seg003:0A55                 push    ax
seg003:0A56                 push    word_2037C
seg003:0A5A                 mov     ax, word_202E2
seg003:0A5D                 cwd
seg003:0A5E                 push    dx
seg003:0A5F                 push    ax
seg003:0A60                 call    sub_1983C
seg003:0A65                 add     word_2D838, ax
seg003:0A69                 adc     word_2D83A, dx
seg003:0A6D                 mov     ax, word_202E8
seg003:0A70                 cwd
seg003:0A71                 push    dx
seg003:0A72                 push    ax
seg003:0A73                 mov     ax, 0E758h
seg003:0A76                 push    ax
seg003:0A77                 call    sub_19870
seg003:0A7C                 mov     ax, word_202EE
seg003:0A7F                 cwd
seg003:0A80                 push    dx
seg003:0A81                 push    ax
seg003:0A82                 sub     ax, ax
seg003:0A84                 push    ax
seg003:0A85                 push    word_20376
seg003:0A89                 call    sub_198B8
seg003:0A8E                 mov     word_2D622, ax
seg003:0A91                 mov     word_2D624, dx
seg003:0A95                 push    word_2D626
seg003:0A99                 mov     ax, word_2032C
seg003:0A9C                 sub     ax, word_285C3
seg003:0AA0                 and     ax, 0FFC0h
seg003:0AA3                 push    ax
seg003:0AA4                 call    sub_10017
seg003:0AA9                 add     sp, 4
seg003:0AAC                 mov     ax, word_2844E
seg003:0AAF                 mov     cx, ax
seg003:0AB1                 shl     ax, 1
seg003:0AB3                 add     ax, cx
seg003:0AB5                 shl     ax, 1
seg003:0AB7                 shl     ax, 1
seg003:0AB9                 cwd
seg003:0ABA                 mov     cx, word_2031E
seg003:0ABE                 idiv    cx
seg003:0AC0                 cwd
seg003:0AC1                 add     word_2D622, ax
seg003:0AC5                 adc     word_2D624, dx
seg003:0AC9                 mov     word_2D37E, 0
seg003:0ACF                 mov     ax, word_2032E
seg003:0AD2                 or      ax, word_20330
seg003:0AD6                 jnz     short loc_9FCB
seg003:0AD8                 jmp     loc_A17A
seg003:0ADB ; ---------------------------------------------------------------------------
seg003:0ADB
seg003:0ADB loc_9FCB:                               ; CODE XREF: sub_94F4+AD2␘j
seg003:0ADB                 mov     ax, word_2844C
seg003:0ADE                 cwd
seg003:0ADF                 mov     cx, word_2031E
seg003:0AE3                 idiv    cx
seg003:0AE5                 cwd
seg003:0AE6                 xor     ax, dx
seg003:0AE8                 sub     ax, dx
seg003:0AEA                 mov     cx, 4
seg003:0AED                 sar     ax, cl
seg003:0AEF                 xor     ax, dx
seg003:0AF1                 sub     ax, dx
seg003:0AF3                 mov     word_2D37E, ax
seg003:0AF6                 add     word_2D622, 30h ; '0'
seg003:0AFB                 adc     word_2D624, 0
seg003:0B00                 cmp     byte_20381, 0
seg003:0B05                 jz      short loc_9FFA
seg003:0B07                 jmp     loc_A004
seg003:0B0A ; ---------------------------------------------------------------------------
seg003:0B0A
seg003:0B0A loc_9FFA:                               ; CODE XREF: sub_94F4+B01␘j
seg003:0B0A                 cmp     byte_20382, 0
seg003:0B0F                 jnz     short loc_A004
seg003:0B11                 jmp     loc_A037
seg003:0B14 ; ---------------------------------------------------------------------------
seg003:0B14
seg003:0B14 loc_A004:                               ; CODE XREF: sub_94F4+B03␘j
seg003:0B14                                         ; sub_94F4+B0B␘j
seg003:0B14                 add     word_2D622, 280h
seg003:0B1A                 adc     word_2D624, 0
seg003:0B1F                 cmp     word_2AC61, 0
seg003:0B24                 jnz     short loc_A019
seg003:0B26                 jmp     loc_A023
seg003:0B29 ; ---------------------------------------------------------------------------
seg003:0B29
seg003:0B29 loc_A019:                               ; CODE XREF: sub_94F4+B20␘j
seg003:0B29                 add     word_2D622, 28h ; '('
seg003:0B2E                 adc     word_2D624, 0
seg003:0B33
seg003:0B33 loc_A023:                               ; CODE XREF: sub_94F4+B22␘j
seg003:0B33                 cmp     word_2AC5F, 0
seg003:0B38                 jnz     short loc_A02D
seg003:0B3A                 jmp     loc_A037
seg003:0B3D ; ---------------------------------------------------------------------------
seg003:0B3D
seg003:0B3D loc_A02D:                               ; CODE XREF: sub_94F4+B34␘j
seg003:0B3D                 add     word_2D622, 14h
seg003:0B42                 adc     word_2D624, 0
seg003:0B47
seg003:0B47 loc_A037:                               ; CODE XREF: sub_94F4+B0D␘j
seg003:0B47                                         ; sub_94F4+B36␘j
seg003:0B47                 cmp     byte_20380, 0
seg003:0B4C                 jnz     short loc_A041
seg003:0B4E                 jmp     loc_A0E7
seg003:0B51 ; ---------------------------------------------------------------------------
seg003:0B51
seg003:0B51 loc_A041:                               ; CODE XREF: sub_94F4+B48␘j
seg003:0B51                 test    byte ptr word_28472, 18h
seg003:0B56                 jz      short loc_A04B
seg003:0B58                 jmp     loc_A085
seg003:0B5B ; ---------------------------------------------------------------------------
seg003:0B5B
seg003:0B5B loc_A04B:                               ; CODE XREF: sub_94F4+B52␘j
seg003:0B5B                 mov     al, byte_2A6C3
seg003:0B5E                 sub     ah, ah
seg003:0B60                 sub     cx, cx
seg003:0B62                 push    cx
seg003:0B63                 push    ax
seg003:0B64                 mov     ax, word_20306
seg003:0B67                 cwd
seg003:0B68                 push    dx
seg003:0B69                 push    ax
seg003:0B6A                 call    sub_1983C
seg003:0B6F                 mov     cl, 4
seg003:0B71                 cmp     cl, 0
seg003:0B74                 jnz     short loc_A069
seg003:0B76                 jmp     loc_A07A
seg003:0B79 ; ---------------------------------------------------------------------------
seg003:0B79
seg003:0B79 loc_A069:                               ; CODE XREF: sub_94F4+B70␘j
seg003:0B79                                         ; sub_94F4:loc_A077␙j
seg003:0B79                 shl     ax, 1
seg003:0B7B                 rcl     dx, 1
seg003:0B7D                 dec     cl
seg003:0B7F                 cmp     cl, 0
seg003:0B82                 jnz     short loc_A077
seg003:0B84                 jmp     loc_A07A
seg003:0B87 ; ---------------------------------------------------------------------------
seg003:0B87
seg003:0B87 loc_A077:                               ; CODE XREF: sub_94F4+B7E␘j
seg003:0B87                 jmp     loc_A069
seg003:0B8A ; ---------------------------------------------------------------------------
seg003:0B8A
seg003:0B8A loc_A07A:                               ; CODE XREF: sub_94F4+B72␘j
seg003:0B8A                                         ; sub_94F4+B80␘j
seg003:0B8A                 add     word_2D622, ax
seg003:0B8E                 adc     word_2D624, dx
seg003:0B92                 jmp     loc_A0E7
seg003:0B95 ; ---------------------------------------------------------------------------
seg003:0B95
seg003:0B95 loc_A085:                               ; CODE XREF: sub_94F4+B54␘j
seg003:0B95                 mov     al, byte ptr word_28472
seg003:0B98                 and     al, 18h
seg003:0B9A                 cmp     al, 18h
seg003:0B9C                 jz      short loc_A091
seg003:0B9E                 jmp     loc_A0B0
seg003:0BA1 ; ---------------------------------------------------------------------------
seg003:0BA1
seg003:0BA1 loc_A091:                               ; CODE XREF: sub_94F4+B98␘j
seg003:0BA1                 mov     al, byte_2A6C3
seg003:0BA4                 sub     ah, ah
seg003:0BA6                 sub     cx, cx
seg003:0BA8                 push    cx
seg003:0BA9                 push    ax
seg003:0BAA                 mov     ax, word_20306
seg003:0BAD                 cwd
seg003:0BAE                 push    dx
seg003:0BAF                 push    ax
seg003:0BB0                 call    sub_1983C
seg003:0BB5                 add     word_2D622, ax
seg003:0BB9                 adc     word_2D624, dx
seg003:0BBD                 jmp     loc_A0E7
seg003:0BC0 ; ---------------------------------------------------------------------------
seg003:0BC0
seg003:0BC0 loc_A0B0:                               ; CODE XREF: sub_94F4+B9A␘j
seg003:0BC0                 mov     al, byte_2A6C3
seg003:0BC3                 sub     ah, ah
seg003:0BC5                 sub     cx, cx
seg003:0BC7                 push    cx
seg003:0BC8                 push    ax
seg003:0BC9                 mov     ax, word_20306
seg003:0BCC                 cwd
seg003:0BCD                 push    dx
seg003:0BCE                 push    ax
seg003:0BCF                 call    sub_1983C
seg003:0BD4                 mov     cl, 2
seg003:0BD6                 cmp     cl, 0
seg003:0BD9                 jnz     short loc_A0CE
seg003:0BDB                 jmp     loc_A0DF
seg003:0BDE ; ---------------------------------------------------------------------------
seg003:0BDE
seg003:0BDE loc_A0CE:                               ; CODE XREF: sub_94F4+BD5␘j
seg003:0BDE                                         ; sub_94F4:loc_A0DC␙j
seg003:0BDE                 shl     ax, 1
seg003:0BE0                 rcl     dx, 1
seg003:0BE2                 dec     cl
seg003:0BE4                 cmp     cl, 0
seg003:0BE7                 jnz     short loc_A0DC
seg003:0BE9                 jmp     loc_A0DF
seg003:0BEC ; ---------------------------------------------------------------------------
seg003:0BEC
seg003:0BEC loc_A0DC:                               ; CODE XREF: sub_94F4+BE3␘j
seg003:0BEC                 jmp     loc_A0CE
seg003:0BEF ; ---------------------------------------------------------------------------
seg003:0BEF
seg003:0BEF loc_A0DF:                               ; CODE XREF: sub_94F4+BD7␘j
seg003:0BEF                                         ; sub_94F4+BE5␘j
seg003:0BEF                 add     word_2D622, ax
seg003:0BF3                 adc     word_2D624, dx
seg003:0BF7
seg003:0BF7 loc_A0E7:                               ; CODE XREF: sub_94F4+B4A␘j
seg003:0BF7                                         ; sub_94F4+B8E␘j ...
seg003:0BF7                 cmp     byte_20380, 0
seg003:0BFC                 jnz     short loc_A0F1
seg003:0BFE                 jmp     loc_A17A
seg003:0C01 ; ---------------------------------------------------------------------------
seg003:0C01
seg003:0C01 loc_A0F1:                               ; CODE XREF: sub_94F4+BF8␘j
seg003:0C01                 mov     al, byte_2AA85
seg003:0C04                 sub     ah, ah
seg003:0C06                 jmp     loc_A14F
seg003:0C09 ; ---------------------------------------------------------------------------
seg003:0C09
seg003:0C09 loc_A0F9:                               ; CODE XREF: sub_94F4+C60␙j
seg003:0C09                 mov     ax, 0A0h ; 'á'
seg003:0C0C                 mul     word_20376
seg003:0C10                 sub     dx, dx
seg003:0C12                 add     word_2D622, ax
seg003:0C16                 adc     word_2D624, dx
seg003:0C1A                 jmp     loc_A17A
seg003:0C1D ; ---------------------------------------------------------------------------
seg003:0C1D
seg003:0C1D loc_A10D:                               ; CODE XREF: sub_94F4+C68␙j
seg003:0C1D                                         ; sub_94F4+C80␙j
seg003:0C1D                 mov     ax, 50h ; 'P'
seg003:0C20                 mul     word_20376
seg003:0C24                 sub     dx, dx
seg003:0C26                 add     word_2D622, ax
seg003:0C2A                 adc     word_2D624, dx
seg003:0C2E                 jmp     loc_A17A
seg003:0C31 ; ---------------------------------------------------------------------------
seg003:0C31
seg003:0C31 loc_A121:                               ; CODE XREF: sub_94F4+C70␙j
seg003:0C31                 mov     ax, 1Eh
seg003:0C34                 mul     word_20376
seg003:0C38                 sub     dx, dx
seg003:0C3A                 add     word_2D622, ax
seg003:0C3E                 adc     word_2D624, dx
seg003:0C42                 jmp     loc_A17A
seg003:0C45 ; ---------------------------------------------------------------------------
seg003:0C45
seg003:0C45 loc_A135:                               ; CODE XREF: sub_94F4+C78␙j
seg003:0C45                 mov     ax, 37h ; '7'
seg003:0C48                 mul     word_20376
seg003:0C4C                 sub     dx, dx
seg003:0C4E                 add     word_2D622, ax
seg003:0C52                 adc     word_2D624, dx
seg003:0C56                 jmp     loc_A17A
seg003:0C59 ; ---------------------------------------------------------------------------
seg003:0C59
seg003:0C59 loc_A149:                               ; CODE XREF: sub_94F4:loc_A177␙j
seg003:0C59                 jmp     loc_A17A
seg003:0C5C ; ---------------------------------------------------------------------------
seg003:0C5C                 jmp     loc_A17A
seg003:0C5F ; ---------------------------------------------------------------------------
seg003:0C5F
seg003:0C5F loc_A14F:                               ; CODE XREF: sub_94F4+C02␘j
seg003:0C5F                 cmp     ax, 0Eh
seg003:0C62                 jnz     short loc_A157
seg003:0C64                 jmp     loc_A0F9
seg003:0C67 ; ---------------------------------------------------------------------------
seg003:0C67
seg003:0C67 loc_A157:                               ; CODE XREF: sub_94F4+C5E␘j
seg003:0C67                 cmp     ax, 0Fh
seg003:0C6A                 jnz     short loc_A15F
seg003:0C6C                 jmp     loc_A10D
seg003:0C6F ; ---------------------------------------------------------------------------
seg003:0C6F
seg003:0C6F loc_A15F:                               ; CODE XREF: sub_94F4+C66␘j
seg003:0C6F                 cmp     ax, 11h
seg003:0C72                 jnz     short loc_A167
seg003:0C74                 jmp     loc_A121
seg003:0C77 ; ---------------------------------------------------------------------------
seg003:0C77
seg003:0C77 loc_A167:                               ; CODE XREF: sub_94F4+C6E␘j
seg003:0C77                 cmp     ax, 12h
seg003:0C7A                 jnz     short loc_A16F
seg003:0C7C                 jmp     loc_A135
seg003:0C7F ; ---------------------------------------------------------------------------
seg003:0C7F
seg003:0C7F loc_A16F:                               ; CODE XREF: sub_94F4+C76␘j
seg003:0C7F                 cmp     ax, 0FFh
seg003:0C82                 jnz     short loc_A177
seg003:0C84                 jmp     loc_A10D
seg003:0C87 ; ---------------------------------------------------------------------------
seg003:0C87
seg003:0C87 loc_A177:                               ; CODE XREF: sub_94F4+C7E␘j
seg003:0C87                 jmp     loc_A149
seg003:0C8A ; ---------------------------------------------------------------------------
seg003:0C8A
seg003:0C8A loc_A17A:                               ; CODE XREF: sub_94F4+AD4␘j
seg003:0C8A                                         ; sub_94F4+BFA␘j ...
seg003:0C8A                 cmp     byte_2A6C0, 0
seg003:0C8F                 jnz     short loc_A184
seg003:0C91                 jmp     loc_A1C5
seg003:0C94 ; ---------------------------------------------------------------------------
seg003:0C94
seg003:0C94 loc_A184:                               ; CODE XREF: sub_94F4+C8B␘j
seg003:0C94                 cmp     byte_2A6F0, 0
seg003:0C99                 jnz     short loc_A18E
seg003:0C9B                 jmp     loc_A1C5
seg003:0C9E ; ---------------------------------------------------------------------------
seg003:0C9E
seg003:0C9E loc_A18E:                               ; CODE XREF: sub_94F4+C95␘j
seg003:0C9E                 mov     ax, word_2D898
seg003:0CA1                 sub     ax, word_2D838
seg003:0CA5                 sub     ax, word_2D622
seg003:0CA9                 mov     word_2036E, ax
seg003:0CAC                 cmp     ax, 0
seg003:0CAF                 jg      short loc_A1A4
seg003:0CB1                 jmp     loc_A1AE
seg003:0CB4 ; ---------------------------------------------------------------------------
seg003:0CB4
seg003:0CB4 loc_A1A4:                               ; CODE XREF: sub_94F4+CAB␘j
seg003:0CB4                 dec     byte_2A6C0
seg003:0CB8                 jmp     loc_9E4B
seg003:0CBB ; ---------------------------------------------------------------------------
seg003:0CBB                 jmp     loc_A1C5
seg003:0CBE ; ---------------------------------------------------------------------------
seg003:0CBE
seg003:0CBE loc_A1AE:                               ; CODE XREF: sub_94F4+CAD␘j
seg003:0CBE                 cmp     byte_2A6C0, 1Dh
seg003:0CC3                 jb      short loc_A1B8
seg003:0CC5                 jmp     loc_A1BD
seg003:0CC8 ; ---------------------------------------------------------------------------
seg003:0CC8
seg003:0CC8 loc_A1B8:                               ; CODE XREF: sub_94F4+CBF␘j
seg003:0CC8                 add     byte_2A6C0, 2
seg003:0CCD
seg003:0CCD loc_A1BD:                               ; CODE XREF: sub_94F4+CC1␘j
seg003:0CCD                 mov     byte_2A6F0, 0
seg003:0CD2                 jmp     loc_9E4B
seg003:0CD5 ; ---------------------------------------------------------------------------
seg003:0CD5
seg003:0CD5 loc_A1C5:                               ; CODE XREF: sub_94F4+C8D␘j
seg003:0CD5                                         ; sub_94F4+C97␘j ...
seg003:0CD5                 mov     byte_2A6F0, 0
seg003:0CDA                 cmp     byte_20380, 0
seg003:0CDF                 jnz     short loc_A1D4
seg003:0CE1                 jmp     loc_A21D
seg003:0CE4 ; ---------------------------------------------------------------------------
seg003:0CE4
seg003:0CE4 loc_A1D4:                               ; CODE XREF: sub_94F4+CDB␘j
seg003:0CE4                 cmp     word_20376, 0
seg003:0CE9                 jnz     short loc_A1DE
seg003:0CEB                 jmp     loc_A21D
seg003:0CEE ; ---------------------------------------------------------------------------
seg003:0CEE
seg003:0CEE loc_A1DE:                               ; CODE XREF: sub_94F4+CE5␘j
seg003:0CEE                 sub     ax, ax
seg003:0CF0                 push    ax
seg003:0CF1                 push    word_20376
seg003:0CF5                 mov     ax, word_202F0
seg003:0CF8                 cwd
seg003:0CF9                 push    dx
seg003:0CFA                 push    ax
seg003:0CFB                 call    sub_1983C
seg003:0D00                 push    dx
seg003:0D01                 push    ax
seg003:0D02                 mov     ax, word_28580
seg003:0D05                 cwd
seg003:0D06                 push    dx
seg003:0D07                 push    ax
seg003:0D08                 mov     ax, word_20346
seg003:0D0B                 mov     dx, word_20348
seg003:0D0F                 sub     ax, word_2C19A
seg003:0D13                 sbb     dx, word_2C19C
seg003:0D17                 push    dx
seg003:0D18                 push    ax
seg003:0D19                 call    sub_1983C
seg003:0D1E                 push    dx
seg003:0D1F                 push    ax
seg003:0D20                 call    sub_197A0
seg003:0D25                 add     word_2D622, ax
seg003:0D29                 adc     word_2D624, dx
seg003:0D2D
seg003:0D2D loc_A21D:                               ; CODE XREF: sub_94F4+CDD␘j
seg003:0D2D                                         ; sub_94F4+CE7␘j
seg003:0D2D                 cmp     byte_2A6C1, 0
seg003:0D32                 jz      short loc_A227
seg003:0D34                 jmp     loc_A23F
seg003:0D37 ; ---------------------------------------------------------------------------
seg003:0D37
seg003:0D37 loc_A227:                               ; CODE XREF: sub_94F4+D2E␘j
seg003:0D37                 mov     ax, word_2032E
seg003:0D3A                 or      ax, word_20330
seg003:0D3E                 jz      short loc_A233
seg003:0D40                 jmp     loc_A23F
seg003:0D43 ; ---------------------------------------------------------------------------
seg003:0D43
seg003:0D43 loc_A233:                               ; CODE XREF: sub_94F4+D3A␘j
seg003:0D43                 mov     word_2032E, 0FFFFh
seg003:0D49                 mov     word_20330, 0FFFFh
seg003:0D4F
seg003:0D4F loc_A23F:                               ; CODE XREF: sub_94F4+D30␘j
seg003:0D4F                                         ; sub_94F4+D3C␘j
seg003:0D4F                 cmp     byte_2A6C1, 1
seg003:0D54                 jnz     short loc_A249
seg003:0D56                 jmp     loc_A253
seg003:0D59 ; ---------------------------------------------------------------------------
seg003:0D59
seg003:0D59 loc_A249:                               ; CODE XREF: sub_94F4+D50␘j
seg003:0D59                 cmp     byte_20380, 0
seg003:0D5E                 jz      short loc_A253
seg003:0D60                 jmp     loc_A2C2
seg003:0D63 ; ---------------------------------------------------------------------------
seg003:0D63
seg003:0D63 loc_A253:                               ; CODE XREF: sub_94F4+D52␘j
seg003:0D63                                         ; sub_94F4+D5A␘j
seg003:0D63                 mov     ax, word_2D622
seg003:0D66                 mov     dx, word_2D624
seg003:0D6A                 neg     ax
seg003:0D6C                 adc     dx, 0
seg003:0D6F                 neg     dx
seg003:0D71                 mov     word_2036E, ax
seg003:0D74                 mov     ax, word_2D898
seg003:0D77                 or      ax, word_2D89A
seg003:0D7B                 jnz     short loc_A270
seg003:0D7D                 jmp     loc_A2BF
seg003:0D80 ; ---------------------------------------------------------------------------
seg003:0D80
seg003:0D80 loc_A270:                               ; CODE XREF: sub_94F4+D77␘j
seg003:0D80                 cmp     byte_2A6C1, 1
seg003:0D85                 jz      short loc_A27A
seg003:0D87                 jmp     loc_A29D
seg003:0D8A ; ---------------------------------------------------------------------------
seg003:0D8A
seg003:0D8A loc_A27A:                               ; CODE XREF: sub_94F4+D81␘j
seg003:0D8A                 mov     ax, word_20316
seg003:0D8D                 cwd
seg003:0D8E                 push    dx
seg003:0D8F                 push    ax
seg003:0D90                 mov     ax, word_2D898
seg003:0D93                 mov     dx, word_2D89A
seg003:0D97                 sub     ax, word_2D838
seg003:0D9B                 sbb     dx, word_2D83A
seg003:0D9F                 push    dx
seg003:0DA0                 push    ax
seg003:0DA1                 call    sub_197A0
seg003:0DA6                 add     word_2037C, ax
seg003:0DAA                 jmp     loc_A2BF
seg003:0DAD ; ---------------------------------------------------------------------------
seg003:0DAD
seg003:0DAD loc_A29D:                               ; CODE XREF: sub_94F4+D83␘j
seg003:0DAD                 mov     ax, word_20316
seg003:0DB0                 shl     ax, 1
seg003:0DB2                 cwd
seg003:0DB3                 push    dx
seg003:0DB4                 push    ax
seg003:0DB5                 mov     ax, word_2D898
seg003:0DB8                 mov     dx, word_2D89A
seg003:0DBC                 sub     ax, word_2D838
seg003:0DC0                 sbb     dx, word_2D83A
seg003:0DC4                 push    dx
seg003:0DC5                 push    ax
seg003:0DC6                 call    sub_197A0
seg003:0DCB                 add     word_2037C, ax
seg003:0DCF
seg003:0DCF loc_A2BF:                               ; CODE XREF: sub_94F4+D79␘j
seg003:0DCF                                         ; sub_94F4+DA6␘j
seg003:0DCF                 jmp     loc_A320
seg003:0DD2 ; ---------------------------------------------------------------------------
seg003:0DD2
seg003:0DD2 loc_A2C2:                               ; CODE XREF: sub_94F4+D5C␘j
seg003:0DD2                 mov     ax, word_2D898
seg003:0DD5                 sub     ax, word_2D838
seg003:0DD9                 sub     ax, word_2D622
seg003:0DDD                 mov     word_2036E, ax
seg003:0DE0                 cmp     byte_2A6C1, 0
seg003:0DE5                 jz      short loc_A2DA
seg003:0DE7                 jmp     loc_A2F3
seg003:0DEA ; ---------------------------------------------------------------------------
seg003:0DEA
seg003:0DEA loc_A2DA:                               ; CODE XREF: sub_94F4+DE1␘j
seg003:0DEA                 cmp     word_20330, 0
seg003:0DEF                 jle     short loc_A2E4
seg003:0DF1                 jmp     loc_A307
seg003:0DF4 ; ---------------------------------------------------------------------------
seg003:0DF4
seg003:0DF4 loc_A2E4:                               ; CODE XREF: sub_94F4+DEB␘j
seg003:0DF4                 jge     short loc_A2E9
seg003:0DF6                 jmp     loc_A2F3
seg003:0DF9 ; ---------------------------------------------------------------------------
seg003:0DF9
seg003:0DF9 loc_A2E9:                               ; CODE XREF: sub_94F4:loc_A2E4␘j
seg003:0DF9                 cmp     word_2032E, 0
seg003:0DFE                 jbe     short loc_A2F3
seg003:0E00                 jmp     loc_A307
seg003:0E03 ; ---------------------------------------------------------------------------
seg003:0E03
seg003:0E03 loc_A2F3:                               ; CODE XREF: sub_94F4+DE3␘j
seg003:0E03                                         ; sub_94F4+DF2␘j ...
seg003:0E03                 cmp     byte_2A6C1, 0
seg003:0E08                 jnz     short loc_A2FD
seg003:0E0A                 jmp     loc_A320
seg003:0E0D ; ---------------------------------------------------------------------------
seg003:0E0D
seg003:0E0D loc_A2FD:                               ; CODE XREF: sub_94F4+E04␘j
seg003:0E0D                 cmp     word_20330, 0
seg003:0E12                 jl      short loc_A307
seg003:0E14                 jmp     loc_A320
seg003:0E17 ; ---------------------------------------------------------------------------
seg003:0E17
seg003:0E17 loc_A307:                               ; CODE XREF: sub_94F4+DED␘j
seg003:0E17                                         ; sub_94F4+DFC␘j ...
seg003:0E17                 mov     ax, word_2D838
seg003:0E1A                 mov     dx, word_2D83A
seg003:0E1E                 neg     ax
seg003:0E20                 adc     dx, 0
seg003:0E23                 neg     dx
seg003:0E25                 sub     ax, word_2D898
seg003:0E29                 sub     ax, word_2D622
seg003:0E2D                 mov     word_2036E, ax
seg003:0E30
seg003:0E30 loc_A320:                               ; CODE XREF: sub_94F4:loc_A2BF␘j
seg003:0E30                                         ; sub_94F4+E06␘j ...
seg003:0E30                 cmp     byte_20380, 0
seg003:0E35                 jnz     short loc_A32A
seg003:0E37                 jmp     loc_A3A6
seg003:0E3A ; ---------------------------------------------------------------------------
seg003:0E3A
seg003:0E3A loc_A32A:                               ; CODE XREF: sub_94F4+E31␘j
seg003:0E3A                 mov     ax, 101h
seg003:0E3D                 push    ax
seg003:0E3E                 mov     ax, word_2032A
seg003:0E41                 sub     ax, word_2032C
seg003:0E45                 push    ax
seg003:0E46                 call    sub_10017
seg003:0E4B                 add     sp, 4
seg003:0E4E                 mov     ax, word_2844E
seg003:0E51                 cwd
seg003:0E52                 push    dx
seg003:0E53                 push    ax
seg003:0E54                 mov     ax, word_2036E
seg003:0E57                 cwd
seg003:0E58                 push    dx
seg003:0E59                 push    ax
seg003:0E5A                 call    sub_1983C
seg003:0E5F                 mov     cl, 8
seg003:0E61                 cmp     cl, 0
seg003:0E64                 jnz     short loc_A359
seg003:0E66                 jmp     loc_A36A
seg003:0E69 ; ---------------------------------------------------------------------------
seg003:0E69
seg003:0E69 loc_A359:                               ; CODE XREF: sub_94F4+E60␘j
seg003:0E69                                         ; sub_94F4:loc_A367␙j
seg003:0E69                 sar     dx, 1
seg003:0E6B                 rcr     ax, 1
seg003:0E6D                 dec     cl
seg003:0E6F                 cmp     cl, 0
seg003:0E72                 jnz     short loc_A367
seg003:0E74                 jmp     loc_A36A
seg003:0E77 ; ---------------------------------------------------------------------------
seg003:0E77
seg003:0E77 loc_A367:                               ; CODE XREF: sub_94F4+E6E␘j
seg003:0E77                 jmp     loc_A359
seg003:0E7A ; ---------------------------------------------------------------------------
seg003:0E7A
seg003:0E7A loc_A36A:                               ; CODE XREF: sub_94F4+E62␘j
seg003:0E7A                                         ; sub_94F4+E70␘j
seg003:0E7A                 mov     word_2036E, ax
seg003:0E7D                 mov     ax, word_2032A
seg003:0E80                 sub     ax, word_2032C
seg003:0E84                 add     ax, 2000h
seg003:0E87                 and     ax, 7F00h
seg003:0E8A                 cmp     ax, 4000h
seg003:0E8D                 ja      short loc_A382
seg003:0E8F                 jmp     loc_A3A6
seg003:0E92 ; ---------------------------------------------------------------------------
seg003:0E92
seg003:0E92 loc_A382:                               ; CODE XREF: sub_94F4+E89␘j
seg003:0E92                 sub     word_2036E, 0F0h ; '='
seg003:0E98                 cmp     word_2AC61, 0
seg003:0E9D                 jnz     short loc_A392
seg003:0E9F                 jmp     loc_A397
seg003:0EA2 ; ---------------------------------------------------------------------------
seg003:0EA2
seg003:0EA2 loc_A392:                               ; CODE XREF: sub_94F4+E99␘j
seg003:0EA2                 add     word_2036E, 28h ; '('
seg003:0EA7
seg003:0EA7 loc_A397:                               ; CODE XREF: sub_94F4+E9B␘j
seg003:0EA7                 cmp     word_2AC5F, 0
seg003:0EAC                 jnz     short loc_A3A1
seg003:0EAE                 jmp     loc_A3A6
seg003:0EB1 ; ---------------------------------------------------------------------------
seg003:0EB1
seg003:0EB1 loc_A3A1:                               ; CODE XREF: sub_94F4+EA8␘j
seg003:0EB1                 add     word_2036E, 14h
seg003:0EB6
seg003:0EB6 loc_A3A6:                               ; CODE XREF: sub_94F4+E33␘j
seg003:0EB6                                         ; sub_94F4+E8B␘j ...
seg003:0EB6                 mov     ax, word_2036E
seg003:0EB9                 mov     [bp+var_2], ax
seg003:0EBC                 cmp     ax, 0
seg003:0EBF                 jl      short loc_A3B4
seg003:0EC1                 jmp     loc_A3BC
seg003:0EC4 ; ---------------------------------------------------------------------------
seg003:0EC4
seg003:0EC4 loc_A3B4:                               ; CODE XREF: sub_94F4+EBB␘j
seg003:0EC4                 mov     ax, [bp+var_2]
seg003:0EC7                 neg     ax
seg003:0EC9                 mov     [bp+var_2], ax
seg003:0ECC
seg003:0ECC loc_A3BC:                               ; CODE XREF: sub_94F4+EBD␘j
seg003:0ECC                 cmp     byte_20380, 0
seg003:0ED1                 jnz     short loc_A3C6
seg003:0ED3                 jmp     loc_A478
seg003:0ED6 ; ---------------------------------------------------------------------------
seg003:0ED6
seg003:0ED6 loc_A3C6:                               ; CODE XREF: sub_94F4+ECD␘j
seg003:0ED6                 mov     ax, 4B0h
seg003:0ED9                 mov     dx, 0
seg003:0EDC                 push    dx
seg003:0EDD                 push    ax
seg003:0EDE                 sub     ax, ax
seg003:0EE0                 push    ax
seg003:0EE1                 push    word_2DAD8
seg003:0EE5                 mov     ax, word_28580
seg003:0EE8                 cwd
seg003:0EE9                 push    dx
seg003:0EEA                 push    ax
seg003:0EEB                 mov     ax, word_202E4
seg003:0EEE                 cwd
seg003:0EEF                 push    dx
seg003:0EF0                 push    ax
seg003:0EF1                 call    sub_1983C
seg003:0EF6                 push    dx
seg003:0EF7                 push    ax
seg003:0EF8                 call    sub_1983C
seg003:0EFD                 push    dx
seg003:0EFE                 push    ax
seg003:0EFF                 call    sub_198B8
seg003:0F04                 mov     [bp+var_4], ax
seg003:0F07                 mov     ax, 4B0h
seg003:0F0A                 mov     dx, 0
seg003:0F0D                 push    dx
seg003:0F0E                 push    ax
seg003:0F0F                 sub     ax, ax
seg003:0F11                 push    ax
seg003:0F12                 push    word_2DAD8
seg003:0F16                 mov     ax, word_28580
seg003:0F19                 cwd
seg003:0F1A                 push    dx
seg003:0F1B                 push    ax
seg003:0F1C                 mov     ax, word_202E6
seg003:0F1F                 cwd
seg003:0F20                 push    dx
seg003:0F21                 push    ax
seg003:0F22                 call    sub_1983C
seg003:0F27                 push    dx
seg003:0F28                 push    ax
seg003:0F29                 call    sub_1983C
seg003:0F2E                 push    dx
seg003:0F2F                 push    ax
seg003:0F30                 call    sub_198B8
seg003:0F35                 mov     [bp+var_6], ax
seg003:0F38                 mov     ax, [bp+var_4]
seg003:0F3B                 cmp     [bp+var_2], ax
seg003:0F3E                 jg      short loc_A433
seg003:0F40                 jmp     loc_A43B
seg003:0F43 ; ---------------------------------------------------------------------------
seg003:0F43
seg003:0F43 loc_A433:                               ; CODE XREF: sub_94F4+F3A␘j
seg003:0F43                 mov     byte_20382, 1
seg003:0F48                 jmp     loc_A44B
seg003:0F4B ; ---------------------------------------------------------------------------
seg003:0F4B
seg003:0F4B loc_A43B:                               ; CODE XREF: sub_94F4+F3C␘j
seg003:0F4B                 mov     ax, [bp+var_6]
seg003:0F4E                 cmp     [bp+var_2], ax
seg003:0F51                 jle     short loc_A446
seg003:0F53                 jmp     loc_A44B
seg003:0F56 ; ---------------------------------------------------------------------------
seg003:0F56
seg003:0F56 loc_A446:                               ; CODE XREF: sub_94F4+F4D␘j
seg003:0F56                 mov     byte_20382, 0
seg003:0F5B
seg003:0F5B loc_A44B:                               ; CODE XREF: sub_94F4+F44␘j
seg003:0F5B                                         ; sub_94F4+F4F␘j
seg003:0F5B                 mov     ax, [bp+var_6]
seg003:0F5E                 cmp     [bp+var_2], ax
seg003:0F61                 jge     short loc_A456
seg003:0F63                 jmp     loc_A45B
seg003:0F66 ; ---------------------------------------------------------------------------
seg003:0F66
seg003:0F66 loc_A456:                               ; CODE XREF: sub_94F4+F5D␘j
seg003:0F66                 mov     [bp+var_8], 1
seg003:0F6B
seg003:0F6B loc_A45B:                               ; CODE XREF: sub_94F4+F5F␘j
seg003:0F6B                 cmp     byte_20381, 1
seg003:0F70                 jnz     short loc_A465
seg003:0F72                 jmp     loc_A46F
seg003:0F75 ; ---------------------------------------------------------------------------
seg003:0F75
seg003:0F75 loc_A465:                               ; CODE XREF: sub_94F4+F6C␘j
seg003:0F75                 cmp     byte_20382, 1
seg003:0F7A                 jz      short loc_A46F
seg003:0F7C                 jmp     loc_A475
seg003:0F7F ; ---------------------------------------------------------------------------
seg003:0F7F
seg003:0F7F loc_A46F:                               ; CODE XREF: sub_94F4+F6E␘j
seg003:0F7F                                         ; sub_94F4+F76␘j
seg003:0F7F                 mov     ax, [bp+var_6]
seg003:0F82                 mov     [bp+var_2], ax
seg003:0F85
seg003:0F85 loc_A475:                               ; CODE XREF: sub_94F4+F78␘j
seg003:0F85                 jmp     loc_A47D
seg003:0F88 ; ---------------------------------------------------------------------------
seg003:0F88
seg003:0F88 loc_A478:                               ; CODE XREF: sub_94F4+ECF␘j
seg003:0F88                 mov     byte_20382, 0
seg003:0F8D
seg003:0F8D loc_A47D:                               ; CODE XREF: sub_94F4:loc_A475␘j
seg003:0F8D                 mov     ax, [bp+var_2]
seg003:0F90                 cwd
seg003:0F91                 xor     ax, dx
seg003:0F93                 sub     ax, dx
seg003:0F95                 mov     cx, 9
seg003:0F98                 sar     ax, cl
seg003:0F9A                 xor     ax, dx
seg003:0F9C                 sub     ax, dx
seg003:0F9E                 mov     word_20372, ax
seg003:0FA1                 cmp     byte_2A6C1, 0
seg003:0FA6                 jnz     short loc_A49B
seg003:0FA8                 jmp     loc_A4A5
seg003:0FAB ; ---------------------------------------------------------------------------
seg003:0FAB
seg003:0FAB loc_A49B:                               ; CODE XREF: sub_94F4+FA2␘j
seg003:0FAB                 cmp     word_2036E, 0
seg003:0FB0                 jge     short loc_A4A5
seg003:0FB2                 jmp     loc_A4B9
seg003:0FB5 ; ---------------------------------------------------------------------------
seg003:0FB5
seg003:0FB5 loc_A4A5:                               ; CODE XREF: sub_94F4+FA4␘j
seg003:0FB5                                         ; sub_94F4+FAC␘j
seg003:0FB5                 cmp     byte_2A6C1, 0
seg003:0FBA                 jz      short loc_A4AF
seg003:0FBC                 jmp     loc_A4C1
seg003:0FBF ; ---------------------------------------------------------------------------
seg003:0FBF
seg003:0FBF loc_A4AF:                               ; CODE XREF: sub_94F4+FB6␘j
seg003:0FBF                 cmp     word_2036E, 0
seg003:0FC4                 jg      short loc_A4B9
seg003:0FC6                 jmp     loc_A4C1
seg003:0FC9 ; ---------------------------------------------------------------------------
seg003:0FC9
seg003:0FC9 loc_A4B9:                               ; CODE XREF: sub_94F4+FAE␘j
seg003:0FC9                                         ; sub_94F4+FC0␘j
seg003:0FC9                 mov     ax, word_20372
seg003:0FCC                 neg     ax
seg003:0FCE                 mov     word_20372, ax
seg003:0FD1
seg003:0FD1 loc_A4C1:                               ; CODE XREF: sub_94F4+FB8␘j
seg003:0FD1                                         ; sub_94F4+FC2␘j
seg003:0FD1                 mov     ax, word_20372
seg003:0FD4                 sub     ax, word_20370
seg003:0FD8                 cwd
seg003:0FD9                 sub     ax, dx
seg003:0FDB                 sar     ax, 1
seg003:0FDD                 add     word_20370, ax
seg003:0FE1                 mov     ax, word_2036E
seg003:0FE4                 mov     [bp+var_4], ax
seg003:0FE7                 mov     ax, 4
seg003:0FEA                 mov     dx, 0
seg003:0FED                 push    dx
seg003:0FEE                 push    ax
seg003:0FEF                 mov     ax, [bp+var_2]
seg003:0FF2                 imul    word_20308
seg003:0FF6                 push    dx
seg003:0FF7                 push    ax
seg003:0FF8                 call    sub_197A0
seg003:0FFD                 mov     word_2036E, ax
seg003:1000                 cmp     word_20330, 0
seg003:1005                 jge     short loc_A4FA
seg003:1007                 jmp     loc_A548
seg003:100A ; ---------------------------------------------------------------------------
seg003:100A
seg003:100A loc_A4FA:                               ; CODE XREF: sub_94F4+1001␘j
seg003:100A                 cmp     [bp+var_4], 0
seg003:100E                 jl      short loc_A503
seg003:1010                 jmp     loc_A539
seg003:1013 ; ---------------------------------------------------------------------------
seg003:1013
seg003:1013 loc_A503:                               ; CODE XREF: sub_94F4+100A␘j
seg003:1013                 mov     ax, word_2036E
seg003:1016                 cwd
seg003:1017                 cmp     dx, word_20330
seg003:101B                 jge     short loc_A510
seg003:101D                 jmp     loc_A52A
seg003:1020 ; ---------------------------------------------------------------------------
seg003:1020
seg003:1020 loc_A510:                               ; CODE XREF: sub_94F4+1017␘j
seg003:1020                 jle     short loc_A515
seg003:1022                 jmp     loc_A51E
seg003:1025 ; ---------------------------------------------------------------------------
seg003:1025
seg003:1025 loc_A515:                               ; CODE XREF: sub_94F4:loc_A510␘j
seg003:1025                 cmp     ax, word_2032E
seg003:1029                 jnb     short loc_A51E
seg003:102B                 jmp     loc_A52A
seg003:102E ; ---------------------------------------------------------------------------
seg003:102E
seg003:102E loc_A51E:                               ; CODE XREF: sub_94F4+101E␘j
seg003:102E                                         ; sub_94F4+1025␘j
seg003:102E                 mov     ax, 0
seg003:1031                 mov     word_20330, ax
seg003:1034                 mov     word_2032E, ax
seg003:1037                 jmp     loc_A536
seg003:103A ; ---------------------------------------------------------------------------
seg003:103A
seg003:103A loc_A52A:                               ; CODE XREF: sub_94F4+1019␘j
seg003:103A                                         ; sub_94F4+1027␘j
seg003:103A                 mov     ax, word_2036E
seg003:103D                 cwd
seg003:103E                 sub     word_2032E, ax
seg003:1042                 sbb     word_20330, dx
seg003:1046
seg003:1046 loc_A536:                               ; CODE XREF: sub_94F4+1033␘j
seg003:1046                 jmp     loc_A545
seg003:1049 ; ---------------------------------------------------------------------------
seg003:1049
seg003:1049 loc_A539:                               ; CODE XREF: sub_94F4+100C␘j
seg003:1049                 mov     ax, word_2036E
seg003:104C                 cwd
seg003:104D                 add     word_2032E, ax
seg003:1051                 adc     word_20330, dx
seg003:1055
seg003:1055 loc_A545:                               ; CODE XREF: sub_94F4:loc_A536␘j
seg003:1055                 jmp     loc_A59E
seg003:1058 ; ---------------------------------------------------------------------------
seg003:1058
seg003:1058 loc_A548:                               ; CODE XREF: sub_94F4+1003␘j
seg003:1058                 cmp     [bp+var_4], 0
seg003:105C                 jl      short loc_A551
seg003:105E                 jmp     loc_A592
seg003:1061 ; ---------------------------------------------------------------------------
seg003:1061
seg003:1061 loc_A551:                               ; CODE XREF: sub_94F4+1058␘j
seg003:1061                 mov     ax, word_2036E
seg003:1064                 cwd
seg003:1065                 mov     cx, word_2032E
seg003:1069                 mov     bx, word_20330
seg003:106D                 neg     cx
seg003:106F                 adc     bx, 0
seg003:1072                 neg     bx
seg003:1074                 cmp     bx, dx
seg003:1076                 jle     short loc_A56B
seg003:1078                 jmp     loc_A583
seg003:107B ; ---------------------------------------------------------------------------
seg003:107B
seg003:107B loc_A56B:                               ; CODE XREF: sub_94F4+1072␘j
seg003:107B                 jge     short loc_A570
seg003:107D                 jmp     loc_A577
seg003:1080 ; ---------------------------------------------------------------------------
seg003:1080
seg003:1080 loc_A570:                               ; CODE XREF: sub_94F4:loc_A56B␘j
seg003:1080                 cmp     cx, ax
seg003:1082                 jbe     short loc_A577
seg003:1084                 jmp     loc_A583
seg003:1087 ; ---------------------------------------------------------------------------
seg003:1087
seg003:1087 loc_A577:                               ; CODE XREF: sub_94F4+1079␘j
seg003:1087                                         ; sub_94F4+107E␘j
seg003:1087                 mov     ax, 0
seg003:108A                 mov     word_20330, ax
seg003:108D                 mov     word_2032E, ax
seg003:1090                 jmp     loc_A58F
seg003:1093 ; ---------------------------------------------------------------------------
seg003:1093
seg003:1093 loc_A583:                               ; CODE XREF: sub_94F4+1074␘j
seg003:1093                                         ; sub_94F4+1080␘j
seg003:1093                 mov     ax, word_2036E
seg003:1096                 cwd
seg003:1097                 add     word_2032E, ax
seg003:109B                 adc     word_20330, dx
seg003:109F
seg003:109F loc_A58F:                               ; CODE XREF: sub_94F4+108C␘j
seg003:109F                 jmp     loc_A59E
seg003:10A2 ; ---------------------------------------------------------------------------
seg003:10A2
seg003:10A2 loc_A592:                               ; CODE XREF: sub_94F4+105A␘j
seg003:10A2                 mov     ax, word_2036E
seg003:10A5                 cwd
seg003:10A6                 sub     word_2032E, ax
seg003:10AA                 sbb     word_20330, dx
seg003:10AE
seg003:10AE loc_A59E:                               ; CODE XREF: sub_94F4:loc_A545␘j
seg003:10AE                                         ; sub_94F4:loc_A58F␘j
seg003:10AE                 mov     al, byte_2D62A
seg003:10B1                 sub     ah, ah
seg003:10B3                 sub     ax, 20h ; ' '
seg003:10B6                 mov     [bp+var_2], ax
seg003:10B9                 mov     al, byte_2A6C3
seg003:10BC                 sub     ah, ah
seg003:10BE                 mov     cx, ax
seg003:10C0                 mov     ax, [bp+var_2]
seg003:10C3                 imul    cx
seg003:10C5                 imul    word_2031A
seg003:10C9                 cwd
seg003:10CA                 mov     cx, word_2031C
seg003:10CE                 idiv    cx
seg003:10D0                 add     [bp+var_2], ax
seg003:10D3                 mov     ax, word_2D37E
seg003:10D6                 add     [bp+var_2], ax
seg003:10D9                 test    byte ptr word_28472, 1
seg003:10DE                 jnz     short loc_A5D3
seg003:10E0                 jmp     loc_A5DA
seg003:10E3 ; ---------------------------------------------------------------------------
seg003:10E3
seg003:10E3 loc_A5D3:                               ; CODE XREF: sub_94F4+10DA␘j
seg003:10E3                 add     [bp+var_2], 4
seg003:10E7                 jmp     loc_A5E8
seg003:10EA ; ---------------------------------------------------------------------------
seg003:10EA
seg003:10EA loc_A5DA:                               ; CODE XREF: sub_94F4+10DC␘j
seg003:10EA                 test    byte ptr word_28472, 2
seg003:10EF                 jnz     short loc_A5E4
seg003:10F1                 jmp     loc_A5E8
seg003:10F4 ; ---------------------------------------------------------------------------
seg003:10F4
seg003:10F4 loc_A5E4:                               ; CODE XREF: sub_94F4+10EB␘j
seg003:10F4                 sub     [bp+var_2], 4
seg003:10F8
seg003:10F8 loc_A5E8:                               ; CODE XREF: sub_94F4+10E3␘j
seg003:10F8                                         ; sub_94F4+10ED␘j
seg003:10F8                 cmp     word_20330, 0
seg003:10FD                 jge     short loc_A5F2
seg003:10FF                 jmp     loc_A5FF
seg003:1102 ; ---------------------------------------------------------------------------
seg003:1102
seg003:1102 loc_A5F2:                               ; CODE XREF: sub_94F4+10F9␘j
seg003:1102                 mov     ax, word_20376
seg003:1105                 shr     ax, 1
seg003:1107                 shr     ax, 1
seg003:1109                 mov     byte_2D84F, al
seg003:110C                 jmp     loc_A604
seg003:110F ; ---------------------------------------------------------------------------
seg003:110F
seg003:110F loc_A5FF:                               ; CODE XREF: sub_94F4+10FB␘j
seg003:110F                 mov     byte_2D84F, 0
seg003:1114
seg003:1114 loc_A604:                               ; CODE XREF: sub_94F4+1108␘j
seg003:1114                 mov     ax, 2B8h
seg003:1117                 imul    word_20304
seg003:111B                 cwd
seg003:111C                 push    dx
seg003:111D                 push    ax
seg003:111E                 mov     ax, 50h ; 'P'
seg003:1121                 mov     dx, 0
seg003:1124                 push    dx
seg003:1125                 push    ax
seg003:1126                 mov     ax, [bp+var_2]
seg003:1129                 cwd
seg003:112A                 push    dx
seg003:112B                 push    ax
seg003:112C                 mov     al, byte_2A6F8
seg003:112F                 sub     ah, ah
seg003:1131                 add     ax, 11h
seg003:1134                 mul     word_20302
seg003:1138                 mov     cx, ax
seg003:113A                 shl     ax, 1
seg003:113C                 add     ax, cx
seg003:113E                 shl     ax, 1
seg003:1140                 add     ax, cx
seg003:1142                 sub     cx, cx
seg003:1144                 push    cx
seg003:1145                 push    ax
seg003:1146                 call    sub_1983C
seg003:114B                 push    dx
seg003:114C                 push    ax
seg003:114D                 call    sub_1983C
seg003:1152                 push    dx
seg003:1153                 push    ax
seg003:1154                 call    sub_197A0
seg003:1159                 mov     [bp+var_2], ax
seg003:115C                 cmp     word_20376, 0Ch
seg003:1161                 jb      short loc_A656
seg003:1163                 jmp     loc_A67A
seg003:1166 ; ---------------------------------------------------------------------------
seg003:1166
seg003:1166 loc_A656:                               ; CODE XREF: sub_94F4+115D␘j
seg003:1166                 mov     ax, 0Ch
seg003:1169                 mov     dx, 0
seg003:116C                 push    dx
seg003:116D                 push    ax
seg003:116E                 sub     ax, ax
seg003:1170                 push    ax
seg003:1171                 push    word_20376
seg003:1175                 mov     ax, [bp+var_2]
seg003:1178                 cwd
seg003:1179                 push    dx
seg003:117A                 push    ax
seg003:117B                 call    sub_1983C
seg003:1180                 push    dx
seg003:1181                 push    ax
seg003:1182                 call    sub_197A0
seg003:1187                 mov     [bp+var_2], ax
seg003:118A
seg003:118A loc_A67A:                               ; CODE XREF: sub_94F4+115F␘j
seg003:118A                 cmp     byte_2D62A, 40h ; '@'
seg003:118F                 jnz     short loc_A684
seg003:1191                 jmp     loc_A68E
seg003:1194 ; ---------------------------------------------------------------------------
seg003:1194
seg003:1194 loc_A684:                               ; CODE XREF: sub_94F4+118B␘j
seg003:1194                 cmp     byte_2D62A, 0
seg003:1199                 jz      short loc_A68E
seg003:119B                 jmp     loc_A691
seg003:119E ; ---------------------------------------------------------------------------
seg003:119E
seg003:119E loc_A68E:                               ; CODE XREF: sub_94F4+118D␘j
seg003:119E                                         ; sub_94F4+1195␘j
seg003:119E                 shl     [bp+var_2], 1
seg003:11A1
seg003:11A1 loc_A691:                               ; CODE XREF: sub_94F4+1197␘j
seg003:11A1                 cmp     byte_20380, 0
seg003:11A6                 jnz     short loc_A69B
seg003:11A8                 jmp     loc_A752
seg003:11AB ; ---------------------------------------------------------------------------
seg003:11AB
seg003:11AB loc_A69B:                               ; CODE XREF: sub_94F4+11A2␘j
seg003:11AB                 mov     ax, word_2032E
seg003:11AE                 or      ax, word_20330
seg003:11B2                 jnz     short loc_A6A7
seg003:11B4                 jmp     loc_A752
seg003:11B7 ; ---------------------------------------------------------------------------
seg003:11B7
seg003:11B7 loc_A6A7:                               ; CODE XREF: sub_94F4+11AE␘j
seg003:11B7                 cmp     word_20330, 0
seg003:11BC                 jge     short loc_A6B1
seg003:11BE                 jmp     loc_A6BB
seg003:11C1 ; ---------------------------------------------------------------------------
seg003:11C1
seg003:11C1 loc_A6B1:                               ; CODE XREF: sub_94F4+11B8␘j
seg003:11C1                 mov     ax, [bp+var_2]
seg003:11C4                 add     word_2032C, ax
seg003:11C8                 jmp     loc_A6C2
seg003:11CB ; ---------------------------------------------------------------------------
seg003:11CB
seg003:11CB loc_A6BB:                               ; CODE XREF: sub_94F4+11BA␘j
seg003:11CB                 mov     ax, [bp+var_2]
seg003:11CE                 sub     word_2032C, ax
seg003:11D2
seg003:11D2 loc_A6C2:                               ; CODE XREF: sub_94F4+11C4␘j
seg003:11D2                 mov     ax, word_2032C
seg003:11D5                 sub     ax, word_2032A
seg003:11D9                 mov     [bp+var_4], ax
seg003:11DC                 mov     [bp+var_6], ax
seg003:11DF                 cmp     [bp+var_4], 0
seg003:11E3                 jl      short loc_A6D8
seg003:11E5                 jmp     loc_A6E0
seg003:11E8 ; ---------------------------------------------------------------------------
seg003:11E8
seg003:11E8 loc_A6D8:                               ; CODE XREF: sub_94F4+11DF␘j
seg003:11E8                 mov     ax, [bp+var_6]
seg003:11EB                 neg     ax
seg003:11ED                 mov     [bp+var_6], ax
seg003:11F0
seg003:11F0 loc_A6E0:                               ; CODE XREF: sub_94F4+11E1␘j
seg003:11F0                 push    word_202E4
seg003:11F4                 call    sub_1007D
seg003:11F9                 add     sp, 2
seg003:11FC                 mov     [bp+var_2], ax
seg003:11FF                 cmp     ax, [bp+var_6]
seg003:1202                 jl      short loc_A6F7
seg003:1204                 jmp     loc_A6FC
seg003:1207 ; ---------------------------------------------------------------------------
seg003:1207
seg003:1207 loc_A6F7:                               ; CODE XREF: sub_94F4+11FE␘j
seg003:1207                 mov     byte_20381, 1
seg003:120C
seg003:120C loc_A6FC:                               ; CODE XREF: sub_94F4+1200␘j
seg003:120C                 push    word_202E6
seg003:1210                 call    sub_1007D
seg003:1215                 add     sp, 2
seg003:1218                 mov     [bp+var_2], ax
seg003:121B                 cmp     ax, [bp+var_6]
seg003:121E                 jge     short loc_A713
seg003:1220                 jmp     loc_A718
seg003:1223 ; ---------------------------------------------------------------------------
seg003:1223
seg003:1223 loc_A713:                               ; CODE XREF: sub_94F4+121A␘j
seg003:1223                 mov     byte_20381, 0
seg003:1228
seg003:1228 loc_A718:                               ; CODE XREF: sub_94F4+121C␘j
seg003:1228                 mov     ax, [bp+var_2]
seg003:122B                 cmp     [bp+var_6], ax
seg003:122E                 jge     short loc_A723
seg003:1230                 jmp     loc_A728
seg003:1233 ; ---------------------------------------------------------------------------
seg003:1233
seg003:1233 loc_A723:                               ; CODE XREF: sub_94F4+122A␘j
seg003:1233                 mov     [bp+var_8], 1
seg003:1238
seg003:1238 loc_A728:                               ; CODE XREF: sub_94F4+122C␘j
seg003:1238                 cmp     byte_20381, 0
seg003:123D                 jnz     short loc_A732
seg003:123F                 jmp     loc_A738
seg003:1242 ; ---------------------------------------------------------------------------
seg003:1242
seg003:1242 loc_A732:                               ; CODE XREF: sub_94F4+1239␘j
seg003:1242                 mov     ax, [bp+var_2]
seg003:1245                 mov     [bp+var_6], ax
seg003:1248
seg003:1248 loc_A738:                               ; CODE XREF: sub_94F4+123B␘j
seg003:1248                 cmp     [bp+var_4], 0
seg003:124C                 jl      short loc_A741
seg003:124E                 jmp     loc_A74B
seg003:1251 ; ---------------------------------------------------------------------------
seg003:1251
seg003:1251 loc_A741:                               ; CODE XREF: sub_94F4+1248␘j
seg003:1251                 mov     ax, [bp+var_6]
seg003:1254                 sub     word_2032A, ax
seg003:1258                 jmp     loc_A752
seg003:125B ; ---------------------------------------------------------------------------
seg003:125B
seg003:125B loc_A74B:                               ; CODE XREF: sub_94F4+124A␘j
seg003:125B                 mov     ax, [bp+var_6]
seg003:125E                 add     word_2032A, ax
seg003:1262
seg003:1262 loc_A752:                               ; CODE XREF: sub_94F4+11A4␘j
seg003:1262                                         ; sub_94F4+11B0␘j ...
seg003:1262                 mov     ax, word_2037C
seg003:1265                 mov     cl, 5
seg003:1267                 shr     ax, cl
seg003:1269                 mov     byte_2D89E, al
seg003:126C                 cmp     byte_2D84F, 1Fh
seg003:1271                 ja      short loc_A766
seg003:1273                 jmp     loc_A76B
seg003:1276 ; ---------------------------------------------------------------------------
seg003:1276
seg003:1276 loc_A766:                               ; CODE XREF: sub_94F4+126D␘j
seg003:1276                 mov     byte_2D84F, 1Fh
seg003:127B
seg003:127B loc_A76B:                               ; CODE XREF: sub_94F4+126F␘j
seg003:127B                 mov     al, byte_2D89E
seg003:127E                 sub     ah, ah
seg003:1280                 cmp     word_2BF66, ax
seg003:1284                 jb      short loc_A779
seg003:1286                 jmp     loc_A77F
seg003:1289 ; ---------------------------------------------------------------------------
seg003:1289
seg003:1289 loc_A779:                               ; CODE XREF: sub_94F4+1280␘j
seg003:1289                 mov     al, byte ptr word_2BF66
seg003:128C                 mov     byte_2D89E, al
seg003:128F
seg003:128F loc_A77F:                               ; CODE XREF: sub_94F4+1282␘j
seg003:128F                 cmp     byte_20381, 1
seg003:1294                 jnz     short loc_A789
seg003:1296                 jmp     loc_A7A6
seg003:1299 ; ---------------------------------------------------------------------------
seg003:1299
seg003:1299 loc_A789:                               ; CODE XREF: sub_94F4+1290␘j
seg003:1299                 cmp     byte_20382, 1
seg003:129E                 jnz     short loc_A793
seg003:12A0                 jmp     loc_A7A6
seg003:12A3 ; ---------------------------------------------------------------------------
seg003:12A3
seg003:12A3 loc_A793:                               ; CODE XREF: sub_94F4+129A␘j
seg003:12A3                 cmp     [bp+var_8], 0
seg003:12A7                 jnz     short loc_A79C
seg003:12A9                 jmp     loc_A80C
seg003:12AC ; ---------------------------------------------------------------------------
seg003:12AC
seg003:12AC loc_A79C:                               ; CODE XREF: sub_94F4+12A3␘j
seg003:12AC                 cmp     byte_20380, 0
seg003:12B1                 jnz     short loc_A7A6
seg003:12B3                 jmp     loc_A80C
seg003:12B6 ; ---------------------------------------------------------------------------
seg003:12B6
seg003:12B6 loc_A7A6:                               ; CODE XREF: sub_94F4+1292␘j
seg003:12B6                                         ; sub_94F4+129C␘j ...
seg003:12B6                 mov     al, byte_2AA85
seg003:12B9                 sub     ah, ah
seg003:12BB                 jmp     loc_A7DE
seg003:12BE ; ---------------------------------------------------------------------------
seg003:12BE
seg003:12BE loc_A7AE:                               ; CODE XREF: sub_94F4+12F7␙j
seg003:12BE                                         ; sub_94F4+130F␙j
seg003:12BE                 mov     ax, 10h
seg003:12C1                 push    ax
seg003:12C2                 call    sub_D038
seg003:12C7                 add     sp, 2
seg003:12CA                 jmp     loc_A809
seg003:12CD ; ---------------------------------------------------------------------------
seg003:12CD
seg003:12CD loc_A7BD:                               ; CODE XREF: sub_94F4+1307␙j
seg003:12CD                 mov     ax, 11h
seg003:12D0                 push    ax
seg003:12D1                 call    sub_D038
seg003:12D6                 add     sp, 2
seg003:12D9                 jmp     loc_A809
seg003:12DC ; ---------------------------------------------------------------------------
seg003:12DC
seg003:12DC loc_A7CC:                               ; CODE XREF: sub_94F4+12EF␙j
seg003:12DC                                         ; sub_94F4+12FF␙j ...
seg003:12DC                 mov     ax, 0Fh
seg003:12DF                 push    ax
seg003:12E0                 call    sub_D038
seg003:12E5                 add     sp, 2
seg003:12E8                 jmp     loc_A809
seg003:12EB ; ---------------------------------------------------------------------------
seg003:12EB                 jmp     loc_A809
seg003:12EE ; ---------------------------------------------------------------------------
seg003:12EE
seg003:12EE loc_A7DE:                               ; CODE XREF: sub_94F4+12B7␘j
seg003:12EE                 cmp     ax, 0Eh
seg003:12F1                 jnb     short loc_A7E6
seg003:12F3                 jmp     loc_A7CC
seg003:12F6 ; ---------------------------------------------------------------------------
seg003:12F6
seg003:12F6 loc_A7E6:                               ; CODE XREF: sub_94F4+12ED␘j
seg003:12F6                 cmp     ax, 0Fh
seg003:12F9                 ja      short loc_A7EE
seg003:12FB                 jmp     loc_A7AE
seg003:12FE ; ---------------------------------------------------------------------------
seg003:12FE
seg003:12FE loc_A7EE:                               ; CODE XREF: sub_94F4+12F5␘j
seg003:12FE                 cmp     ax, 11h
seg003:1301                 jnb     short loc_A7F6
seg003:1303                 jmp     loc_A7CC
seg003:1306 ; ---------------------------------------------------------------------------
seg003:1306
seg003:1306 loc_A7F6:                               ; CODE XREF: sub_94F4+12FD␘j
seg003:1306                 cmp     ax, 12h
seg003:1309                 ja      short loc_A7FE
seg003:130B                 jmp     loc_A7BD
seg003:130E ; ---------------------------------------------------------------------------
seg003:130E
seg003:130E loc_A7FE:                               ; CODE XREF: sub_94F4+1305␘j
seg003:130E                 cmp     ax, 0FFh
seg003:1311                 jnz     short loc_A806
seg003:1313                 jmp     loc_A7AE
seg003:1316 ; ---------------------------------------------------------------------------
seg003:1316
seg003:1316 loc_A806:                               ; CODE XREF: sub_94F4+130D␘j
seg003:1316                 jmp     loc_A7CC
seg003:1319 ; ---------------------------------------------------------------------------
seg003:1319
seg003:1319 loc_A809:                               ; CODE XREF: sub_94F4+12C6␘j
seg003:1319                                         ; sub_94F4+12D5␘j ...
seg003:1319                 jmp     loc_A833
seg003:131C ; ---------------------------------------------------------------------------
seg003:131C
seg003:131C loc_A80C:                               ; CODE XREF: sub_94F4+12A5␘j
seg003:131C                                         ; sub_94F4+12AF␘j
seg003:131C                 cmp     byte_280CA, 0
seg003:1321                 jnz     short loc_A816
seg003:1323                 jmp     loc_A833
seg003:1326 ; ---------------------------------------------------------------------------
seg003:1326
seg003:1326 loc_A816:                               ; CODE XREF: sub_94F4+131D␘j
seg003:1326                 mov     ax, 8Fh ; 'Å'
seg003:1329                 push    ax
seg003:132A                 call    sub_D038
seg003:132F                 add     sp, 2
seg003:1332                 mov     ax, 90h ; 'É'
seg003:1335                 push    ax
seg003:1336                 call    sub_D038
seg003:133B                 add     sp, 2
seg003:133E                 mov     byte_280CA, 0
seg003:1343
seg003:1343 loc_A833:                               ; CODE XREF: sub_94F4:loc_A809␘j
seg003:1343                                         ; sub_94F4+131F␘j
seg003:1343                 mov     ax, word_20328
seg003:1346                 inc     ax
seg003:1347                 and     ax, 1FFh
seg003:134A                 mov     word_20328, ax
seg003:134D                 cmp     ax, 40h ; '@'
seg003:1350                 jz      short loc_A845
seg003:1352                 jmp     loc_A856
seg003:1355 ; ---------------------------------------------------------------------------
seg003:1355
seg003:1355 loc_A845:                               ; CODE XREF: sub_94F4+134C␘j
seg003:1355                 mov     ax, 0Ch
seg003:1358                 push    ax
seg003:1359                 call    sub_1688
seg003:135E                 add     sp, 2
seg003:1361                 mov     byte_2A6BD, 1
seg003:1366
seg003:1366 loc_A856:                               ; CODE XREF: sub_94F4+134E␘j
seg003:1366                 mov     ax, word_2037C
seg003:1369                 cmp     word_2030C, ax
seg003:136D                 jb      short loc_A862
seg003:136F                 jmp     loc_A8A5
seg003:1372 ; ---------------------------------------------------------------------------
seg003:1372
seg003:1372 loc_A862:                               ; CODE XREF: sub_94F4+1369␘j
seg003:1372                 inc     word_20326
seg003:1376                 mov     ax, word_2030C
seg003:1379                 add     ax, 1Eh
seg003:137C                 cmp     ax, word_2037C
seg003:1380                 jb      short loc_A875
seg003:1382                 jmp     loc_A879
seg003:1385 ; ---------------------------------------------------------------------------
seg003:1385
seg003:1385 loc_A875:                               ; CODE XREF: sub_94F4+137C␘j
seg003:1385                 inc     word_20326
seg003:1389
seg003:1389 loc_A879:                               ; CODE XREF: sub_94F4+137E␘j
seg003:1389                 mov     ax, word_2030C
seg003:138C                 add     ax, 3Ch ; '<'
seg003:138F                 cmp     ax, word_2037C
seg003:1393                 jb      short loc_A888
seg003:1395                 jmp     loc_A88D
seg003:1398 ; ---------------------------------------------------------------------------
seg003:1398
seg003:1398 loc_A888:                               ; CODE XREF: sub_94F4+138F␘j
seg003:1398                 add     word_20326, 2
seg003:139D
seg003:139D loc_A88D:                               ; CODE XREF: sub_94F4+1391␘j
seg003:139D                 cmp     word_20326, 10h
seg003:13A2                 jge     short loc_A897
seg003:13A4                 jmp     loc_A8A2
seg003:13A7 ; ---------------------------------------------------------------------------
seg003:13A7
seg003:13A7 loc_A897:                               ; CODE XREF: sub_94F4+139E␘j
seg003:13A7                 mov     word_20326, 0
seg003:13AD                 call    sub_EB40
seg003:13B2
seg003:13B2 loc_A8A2:                               ; CODE XREF: sub_94F4+13A0␘j
seg003:13B2                 jmp     loc_A8AB
seg003:13B5 ; ---------------------------------------------------------------------------
seg003:13B5
seg003:13B5 loc_A8A5:                               ; CODE XREF: sub_94F4+136B␘j
seg003:13B5                 mov     word_20326, 0
seg003:13BB
seg003:13BB loc_A8AB:                               ; CODE XREF: sub_94F4:loc_A8A2␘j
seg003:13BB                 pop     si
seg003:13BC                 pop     di
seg003:13BD                 mov     sp, bp
seg003:13BF                 pop     bp
seg003:13C0                 retf
seg003:13C0 sub_94F4        endp
seg003:13C0
seg003:13C0 seg003          ends
seg003:13C0
seg004:0001 ; ---------------------------------------------------------------------------
seg004:0001
seg004:0001 ; Segment type: Pure code
seg004:0001 seg004          segment byte public 'CODE' use16
seg004:0001                 assume cs:seg004
seg004:0001                 ;org 1
seg004:0001                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg004:0001                 align 2
seg004:0002
