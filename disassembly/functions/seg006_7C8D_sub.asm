seg006:7C8D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7C8D
seg006:7C8D
seg006:7C8D sub_15ADD       proc near               ; CODE XREF: sub_159A5+88␘p
seg006:7C8D                                         ; sub_159A5:loc_15A5C␘p ...
seg006:7C8D                 push    es
seg006:7C8E                 mov     es, word_280BE
seg006:7C92                 sub     si, 20h ; ' '
seg006:7C95                 add     bp, 20h ; ' '
seg006:7C98                 mov     bx, word_2AA86
seg006:7C9C                 mov     dx, 0FFE0h
seg006:7C9F
seg006:7C9F loc_15AEF:                              ; CODE XREF: sub_15ADD:loc_15C46␙j
seg006:7C9F                 or      bx, bx
seg006:7CA1                 jns     short loc_15AFB
seg006:7CA3                 jmp     loc_15B9B
seg006:7CA6 ; ---------------------------------------------------------------------------
seg006:7CA6
seg006:7CA6 loc_15AF6:                              ; CODE XREF: sub_15ADD+3E␙j
seg006:7CA6                 jmp     loc_15C49
seg006:7CA9 ; ---------------------------------------------------------------------------
seg006:7CA9
seg006:7CA9 loc_15AF9:                              ; CODE XREF: sub_15ADD+21␙j
seg006:7CA9                 pop     es
seg006:7CAA                 retn
seg006:7CAB ; ---------------------------------------------------------------------------
seg006:7CAB
seg006:7CAB loc_15AFB:                              ; CODE XREF: sub_15ADD+14␘j
seg006:7CAB                                         ; sub_15ADD+109␙j ...
seg006:7CAB                 cmp     bx, 13h
seg006:7CAE                 jnb     short loc_15AF9
seg006:7CB0                 mov     ax, bx
seg006:7CB2                 add     ax, word_2AAAB
seg006:7CB6                 sub     ax, 13h
seg006:7CB9                 js      short loc_15B15
seg006:7CBB                 mov     word_2AAAD, 0
seg006:7CC1                 sub     word_2AAAB, ax
seg006:7CC5
seg006:7CC5 loc_15B15:                              ; CODE XREF: sub_15ADD+2C␘j
seg006:7CC5                 shl     bx, 1
seg006:7CC7                 cmp     byte_2AA84, bh
seg006:7CCB                 jz      short loc_15AF6
seg006:7CCD
seg006:7CCD loc_15B1D:                              ; CODE XREF: sub_15ADD+B1␙j
seg006:7CCD                 mov     ax, si
seg006:7CCF                 and     ax, dx
seg006:7CD1                 mov     cx, bp
seg006:7CD3                 and     cx, dx
seg006:7CD5                 cmp     cx, 0B00h
seg006:7CD9                 jbe     short loc_15B3D
seg006:7CDB                 cmp     cx, 8B00h
seg006:7CDF                 ja      short loc_15B7F
seg006:7CE1                 cmp     ax, 0AE0h
seg006:7CE4                 jbe     short loc_15B3A
seg006:7CE6                 cmp     ax, cx
seg006:7CE8                 jbe     short loc_15B7F
seg006:7CEA
seg006:7CEA loc_15B3A:                              ; CODE XREF: sub_15ADD+57␘j
seg006:7CEA                 mov     cx, 0B00h
seg006:7CED
seg006:7CED loc_15B3D:                              ; CODE XREF: sub_15ADD+4C␘j
seg006:7CED                 sub     cx, ax
seg006:7CEF                 jns     short loc_15B43
seg006:7CF1                 sub     cx, cx
seg006:7CF3
seg006:7CF3 loc_15B43:                              ; CODE XREF: sub_15ADD+62␘j
seg006:7CF3                 cmp     ax, 0AE0h
seg006:7CF6                 jbe     short loc_15B53
seg006:7CF8                 cmp     ax, 8000h
seg006:7CFB                 jbe     short loc_15B7F
seg006:7CFD                 add     cx, ax
seg006:7CFF                 js      short loc_15B7F
seg006:7D01                 sub     ax, ax
seg006:7D03
seg006:7D03 loc_15B53:                              ; CODE XREF: sub_15ADD+69␘j
seg006:7D03                 shl     ax, 1
seg006:7D05                 shl     ax, 1
seg006:7D07                 rol     ax, 1
seg006:7D09                 xchg    al, ah
seg006:7D0B                 shl     cx, 1
seg006:7D0D                 shl     cx, 1
seg006:7D0F                 rol     cx, 1
seg006:7D11                 xchg    cl, ch
seg006:7D13                 mov     di, [bx-4763h]
seg006:7D17                 add     di, ax
seg006:7D19                 shl     al, 1
seg006:7D1B                 xor     al, bl
seg006:7D1D                 and     al, 2
seg006:7D1F                 mov     ax, word_2AA9B
seg006:7D22                 jnz     short loc_15B76
seg006:7D24                 xchg    al, ah
seg006:7D26
seg006:7D26 loc_15B76:                              ; CODE XREF: sub_15ADD+95␘j
seg006:7D26                 shr     cx, 1
seg006:7D28                 jz      short loc_15B7E
seg006:7D2A                 rep stosw
seg006:7D2C                 jnb     short loc_15B7F
seg006:7D2E
seg006:7D2E loc_15B7E:                              ; CODE XREF: sub_15ADD+9B␘j
seg006:7D2E                 stosb
seg006:7D2F
seg006:7D2F loc_15B7F:                              ; CODE XREF: sub_15ADD+52␘j
seg006:7D2F                                         ; sub_15ADD+5B␘j ...
seg006:7D2F                 add     bx, 2
seg006:7D32                 sub     si, word_2AA9D
seg006:7D36                 sub     bp, word_2AA9F
seg006:7D3A                 dec     word_2AAAB
seg006:7D3E                 jnz     short loc_15B1D
seg006:7D40
seg006:7D40 loc_15B90:                              ; CODE XREF: sub_15ADD+1F5␙j
seg006:7D40                 shr     bx, 1
seg006:7D42
seg006:7D42 loc_15B92:                              ; CODE XREF: sub_15ADD+ED␙j
seg006:7D42                                         ; sub_15ADD+F3␙j
seg006:7D42                 cmp     word_2AAAD, 0
seg006:7D47                 jnz     short loc_15BF0
seg006:7D49                 pop     es
seg006:7D4A                 retn
seg006:7D4B ; ---------------------------------------------------------------------------
seg006:7D4B
seg006:7D4B loc_15B9B:                              ; CODE XREF: sub_15ADD+16␘j
seg006:7D4B                 mov     cx, bx
seg006:7D4D                 neg     cx
seg006:7D4F                 sub     bx, bx
seg006:7D51                 mov     ax, word_2AA9D
seg006:7D54                 mov     di, word_2AA9F
seg006:7D58                 sub     word_2AAAB, cx
seg006:7D5C                 jz      short loc_15BB0
seg006:7D5E                 jns     short loc_15BD2
seg006:7D60
seg006:7D60 loc_15BB0:                              ; CODE XREF: sub_15ADD+CF␘j
seg006:7D60                 mov     bx, word_2AAAB
seg006:7D64                 add     cx, bx
seg006:7D66                 shr     cx, 1
seg006:7D68                 jz      short loc_15BCC
seg006:7D6A                 jnb     short loc_15BC0
seg006:7D6C                 sub     si, ax
seg006:7D6E                 sub     bp, di
seg006:7D70
seg006:7D70 loc_15BC0:                              ; CODE XREF: sub_15ADD+DD␘j
seg006:7D70                                         ; sub_15ADD+EB␙j
seg006:7D70                 sub     si, ax
seg006:7D72                 sub     bp, di
seg006:7D74                 sub     si, ax
seg006:7D76                 sub     bp, di
seg006:7D78                 loop    loc_15BC0
seg006:7D7A                 jmp     short loc_15B92
seg006:7D7C ; ---------------------------------------------------------------------------
seg006:7D7C
seg006:7D7C loc_15BCC:                              ; CODE XREF: sub_15ADD+DB␘j
seg006:7D7C                 sub     si, ax
seg006:7D7E                 sub     bp, di
seg006:7D80                 jmp     short loc_15B92
seg006:7D82 ; ---------------------------------------------------------------------------
seg006:7D82
seg006:7D82 loc_15BD2:                              ; CODE XREF: sub_15ADD+D1␘j
seg006:7D82                 shr     cx, 1
seg006:7D84                 jz      short loc_15BE9
seg006:7D86                 jnb     short loc_15BDC
seg006:7D88                 sub     si, ax
seg006:7D8A                 sub     bp, di
seg006:7D8C
seg006:7D8C loc_15BDC:                              ; CODE XREF: sub_15ADD+F9␘j
seg006:7D8C                                         ; sub_15ADD+107␙j
seg006:7D8C                 sub     si, ax
seg006:7D8E                 sub     bp, di
seg006:7D90                 sub     si, ax
seg006:7D92                 sub     bp, di
seg006:7D94                 loop    loc_15BDC
seg006:7D96                 jmp     loc_15AFB
seg006:7D99 ; ---------------------------------------------------------------------------
seg006:7D99
seg006:7D99 loc_15BE9:                              ; CODE XREF: sub_15ADD+F7␘j
seg006:7D99                 sub     si, ax
seg006:7D9B                 sub     bp, di
seg006:7D9D                 jmp     loc_15AFB
seg006:7DA0 ; ---------------------------------------------------------------------------
seg006:7DA0
seg006:7DA0 loc_15BF0:                              ; CODE XREF: sub_15ADD+BA␘j
seg006:7DA0                 mov     ax, word_2AAAF
seg006:7DA3                 xchg    ax, word_2AAAD
seg006:7DA7                 xchg    ax, word_2AAAB
seg006:7DAB                 mov     word_2AAAF, 0
seg006:7DB1                 mov     al, byte_2AA9A
seg006:7DB4                 xchg    al, byte_2AA99
seg006:7DB8                 test    al, 1
seg006:7DBA                 jz      short loc_15C27
seg006:7DBC                 mov     si, word_2AAB5
seg006:7DC0                 xchg    si, word_2AAB1
seg006:7DC4                 sub     si, 20h ; ' '
seg006:7DC7                 mov     cx, word_2AAA7
seg006:7DCB                 xchg    cx, word_2844C
seg006:7DCF                 mov     word_2AA9D, cx
seg006:7DD3                 sub     si, word_2AA9D
seg006:7DD7
seg006:7DD7 loc_15C27:                              ; CODE XREF: sub_15ADD+12D␘j
seg006:7DD7                 test    al, 2
seg006:7DD9                 jz      short loc_15C46
seg006:7DDB                 mov     bp, word_2AAB7
seg006:7DDF                 xchg    bp, word_2AAB3
seg006:7DE3                 add     bp, 20h ; ' '
seg006:7DE6                 mov     cx, word_2AAA9
seg006:7DEA                 xchg    cx, word_2844E
seg006:7DEE                 mov     word_2AA9F, cx
seg006:7DF2                 sub     bp, word_2AA9F
seg006:7DF6
seg006:7DF6 loc_15C46:                              ; CODE XREF: sub_15ADD+14C␘j
seg006:7DF6                 jmp     loc_15AEF
seg006:7DF9 ; ---------------------------------------------------------------------------
seg006:7DF9
seg006:7DF9 loc_15C49:                              ; CODE XREF: sub_15ADD:loc_15AF6␘j
seg006:7DF9                 cmp     word_2AA9B, 707h
seg006:7DFF                 jnz     short loc_15C5A
seg006:7E01                 cmp     byte_285B3, 0
seg006:7E06                 jz      short loc_15C5A
seg006:7E08                 pop     es
seg006:7E09                 retn
seg006:7E0A ; ---------------------------------------------------------------------------
seg006:7E0A
seg006:7E0A loc_15C5A:                              ; CODE XREF: sub_15ADD+172␘j
seg006:7E0A                                         ; sub_15ADD+179␘j ...
seg006:7E0A                 mov     ax, si
seg006:7E0C                 and     ax, dx
seg006:7E0E                 mov     cx, bp
seg006:7E10                 and     cx, dx
seg006:7E12                 cmp     cx, 0B00h
seg006:7E16                 jbe     short loc_15C7A
seg006:7E18                 cmp     cx, 8B00h
seg006:7E1C                 ja      short loc_15CC1
seg006:7E1E                 cmp     ax, 0AE0h
seg006:7E21                 jbe     short loc_15C77
seg006:7E23                 cmp     ax, cx
seg006:7E25                 jbe     short loc_15CC1
seg006:7E27
seg006:7E27 loc_15C77:                              ; CODE XREF: sub_15ADD+194␘j
seg006:7E27                 mov     cx, 0B00h
seg006:7E2A
seg006:7E2A loc_15C7A:                              ; CODE XREF: sub_15ADD+189␘j
seg006:7E2A                 sub     cx, ax
seg006:7E2C                 jns     short loc_15C80
seg006:7E2E                 sub     cx, cx
seg006:7E30
seg006:7E30 loc_15C80:                              ; CODE XREF: sub_15ADD+19F␘j
seg006:7E30                 cmp     ax, 0AE0h
seg006:7E33                 jbe     short loc_15C90
seg006:7E35                 cmp     ax, 8000h
seg006:7E38                 jbe     short loc_15CC1
seg006:7E3A                 add     cx, ax
seg006:7E3C                 js      short loc_15CC1
seg006:7E3E                 sub     ax, ax
seg006:7E40
seg006:7E40 loc_15C90:                              ; CODE XREF: sub_15ADD+1A6␘j
seg006:7E40                 shl     ax, 1
seg006:7E42                 shl     ax, 1
seg006:7E44                 rol     ax, 1
seg006:7E46                 xchg    al, ah
seg006:7E48                 shl     cx, 1
seg006:7E4A                 shl     cx, 1
seg006:7E4C                 rol     cx, 1
seg006:7E4E                 xchg    cl, ch
seg006:7E50                 mov     di, [bx-4763h]
seg006:7E54                 add     di, ax
seg006:7E56                 shl     al, 1
seg006:7E58                 xor     al, bl
seg006:7E5A                 and     al, 2
seg006:7E5C                 mov     ax, word_2AA9B
seg006:7E5F                 jnz     short loc_15CB3
seg006:7E61                 xchg    al, ah
seg006:7E63
seg006:7E63 loc_15CB3:                              ; CODE XREF: sub_15ADD+1D2␘j
seg006:7E63                 shr     cx, 1
seg006:7E65                 jz      short loc_15CDD
seg006:7E67                 jb      short loc_15CD5
seg006:7E69
seg006:7E69 loc_15CB9:                              ; CODE XREF: sub_15ADD+1E2␙j
seg006:7E69                 or      es:[di], ax
seg006:7E6C                 add     di, 2
seg006:7E6F                 loop    loc_15CB9
seg006:7E71
seg006:7E71 loc_15CC1:                              ; CODE XREF: sub_15ADD+18F␘j
seg006:7E71                                         ; sub_15ADD+198␘j ...
seg006:7E71                 add     bx, 2
seg006:7E74                 sub     si, word_2AA9D
seg006:7E78                 sub     bp, word_2AA9F
seg006:7E7C                 dec     word_2AAAB
seg006:7E80                 jnz     short loc_15C5A
seg006:7E82                 jmp     loc_15B90
seg006:7E85 ; ---------------------------------------------------------------------------
seg006:7E85
seg006:7E85 loc_15CD5:                              ; CODE XREF: sub_15ADD+1DA␘j
seg006:7E85                                         ; sub_15ADD+1FE␙j
seg006:7E85                 or      es:[di], ax
seg006:7E88                 add     di, 2
seg006:7E8B                 loop    loc_15CD5
seg006:7E8D
seg006:7E8D loc_15CDD:                              ; CODE XREF: sub_15ADD+1D8␘j
seg006:7E8D                 or      es:[di], al
seg006:7E90                 jmp     short loc_15CC1
seg006:7E90 sub_15ADD       endp
seg006:7E90
seg006:7E92
