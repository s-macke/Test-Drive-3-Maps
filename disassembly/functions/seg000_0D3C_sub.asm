seg000:0D3C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0D3C
seg000:0D3C ; Attributes: bp-based frame
seg000:0D3C
seg000:0D3C sub_D3C         proc far                ; CODE XREF: sub_3186+86␙P
seg000:0D3C
seg000:0D3C var_6           = word ptr -6
seg000:0D3C var_4           = word ptr -4
seg000:0D3C var_2           = word ptr -2
seg000:0D3C arg_0           = word ptr  6
seg000:0D3C
seg000:0D3C                 push    bp
seg000:0D3D                 mov     bp, sp
seg000:0D3F                 sub     sp, 6
seg000:0D42                 push    [bp+arg_0]
seg000:0D45                 push    cs
seg000:0D46                 call    near ptr sub_141E
seg000:0D49                 add     sp, 2
seg000:0D4C                 mov     [bp+var_6], ax
seg000:0D4F                 or      ax, ax
seg000:0D51                 jnz     short loc_D82
seg000:0D53                 push    [bp+arg_0]
seg000:0D56                 call    sub_C790
seg000:0D5B                 add     sp, 2
seg000:0D5E                 mov     [bp+var_6], ax
seg000:0D61                 cmp     ax, 0FFFFh
seg000:0D64                 jnz     short loc_D74
seg000:0D66                 mov     ax, 2
seg000:0D69                 push    ax
seg000:0D6A                 push    cs
seg000:0D6B                 call    near ptr sub_84C
seg000:0D6E                 add     sp, 2
seg000:0D71                 jmp     short loc_D89
seg000:0D71 ; ---------------------------------------------------------------------------
seg000:0D73                 align 2
seg000:0D74
seg000:0D74 loc_D74:                                ; CODE XREF: sub_D3C+28␘j
seg000:0D74                 push    [bp+var_6]
seg000:0D77                 call    sub_C7A2
seg000:0D7C                 add     sp, 2
seg000:0D7F                 jmp     short loc_D86
seg000:0D7F ; ---------------------------------------------------------------------------
seg000:0D81                 align 2
seg000:0D82
seg000:0D82 loc_D82:                                ; CODE XREF: sub_D3C+15␘j
seg000:0D82                 mov     ax, word_2DB58
seg000:0D85                 dec     ax
seg000:0D86
seg000:0D86 loc_D86:                                ; CODE XREF: sub_D3C+43␘j
seg000:0D86                 mov     [bp+var_2], ax
seg000:0D89
seg000:0D89 loc_D89:                                ; CODE XREF: sub_D3C+35␘j
seg000:0D89                 mov     al, byte_280DC
seg000:0D8C                 sub     ah, ah
seg000:0D8E                 mov     cx, ax
seg000:0D90                 shl     ax, 1
seg000:0D92                 add     ax, cx
seg000:0D94                 add     ax, 0C2Ah
seg000:0D97                 mov     [bp+var_4], ax
seg000:0D9A                 push    [bp+var_6]
seg000:0D9D                 mov     ax, 60h ; '`'
seg000:0DA0                 push    ax
seg000:0DA1                 push    ds
seg000:0DA2                 push    [bp+var_4]
seg000:0DA5                 call    sub_C7C8
seg000:0DAA                 add     sp, 8
seg000:0DAD                 push    [bp+var_6]
seg000:0DB0                 call    sub_C7E1
seg000:0DB5                 mov     sp, bp
seg000:0DB7                 pop     bp
seg000:0DB8                 retf
seg000:0DB8 sub_D3C         endp
seg000:0DB8
seg000:0DB8 ; ---------------------------------------------------------------------------
seg000:0DB9                 align 2
seg000:0DBA
