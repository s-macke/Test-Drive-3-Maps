seg005:1B92 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1B92
seg005:1B92 ; Attributes: bp-based frame
seg005:1B92
seg005:1B92 sub_DAB2        proc far                ; CODE XREF: sub_7696+36␘P
seg005:1B92
seg005:1B92 arg_0           = word ptr  6
seg005:1B92 arg_2           = word ptr  8
seg005:1B92 arg_4           = word ptr  0Ah
seg005:1B92 arg_6           = word ptr  0Ch
seg005:1B92 arg_8           = word ptr  0Eh
seg005:1B92 arg_A           = word ptr  10h
seg005:1B92
seg005:1B92                 push    bp
seg005:1B93                 mov     bp, sp
seg005:1B95                 push    es
seg005:1B96                 push    si
seg005:1B97                 push    di
seg005:1B98                 cmp     byte ptr word_2D628, 9
seg005:1B9D                 jz      short loc_DB05
seg005:1B9F                 call    sub_DA97
seg005:1BA2                 mov     word_28450, 0
seg005:1BA8                 mov     ax, [bp+arg_8]
seg005:1BAB                 shl     ax, 1
seg005:1BAD                 shl     ax, 1
seg005:1BAF                 shl     ax, 1
seg005:1BB1                 mov     di, ax
seg005:1BB3                 shl     ax, 1
seg005:1BB5                 shl     ax, 1
seg005:1BB7                 add     di, ax
seg005:1BB9                 mov     bl, 80h ; 'Ç'
seg005:1BBB                 mov     cx, [bp+arg_6]
seg005:1BBE                 mov     ax, cx
seg005:1BC0                 and     cl, 7
seg005:1BC3                 ror     bl, cl
seg005:1BC5                 mov     byte_28457, bl
seg005:1BC9                 mov     byte_28458, bl
seg005:1BCD                 shr     ax, 1
seg005:1BCF                 shr     ax, 1
seg005:1BD1                 shr     ax, 1
seg005:1BD3                 add     di, ax
seg005:1BD5                 mov     word_280C6, di
seg005:1BD9                 mov     word_2844C, di
seg005:1BDD                 mov     ax, [bp+arg_4]
seg005:1BE0                 mov     word_2844E, ax
seg005:1BE3                 jmp     short loc_DB43
seg005:1BE5 ; ---------------------------------------------------------------------------
seg005:1BE5
seg005:1BE5 loc_DB05:                               ; CODE XREF: sub_DAB2+B␘j
seg005:1BE5                 mov     byte_28456, 0
seg005:1BEA                 mov     byte_28457, 0
seg005:1BEF                 mov     ax, [bp+arg_8]
seg005:1BF2                 mov     bx, ax
seg005:1BF4                 and     bx, 3
seg005:1BF7                 ror     bx, 1
seg005:1BF9                 ror     bx, 1
seg005:1BFB                 ror     bx, 1
seg005:1BFD                 mov     di, bx
seg005:1BFF                 and     ax, 0FCh
seg005:1C02                 shl     ax, 1
seg005:1C04                 shl     ax, 1
seg005:1C06                 shl     ax, 1
seg005:1C08                 add     di, ax
seg005:1C0A                 shl     ax, 1
seg005:1C0C                 shl     ax, 1
seg005:1C0E                 add     di, ax
seg005:1C10                 mov     ax, [bp+arg_6]
seg005:1C13                 shr     ax, 1
seg005:1C15                 add     di, ax
seg005:1C17                 mov     word_280C6, di
seg005:1C1B                 mov     ax, [bp+arg_4]
seg005:1C1E                 shr     ax, 1
seg005:1C20                 mov     byte_28458, al
seg005:1C23
seg005:1C23 loc_DB43:                               ; CODE XREF: sub_DAB2+51␘j
seg005:1C23                 sub     cx, cx
seg005:1C25                 mov     word_2843A, cx
seg005:1C29                 mov     word_2843C, cx
seg005:1C2D                 mov     word_2843E, cx
seg005:1C31                 mov     ax, [bp+arg_A]
seg005:1C34                 or      ax, ax
seg005:1C36                 jnz     short loc_DB6B
seg005:1C38                 mov     word_28446, cx
seg005:1C3C                 mov     cx, 3C0h
seg005:1C3F                 sub     ax, ax
seg005:1C41                 mov     di, 0D0CCh
seg005:1C44
seg005:1C44 loc_DB64:                               ; CODE XREF: sub_DAB2+B7␙j
seg005:1C44                 mov     [di], ax
seg005:1C46                 add     di, 2
seg005:1C49                 loop    loc_DB64
seg005:1C4B
seg005:1C4B loc_DB6B:                               ; CODE XREF: sub_DAB2+A4␘j
seg005:1C4B                                         ; sub_DAB2:loc_DDA5␙j
seg005:1C4B                 mov     ax, word_2843E
seg005:1C4E                 cmp     ax, [bp+arg_2]
seg005:1C51                 jnb     short loc_DB9F
seg005:1C53                 inc     ax
seg005:1C54                 mov     word_2843E, ax
seg005:1C57                 sub     cx, cx
seg005:1C59                 sub     dx, dx
seg005:1C5B                 mov     si, [bp+arg_0]
seg005:1C5E                 lodsw
seg005:1C5F                 mov     [bp+arg_0], si
seg005:1C62                 mov     dl, al
seg005:1C64                 mov     cl, ah
seg005:1C66                 add     dl, byte_280DC
seg005:1C6A
seg005:1C6A loc_DB8A:                               ; CODE XREF: sub_DAB2+2F0␙j
seg005:1C6A                 test    dl, 70h
seg005:1C6D                 jnz     short loc_DBA2
seg005:1C6F                 and     dl, 0Fh
seg005:1C72                 mov     word_28440, dx
seg005:1C76                 push    dx
seg005:1C77                 push    cx
seg005:1C78                 push    bp
seg005:1C79                 call    sub_DDAF
seg005:1C7C                 jmp     loc_DD63
seg005:1C7F ; ---------------------------------------------------------------------------
seg005:1C7F
seg005:1C7F loc_DB9F:                               ; CODE XREF: sub_DAB2+BF␘j
seg005:1C7F                 jmp     loc_DDA8
seg005:1C82 ; ---------------------------------------------------------------------------
seg005:1C82
seg005:1C82 loc_DBA2:                               ; CODE XREF: sub_DAB2+DB␘j
seg005:1C82                 mov     si, 0D0CCh
seg005:1C85                 add     si, word_28446
seg005:1C89                 mov     bx, word_2843A
seg005:1C8D                 add     si, bx
seg005:1C8F                 shl     bx, 1
seg005:1C91                 add     si, bx
seg005:1C93                 mov     bx, dx
seg005:1C95                 shl     bx, 1
seg005:1C97                 add     bx, dx
seg005:1C99                 push    dx
seg005:1C9A                 push    cx
seg005:1C9B                 push    bp
seg005:1C9C                 push    si
seg005:1C9D                 mov     ax, [si]
seg005:1C9F                 mov     cx, [bx+0B6Ah]
seg005:1CA3                 add     al, cl
seg005:1CA5                 jno     short loc_DBC9
seg005:1CA7                 mov     al, 7Fh ; '␡'
seg005:1CA9
seg005:1CA9 loc_DBC9:                               ; CODE XREF: sub_DAB2+113␘j
seg005:1CA9                 add     ah, ch
seg005:1CAB                 jno     short loc_DBCF
seg005:1CAD                 mov     ah, 7Fh ; '␡'
seg005:1CAF
seg005:1CAF loc_DBCF:                               ; CODE XREF: sub_DAB2+119␘j
seg005:1CAF                 mov     [si], ax
seg005:1CB1                 mov     cl, [si+2]
seg005:1CB4                 add     cl, [bx+0B6Ch]
seg005:1CB8                 jno     short loc_DBDC
seg005:1CBA                 mov     cl, 7Fh ; '␡'
seg005:1CBC
seg005:1CBC loc_DBDC:                               ; CODE XREF: sub_DAB2+126␘j
seg005:1CBC                 mov     [si+2], cl
seg005:1CBF                 mov     si, 0B6Ah
seg005:1CC2                 sub     ch, ch
seg005:1CC4                 mov     bp, cx
seg005:1CC6                 mov     cl, ah
seg005:1CC8                 mov     di, cx
seg005:1CCA                 mov     cl, al
seg005:1CCC                 mov     es, cx
seg005:1CCE                 assume es:nothing
seg005:1CCE                 mov     cx, 10h
seg005:1CD1                 mov     word_28438, 1F40h
seg005:1CD7
seg005:1CD7 loc_DBF7:                               ; CODE XREF: sub_DAB2:loc_DC1D␙j
seg005:1CD7                 lodsw
seg005:1CD8                 mov     bx, es
seg005:1CDA                 sub     bl, al
seg005:1CDC                 jns     short loc_DC00
seg005:1CDE                 neg     bl
seg005:1CE0
seg005:1CE0 loc_DC00:                               ; CODE XREF: sub_DAB2+14A␘j
seg005:1CE0                 mov     dx, bx
seg005:1CE2                 mov     bx, di
seg005:1CE4                 sub     bl, ah
seg005:1CE6                 jns     short loc_DC0A
seg005:1CE8                 neg     bl
seg005:1CEA
seg005:1CEA loc_DC0A:                               ; CODE XREF: sub_DAB2+154␘j
seg005:1CEA                 add     dx, bx
seg005:1CEC                 mov     bx, bp
seg005:1CEE                 lodsb
seg005:1CEF                 sub     bl, al
seg005:1CF1                 jns     short loc_DC15
seg005:1CF3                 neg     bl
seg005:1CF5
seg005:1CF5 loc_DC15:                               ; CODE XREF: sub_DAB2+15F␘j
seg005:1CF5                 add     dx, bx
seg005:1CF7                 cmp     dx, word_28438
seg005:1CFB                 jl      short loc_DC21
seg005:1CFD
seg005:1CFD loc_DC1D:                               ; CODE XREF: sub_DAB2+17B␙j
seg005:1CFD                 loop    loc_DBF7
seg005:1CFF                 jmp     short loc_DC2F
seg005:1D01 ; ---------------------------------------------------------------------------
seg005:1D01
seg005:1D01 loc_DC21:                               ; CODE XREF: sub_DAB2+169␘j
seg005:1D01                 mov     word_28438, dx
seg005:1D05                 mov     ax, 10h
seg005:1D08                 sub     ax, cx
seg005:1D0A                 mov     word_28440, ax
seg005:1D0D                 jmp     short loc_DC1D
seg005:1D0F ; ---------------------------------------------------------------------------
seg005:1D0F
seg005:1D0F loc_DC2F:                               ; CODE XREF: sub_DAB2+16D␘j
seg005:1D0F                 call    sub_DDAF
seg005:1D12                 pop     si
seg005:1D13                 mov     bx, word_28440
seg005:1D17                 mov     ax, bx
seg005:1D19                 shl     bx, 1
seg005:1D1B                 add     bx, ax
seg005:1D1D                 lodsw
seg005:1D1E                 mov     cx, [bx+0B6Ah]
seg005:1D22                 sub     al, cl
seg005:1D24                 sub     ah, ch
seg005:1D26                 mov     cl, ah
seg005:1D28                 cbw
seg005:1D29                 inc     ax
seg005:1D2A                 sar     ax, 1
seg005:1D2C                 mov     dx, ax
seg005:1D2E                 sar     ax, 1
seg005:1D30                 sar     ax, 1
seg005:1D32                 sub     dx, ax
seg005:1D34                 mov     es, dx
seg005:1D36                 assume es:nothing
seg005:1D36                 mov     al, cl
seg005:1D38                 cbw
seg005:1D39                 inc     ax
seg005:1D3A                 sar     ax, 1
seg005:1D3C                 mov     cx, ax
seg005:1D3E                 sar     ax, 1
seg005:1D40                 sar     ax, 1
seg005:1D42                 sub     cx, ax
seg005:1D44                 lodsb
seg005:1D45                 sub     al, [bx+0B6Ch]
seg005:1D49                 cbw
seg005:1D4A                 inc     ax
seg005:1D4B                 sar     ax, 1
seg005:1D4D                 mov     dx, ax
seg005:1D4F                 sar     ax, 1
seg005:1D51                 sar     ax, 1
seg005:1D53                 sub     dx, ax
seg005:1D55                 mov     bx, es
seg005:1D57                 mov     bp, 7Fh ; '␡'
seg005:1D5A                 mov     di, 0FFC0h
seg005:1D5D                 mov     al, [si]
seg005:1D5F                 cbw
seg005:1D60                 add     ax, bx
seg005:1D62                 cmp     ax, bp
seg005:1D64                 jg      short loc_DC8E
seg005:1D66                 cmp     ax, di
seg005:1D68                 jge     short loc_DC90
seg005:1D6A                 mov     ax, di
seg005:1D6C                 jmp     short loc_DC90
seg005:1D6E ; ---------------------------------------------------------------------------
seg005:1D6E
seg005:1D6E loc_DC8E:                               ; CODE XREF: sub_DAB2+1D2␘j
seg005:1D6E                 mov     ax, bp
seg005:1D70
seg005:1D70 loc_DC90:                               ; CODE XREF: sub_DAB2+1D6␘j
seg005:1D70                                         ; sub_DAB2+1DA␘j
seg005:1D70                 mov     [si], al
seg005:1D72                 mov     al, [si+1]
seg005:1D75                 cbw
seg005:1D76                 add     ax, cx
seg005:1D78                 cmp     ax, bp
seg005:1D7A                 jg      short loc_DCA4
seg005:1D7C                 cmp     ax, di
seg005:1D7E                 jge     short loc_DCA6
seg005:1D80                 mov     ax, di
seg005:1D82                 jmp     short loc_DCA6
seg005:1D84 ; ---------------------------------------------------------------------------
seg005:1D84
seg005:1D84 loc_DCA4:                               ; CODE XREF: sub_DAB2+1E8␘j
seg005:1D84                 mov     ax, bp
seg005:1D86
seg005:1D86 loc_DCA6:                               ; CODE XREF: sub_DAB2+1EC␘j
seg005:1D86                                         ; sub_DAB2+1F0␘j
seg005:1D86                 mov     [si+1], al
seg005:1D89                 mov     al, [si+2]
seg005:1D8C                 cbw
seg005:1D8D                 add     ax, dx
seg005:1D8F                 cmp     ax, bp
seg005:1D91                 jg      short loc_DCBB
seg005:1D93                 cmp     ax, di
seg005:1D95                 jge     short loc_DCBD
seg005:1D97                 mov     ax, di
seg005:1D99                 jmp     short loc_DCBD
seg005:1D9B ; ---------------------------------------------------------------------------
seg005:1D9B
seg005:1D9B loc_DCBB:                               ; CODE XREF: sub_DAB2+1FF␘j
seg005:1D9B                 mov     ax, bp
seg005:1D9D
seg005:1D9D loc_DCBD:                               ; CODE XREF: sub_DAB2+203␘j
seg005:1D9D                                         ; sub_DAB2+207␘j
seg005:1D9D                 mov     [si+2], al
seg005:1DA0                 sub     si, 3
seg005:1DA3                 cmp     word_28446, 0
seg005:1DA8                 jz      short loc_DCD0
seg005:1DAA                 sub     si, 3C0h
seg005:1DAE                 jmp     short loc_DCD4
seg005:1DB0 ; ---------------------------------------------------------------------------
seg005:1DB0
seg005:1DB0 loc_DCD0:                               ; CODE XREF: sub_DAB2+216␘j
seg005:1DB0                 add     si, 3C0h
seg005:1DB4
seg005:1DB4 loc_DCD4:                               ; CODE XREF: sub_DAB2+21C␘j
seg005:1DB4                 mov     al, [si]
seg005:1DB6                 cbw
seg005:1DB7                 add     ax, bx
seg005:1DB9                 cmp     ax, bp
seg005:1DBB                 jg      short loc_DCE5
seg005:1DBD                 cmp     ax, di
seg005:1DBF                 jge     short loc_DCE7
seg005:1DC1                 mov     ax, di
seg005:1DC3                 jmp     short loc_DCE7
seg005:1DC5 ; ---------------------------------------------------------------------------
seg005:1DC5
seg005:1DC5 loc_DCE5:                               ; CODE XREF: sub_DAB2+229␘j
seg005:1DC5                 mov     ax, bp
seg005:1DC7
seg005:1DC7 loc_DCE7:                               ; CODE XREF: sub_DAB2+22D␘j
seg005:1DC7                                         ; sub_DAB2+231␘j
seg005:1DC7                 mov     [si], al
seg005:1DC9                 mov     al, [si+1]
seg005:1DCC                 cbw
seg005:1DCD                 add     ax, cx
seg005:1DCF                 cmp     ax, bp
seg005:1DD1                 jg      short loc_DCFB
seg005:1DD3                 cmp     ax, di
seg005:1DD5                 jge     short loc_DCFD
seg005:1DD7                 mov     ax, di
seg005:1DD9                 jmp     short loc_DCFD
seg005:1DDB ; ---------------------------------------------------------------------------
seg005:1DDB
seg005:1DDB loc_DCFB:                               ; CODE XREF: sub_DAB2+23F␘j
seg005:1DDB                 mov     ax, bp
seg005:1DDD
seg005:1DDD loc_DCFD:                               ; CODE XREF: sub_DAB2+243␘j
seg005:1DDD                                         ; sub_DAB2+247␘j
seg005:1DDD                 mov     [si+1], al
seg005:1DE0                 mov     al, [si+2]
seg005:1DE3                 cbw
seg005:1DE4                 add     ax, dx
seg005:1DE6                 cmp     ax, bp
seg005:1DE8                 jg      short loc_DD12
seg005:1DEA                 cmp     ax, di
seg005:1DEC                 jge     short loc_DD14
seg005:1DEE                 mov     ax, di
seg005:1DF0                 jmp     short loc_DD14
seg005:1DF2 ; ---------------------------------------------------------------------------
seg005:1DF2
seg005:1DF2 loc_DD12:                               ; CODE XREF: sub_DAB2+256␘j
seg005:1DF2                 mov     ax, bp
seg005:1DF4
seg005:1DF4 loc_DD14:                               ; CODE XREF: sub_DAB2+25A␘j
seg005:1DF4                                         ; sub_DAB2+25E␘j
seg005:1DF4                 mov     [si+2], al
seg005:1DF7                 add     si, 3
seg005:1DFA                 sar     bx, 1
seg005:1DFC                 sar     cx, 1
seg005:1DFE                 sar     dx, 1
seg005:1E00                 mov     al, [si]
seg005:1E02                 cbw
seg005:1E03                 add     ax, bx
seg005:1E05                 cmp     ax, bp
seg005:1E07                 jg      short loc_DD31
seg005:1E09                 cmp     ax, di
seg005:1E0B                 jge     short loc_DD33
seg005:1E0D                 mov     ax, di
seg005:1E0F                 jmp     short loc_DD33
seg005:1E11 ; ---------------------------------------------------------------------------
seg005:1E11
seg005:1E11 loc_DD31:                               ; CODE XREF: sub_DAB2+275␘j
seg005:1E11                 mov     ax, bp
seg005:1E13
seg005:1E13 loc_DD33:                               ; CODE XREF: sub_DAB2+279␘j
seg005:1E13                                         ; sub_DAB2+27D␘j
seg005:1E13                 mov     [si], al
seg005:1E15                 mov     al, [si+1]
seg005:1E18                 cbw
seg005:1E19                 add     ax, cx
seg005:1E1B                 cmp     ax, bp
seg005:1E1D                 jg      short loc_DD47
seg005:1E1F                 cmp     ax, di
seg005:1E21                 jge     short loc_DD49
seg005:1E23                 mov     ax, di
seg005:1E25                 jmp     short loc_DD49
seg005:1E27 ; ---------------------------------------------------------------------------
seg005:1E27
seg005:1E27 loc_DD47:                               ; CODE XREF: sub_DAB2+28B␘j
seg005:1E27                 mov     ax, bp
seg005:1E29
seg005:1E29 loc_DD49:                               ; CODE XREF: sub_DAB2+28F␘j
seg005:1E29                                         ; sub_DAB2+293␘j
seg005:1E29                 mov     [si+1], al
seg005:1E2C                 mov     al, [si+2]
seg005:1E2F                 cbw
seg005:1E30                 add     ax, dx
seg005:1E32                 cmp     ax, bp
seg005:1E34                 jg      short loc_DD5E
seg005:1E36                 cmp     ax, di
seg005:1E38                 jge     short loc_DD60
seg005:1E3A                 mov     ax, di
seg005:1E3C                 jmp     short loc_DD60
seg005:1E3E ; ---------------------------------------------------------------------------
seg005:1E3E
seg005:1E3E loc_DD5E:                               ; CODE XREF: sub_DAB2+2A2␘j
seg005:1E3E                 mov     ax, bp
seg005:1E40
seg005:1E40 loc_DD60:                               ; CODE XREF: sub_DAB2+2A6␘j
seg005:1E40                                         ; sub_DAB2+2AA␘j
seg005:1E40                 mov     [si+2], al
seg005:1E43
seg005:1E43 loc_DD63:                               ; CODE XREF: sub_DAB2+EA␘j
seg005:1E43                 mov     ax, word_2843A
seg005:1E46                 inc     ax
seg005:1E47                 mov     word_2843A, ax
seg005:1E4A                 pop     bp
seg005:1E4B                 cmp     ax, [bp+arg_4]
seg005:1E4E                 jnz     short loc_DD9D
seg005:1E50                 mov     word_2843A, 0
seg005:1E56                 inc     word_2843C
seg005:1E5A                 mov     ax, [bp+arg_4]
seg005:1E5D                 mov     cx, ax
seg005:1E5F                 shl     cx, 1
seg005:1E61                 add     cx, ax
seg005:1E63                 mov     di, 0D0CCh
seg005:1E66                 add     di, word_28446
seg005:1E6A                 mov     ax, ds
seg005:1E6C                 mov     es, ax
seg005:1E6E                 assume es:dseg
seg005:1E6E                 sub     ax, ax
seg005:1E70                 shr     cx, 1
seg005:1E72                 jnb     short loc_DD95
seg005:1E74                 stosb
seg005:1E75
seg005:1E75 loc_DD95:                               ; CODE XREF: sub_DAB2+2E0␘j
seg005:1E75                 rep stosw
seg005:1E77                 xor     word_28446, 3C0h
seg005:1E7D
seg005:1E7D loc_DD9D:                               ; CODE XREF: sub_DAB2+2BC␘j
seg005:1E7D                 pop     cx
seg005:1E7E                 pop     dx
seg005:1E7F                 dec     cx
seg005:1E80                 jz      short loc_DDA5
seg005:1E82                 jmp     loc_DB8A
seg005:1E85 ; ---------------------------------------------------------------------------
seg005:1E85
seg005:1E85 loc_DDA5:                               ; CODE XREF: sub_DAB2+2EE␘j
seg005:1E85                 jmp     loc_DB6B
seg005:1E88 ; ---------------------------------------------------------------------------
seg005:1E88
seg005:1E88 loc_DDA8:                               ; CODE XREF: sub_DAB2:loc_DB9F␘j
seg005:1E88                 pop     di
seg005:1E89                 pop     si
seg005:1E8A                 pop     es
seg005:1E8B                 assume es:nothing
seg005:1E8B                 mov     sp, bp
seg005:1E8D                 pop     bp
seg005:1E8E                 retf
seg005:1E8E sub_DAB2        endp
seg005:1E8E
seg005:1E8F
