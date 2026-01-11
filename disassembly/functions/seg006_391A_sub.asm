seg006:391A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:391A
seg006:391A
seg006:391A sub_1176A       proc near               ; CODE XREF: sub_1176A+3EE␙p
seg006:391A                                         ; sub_1176A+419␙p
seg006:391A
seg006:391A ; FUNCTION CHUNK AT seg006:3C24 SIZE 00000117 BYTES
seg006:391A
seg006:391A                 mov     ax, [bx+498Eh]
seg006:391E                 mov     cx, [si+498Eh]
seg006:3922                 mov     dx, [di+498Eh]
seg006:3926                 mov     bp, ax
seg006:3928                 and     bp, cx
seg006:392A                 and     bp, dx
seg006:392C                 js      short loc_117A0
seg006:392E                 mov     bp, 2800h
seg006:3931                 cmp     ax, bp
seg006:3933                 js      short loc_1178D
seg006:3935                 cmp     cx, bp
seg006:3937                 js      short loc_1178D
seg006:3939                 cmp     dx, bp
seg006:393B                 jns     short loc_117A0
seg006:393D
seg006:393D loc_1178D:                              ; CODE XREF: sub_1176A+19␘j
seg006:393D                                         ; sub_1176A+1D␘j
seg006:393D                 mov     bp, 5400h
seg006:3940                 cmp     ax, bp
seg006:3942                 js      short loc_1179C
seg006:3944                 cmp     cx, bp
seg006:3946                 js      short loc_1179C
seg006:3948                 cmp     dx, bp
seg006:394A                 jns     short loc_117A0
seg006:394C
seg006:394C loc_1179C:                              ; CODE XREF: sub_1176A+28␘j
seg006:394C                                         ; sub_1176A+2C␘j
seg006:394C                 jmp     loc_1199B
seg006:394F ; ---------------------------------------------------------------------------
seg006:394F
seg006:394F locret_1179F:                           ; CODE XREF: sub_1176A+3B␙j
seg006:394F                                         ; sub_1176A+4D␙j ...
seg006:394F                 retn
seg006:3950 ; ---------------------------------------------------------------------------
seg006:3950
seg006:3950 loc_117A0:                              ; CODE XREF: sub_1176A+12␘j
seg006:3950                                         ; sub_1176A+21␘j ...
seg006:3950                 cmp     byte_2A6BC, 0
seg006:3955                 jz      short locret_1179F
seg006:3957                 mov     bp, word_2AD27
seg006:395B                 sub     ax, bp
seg006:395D                 sub     cx, bp
seg006:395F                 sub     dx, bp
seg006:3961                 mov     bp, ax
seg006:3963                 and     bp, cx
seg006:3965                 and     bp, dx
seg006:3967                 js      short locret_1179F
seg006:3969                 mov     bp, 1600h
seg006:396C                 cmp     ax, bp
seg006:396E                 js      short loc_117C8
seg006:3970                 cmp     cx, bp
seg006:3972                 js      short loc_117C8
seg006:3974                 cmp     dx, bp
seg006:3976                 jns     short locret_1179F
seg006:3978
seg006:3978 loc_117C8:                              ; CODE XREF: sub_1176A+54␘j
seg006:3978                                         ; sub_1176A+58␘j
seg006:3978                 mov     bp, 4B00h
seg006:397B                 cmp     ax, bp
seg006:397D                 js      short loc_117D7
seg006:397F                 cmp     cx, bp
seg006:3981                 js      short loc_117D7
seg006:3983                 cmp     dx, bp
seg006:3985                 jns     short locret_1179F
seg006:3987
seg006:3987 loc_117D7:                              ; CODE XREF: sub_1176A+63␘j
seg006:3987                                         ; sub_1176A+67␘j
seg006:3987                 jmp     loc_11972
seg006:398A ; ---------------------------------------------------------------------------
seg006:398A
seg006:398A loc_117DA:                              ; CODE XREF: sub_11748:loc_1175A␘j
seg006:398A                 add     bp, 2
seg006:398D                 mov     di, es:[bp+0]
seg006:3991                 and     di, 7FFh
seg006:3995                 shl     di, 1
seg006:3997                 add     bp, 2
seg006:399A                 mov     bp, es:[bp+0]
seg006:399E                 and     bp, 7FFh
seg006:39A2                 shl     bp, 1
seg006:39A4                 mov     ax, [bx+498Eh]
seg006:39A8                 push    bx
seg006:39A9                 push    bp
seg006:39AA                 mov     cx, [si+498Eh]
seg006:39AE                 mov     dx, [di+498Eh]
seg006:39B2                 mov     bp, [bp+498Eh]
seg006:39B6                 mov     bx, ax
seg006:39B8                 and     bx, cx
seg006:39BA                 and     bx, dx
seg006:39BC                 and     bx, bp
seg006:39BE                 js      short loc_1183B
seg006:39C0                 mov     bx, 2800h
seg006:39C3                 cmp     ax, bx
seg006:39C5                 js      short loc_11823
seg006:39C7                 cmp     cx, bx
seg006:39C9                 js      short loc_11823
seg006:39CB                 cmp     dx, bx
seg006:39CD                 js      short loc_11823
seg006:39CF                 cmp     bp, bx
seg006:39D1                 jns     short loc_1183B
seg006:39D3
seg006:39D3 loc_11823:                              ; CODE XREF: sub_1176A+AB␘j
seg006:39D3                                         ; sub_1176A+AF␘j ...
seg006:39D3                 mov     bx, 5400h
seg006:39D6                 cmp     ax, bx
seg006:39D8                 js      short loc_11836
seg006:39DA                 cmp     cx, bx
seg006:39DC                 js      short loc_11836
seg006:39DE                 cmp     dx, bx
seg006:39E0                 js      short loc_11836
seg006:39E2                 cmp     bp, bx
seg006:39E4                 jns     short loc_1183B
seg006:39E6
seg006:39E6 loc_11836:                              ; CODE XREF: sub_1176A+BE␘j
seg006:39E6                                         ; sub_1176A+C2␘j ...
seg006:39E6                 pop     bp
seg006:39E7                 pop     bx
seg006:39E8                 jmp     loc_11AAA
seg006:39EB ; ---------------------------------------------------------------------------
seg006:39EB
seg006:39EB loc_1183B:                              ; CODE XREF: sub_1176A+A4␘j
seg006:39EB                                         ; sub_1176A+B7␘j ...
seg006:39EB                 cmp     byte_2A6BC, 0
seg006:39F0                 jz      short loc_11883
seg006:39F2                 mov     bx, word_2AD27
seg006:39F6                 sub     ax, bx
seg006:39F8                 sub     cx, bx
seg006:39FA                 sub     dx, bx
seg006:39FC                 sub     bp, bx
seg006:39FE                 mov     bx, ax
seg006:3A00                 and     bx, cx
seg006:3A02                 and     bx, dx
seg006:3A04                 and     bx, bp
seg006:3A06                 js      short loc_11883
seg006:3A08                 mov     bx, 1600h
seg006:3A0B                 cmp     ax, bx
seg006:3A0D                 js      short loc_1186B
seg006:3A0F                 cmp     cx, bx
seg006:3A11                 js      short loc_1186B
seg006:3A13                 cmp     dx, bx
seg006:3A15                 js      short loc_1186B
seg006:3A17                 cmp     bp, bx
seg006:3A19                 jns     short loc_11883
seg006:3A1B
seg006:3A1B loc_1186B:                              ; CODE XREF: sub_1176A+F3␘j
seg006:3A1B                                         ; sub_1176A+F7␘j ...
seg006:3A1B                 mov     bx, 4B00h
seg006:3A1E                 cmp     ax, bx
seg006:3A20                 js      short loc_1187E
seg006:3A22                 cmp     cx, bx
seg006:3A24                 js      short loc_1187E
seg006:3A26                 cmp     dx, bx
seg006:3A28                 js      short loc_1187E
seg006:3A2A                 cmp     bp, bx
seg006:3A2C                 jns     short loc_11883
seg006:3A2E
seg006:3A2E loc_1187E:                              ; CODE XREF: sub_1176A+106␘j
seg006:3A2E                                         ; sub_1176A+10A␘j ...
seg006:3A2E                 pop     bp
seg006:3A2F                 pop     bx
seg006:3A30                 jmp     loc_11A74
seg006:3A33 ; ---------------------------------------------------------------------------
seg006:3A33
seg006:3A33 loc_11883:                              ; CODE XREF: sub_1176A+D6␘j
seg006:3A33                                         ; sub_1176A+EC␘j ...
seg006:3A33                 pop     bp
seg006:3A34                 pop     bx
seg006:3A35                 retn
seg006:3A36 ; ---------------------------------------------------------------------------
seg006:3A36
seg006:3A36 loc_11886:                              ; CODE XREF: sub_11748+C␘j
seg006:3A36                 sub     bp, 2
seg006:3A39                 mov     si, es:[bp+0]
seg006:3A3D                 mov     ax, [bx+498Eh]
seg006:3A41                 or      ax, ax
seg006:3A43                 js      short loc_118AE
seg006:3A45                 add     ax, 5800h
seg006:3A48                 js      short loc_118AE
seg006:3A4A                 sub     ax, 2C00h
seg006:3A4D                 js      short loc_118AE
seg006:3A4F                 cmp     word ptr [bx+560Eh], 8000h
seg006:3A55                 jnz     short loc_118AA
seg006:3A57                 call    sub_116C9
seg006:3A5A
seg006:3A5A loc_118AA:                              ; CODE XREF: sub_1176A+13B␘j
seg006:3A5A                 call    sub_14379
seg006:3A5D
seg006:3A5D locret_118AD:                           ; CODE XREF: sub_1176A+149␙j
seg006:3A5D                                         ; sub_1176A+153␙j ...
seg006:3A5D                 retn
seg006:3A5E ; ---------------------------------------------------------------------------
seg006:3A5E
seg006:3A5E loc_118AE:                              ; CODE XREF: sub_1176A+129␘j
seg006:3A5E                                         ; sub_1176A+12E␘j ...
seg006:3A5E                 cmp     byte_2A6BC, 0
seg006:3A63                 jz      short locret_118AD
seg006:3A65                 mov     ax, [bx+498Eh]
seg006:3A69                 sub     ax, word_2AD27
seg006:3A6D                 js      short locret_118AD
seg006:3A6F                 add     ax, 6A00h
seg006:3A72                 js      short locret_118AD
seg006:3A74                 sub     ax, 3500h
seg006:3A77                 js      short locret_118AD
seg006:3A79                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3A7F                 jnz     short loc_118D4
seg006:3A81                 call    sub_1682B
seg006:3A84
seg006:3A84 loc_118D4:                              ; CODE XREF: sub_1176A+165␘j
seg006:3A84                 call    sub_15E93
seg006:3A87                 retn
seg006:3A88 ; ---------------------------------------------------------------------------
seg006:3A88
seg006:3A88 loc_118D8:                              ; CODE XREF: sub_11748:loc_11757␘j
seg006:3A88                 sub     bp, 2
seg006:3A8B                 mov     ax, [bx+498Eh]
seg006:3A8F                 mov     dx, [si+498Eh]
seg006:3A93                 mov     cx, ax
seg006:3A95                 and     cx, dx
seg006:3A97                 js      short loc_11923
seg006:3A99                 mov     cx, 2800h
seg006:3A9C                 cmp     ax, cx
seg006:3A9E                 js      short loc_118F4
seg006:3AA0                 cmp     dx, cx
seg006:3AA2                 jns     short loc_11923
seg006:3AA4
seg006:3AA4 loc_118F4:                              ; CODE XREF: sub_1176A+184␘j
seg006:3AA4                 mov     cx, 5400h
seg006:3AA7                 cmp     ax, cx
seg006:3AA9                 js      short loc_118FF
seg006:3AAB                 cmp     dx, cx
seg006:3AAD                 jns     short loc_11923
seg006:3AAF
seg006:3AAF loc_118FF:                              ; CODE XREF: sub_1176A+18F␘j
seg006:3AAF                 cmp     word ptr [bx+560Eh], 8000h
seg006:3AB5                 jnz     short loc_1190A
seg006:3AB7                 call    sub_116C9
seg006:3ABA
seg006:3ABA loc_1190A:                              ; CODE XREF: sub_1176A+19B␘j
seg006:3ABA                 xchg    bx, si
seg006:3ABC                 cmp     word ptr [bx+560Eh], 8000h
seg006:3AC2                 jnz     short loc_11917
seg006:3AC4                 call    sub_116C9
seg006:3AC7
seg006:3AC7 loc_11917:                              ; CODE XREF: sub_1176A+1A8␘j
seg006:3AC7                 mov     ax, [bx+498Eh]
seg006:3ACB                 mov     dx, [si+498Eh]
seg006:3ACF                 call    sub_1447B
seg006:3AD2
seg006:3AD2 locret_11922:                           ; CODE XREF: sub_1176A+1BE␙j
seg006:3AD2                                         ; sub_1176A+1CC␙j ...
seg006:3AD2                 retn
seg006:3AD3 ; ---------------------------------------------------------------------------
seg006:3AD3
seg006:3AD3 loc_11923:                              ; CODE XREF: sub_1176A+17D␘j
seg006:3AD3                                         ; sub_1176A+188␘j ...
seg006:3AD3                 cmp     byte_2A6BC, 0
seg006:3AD8                 jz      short locret_11922
seg006:3ADA                 mov     cx, word_2AD27
seg006:3ADE                 sub     ax, cx
seg006:3AE0                 sub     dx, cx
seg006:3AE2                 mov     cx, ax
seg006:3AE4                 and     cx, dx
seg006:3AE6                 js      short locret_11922
seg006:3AE8                 mov     cx, 1600h
seg006:3AEB                 cmp     ax, cx
seg006:3AED                 js      short loc_11943
seg006:3AEF                 cmp     dx, cx
seg006:3AF1                 jns     short locret_11922
seg006:3AF3
seg006:3AF3 loc_11943:                              ; CODE XREF: sub_1176A+1D3␘j
seg006:3AF3                 mov     cx, 4B00h
seg006:3AF6                 cmp     ax, cx
seg006:3AF8                 js      short loc_1194E
seg006:3AFA                 cmp     dx, cx
seg006:3AFC                 jns     short locret_11922
seg006:3AFE
seg006:3AFE loc_1194E:                              ; CODE XREF: sub_1176A+1DE␘j
seg006:3AFE                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3B04                 jnz     short loc_11959
seg006:3B06                 call    sub_1682B
seg006:3B09
seg006:3B09 loc_11959:                              ; CODE XREF: sub_1176A+1EA␘j
seg006:3B09                 xchg    bx, si
seg006:3B0B                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3B11                 jnz     short loc_11966
seg006:3B13                 call    sub_1682B
seg006:3B16
seg006:3B16 loc_11966:                              ; CODE XREF: sub_1176A+1F7␘j
seg006:3B16                 mov     ax, [bx+498Eh]
seg006:3B1A                 mov     dx, [si+498Eh]
seg006:3B1E                 call    sub_15FA2
seg006:3B21                 retn
seg006:3B22 ; ---------------------------------------------------------------------------
seg006:3B22
seg006:3B22 loc_11972:                              ; CODE XREF: sub_1176A:loc_117D7␘j
seg006:3B22                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3B28                 jnz     short loc_1197D
seg006:3B2A                 call    sub_1682B
seg006:3B2D
seg006:3B2D loc_1197D:                              ; CODE XREF: sub_1176A+20E␘j
seg006:3B2D                 xchg    bx, si
seg006:3B2F                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3B35                 jnz     short loc_1198A
seg006:3B37                 call    sub_1682B
seg006:3B3A
seg006:3B3A loc_1198A:                              ; CODE XREF: sub_1176A+21B␘j
seg006:3B3A                 xchg    bx, di
seg006:3B3C                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3B42                 jnz     short loc_11997
seg006:3B44                 call    sub_1682B
seg006:3B47
seg006:3B47 loc_11997:                              ; CODE XREF: sub_1176A+228␘j
seg006:3B47                 call    sub_1603A
seg006:3B4A                 retn
seg006:3B4B ; ---------------------------------------------------------------------------
seg006:3B4B
seg006:3B4B loc_1199B:                              ; CODE XREF: sub_1176A:loc_1179C␘j
seg006:3B4B                 cmp     word ptr [bx+560Eh], 8000h
seg006:3B51                 jnz     short loc_119A6
seg006:3B53                 call    sub_116C9
seg006:3B56
seg006:3B56 loc_119A6:                              ; CODE XREF: sub_1176A+237␘j
seg006:3B56                 xchg    bx, si
seg006:3B58                 cmp     word ptr [bx+560Eh], 8000h
seg006:3B5E                 jnz     short loc_119B3
seg006:3B60                 call    sub_116C9
seg006:3B63
seg006:3B63 loc_119B3:                              ; CODE XREF: sub_1176A+244␘j
seg006:3B63                 xchg    bx, di
seg006:3B65                 cmp     word ptr [bx+560Eh], 8000h
seg006:3B6B                 jnz     short loc_119C0
seg006:3B6D                 call    sub_116C9
seg006:3B70
seg006:3B70 loc_119C0:                              ; CODE XREF: sub_1176A+251␘j
seg006:3B70                 mov     ax, [bx+498Eh]
seg006:3B74                 mov     cx, [si+498Eh]
seg006:3B78                 mov     dx, [di+498Eh]
seg006:3B7C                 cmp     ax, cx
seg006:3B7E                 jbe     short loc_119D1
seg006:3B80                 xchg    ax, cx
seg006:3B81
seg006:3B81 loc_119D1:                              ; CODE XREF: sub_1176A+264␘j
seg006:3B81                 cmp     cx, dx
seg006:3B83                 jbe     short loc_119D7
seg006:3B85                 xchg    cx, dx
seg006:3B87
seg006:3B87 loc_119D7:                              ; CODE XREF: sub_1176A+269␘j
seg006:3B87                 cmp     ax, cx
seg006:3B89                 jbe     short loc_119DC
seg006:3B8B                 xchg    ax, cx
seg006:3B8C
seg006:3B8C loc_119DC:                              ; CODE XREF: sub_1176A+26F␘j
seg006:3B8C                 mov     bp, dx
seg006:3B8E                 sub     bp, cx
seg006:3B90                 dec     bp
seg006:3B91                 js      short loc_119ED
seg006:3B93                 sub     cx, ax
seg006:3B95                 dec     cx
seg006:3B96                 js      short loc_119ED
seg006:3B98                 sub     ax, dx
seg006:3B9A                 dec     ax
seg006:3B9B                 jns     short loc_119F1
seg006:3B9D
seg006:3B9D loc_119ED:                              ; CODE XREF: sub_1176A+277␘j
seg006:3B9D                                         ; sub_1176A+27C␘j
seg006:3B9D                 call    sub_144FA
seg006:3BA0                 retn
seg006:3BA1 ; ---------------------------------------------------------------------------
seg006:3BA1
seg006:3BA1 loc_119F1:                              ; CODE XREF: sub_1176A+281␘j
seg006:3BA1                 call    sub_13FE2
seg006:3BA4                 mov     dl, byte_2AA84
seg006:3BA8                 shr     dl, 1
seg006:3BAA                 shr     dl, 1
seg006:3BAC                 shr     dl, 1
seg006:3BAE                 jz      short loc_11A70
seg006:3BB0                 cmp     dl, 0Eh
seg006:3BB3                 jb      short loc_11A50
seg006:3BB5                 cmp     dl, 14h
seg006:3BB8                 jb      short loc_11A29
seg006:3BBA                 cmp     dl, 1Ch
seg006:3BBD                 jnb     short loc_11A29
seg006:3BBF                 cmp     dl, 18h
seg006:3BC2                 jnb     short loc_11A70
seg006:3BC4                 mov     cx, word_2848A
seg006:3BC8                 sub     cx, word_284AB
seg006:3BCC                 sub     cx, ax
seg006:3BCE                 add     cx, word_285BF
seg006:3BD2                 jns     short loc_11A29
seg006:3BD4                 mov     word_2AA6D, ax
seg006:3BD7                 jmp     short loc_11A70
seg006:3BD9 ; ---------------------------------------------------------------------------
seg006:3BD9
seg006:3BD9 loc_11A29:                              ; CODE XREF: sub_1176A+29E␘j
seg006:3BD9                                         ; sub_1176A+2A3␘j ...
seg006:3BD9                 mov     byte_2AAB9, 0
seg006:3BDE                 cmp     ax, word_2AA6F
seg006:3BE2                 jbe     short loc_11A70
seg006:3BE4                 mov     word_2AA6F, ax
seg006:3BE7                 mov     word_2AA73, bx
seg006:3BEB                 mov     word_2AA75, si
seg006:3BEF                 mov     word_2AA77, di
seg006:3BF3                 cmp     byte_2AA85, 1Ch
seg006:3BF8                 jge     short loc_11A70
seg006:3BFA                 mov     byte_2AA85, dl
seg006:3BFE                 jmp     short loc_11A70
seg006:3C00 ; ---------------------------------------------------------------------------
seg006:3C00
seg006:3C00 loc_11A50:                              ; CODE XREF: sub_1176A+299␘j
seg006:3C00                 cmp     dl, 1
seg006:3C03                 jnz     short loc_11A70
seg006:3C05                 mov     ax, word_20376
seg006:3C08                 or      ax, ax
seg006:3C0A                 jns     short loc_11A5E
seg006:3C0C                 neg     ax
seg006:3C0E
seg006:3C0E loc_11A5E:                              ; CODE XREF: sub_1176A+2F0␘j
seg006:3C0E                 cmp     ax, 14h
seg006:3C11                 jnb     short loc_11A68
seg006:3C13                 call    sub_ECA2
seg006:3C16                 jmp     short loc_11A70
seg006:3C18 ; ---------------------------------------------------------------------------
seg006:3C18
seg006:3C18 loc_11A68:                              ; CODE XREF: sub_1176A+2F7␘j
seg006:3C18                 mov     byte_2AA92, dl
seg006:3C1C                 mov     byte_2AA98, dl
seg006:3C20
seg006:3C20 loc_11A70:                              ; CODE XREF: sub_1176A+294␘j
seg006:3C20                                         ; sub_1176A+2A8␘j ...
seg006:3C20                 call    sub_11B8B
seg006:3C23                 retn
seg006:3C23 sub_1176A       endp
seg006:3C23
seg006:3C24 ; ---------------------------------------------------------------------------
seg006:3C24 ; START OF FUNCTION CHUNK FOR sub_1176A
seg006:3C24
seg006:3C24 loc_11A74:                              ; CODE XREF: sub_1176A+116␘j
seg006:3C24                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3C2A                 jnz     short loc_11A7F
seg006:3C2C                 call    sub_1682B
seg006:3C2F
seg006:3C2F loc_11A7F:                              ; CODE XREF: sub_1176A+310␘j
seg006:3C2F                 xchg    bx, si
seg006:3C31                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3C37                 jnz     short loc_11A8C
seg006:3C39                 call    sub_1682B
seg006:3C3C
seg006:3C3C loc_11A8C:                              ; CODE XREF: sub_1176A+31D␘j
seg006:3C3C                 xchg    bx, di
seg006:3C3E                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3C44                 jnz     short loc_11A99
seg006:3C46                 call    sub_1682B
seg006:3C49
seg006:3C49 loc_11A99:                              ; CODE XREF: sub_1176A+32A␘j
seg006:3C49                 xchg    bx, bp
seg006:3C4B                 cmp     word ptr [bx+7B8Eh], 8000h
seg006:3C51                 jnz     short loc_11AA6
seg006:3C53                 call    sub_1682B
seg006:3C56
seg006:3C56 loc_11AA6:                              ; CODE XREF: sub_1176A+337␘j
seg006:3C56                 call    sub_16275
seg006:3C59                 retn
seg006:3C5A ; ---------------------------------------------------------------------------
seg006:3C5A
seg006:3C5A loc_11AAA:                              ; CODE XREF: sub_1176A+CE␘j
seg006:3C5A                 cmp     word ptr [bx+560Eh], 8000h
seg006:3C60                 jnz     short loc_11AB5
seg006:3C62                 call    sub_116C9
seg006:3C65
seg006:3C65 loc_11AB5:                              ; CODE XREF: sub_1176A+346␘j
seg006:3C65                 xchg    bx, si
seg006:3C67                 cmp     word ptr [bx+560Eh], 8000h
seg006:3C6D                 jnz     short loc_11AC2
seg006:3C6F                 call    sub_116C9
seg006:3C72
seg006:3C72 loc_11AC2:                              ; CODE XREF: sub_1176A+353␘j
seg006:3C72                 xchg    bx, di
seg006:3C74                 cmp     word ptr [bx+560Eh], 8000h
seg006:3C7A                 jnz     short loc_11ACF
seg006:3C7C                 call    sub_116C9
seg006:3C7F
seg006:3C7F loc_11ACF:                              ; CODE XREF: sub_1176A+360␘j
seg006:3C7F                 xchg    bx, bp
seg006:3C81                 cmp     word ptr [bx+560Eh], 8000h
seg006:3C87                 jnz     short loc_11ADC
seg006:3C89                 call    sub_116C9
seg006:3C8C
seg006:3C8C loc_11ADC:                              ; CODE XREF: sub_1176A+36D␘j
seg006:3C8C                 mov     ax, [bp+498Eh]
seg006:3C90                 mov     word_2844A, ax
seg006:3C93                 mov     ax, [bx+498Eh]
seg006:3C97                 mov     cx, [si+498Eh]
seg006:3C9B                 mov     dx, [di+498Eh]
seg006:3C9F                 cmp     ax, cx
seg006:3CA1                 jbe     short loc_11AF4
seg006:3CA3                 xchg    ax, cx
seg006:3CA4
seg006:3CA4 loc_11AF4:                              ; CODE XREF: sub_1176A+387␘j
seg006:3CA4                 cmp     cx, dx
seg006:3CA6                 jbe     short loc_11AFA
seg006:3CA8                 xchg    cx, dx
seg006:3CAA
seg006:3CAA loc_11AFA:                              ; CODE XREF: sub_1176A+38C␘j
seg006:3CAA                 cmp     dx, word_2844A
seg006:3CAE                 jbe     short loc_11B04
seg006:3CB0                 xchg    dx, word_2844A
seg006:3CB4
seg006:3CB4 loc_11B04:                              ; CODE XREF: sub_1176A+394␘j
seg006:3CB4                 cmp     ax, cx
seg006:3CB6                 jbe     short loc_11B09
seg006:3CB8                 xchg    ax, cx
seg006:3CB9
seg006:3CB9 loc_11B09:                              ; CODE XREF: sub_1176A+39C␘j
seg006:3CB9                 cmp     cx, dx
seg006:3CBB                 jbe     short loc_11B0F
seg006:3CBD                 xchg    cx, dx
seg006:3CBF
seg006:3CBF loc_11B0F:                              ; CODE XREF: sub_1176A+3A1␘j
seg006:3CBF                 cmp     ax, cx
seg006:3CC1                 jbe     short loc_11B14
seg006:3CC3                 xchg    ax, cx
seg006:3CC4
seg006:3CC4 loc_11B14:                              ; CODE XREF: sub_1176A+3A7␘j
seg006:3CC4                 push    bp
seg006:3CC5                 mov     bp, word_2844A
seg006:3CC9                 sub     bp, dx
seg006:3CCB                 dec     bp
seg006:3CCC                 pop     bp
seg006:3CCD                 js      short loc_11B87
seg006:3CCF                 sub     dx, cx
seg006:3CD1                 dec     dx
seg006:3CD2                 js      short loc_11B87
seg006:3CD4                 sub     cx, ax
seg006:3CD6                 dec     cx
seg006:3CD7                 js      short loc_11B87
seg006:3CD9                 sub     ax, word_2844A
seg006:3CDD                 dec     ax
seg006:3CDE                 js      short loc_11B87
seg006:3CE0                 mov     bp, word_2AABA
seg006:3CE4                 mov     bx, es:[bp+0]
seg006:3CE8                 and     bx, 7FFh
seg006:3CEC                 shl     bx, 1
seg006:3CEE                 add     bp, 2
seg006:3CF1                 mov     si, es:[bp+0]
seg006:3CF5                 and     si, 7FFh
seg006:3CF9                 shl     si, 1
seg006:3CFB                 add     bp, 2
seg006:3CFE                 mov     di, es:[bp+0]
seg006:3D02                 and     di, 7FFh
seg006:3D06                 shl     di, 1
seg006:3D08                 call    sub_1176A
seg006:3D0B                 mov     bp, word_2AABA
seg006:3D0F                 mov     bx, es:[bp+0]
seg006:3D13                 and     bx, 7FFh
seg006:3D17                 shl     bx, 1
seg006:3D19                 add     bp, 4
seg006:3D1C                 mov     si, es:[bp+0]
seg006:3D20                 and     si, 7FFh
seg006:3D24                 shl     si, 1
seg006:3D26                 add     bp, 2
seg006:3D29                 mov     di, es:[bp+0]
seg006:3D2D                 and     di, 7FFh
seg006:3D31                 shl     di, 1
seg006:3D33                 call    sub_1176A
seg006:3D36                 retn
seg006:3D37 ; ---------------------------------------------------------------------------
seg006:3D37
seg006:3D37 loc_11B87:                              ; CODE XREF: sub_1176A+3B3␘j
seg006:3D37                                         ; sub_1176A+3B8␘j ...
seg006:3D37                 call    sub_146A6
seg006:3D3A                 retn
seg006:3D3A ; END OF FUNCTION CHUNK FOR sub_1176A
seg006:3D3B
