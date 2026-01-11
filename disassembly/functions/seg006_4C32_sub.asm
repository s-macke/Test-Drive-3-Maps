seg006:4C32 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4C32
seg006:4C32
seg006:4C32 sub_12A82       proc near               ; CODE XREF: sub_12A39+40␘p
seg006:4C32                 mov     es, word_2D8AA
seg006:4C36                 assume es:nothing
seg006:4C36                 mov     di, [bx-4EBBh]
seg006:4C3A                 shl     di, 1
seg006:4C3C                 mov     ax, di
seg006:4C3E                 shl     di, 1
seg006:4C40                 shl     di, 1
seg006:4C42                 add     di, ax
seg006:4C44                 add     di, word_2D8A8
seg006:4C48
seg006:4C48 loc_12A98:                              ; CODE XREF: sub_12A82+80␙j
seg006:4C48                 mov     ax, es:[di+6]
seg006:4C4C                 and     ah, 0F8h
seg006:4C4F                 cmp     ah, 68h ; 'h'
seg006:4C52                 ja      short locret_12AC1
seg006:4C54                 cmp     ah, 60h ; '`'
seg006:4C57                 ja      short loc_12B08
seg006:4C59                 jz      short loc_12B05
seg006:4C5B                 cmp     ah, 58h ; 'X'
seg006:4C5E                 jz      short loc_12B19
seg006:4C60                 cmp     ah, 48h ; 'H'
seg006:4C63                 ja      short loc_12AE0
seg006:4C65                 jz      short loc_12AD0
seg006:4C67                 cmp     ah, 38h ; '8'
seg006:4C6A                 jz      short loc_12AC2
seg006:4C6C                 ja      short loc_12B0B
seg006:4C6E                 jmp     loc_12B7A
seg006:4C71 ; ---------------------------------------------------------------------------
seg006:4C71
seg006:4C71 locret_12AC1:                           ; CODE XREF: sub_12A82+20␘j
seg006:4C71                 retn
seg006:4C72 ; ---------------------------------------------------------------------------
seg006:4C72
seg006:4C72 loc_12AC2:                              ; CODE XREF: sub_12A82+38␘j
seg006:4C72                 mov     ax, 0F0Fh
seg006:4C75                 test    byte ptr word_1F1B2, 4
seg006:4C7A                 jnz     short loc_12AFB
seg006:4C7C                 sub     ax, ax
seg006:4C7E                 jmp     short loc_12AFB
seg006:4C80 ; ---------------------------------------------------------------------------
seg006:4C80
seg006:4C80 loc_12AD0:                              ; CODE XREF: sub_12A82+33␘j
seg006:4C80                 mov     ax, 404h
seg006:4C83                 test    word ptr [bx-5C7Bh], 8000h
seg006:4C89                 jz      short loc_12AFB
seg006:4C8B                 mov     ax, 0C0Ch
seg006:4C8E                 jmp     short loc_12AFB
seg006:4C90 ; ---------------------------------------------------------------------------
seg006:4C90
seg006:4C90 loc_12AE0:                              ; CODE XREF: sub_12A82+31␘j
seg006:4C90                 test    word ptr [bx-5C7Bh], 4000h
seg006:4C96                 jz      short loc_12AFF
seg006:4C98                 mov     ax, word_2AC9D
seg006:4C9B                 add     ax, 3
seg006:4C9E                 cmp     ax, 0Fh
seg006:4CA1                 jbe     short loc_12AF6
seg006:4CA3                 mov     ax, 9
seg006:4CA6
seg006:4CA6 loc_12AF6:                              ; CODE XREF: sub_12A82+6F␘j
seg006:4CA6                 mov     word_2AC9D, ax
seg006:4CA9                 mov     ah, al
seg006:4CAB
seg006:4CAB loc_12AFB:                              ; CODE XREF: sub_12A82+48␘j
seg006:4CAB                                         ; sub_12A82+4C␘j ...
seg006:4CAB                 mov     es:[di+8], ax
seg006:4CAF
seg006:4CAF loc_12AFF:                              ; CODE XREF: sub_12A82+64␘j
seg006:4CAF                 add     di, 0Ah
seg006:4CB2                 loop    loc_12A98
seg006:4CB4
seg006:4CB4 locret_12B04:                           ; CODE XREF: sub_12A82+FB␙j
seg006:4CB4                 retn
seg006:4CB5 ; ---------------------------------------------------------------------------
seg006:4CB5
seg006:4CB5 loc_12B05:                              ; CODE XREF: sub_12A82+27␘j
seg006:4CB5                 jmp     loc_12BBC
seg006:4CB8 ; ---------------------------------------------------------------------------
seg006:4CB8
seg006:4CB8 loc_12B08:                              ; CODE XREF: sub_12A82+25␘j
seg006:4CB8                 jmp     loc_12BD9
seg006:4CBB ; ---------------------------------------------------------------------------
seg006:4CBB
seg006:4CBB loc_12B0B:                              ; CODE XREF: sub_12A82+3A␘j
seg006:4CBB                 mov     ax, 0F0Fh
seg006:4CBE                 test    byte_2ACAB, 7
seg006:4CC3                 jz      short loc_12AFB
seg006:4CC5                 sub     ax, ax
seg006:4CC7                 jmp     short loc_12AFB
seg006:4CC9 ; ---------------------------------------------------------------------------
seg006:4CC9
seg006:4CC9 loc_12B19:                              ; CODE XREF: sub_12A82+2C␘j
seg006:4CC9                 mov     dl, byte_2ACB9
seg006:4CCD                 mov     dh, byte_2ACBA
seg006:4CD1                 mov     ax, 0A0Ah
seg006:4CD4                 or      dh, dh
seg006:4CD6                 jnz     short loc_12B2E
seg006:4CD8                 or      dl, dl
seg006:4CDA                 jz      short loc_12B6B
seg006:4CDC                 jnz     short loc_12B69
seg006:4CDE
seg006:4CDE loc_12B2E:                              ; CODE XREF: sub_12A82+A4␘j
seg006:4CDE                 cmp     dh, 3
seg006:4CE1                 jnz     short loc_12B3A
seg006:4CE3                 cmp     dl, 2
seg006:4CE6                 jz      short loc_12B6B
seg006:4CE8                 jnz     short loc_12B69
seg006:4CEA
seg006:4CEA loc_12B3A:                              ; CODE XREF: sub_12A82+AF␘j
seg006:4CEA                 mov     ax, 0E0Eh
seg006:4CED                 cmp     dh, 1
seg006:4CF0                 jnz     short loc_12B49
seg006:4CF2                 cmp     dl, 1
seg006:4CF5                 jz      short loc_12B6B
seg006:4CF7                 jnz     short loc_12B69
seg006:4CF9
seg006:4CF9 loc_12B49:                              ; CODE XREF: sub_12A82+BE␘j
seg006:4CF9                 cmp     dh, 4
seg006:4CFC                 jnz     short loc_12B55
seg006:4CFE                 cmp     dl, 3
seg006:4D01                 jz      short loc_12B6B
seg006:4D03                 jnz     short loc_12B69
seg006:4D05
seg006:4D05 loc_12B55:                              ; CODE XREF: sub_12A82+CA␘j
seg006:4D05                 mov     ax, 0C0Ch
seg006:4D08                 cmp     dh, 2
seg006:4D0B                 jnz     short loc_12B64
seg006:4D0D                 cmp     dl, 2
seg006:4D10                 jnb     short loc_12B6B
seg006:4D12                 jnz     short loc_12B69
seg006:4D14
seg006:4D14 loc_12B64:                              ; CODE XREF: sub_12A82+D9␘j
seg006:4D14                 cmp     dl, 1
seg006:4D17                 jbe     short loc_12B6B
seg006:4D19
seg006:4D19 loc_12B69:                              ; CODE XREF: sub_12A82+AA␘j
seg006:4D19                                         ; sub_12A82+B6␘j ...
seg006:4D19                 sub     ax, ax
seg006:4D1B
seg006:4D1B loc_12B6B:                              ; CODE XREF: sub_12A82+A8␘j
seg006:4D1B                                         ; sub_12A82+B4␘j ...
seg006:4D1B                 inc     dh
seg006:4D1D                 cmp     dh, 5
seg006:4D20                 jbe     short loc_12B74
seg006:4D22                 sub     dh, dh
seg006:4D24
seg006:4D24 loc_12B74:                              ; CODE XREF: sub_12A82+EE␘j
seg006:4D24                 mov     byte_2ACBA, dh
seg006:4D28                 jmp     short loc_12AFB
seg006:4D2A ; ---------------------------------------------------------------------------
seg006:4D2A
seg006:4D2A loc_12B7A:                              ; CODE XREF: sub_12A82+3C␘j
seg006:4D2A                 cmp     ah, 20h ; ' '
seg006:4D2D                 jb      short locret_12B04
seg006:4D2F                 sub     bp, bp
seg006:4D31                 cmp     ah, 28h ; '('
seg006:4D34                 mov     ax, 0E0Eh
seg006:4D37                 ja      short loc_12B96
seg006:4D39                 mov     ax, 404h
seg006:4D3C                 mov     bp, 0F0Fh
seg006:4D3F                 jb      short loc_12B96
seg006:4D41                 sub     bp, bp
seg006:4D43                 mov     ax, 0F0Fh
seg006:4D46
seg006:4D46 loc_12B96:                              ; CODE XREF: sub_12A82+105␘j
seg006:4D46                                         ; sub_12A82+10D␘j
seg006:4D46                 mov     dx, [bx-577Bh]
seg006:4D4A                 sub     dl, dl
seg006:4D4C                 mov     si, es:[di]
seg006:4D4F                 and     si, 7FFh
seg006:4D53                 shl     si, 1
seg006:4D55                 add     dx, 4000h
seg006:4D59                 sub     dx, word_28484
seg006:4D5D                 sub     dx, [si+498Eh]
seg006:4D61                 add     dh, byte_2AA83
seg006:4D65                 js      short loc_12BB9
seg006:4D67                 mov     ax, bp
seg006:4D69
seg006:4D69 loc_12BB9:                              ; CODE XREF: sub_12A82+133␘j
seg006:4D69                 jmp     loc_12AFB
seg006:4D6C ; ---------------------------------------------------------------------------
seg006:4D6C
seg006:4D6C loc_12BBC:                              ; CODE XREF: sub_12A82:loc_12B05␘j
seg006:4D6C                 mov     ax, 808h
seg006:4D6F                 cmp     byte_2ACC2, 0
seg006:4D74                 jz      short loc_12BD6
seg006:4D76                 mov     ax, word_2AD23
seg006:4D79                 xor     ax, di
seg006:4D7B                 and     ax, 2
seg006:4D7E                 mov     ax, 808h
seg006:4D81                 jz      short loc_12BD6
seg006:4D83                 mov     ax, 0C0Ch
seg006:4D86
seg006:4D86 loc_12BD6:                              ; CODE XREF: sub_12A82+142␘j
seg006:4D86                                         ; sub_12A82+14F␘j
seg006:4D86                 jmp     loc_12AFB
seg006:4D89 ; ---------------------------------------------------------------------------
seg006:4D89
seg006:4D89 loc_12BD9:                              ; CODE XREF: sub_12A82:loc_12B08␘j
seg006:4D89                 mov     si, [bx-5C7Bh]
seg006:4D8D                 and     si, 3Fh
seg006:4D90                 cmp     si, 3
seg006:4D93                 ja      short loc_12C00
seg006:4D95                 mov     ax, ds
seg006:4D97                 mov     es, ax
seg006:4D99                 assume es:dseg
seg006:4D99                 cmp     si, 2
seg006:4D9C                 mov     si, 0D0CCh
seg006:4D9F                 jz      short loc_12C11
seg006:4DA1                 mov     si, 0D9B4h
seg006:4DA4                 ja      short loc_12C11
seg006:4DA6                 mov     si, word_2C194
seg006:4DAA                 mov     es, word_2C196
seg006:4DAE                 assume es:nothing
seg006:4DAE                 jmp     short loc_12C11
seg006:4DB0 ; ---------------------------------------------------------------------------
seg006:4DB0
seg006:4DB0 loc_12C00:                              ; CODE XREF: sub_12A82+161␘j
seg006:4DB0                 shl     si, 1
seg006:4DB2                 mov     es, word_2D83E
seg006:4DB6                 add     si, word_2D83C
seg006:4DBA                 mov     si, es:[si]
seg006:4DBD                 add     si, word_2D83C
seg006:4DC1
seg006:4DC1 loc_12C11:                              ; CODE XREF: sub_12A82+16D␘j
seg006:4DC1                                         ; sub_12A82+172␘j ...
seg006:4DC1                 mov     di, si
seg006:4DC3                 add     di, 8
seg006:4DC6                 mov     cx, es:[si]
seg006:4DC9                 xchg    cl, ch
seg006:4DCB                 add     si, 2
seg006:4DCE                 mov     ax, es:[si]
seg006:4DD1                 add     al, ah
seg006:4DD3                 add     al, ch
seg006:4DD5                 sub     ah, ah
seg006:4DD7                 shl     ax, 1
seg006:4DD9                 shl     ax, 1
seg006:4DDB                 shl     ax, 1
seg006:4DDD                 add     si, 6
seg006:4DE0                 add     si, ax
seg006:4DE2                 sub     ch, ch
seg006:4DE4                 shl     cx, 1
seg006:4DE6                 mov     bp, cx
seg006:4DE8                 add     si, cx
seg006:4DEA                 add     si, cx
seg006:4DEC                 add     si, cx
seg006:4DEE                 mov     al, byte_2ACBB
seg006:4DF1                 and     ax, 7
seg006:4DF4                 shl     ax, 1
seg006:4DF6                 shl     ax, 1
seg006:4DF8                 cmp     byte ptr word_2AC5F, 0
seg006:4DFD                 jnz     short loc_12C58
seg006:4DFF                 cmp     byte ptr word_2AC61, 0
seg006:4E04                 jnz     short loc_12C58
seg006:4E06                 sub     ax, ax
seg006:4E08
seg006:4E08 loc_12C58:                              ; CODE XREF: sub_12A82+1CB␘j
seg006:4E08                                         ; sub_12A82+1D2␘j
seg006:4E08                 add     si, ax
seg006:4E0A                 add     si, ax
seg006:4E0C                 add     si, ax
seg006:4E0E                 mov     ax, es:[si]
seg006:4E11                 add     si, 2
seg006:4E14                 stosw
seg006:4E15                 mov     ax, es:[si]
seg006:4E18                 add     si, 2
seg006:4E1B                 stosw
seg006:4E1C                 add     di, bp
seg006:4E1E                 sub     di, 4
seg006:4E21                 mov     ax, es:[si]
seg006:4E24                 add     si, 2
seg006:4E27                 stosw
seg006:4E28                 mov     ax, es:[si]
seg006:4E2B                 add     si, 2
seg006:4E2E                 stosw
seg006:4E2F                 add     di, bp
seg006:4E31                 sub     di, 4
seg006:4E34                 mov     ax, es:[si]
seg006:4E37                 add     si, 2
seg006:4E3A                 stosw
seg006:4E3B                 mov     ax, es:[si]
seg006:4E3E                 add     si, 2
seg006:4E41                 stosw
seg006:4E42                 retn
seg006:4E42 sub_12A82       endp
seg006:4E42
seg006:4E43
