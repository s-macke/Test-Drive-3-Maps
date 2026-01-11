seg001:2B90 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:2B90
seg001:2B90 ; Attributes: bp-based frame
seg001:2B90
seg001:2B90 sub_48D0        proc far                ; CODE XREF: sub_45D0+10F␘p
seg001:2B90                                         ; sub_4C18+18E␙p ...
seg001:2B90
seg001:2B90 var_6           = word ptr -6
seg001:2B90 var_4           = word ptr -4
seg001:2B90 var_2           = word ptr -2
seg001:2B90 arg_0           = word ptr  6
seg001:2B90 arg_2           = word ptr  8
seg001:2B90 arg_4           = word ptr  0Ah
seg001:2B90
seg001:2B90                 push    bp
seg001:2B91                 mov     bp, sp
seg001:2B93                 sub     sp, 6
seg001:2B96                 push    si
seg001:2B97                 mov     bx, [bp+arg_0]
seg001:2B9A                 mov     cl, 3
seg001:2B9C                 shl     bx, cl
seg001:2B9E                 cmp     byte ptr [bx+0A34h], 53h ; 'S'
seg001:2BA3                 jz      short loc_48EE
seg001:2BA5
seg001:2BA5 loc_48E5:                               ; CODE XREF: sub_48D0+5F␙j
seg001:2BA5                                         ; sub_48D0+89␙j
seg001:2BA5                 mov     ax, 1
seg001:2BA8                 pop     si
seg001:2BA9                 mov     sp, bp
seg001:2BAB                 pop     bp
seg001:2BAC                 retf
seg001:2BAC ; ---------------------------------------------------------------------------
seg001:2BAD                 align 2
seg001:2BAE
seg001:2BAE loc_48EE:                               ; CODE XREF: sub_48D0+13␘j
seg001:2BAE                 mov     ax, [bp+arg_0]
seg001:2BB1                 mov     cl, 3
seg001:2BB3                 shl     ax, cl
seg001:2BB5                 add     ax, 0A34h
seg001:2BB8                 push    ax
seg001:2BB9                 mov     ax, [bp+arg_2]
seg001:2BBC                 add     ax, 2
seg001:2BBF                 push    ax
seg001:2BC0                 call    sub_195EA
seg001:2BC5                 add     sp, 4
seg001:2BC8                 mov     ax, 1040h
seg001:2BCB                 push    ax
seg001:2BCC                 mov     ax, [bp+arg_2]
seg001:2BCF                 add     ax, 9
seg001:2BD2                 push    ax
seg001:2BD3                 call    sub_195EA
seg001:2BD8                 add     sp, 4
seg001:2BDB                 mov     ax, 1045h
seg001:2BDE                 push    ax
seg001:2BDF                 push    [bp+arg_2]
seg001:2BE2                 call    sub_1916A
seg001:2BE7                 add     sp, 4
seg001:2BEA                 mov     word_2D896, ax
seg001:2BED                 or      ax, ax
seg001:2BEF                 jz      short loc_48E5
seg001:2BF1                 push    ax
seg001:2BF2                 mov     ax, 13h
seg001:2BF5                 push    ax
seg001:2BF6                 mov     ax, 1
seg001:2BF9                 push    ax
seg001:2BFA                 push    [bp+arg_4]
seg001:2BFD                 call    sub_19196
seg001:2C02                 add     sp, 8
seg001:2C05                 mov     [bp+var_2], ax
seg001:2C08                 cmp     ax, 13h
seg001:2C0B                 jz      short loc_495C
seg001:2C0D
seg001:2C0D loc_494D:                               ; CODE XREF: sub_48D0+A7␙j
seg001:2C0D                                         ; sub_48D0+C7␙j ...
seg001:2C0D                 push    word_2D896
seg001:2C11                 call    sub_190A2
seg001:2C16                 add     sp, 2
seg001:2C19                 jmp     short loc_48E5
seg001:2C19 ; ---------------------------------------------------------------------------
seg001:2C1B                 align 2
seg001:2C1C
seg001:2C1C loc_495C:                               ; CODE XREF: sub_48D0+7B␘j
seg001:2C1C                 push    word_2D896
seg001:2C20                 mov     ax, 1
seg001:2C23                 push    ax
seg001:2C24                 push    ax
seg001:2C25                 mov     ax, 0B0Bh
seg001:2C28                 push    ax
seg001:2C29                 call    sub_19196
seg001:2C2E                 add     sp, 8
seg001:2C31                 mov     [bp+var_2], ax
seg001:2C34                 cmp     ax, 1
seg001:2C37                 jnz     short loc_494D
seg001:2C39                 push    word_2D896
seg001:2C3D                 mov     ax, 1Dh
seg001:2C40                 push    ax
seg001:2C41                 mov     ax, 2
seg001:2C44                 push    ax
seg001:2C45                 mov     ax, 0B16h
seg001:2C48                 push    ax
seg001:2C49                 call    sub_19196
seg001:2C4E                 add     sp, 8
seg001:2C51                 mov     [bp+var_2], ax
seg001:2C54                 cmp     ax, 1Dh
seg001:2C57                 jnz     short loc_494D
seg001:2C59                 push    word_2D896
seg001:2C5D                 mov     ax, 0Ah
seg001:2C60                 push    ax
seg001:2C61                 mov     ax, 1
seg001:2C64                 push    ax
seg001:2C65                 mov     ax, 0B0Ch
seg001:2C68                 push    ax
seg001:2C69                 call    sub_19196
seg001:2C6E                 add     sp, 8
seg001:2C71                 mov     [bp+var_2], ax
seg001:2C74                 cmp     ax, 0Ah
seg001:2C77                 jnz     short loc_494D
seg001:2C79                 push    word_2D896
seg001:2C7D                 mov     ax, 1B0h
seg001:2C80                 push    ax
seg001:2C81                 mov     ax, 1
seg001:2C84                 push    ax
seg001:2C85                 mov     ax, 0E7D0h
seg001:2C88                 push    ax
seg001:2C89                 call    sub_19196
seg001:2C8E                 add     sp, 8
seg001:2C91                 mov     [bp+var_2], ax
seg001:2C94                 cmp     ax, 1B0h
seg001:2C97                 jz      short loc_49DC
seg001:2C99                 jmp     loc_494D
seg001:2C9C ; ---------------------------------------------------------------------------
seg001:2C9C
seg001:2C9C loc_49DC:                               ; CODE XREF: sub_48D0+107␘j
seg001:2C9C                 push    word_2D896
seg001:2CA0                 mov     ax, 2C8h
seg001:2CA3                 push    ax
seg001:2CA4                 mov     ax, 1
seg001:2CA7                 push    ax
seg001:2CA8                 mov     ax, 8D10h
seg001:2CAB                 push    ax
seg001:2CAC                 call    sub_19196
seg001:2CB1                 add     sp, 8
seg001:2CB4                 mov     [bp+var_2], ax
seg001:2CB7                 cmp     ax, 2C8h
seg001:2CBA                 jz      short loc_49FF
seg001:2CBC                 jmp     loc_494D
seg001:2CBF ; ---------------------------------------------------------------------------
seg001:2CBF
seg001:2CBF loc_49FF:                               ; CODE XREF: sub_48D0+12A␘j
seg001:2CBF                 push    word_2D896
seg001:2CC3                 mov     ax, 196h
seg001:2CC6                 push    ax
seg001:2CC7                 mov     ax, 1
seg001:2CCA                 push    ax
seg001:2CCB                 mov     ax, 81Eh
seg001:2CCE                 push    ax
seg001:2CCF                 call    sub_19196
seg001:2CD4                 add     sp, 8
seg001:2CD7                 mov     [bp+var_2], ax
seg001:2CDA                 cmp     ax, 196h
seg001:2CDD                 jz      short loc_4A22
seg001:2CDF                 jmp     loc_494D
seg001:2CE2 ; ---------------------------------------------------------------------------
seg001:2CE2
seg001:2CE2 loc_4A22:                               ; CODE XREF: sub_48D0+14D␘j
seg001:2CE2                 push    word_2D896
seg001:2CE6                 call    sub_190A2
seg001:2CEB                 add     sp, 2
seg001:2CEE                 mov     ax, 1048h
seg001:2CF1                 push    ax
seg001:2CF2                 mov     ax, [bp+arg_2]
seg001:2CF5                 add     ax, 9
seg001:2CF8                 push    ax
seg001:2CF9                 call    sub_195EA
seg001:2CFE                 add     sp, 4
seg001:2D01                 mov     [bp+var_4], 0
seg001:2D06
seg001:2D06 loc_4A46:                               ; CODE XREF: sub_48D0+18E␙j
seg001:2D06                 mov     bx, [bp+var_4]
seg001:2D09                 shl     bx, 1
seg001:2D0B                 shl     bx, 1
seg001:2D0D                 sub     ax, ax
seg001:2D0F                 mov     [bx+1ED1h], ax
seg001:2D13                 mov     [bx+1ECFh], ax
seg001:2D17                 inc     [bp+var_4]
seg001:2D1A                 cmp     [bp+var_4], 7
seg001:2D1E                 jl      short loc_4A46
seg001:2D20                 mov     [bp+var_4], ax
seg001:2D23
seg001:2D23 loc_4A63:                               ; CODE XREF: sub_48D0+1A2␙j
seg001:2D23                 mov     bx, [bp+var_4]
seg001:2D26                 mov     byte ptr [bx+1EC8h], 0
seg001:2D2B                 inc     [bp+var_4]
seg001:2D2E                 cmp     [bp+var_4], 7
seg001:2D32                 jl      short loc_4A63
seg001:2D34                 mov     [bp+var_4], 0
seg001:2D39                 jmp     short loc_4A9B
seg001:2D39 ; ---------------------------------------------------------------------------
seg001:2D3B                 align 2
seg001:2D3C
seg001:2D3C loc_4A7C:                               ; CODE XREF: sub_48D0+1C5␙j
seg001:2D3C                 inc     [bp+var_6]
seg001:2D3F
seg001:2D3F loc_4A7F:                               ; CODE XREF: sub_48D0+1D6␙j
seg001:2D3F                 cmp     [bp+var_6], 0Fh
seg001:2D43                 jge     short loc_4A98
seg001:2D45                 mov     ax, 12h
seg001:2D48                 imul    [bp+var_4]
seg001:2D4B                 mov     si, ax
seg001:2D4D                 mov     bx, [bp+var_6]
seg001:2D50                 mov     byte ptr [bx+si+1EEDh], 20h ; ' '
seg001:2D55                 jmp     short loc_4A7C
seg001:2D55 ; ---------------------------------------------------------------------------
seg001:2D57                 align 2
seg001:2D58
seg001:2D58 loc_4A98:                               ; CODE XREF: sub_48D0+1B3␘j
seg001:2D58                 inc     [bp+var_4]
seg001:2D5B
seg001:2D5B loc_4A9B:                               ; CODE XREF: sub_48D0+1A9␘j
seg001:2D5B                 cmp     [bp+var_4], 7
seg001:2D5F                 jge     short loc_4AA8
seg001:2D61                 mov     [bp+var_6], 0
seg001:2D66                 jmp     short loc_4A7F
seg001:2D68 ; ---------------------------------------------------------------------------
seg001:2D68
seg001:2D68 loc_4AA8:                               ; CODE XREF: sub_48D0+1CF␘j
seg001:2D68                 mov     [bp+var_4], 0
seg001:2D6D
seg001:2D6D loc_4AAD:                               ; CODE XREF: sub_48D0+1ED␙j
seg001:2D6D                 mov     bx, [bp+var_4]
seg001:2D70                 mov     byte ptr [bx+1F69h], 0
seg001:2D75                 inc     [bp+var_4]
seg001:2D78                 cmp     [bp+var_4], 120h
seg001:2D7D                 jl      short loc_4AAD
seg001:2D7F                 mov     ax, 104Ch
seg001:2D82                 push    ax
seg001:2D83                 push    [bp+arg_2]
seg001:2D86                 call    sub_1916A
seg001:2D8B                 add     sp, 4
seg001:2D8E                 mov     word_2D896, ax
seg001:2D91                 or      ax, ax
seg001:2D93                 jnz     short loc_4ADC
seg001:2D95
seg001:2D95 loc_4AD5:                               ; CODE XREF: sub_48D0+29C␙j
seg001:2D95                 sub     ax, ax
seg001:2D97                 pop     si
seg001:2D98                 mov     sp, bp
seg001:2D9A                 pop     bp
seg001:2D9B                 retf
seg001:2D9C ; ---------------------------------------------------------------------------
seg001:2D9C
seg001:2D9C loc_4ADC:                               ; CODE XREF: sub_48D0+203␘j
seg001:2D9C                 push    word_2D896
seg001:2DA0                 mov     ax, 1C2h
seg001:2DA3                 push    ax
seg001:2DA4                 mov     ax, 1
seg001:2DA7                 push    ax
seg001:2DA8                 mov     ax, 240Ch
seg001:2DAB                 push    ax
seg001:2DAC                 call    sub_19196
seg001:2DB1                 add     sp, 8
seg001:2DB4                 mov     [bp+var_4], ax
seg001:2DB7                 cmp     ax, 1C2h
seg001:2DBA                 jnz     short loc_4B60
seg001:2DBC                 push    word_2D896
seg001:2DC0                 mov     ax, 1
seg001:2DC3                 push    ax
seg001:2DC4                 push    ax
seg001:2DC5                 mov     ax, 240Ch
seg001:2DC8                 push    ax
seg001:2DC9                 call    sub_19196
seg001:2DCE                 add     sp, 8
seg001:2DD1                 mov     [bp+var_4], ax
seg001:2DD4                 or      ax, ax
seg001:2DD6                 jnz     short loc_4B60
seg001:2DD8                 mov     [bp+var_6], 0
seg001:2DDD                 mov     [bp+var_4], 0
seg001:2DE2
seg001:2DE2 loc_4B22:                               ; CODE XREF: sub_48D0+266␙j
seg001:2DE2                 mov     bx, [bp+var_4]
seg001:2DE5                 mov     al, [bx+240Ch]
seg001:2DE9                 sub     ah, ah
seg001:2DEB                 xor     [bp+var_6], ax
seg001:2DEE                 inc     [bp+var_4]
seg001:2DF1                 cmp     [bp+var_4], 1C1h
seg001:2DF6                 jl      short loc_4B22
seg001:2DF8                 xor     byte ptr [bp+var_6], 5Bh
seg001:2DFC                 mov     al, byte_216AD
seg001:2DFF                 cmp     [bp+var_6], ax
seg001:2E02                 jnz     short loc_4B60
seg001:2E04                 mov     [bp+var_4], 0
seg001:2E09
seg001:2E09 loc_4B49:                               ; CODE XREF: sub_48D0+28E␙j
seg001:2E09                 mov     bx, [bp+var_4]
seg001:2E0C                 mov     si, bx
seg001:2E0E                 mov     al, [si+240Ch]
seg001:2E12                 mov     [bx+1EC8h], al
seg001:2E16                 inc     [bp+var_4]
seg001:2E19                 cmp     [bp+var_4], 1C1h
seg001:2E1E                 jl      short loc_4B49
seg001:2E20
seg001:2E20 loc_4B60:                               ; CODE XREF: sub_48D0+22A␘j
seg001:2E20                                         ; sub_48D0+246␘j ...
seg001:2E20                 push    word_2D896
seg001:2E24                 call    sub_190A2
seg001:2E29                 add     sp, 2
seg001:2E2C                 jmp     loc_4AD5
seg001:2E2C sub_48D0        endp
seg001:2E2C
seg001:2E2C ; ---------------------------------------------------------------------------
seg001:2E2F                 align 2
seg001:2E30
