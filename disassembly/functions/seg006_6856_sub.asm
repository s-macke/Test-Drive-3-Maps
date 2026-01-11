seg006:6856 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6856
seg006:6856
seg006:6856 sub_146A6       proc near               ; CODE XREF: sub_1176A:loc_11B87␘p
seg006:6856                                         ; sub_12803+6D␘p ...
seg006:6856                 mov     cx, 6
seg006:6859                 mov     ax, [bx+560Eh]
seg006:685D                 cmp     ax, [si+560Eh]
seg006:6861                 jle     short loc_146B7
seg006:6863                 xchg    bx, si
seg006:6865                 sub     cx, cx
seg006:6867
seg006:6867 loc_146B7:                              ; CODE XREF: sub_146A6+B␘j
seg006:6867                 mov     ax, [si+560Eh]
seg006:686B                 cmp     ax, [di+560Eh]
seg006:686F                 jle     short loc_146C3
seg006:6871                 xchg    si, di
seg006:6873
seg006:6873 loc_146C3:                              ; CODE XREF: sub_146A6+19␘j
seg006:6873                 mov     ax, [di+560Eh]
seg006:6877                 cmp     ax, [bp+560Eh]
seg006:687B                 jle     short loc_146CF
seg006:687D                 xchg    di, bp
seg006:687F
seg006:687F loc_146CF:                              ; CODE XREF: sub_146A6+25␘j
seg006:687F                 mov     ax, [bx+560Eh]
seg006:6883                 cmp     ax, [si+560Eh]
seg006:6887                 jle     short loc_146DE
seg006:6889                 xchg    bx, si
seg006:688B                 mov     cx, 2
seg006:688E
seg006:688E loc_146DE:                              ; CODE XREF: sub_146A6+31␘j
seg006:688E                 mov     ax, [si+560Eh]
seg006:6892                 cmp     ax, [di+560Eh]
seg006:6896                 jle     short loc_146EA
seg006:6898                 xchg    si, di
seg006:689A
seg006:689A loc_146EA:                              ; CODE XREF: sub_146A6+40␘j
seg006:689A                 mov     ax, [bx+560Eh]
seg006:689E                 cmp     ax, [si+560Eh]
seg006:68A2                 jle     short loc_146F9
seg006:68A4                 xchg    bx, si
seg006:68A6                 mov     cx, 4
seg006:68A9
seg006:68A9 loc_146F9:                              ; CODE XREF: sub_146A6+4C␘j
seg006:68A9                 mov     word_2AABC, cx
seg006:68AD                 mov     ax, [bx+560Eh]
seg006:68B1                 cmp     ax, [bp+560Eh]
seg006:68B5                 jnz     short loc_14735
seg006:68B7                 mov     cx, [bx+498Eh]
seg006:68BB                 mov     dx, [si+498Eh]
seg006:68BF                 mov     ax, [di+498Eh]
seg006:68C3                 cmp     ax, dx
seg006:68C5                 js      short loc_14721
seg006:68C7                 cmp     ax, cx
seg006:68C9                 js      short loc_1472F
seg006:68CB                 cmp     cx, dx
seg006:68CD                 js      short loc_14729
seg006:68CF                 jns     short loc_1472D
seg006:68D1
seg006:68D1 loc_14721:                              ; CODE XREF: sub_146A6+6F␘j
seg006:68D1                 cmp     ax, cx
seg006:68D3                 jns     short loc_1472F
seg006:68D5                 cmp     cx, dx
seg006:68D7                 js      short loc_1472D
seg006:68D9
seg006:68D9 loc_14729:                              ; CODE XREF: sub_146A6+77␘j
seg006:68D9                 xchg    si, di
seg006:68DB                 jmp     short loc_1472F
seg006:68DD ; ---------------------------------------------------------------------------
seg006:68DD
seg006:68DD loc_1472D:                              ; CODE XREF: sub_146A6+79␘j
seg006:68DD                                         ; sub_146A6+81␘j
seg006:68DD                 xchg    bx, di
seg006:68DF
seg006:68DF loc_1472F:                              ; CODE XREF: sub_146A6+73␘j
seg006:68DF                                         ; sub_146A6+7D␘j ...
seg006:68DF                 mov     di, bp
seg006:68E1                 call    sub_14528
seg006:68E4                 retn
seg006:68E5 ; ---------------------------------------------------------------------------
seg006:68E5
seg006:68E5 loc_14735:                              ; CODE XREF: sub_146A6+5F␘j
seg006:68E5                 cmp     ax, [di+560Eh]
seg006:68E9                 jnz     short loc_14769
seg006:68EB                 mov     cx, [bx+498Eh]
seg006:68EF                 mov     dx, [si+498Eh]
seg006:68F3                 mov     ax, [di+498Eh]
seg006:68F7                 cmp     ax, dx
seg006:68F9                 js      short loc_14755
seg006:68FB                 cmp     ax, cx
seg006:68FD                 js      short loc_14763
seg006:68FF                 cmp     cx, dx
seg006:6901                 js      short loc_1475D
seg006:6903                 jns     short loc_14761
seg006:6905
seg006:6905 loc_14755:                              ; CODE XREF: sub_146A6+A3␘j
seg006:6905                 cmp     ax, cx
seg006:6907                 jns     short loc_14763
seg006:6909                 cmp     cx, dx
seg006:690B                 js      short loc_14761
seg006:690D
seg006:690D loc_1475D:                              ; CODE XREF: sub_146A6+AB␘j
seg006:690D                 xchg    si, di
seg006:690F                 jmp     short loc_14763
seg006:6911 ; ---------------------------------------------------------------------------
seg006:6911
seg006:6911 loc_14761:                              ; CODE XREF: sub_146A6+AD␘j
seg006:6911                                         ; sub_146A6+B5␘j
seg006:6911                 xchg    bx, di
seg006:6913
seg006:6913 loc_14763:                              ; CODE XREF: sub_146A6+A7␘j
seg006:6913                                         ; sub_146A6+B1␘j ...
seg006:6913                 mov     di, bp
seg006:6915                 call    sub_145D5
seg006:6918                 retn
seg006:6919 ; ---------------------------------------------------------------------------
seg006:6919
seg006:6919 loc_14769:                              ; CODE XREF: sub_146A6+93␘j
seg006:6919                 mov     ax, [si+560Eh]
seg006:691D                 cmp     ax, [bp+560Eh]
seg006:6921                 jnz     short loc_147A1
seg006:6923                 mov     cx, [bp+498Eh]
seg006:6927                 mov     dx, [si+498Eh]
seg006:692B                 mov     ax, [di+498Eh]
seg006:692F                 cmp     ax, dx
seg006:6931                 js      short loc_1478D
seg006:6933                 cmp     ax, cx
seg006:6935                 js      short loc_1479B
seg006:6937                 cmp     cx, dx
seg006:6939                 js      short loc_14795
seg006:693B                 jns     short loc_14799
seg006:693D
seg006:693D loc_1478D:                              ; CODE XREF: sub_146A6+DB␘j
seg006:693D                 cmp     ax, cx
seg006:693F                 jns     short loc_1479B
seg006:6941                 cmp     cx, dx
seg006:6943                 js      short loc_14799
seg006:6945
seg006:6945 loc_14795:                              ; CODE XREF: sub_146A6+E3␘j
seg006:6945                 xchg    si, di
seg006:6947                 jmp     short loc_1479B
seg006:6949 ; ---------------------------------------------------------------------------
seg006:6949
seg006:6949 loc_14799:                              ; CODE XREF: sub_146A6+E5␘j
seg006:6949                                         ; sub_146A6+ED␘j
seg006:6949                 xchg    bp, di
seg006:694B
seg006:694B loc_1479B:                              ; CODE XREF: sub_146A6+DF␘j
seg006:694B                                         ; sub_146A6+E9␘j ...
seg006:694B                 mov     di, bp
seg006:694D                 call    sub_1457C
seg006:6950                 retn
seg006:6951 ; ---------------------------------------------------------------------------
seg006:6951
seg006:6951 loc_147A1:                              ; CODE XREF: sub_146A6+CB␘j
seg006:6951                 cmp     ax, [bx+560Eh]
seg006:6955                 jz      short loc_147AA
seg006:6957                 jmp     loc_14885
seg006:695A ; ---------------------------------------------------------------------------
seg006:695A
seg006:695A loc_147AA:                              ; CODE XREF: sub_146A6+FF␘j
seg006:695A                 mov     ax, [di+498Eh]
seg006:695E                 mov     word_2AAB1, ax
seg006:6961                 mov     cx, [bp+498Eh]
seg006:6965                 mov     word_2AAB3, cx
seg006:6969                 sub     ax, cx
seg006:696B                 cwd
seg006:696C                 mov     cx, [bp+560Eh]
seg006:6970                 sub     cx, [di+560Eh]
seg006:6974                 jz      short loc_147C8
seg006:6976                 idiv    cx
seg006:6978
seg006:6978 loc_147C8:                              ; CODE XREF: sub_146A6+11E␘j
seg006:6978                 mov     word_2844C, ax
seg006:697B                 mov     word_2844E, ax
seg006:697E                 push    bp
seg006:697F                 mov     byte_28456, 0
seg006:6984                 mov     cx, word_2AABC
seg006:6988                 mov     dx, word_2AABA
seg006:698C                 add     cx, 2
seg006:698F                 and     cx, 7
seg006:6992                 mov     bp, cx
seg006:6994                 add     bp, dx
seg006:6996                 mov     ax, es:[bp+0]
seg006:699A                 and     ax, 7FFh
seg006:699D                 shl     ax, 1
seg006:699F                 cmp     di, ax
seg006:69A1                 jz      short loc_1480E
seg006:69A3                 sub     cx, 4
seg006:69A6                 and     cx, 7
seg006:69A9                 mov     bp, cx
seg006:69AB                 add     bp, dx
seg006:69AD                 mov     ax, es:[bp+0]
seg006:69B1                 and     ax, 7FFh
seg006:69B4                 shl     ax, 1
seg006:69B6                 cmp     di, ax
seg006:69B8                 jz      short loc_1480E
seg006:69BA                 inc     byte_28456
seg006:69BE
seg006:69BE loc_1480E:                              ; CODE XREF: sub_146A6+14B␘j
seg006:69BE                                         ; sub_146A6+162␘j
seg006:69BE                 pop     bp
seg006:69BF                 mov     cx, [bx+498Eh]
seg006:69C3                 mov     dx, [si+498Eh]
seg006:69C7                 mov     ax, [bx+560Eh]
seg006:69CB                 mov     bx, [di+560Eh]
seg006:69CF                 mov     bp, [bp+560Eh]
seg006:69D3                 mov     word_2AA86, ax
seg006:69D6                 sub     bx, ax
seg006:69D8                 mov     word_2AAAF, 0
seg006:69DE                 mov     byte_2AA99, 1
seg006:69E3                 inc     bx
seg006:69E4                 mov     word_2AAAB, bx
seg006:69E8                 dec     bx
seg006:69E9                 sub     bp, ax
seg006:69EB                 mov     ax, bp
seg006:69ED                 sub     ax, bx
seg006:69EF                 mov     word_2AAAD, ax
seg006:69F2                 cmp     dx, cx
seg006:69F4                 js      short loc_1484D
seg006:69F6                 xchg    cx, dx
seg006:69F8                 xor     byte_28456, 1
seg006:69FD
seg006:69FD loc_1484D:                              ; CODE XREF: sub_146A6+19E␘j
seg006:69FD                 mov     si, dx
seg006:69FF                 cmp     byte_28456, 0
seg006:6A04                 jnz     short loc_14867
seg006:6A06                 mov     ax, word_2AAB1
seg006:6A09                 xchg    ax, word_2AAB3
seg006:6A0D                 mov     word_2AAB1, ax
seg006:6A10                 xchg    bx, bp
seg006:6A12                 mov     byte_2AA99, 2
seg006:6A17
seg006:6A17 loc_14867:                              ; CODE XREF: sub_146A6+1AE␘j
seg006:6A17                 mov     ax, si
seg006:6A19                 sub     ax, word_2AAB1
seg006:6A1D                 cwd
seg006:6A1E                 idiv    bx
seg006:6A20                 mov     word_2AA9D, ax
seg006:6A23                 mov     ax, cx
seg006:6A25                 sub     ax, word_2AAB3
seg006:6A29                 cwd
seg006:6A2A                 idiv    bp
seg006:6A2C                 mov     word_2AA9F, ax
seg006:6A2F                 mov     bp, cx
seg006:6A31                 call    sub_11EA0
seg006:6A34                 retn
seg006:6A35 ; ---------------------------------------------------------------------------
seg006:6A35
seg006:6A35 loc_14885:                              ; CODE XREF: sub_146A6+101␘j
seg006:6A35                 mov     ax, [bx+560Eh]
seg006:6A39                 mov     word_2AA86, ax
seg006:6A3C                 mov     dx, [si+560Eh]
seg006:6A40                 sub     dx, ax
seg006:6A42                 mov     word_28452, dx
seg006:6A46                 inc     dx
seg006:6A47                 mov     word_2AAAB, dx
seg006:6A4B                 dec     dx
seg006:6A4C                 mov     cx, [di+560Eh]
seg006:6A50                 sub     cx, ax
seg006:6A52                 mov     word_28454, cx
seg006:6A56                 sub     cx, dx
seg006:6A58                 mov     word_2AAAD, cx
seg006:6A5C                 mov     cx, [bp+560Eh]
seg006:6A60                 sub     cx, ax
seg006:6A62                 mov     word_2844A, cx
seg006:6A66                 sub     cx, dx
seg006:6A68                 sub     cx, word_2AAAD
seg006:6A6C                 mov     word_2AAAF, cx
seg006:6A70                 push    bp
seg006:6A71                 mov     byte_28456, 0
seg006:6A76                 mov     cx, word_2AABC
seg006:6A7A                 mov     dx, word_2AABA
seg006:6A7E                 add     cx, 2
seg006:6A81                 and     cx, 7
seg006:6A84                 mov     bp, cx
seg006:6A86                 add     bp, dx
seg006:6A88                 mov     ax, es:[bp+0]
seg006:6A8C                 and     ax, 7FFh
seg006:6A8F                 shl     ax, 1
seg006:6A91                 cmp     di, ax
seg006:6A93                 jz      short loc_14900
seg006:6A95                 sub     cx, 4
seg006:6A98                 and     cx, 7
seg006:6A9B                 mov     bp, cx
seg006:6A9D                 add     bp, dx
seg006:6A9F                 mov     ax, es:[bp+0]
seg006:6AA3                 and     ax, 7FFh
seg006:6AA6                 shl     ax, 1
seg006:6AA8                 cmp     di, ax
seg006:6AAA                 jz      short loc_14900
seg006:6AAC                 inc     byte_28456
seg006:6AB0
seg006:6AB0 loc_14900:                              ; CODE XREF: sub_146A6+23D␘j
seg006:6AB0                                         ; sub_146A6+254␘j
seg006:6AB0                 pop     bp
seg006:6AB1                 mov     dx, [si+498Eh]
seg006:6AB5                 mov     cx, [di+498Eh]
seg006:6AB9                 mov     ax, [bx+498Eh]
seg006:6ABD                 mov     word_28450, ax
seg006:6AC0                 mov     bx, [bp+498Eh]
seg006:6AC4                 mov     ax, [si+560Eh]
seg006:6AC8                 cmp     ax, [di+560Eh]
seg006:6ACC                 jnz     short loc_1492F
seg006:6ACE                 mov     ax, [di+498Eh]
seg006:6AD2                 cmp     ax, [si+498Eh]
seg006:6AD6                 jns     short loc_1492C
seg006:6AD8                 xchg    si, di
seg006:6ADA                 xchg    dx, cx
seg006:6ADC
seg006:6ADC loc_1492C:                              ; CODE XREF: sub_146A6+280␘j
seg006:6ADC                 jmp     short loc_14971
seg006:6ADC ; ---------------------------------------------------------------------------
seg006:6ADE                 db 90h
seg006:6ADF ; ---------------------------------------------------------------------------
seg006:6ADF
seg006:6ADF loc_1492F:                              ; CODE XREF: sub_146A6+276␘j
seg006:6ADF                 cmp     dx, bx
seg006:6AE1                 jz      short loc_1494D
seg006:6AE3                 js      short loc_1494D
seg006:6AE5                 cmp     bx, cx
seg006:6AE7                 jz      short loc_1493B
seg006:6AE9                 jns     short loc_14961
seg006:6AEB
seg006:6AEB loc_1493B:                              ; CODE XREF: sub_146A6+291␘j
seg006:6AEB                 cmp     byte_28456, 0
seg006:6AF0                 jz      short loc_14945
seg006:6AF2
seg006:6AF2 loc_14942:                              ; CODE XREF: sub_146A6+2C0␙j
seg006:6AF2                 jmp     loc_14AD6
seg006:6AF5 ; ---------------------------------------------------------------------------
seg006:6AF5
seg006:6AF5 loc_14945:                              ; CODE XREF: sub_146A6+29A␘j
seg006:6AF5                 cmp     dx, cx
seg006:6AF7                 jz      short loc_14971
seg006:6AF9                 js      short loc_14971
seg006:6AFB                 jns     short loc_14968
seg006:6AFD
seg006:6AFD loc_1494D:                              ; CODE XREF: sub_146A6+28B␘j
seg006:6AFD                                         ; sub_146A6+28D␘j
seg006:6AFD                 cmp     bx, cx
seg006:6AFF                 js      short loc_1496A
seg006:6B01                 cmp     byte_28456, 0
seg006:6B06                 jz      short loc_1495B
seg006:6B08
seg006:6B08 loc_14958:                              ; CODE XREF: sub_146A6+2C9␙j
seg006:6B08                 jmp     loc_14A4E
seg006:6B0B ; ---------------------------------------------------------------------------
seg006:6B0B
seg006:6B0B loc_1495B:                              ; CODE XREF: sub_146A6+2B0␘j
seg006:6B0B                 cmp     dx, cx
seg006:6B0D                 jz      short loc_14971
seg006:6B0F                 js      short loc_14971
seg006:6B11
seg006:6B11 loc_14961:                              ; CODE XREF: sub_146A6+293␘j
seg006:6B11                 cmp     byte_28456, 0
seg006:6B16                 jnz     short loc_14942
seg006:6B18
seg006:6B18 loc_14968:                              ; CODE XREF: sub_146A6+2A5␘j
seg006:6B18                 jmp     short loc_14971
seg006:6B1A ; ---------------------------------------------------------------------------
seg006:6B1A
seg006:6B1A loc_1496A:                              ; CODE XREF: sub_146A6+2A9␘j
seg006:6B1A                 cmp     byte_28456, 0
seg006:6B1F                 jnz     short loc_14958
seg006:6B21
seg006:6B21 loc_14971:                              ; CODE XREF: sub_146A6:loc_1492C␘j
seg006:6B21                                         ; sub_146A6+2A1␘j ...
seg006:6B21                 mov     byte_2AA99, 1
seg006:6B26                 mov     byte_2AA9A, 2
seg006:6B2B                 mov     word_2AAB1, dx
seg006:6B2F                 mov     word_2AAB3, cx
seg006:6B33                 mov     ax, word_28450
seg006:6B36                 sub     ax, dx
seg006:6B38                 cwd
seg006:6B39                 idiv    word_28452
seg006:6B3D                 mov     word_2AA9D, ax
seg006:6B40                 mov     ax, word_28450
seg006:6B43                 sub     ax, cx
seg006:6B45                 cwd
seg006:6B46                 idiv    word_28454
seg006:6B4A                 cmp     ax, word_2AA9D
seg006:6B4E                 js      short loc_149C6
seg006:6B50                 xchg    ax, word_2AA9D
seg006:6B54                 mov     dx, word_2AAB1
seg006:6B58                 xchg    dx, word_2AAB3
seg006:6B5C                 mov     word_2AAB1, dx
seg006:6B60                 mov     dx, word_28452
seg006:6B64                 xchg    dx, word_28454
seg006:6B68                 mov     word_28452, dx
seg006:6B6C                 mov     byte_2AA99, 2
seg006:6B71                 mov     byte_2AA9A, 1
seg006:6B76
seg006:6B76 loc_149C6:                              ; CODE XREF: sub_146A6+2F8␘j
seg006:6B76                 mov     word_2AA9F, ax
seg006:6B79                 mov     ax, word_2AAB1
seg006:6B7C                 sub     ax, bx
seg006:6B7E                 cwd
seg006:6B7F                 mov     cx, word_2844A
seg006:6B83                 sub     cx, word_28452
seg006:6B87                 jz      short loc_149DB
seg006:6B89                 idiv    cx
seg006:6B8B
seg006:6B8B loc_149DB:                              ; CODE XREF: sub_146A6+331␘j
seg006:6B8B                 mov     word_2844C, ax
seg006:6B8E                 mov     ax, word_2AAB3
seg006:6B91                 sub     ax, bx
seg006:6B93                 cwd
seg006:6B94                 mov     cx, word_2844A
seg006:6B98                 sub     cx, word_28454
seg006:6B9C                 jz      short loc_149F0
seg006:6B9E                 idiv    cx
seg006:6BA0
seg006:6BA0 loc_149F0:                              ; CODE XREF: sub_146A6+346␘j
seg006:6BA0                 mov     word_2844E, ax
seg006:6BA3                 mov     ax, word_2AAAD
seg006:6BA6                 or      ax, ax
seg006:6BA8                 jnz     short loc_14A18
seg006:6BAA                 mov     byte_2AA99, 3
seg006:6BAF                 xchg    ax, word_2AAAF
seg006:6BB3                 mov     word_2AAAD, ax
seg006:6BB6                 mov     ax, word_2AA9D
seg006:6BB9                 sub     ax, word_2844C
seg006:6BBD                 js      short loc_14A22
seg006:6BBF                 mov     ax, word_2844E
seg006:6BC2                 sub     ax, word_2AA9F
seg006:6BC6                 js      short loc_14A38
seg006:6BC8
seg006:6BC8 loc_14A18:                              ; CODE XREF: sub_146A6+352␘j
seg006:6BC8                                         ; sub_146A6+390␙j ...
seg006:6BC8                 mov     si, word_28450
seg006:6BCC                 mov     bp, si
seg006:6BCE                 call    sub_11EA0
seg006:6BD1                 retn
seg006:6BD2 ; ---------------------------------------------------------------------------
seg006:6BD2
seg006:6BD2 loc_14A22:                              ; CODE XREF: sub_146A6+367␘j
seg006:6BD2                 mov     byte_2AA99, 2
seg006:6BD7                 mov     ax, word_28450
seg006:6BDA                 sub     ax, [bp+498Eh]
seg006:6BDE                 cwd
seg006:6BDF                 idiv    word_2844A
seg006:6BE3                 mov     word_2AA9D, ax
seg006:6BE6                 jmp     short loc_14A18
seg006:6BE8 ; ---------------------------------------------------------------------------
seg006:6BE8
seg006:6BE8 loc_14A38:                              ; CODE XREF: sub_146A6+370␘j
seg006:6BE8                 mov     byte_2AA99, 1
seg006:6BED                 mov     ax, word_28450
seg006:6BF0                 sub     ax, [bp+498Eh]
seg006:6BF4                 cwd
seg006:6BF5                 idiv    word_2844A
seg006:6BF9                 mov     word_2AA9F, ax
seg006:6BFC                 jmp     short loc_14A18
seg006:6BFE ; ---------------------------------------------------------------------------
seg006:6BFE
seg006:6BFE loc_14A4E:                              ; CODE XREF: sub_146A6:loc_14958␘j
seg006:6BFE                 mov     ax, word_2AAAD
seg006:6C01                 or      ax, ax
seg006:6C03                 jnz     short loc_14A64
seg006:6C05                 xchg    ax, word_2AAAF
seg006:6C09                 mov     word_2AAAD, ax
seg006:6C0C                 cmp     dx, cx
seg006:6C0E                 js      short loc_14A62
seg006:6C10                 xchg    dx, cx
seg006:6C12
seg006:6C12 loc_14A62:                              ; CODE XREF: sub_146A6+3B8␘j
seg006:6C12                 mov     cx, bx
seg006:6C14
seg006:6C14 loc_14A64:                              ; CODE XREF: sub_146A6+3AD␘j
seg006:6C14                 mov     word_2AAB1, dx
seg006:6C18                 mov     word_2AAB5, cx
seg006:6C1C                 mov     word_2AAB3, dx
seg006:6C20                 mov     word_2AAB7, cx
seg006:6C24                 mov     ax, word_28450
seg006:6C27                 sub     ax, dx
seg006:6C29                 cwd
seg006:6C2A                 idiv    word_28452
seg006:6C2E                 mov     word_2AA9D, ax
seg006:6C31                 mov     ax, word_28450
seg006:6C34                 sub     ax, bx
seg006:6C36                 cwd
seg006:6C37                 idiv    word_2844A
seg006:6C3B                 mov     dl, 1
seg006:6C3D                 cmp     ax, word_2AA9D
seg006:6C41                 js      short loc_14A99
seg006:6C43                 xchg    ax, word_2AA9D
seg006:6C47                 inc     dl
seg006:6C49
seg006:6C49 loc_14A99:                              ; CODE XREF: sub_146A6+3EB␘j
seg006:6C49                 mov     word_2AA9F, ax
seg006:6C4C                 mov     byte_2AA99, dl
seg006:6C50                 mov     byte_2AA9A, dl
seg006:6C54                 mov     ax, word_2AAB1
seg006:6C57                 sub     ax, cx
seg006:6C59                 cwd
seg006:6C5A                 mov     cx, word_2AAAD
seg006:6C5E                 idiv    cx
seg006:6C60                 mov     word_2844C, ax
seg006:6C63                 mov     word_2844E, ax
seg006:6C66                 mov     ax, word_2AAB5
seg006:6C69                 sub     ax, bx
seg006:6C6B                 cwd
seg006:6C6C                 mov     cx, word_2AAAF
seg006:6C70                 or      cx, cx
seg006:6C72                 jz      short loc_14AC6
seg006:6C74                 idiv    cx
seg006:6C76
seg006:6C76 loc_14AC6:                              ; CODE XREF: sub_146A6+41C␘j
seg006:6C76                 mov     word_2AAA7, ax
seg006:6C79                 mov     word_2AAA9, ax
seg006:6C7C                 mov     si, word_28450
seg006:6C80                 mov     bp, si
seg006:6C82                 call    sub_11EA0
seg006:6C85                 retn
seg006:6C86 ; ---------------------------------------------------------------------------
seg006:6C86
seg006:6C86 loc_14AD6:                              ; CODE XREF: sub_146A6:loc_14942␘j
seg006:6C86                 mov     ax, word_2AAAD
seg006:6C89                 or      ax, ax
seg006:6C8B                 jnz     short loc_14AEC
seg006:6C8D                 xchg    ax, word_2AAAF
seg006:6C91                 mov     word_2AAAD, ax
seg006:6C94                 cmp     dx, cx
seg006:6C96                 jns     short loc_14AEA
seg006:6C98                 xchg    dx, cx
seg006:6C9A
seg006:6C9A loc_14AEA:                              ; CODE XREF: sub_146A6+440␘j
seg006:6C9A                 mov     cx, bx
seg006:6C9C
seg006:6C9C loc_14AEC:                              ; CODE XREF: sub_146A6+435␘j
seg006:6C9C                 mov     word_2AAB3, dx
seg006:6CA0                 mov     word_2AAB7, cx
seg006:6CA4                 mov     word_2AAB1, dx
seg006:6CA8                 mov     word_2AAB5, cx
seg006:6CAC                 mov     ax, word_28450
seg006:6CAF                 sub     ax, dx
seg006:6CB1                 cwd
seg006:6CB2                 idiv    word_28452
seg006:6CB6                 mov     word_2AA9F, ax
seg006:6CB9                 mov     ax, word_28450
seg006:6CBC                 sub     ax, bx
seg006:6CBE                 cwd
seg006:6CBF                 idiv    word_2844A
seg006:6CC3                 mov     dl, 2
seg006:6CC5                 cmp     ax, word_2AA9F
seg006:6CC9                 jns     short loc_14B21
seg006:6CCB                 xchg    ax, word_2AA9F
seg006:6CCF                 dec     dl
seg006:6CD1
seg006:6CD1 loc_14B21:                              ; CODE XREF: sub_146A6+473␘j
seg006:6CD1                 mov     word_2AA9D, ax
seg006:6CD4                 mov     byte_2AA99, dl
seg006:6CD8                 mov     byte_2AA9A, dl
seg006:6CDC                 mov     ax, word_2AAB3
seg006:6CDF                 sub     ax, cx
seg006:6CE1                 cwd
seg006:6CE2                 mov     cx, word_2AAAD
seg006:6CE6                 idiv    cx
seg006:6CE8                 mov     word_2844C, ax
seg006:6CEB                 mov     word_2844E, ax
seg006:6CEE                 mov     ax, word_2AAB7
seg006:6CF1                 sub     ax, bx
seg006:6CF3                 cwd
seg006:6CF4                 mov     cx, word_2AAAF
seg006:6CF8                 or      cx, cx
seg006:6CFA                 jz      short loc_14B4E
seg006:6CFC                 idiv    cx
seg006:6CFE
seg006:6CFE loc_14B4E:                              ; CODE XREF: sub_146A6+4A4␘j
seg006:6CFE                 mov     word_2AAA7, ax
seg006:6D01                 mov     word_2AAA9, ax
seg006:6D04                 mov     si, word_28450
seg006:6D08                 mov     bp, si
seg006:6D0A                 call    sub_11EA0
seg006:6D0D                 retn
seg006:6D0D sub_146A6       endp
seg006:6D0D
seg006:6D0E
