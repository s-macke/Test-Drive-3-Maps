seg000:0CA8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0CA8
seg000:0CA8 ; Attributes: bp-based frame
seg000:0CA8
seg000:0CA8 sub_CA8         proc far                ; CODE XREF: sub_1DAA+1F␙P
seg000:0CA8                                         ; sub_1DAA+28A␙P ...
seg000:0CA8
seg000:0CA8 var_6           = word ptr -6
seg000:0CA8 var_4           = word ptr -4
seg000:0CA8 var_2           = word ptr -2
seg000:0CA8 arg_0           = word ptr  6
seg000:0CA8
seg000:0CA8                 push    bp
seg000:0CA9                 mov     bp, sp
seg000:0CAB                 sub     sp, 6
seg000:0CAE                 push    [bp+arg_0]
seg000:0CB1                 push    cs
seg000:0CB2                 call    near ptr sub_141E
seg000:0CB5                 add     sp, 2
seg000:0CB8                 mov     [bp+var_6], ax
seg000:0CBB                 or      ax, ax
seg000:0CBD                 jnz     short loc_CEE
seg000:0CBF                 push    [bp+arg_0]
seg000:0CC2                 call    sub_C790
seg000:0CC7                 add     sp, 2
seg000:0CCA                 mov     [bp+var_6], ax
seg000:0CCD                 cmp     ax, 0FFFFh
seg000:0CD0                 jnz     short loc_CE0
seg000:0CD2                 mov     ax, 2
seg000:0CD5                 push    ax
seg000:0CD6                 push    cs
seg000:0CD7                 call    near ptr sub_84C
seg000:0CDA                 add     sp, 2
seg000:0CDD                 jmp     short loc_CF5
seg000:0CDD ; ---------------------------------------------------------------------------
seg000:0CDF                 align 2
seg000:0CE0
seg000:0CE0 loc_CE0:                                ; CODE XREF: sub_CA8+28␘j
seg000:0CE0                 push    [bp+var_6]
seg000:0CE3                 call    sub_C7A2
seg000:0CE8                 add     sp, 2
seg000:0CEB                 jmp     short loc_CF2
seg000:0CEB ; ---------------------------------------------------------------------------
seg000:0CED                 align 2
seg000:0CEE
seg000:0CEE loc_CEE:                                ; CODE XREF: sub_CA8+15␘j
seg000:0CEE                 mov     ax, word_2DB58
seg000:0CF1                 dec     ax
seg000:0CF2
seg000:0CF2 loc_CF2:                                ; CODE XREF: sub_CA8+43␘j
seg000:0CF2                 mov     [bp+var_2], ax
seg000:0CF5
seg000:0CF5 loc_CF5:                                ; CODE XREF: sub_CA8+35␘j
seg000:0CF5                 mov     al, byte_280DC
seg000:0CF8                 sub     ah, ah
seg000:0CFA                 mov     cx, ax
seg000:0CFC                 shl     ax, 1
seg000:0CFE                 add     ax, cx
seg000:0D00                 add     ax, 0B9Ah
seg000:0D03                 mov     [bp+var_4], ax
seg000:0D06                 push    [bp+var_6]
seg000:0D09                 mov     ax, 150h
seg000:0D0C                 push    ax
seg000:0D0D                 push    ds
seg000:0D0E                 push    [bp+var_4]
seg000:0D11                 call    sub_C7C8
seg000:0D16                 add     sp, 8
seg000:0D19                 push    [bp+var_6]
seg000:0D1C                 call    sub_C7E1
seg000:0D21                 add     sp, 2
seg000:0D24                 cmp     word_2D628, 13h
seg000:0D29                 jnz     short loc_D37
seg000:0D2B                 cmp     word_1F166, 5
seg000:0D30                 jz      short loc_D37
seg000:0D32                 call    sub_CB52
seg000:0D37
seg000:0D37 loc_D37:                                ; CODE XREF: sub_CA8+81␘j
seg000:0D37                                         ; sub_CA8+88␘j
seg000:0D37                 mov     sp, bp
seg000:0D39                 pop     bp
seg000:0D3A                 retf
seg000:0D3A sub_CA8         endp
seg000:0D3A
seg000:0D3A ; ---------------------------------------------------------------------------
seg000:0D3B                 align 2
seg000:0D3C
