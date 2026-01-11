seg000:0E26 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0E26
seg000:0E26 ; Attributes: bp-based frame
seg000:0E26
seg000:0E26 sub_E26         proc far                ; CODE XREF: sub_0+9E␘p
seg000:0E26                                         ; sub_0+CD␘p ...
seg000:0E26
seg000:0E26 var_4           = word ptr -4
seg000:0E26 var_2           = word ptr -2
seg000:0E26 arg_0           = word ptr  6
seg000:0E26 arg_2           = word ptr  8
seg000:0E26 arg_4           = word ptr  0Ah
seg000:0E26
seg000:0E26                 push    bp
seg000:0E27                 mov     bp, sp
seg000:0E29                 sub     sp, 4
seg000:0E2C                 push    [bp+arg_0]
seg000:0E2F                 push    cs
seg000:0E30                 call    near ptr sub_141E
seg000:0E33                 add     sp, 2
seg000:0E36                 mov     [bp+var_4], ax
seg000:0E39                 or      ax, ax
seg000:0E3B                 jnz     short loc_E6C
seg000:0E3D                 push    [bp+arg_0]
seg000:0E40                 call    sub_C790
seg000:0E45                 add     sp, 2
seg000:0E48                 mov     [bp+var_4], ax
seg000:0E4B                 cmp     ax, 0FFFFh
seg000:0E4E                 jnz     short loc_E5E
seg000:0E50                 mov     ax, 2
seg000:0E53                 push    ax
seg000:0E54                 push    cs
seg000:0E55                 call    near ptr sub_84C
seg000:0E58                 add     sp, 2
seg000:0E5B                 jmp     short loc_E73
seg000:0E5B ; ---------------------------------------------------------------------------
seg000:0E5D                 align 2
seg000:0E5E
seg000:0E5E loc_E5E:                                ; CODE XREF: sub_E26+28␘j
seg000:0E5E                 push    [bp+var_4]
seg000:0E61                 call    sub_C7A2
seg000:0E66                 add     sp, 2
seg000:0E69                 jmp     short loc_E70
seg000:0E69 ; ---------------------------------------------------------------------------
seg000:0E6B                 align 2
seg000:0E6C
seg000:0E6C loc_E6C:                                ; CODE XREF: sub_E26+15␘j
seg000:0E6C                 mov     ax, word_2DB58
seg000:0E6F                 dec     ax
seg000:0E70
seg000:0E70 loc_E70:                                ; CODE XREF: sub_E26+43␘j
seg000:0E70                 mov     [bp+var_2], ax
seg000:0E73
seg000:0E73 loc_E73:                                ; CODE XREF: sub_E26+35␘j
seg000:0E73                 mov     ax, [bp+var_2]
seg000:0E76                 mov     word_2DB58, ax
seg000:0E79                 mov     word_2DB5A, 0
seg000:0E7F                 push    [bp+var_4]
seg000:0E82                 push    ax
seg000:0E83                 push    [bp+arg_4]
seg000:0E86                 push    [bp+arg_2]
seg000:0E89                 call    sub_C7C8
seg000:0E8E                 add     sp, 8
seg000:0E91                 push    [bp+var_4]
seg000:0E94                 call    sub_C7E1
seg000:0E99                 mov     sp, bp
seg000:0E9B                 pop     bp
seg000:0E9C                 retf
seg000:0E9C sub_E26         endp
seg000:0E9C
seg000:0E9C ; ---------------------------------------------------------------------------
seg000:0E9D                 align 2
seg000:0E9E
