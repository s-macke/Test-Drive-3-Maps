seg005:0C4D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0C4D
seg005:0C4D ; Attributes: bp-based frame
seg005:0C4D
seg005:0C4D sub_CB6D        proc far                ; CODE XREF: sub_7696+19␘P
seg005:0C4D
seg005:0C4D arg_0           = word ptr  6
seg005:0C4D arg_2           = word ptr  8
seg005:0C4D arg_4           = word ptr  0Ah
seg005:0C4D arg_6           = word ptr  0Ch
seg005:0C4D arg_8           = word ptr  0Eh
seg005:0C4D
seg005:0C4D                 push    bp
seg005:0C4E                 mov     bp, sp
seg005:0C50                 push    bp
seg005:0C51                 push    si
seg005:0C52                 push    di
seg005:0C53                 push    es
seg005:0C54                 mov     ax, [bp+arg_8]
seg005:0C57                 xchg    al, ah
seg005:0C59                 mov     di, ax
seg005:0C5B                 shr     ax, 1
seg005:0C5D                 shr     ax, 1
seg005:0C5F                 add     di, ax
seg005:0C61                 add     di, [bp+arg_6]
seg005:0C64                 mov     bx, word_1F17A
seg005:0C68                 shl     bx, 1
seg005:0C6A                 mov     ax, [bx-7028h]
seg005:0C6E                 mov     es, ax
seg005:0C70                 mov     si, [bp+arg_0]
seg005:0C73                 mov     bx, [bp+arg_2]
seg005:0C76                 sub     dx, dx
seg005:0C78                 mov     bp, [bp+arg_4]
seg005:0C7B                 sub     ch, ch
seg005:0C7D
seg005:0C7D loc_CB9D:                               ; CODE XREF: sub_CB6D+61␙j
seg005:0C7D                 lodsb
seg005:0C7E                 add     al, byte_280DC
seg005:0C82                 mov     ah, al
seg005:0C84                 mov     cl, [si]
seg005:0C86                 inc     si
seg005:0C87                 add     dx, cx
seg005:0C89
seg005:0C89 loc_CBA9:                               ; CODE XREF: sub_CB6D+55␙j
seg005:0C89                 cmp     dx, bp
seg005:0C8B                 jbe     short loc_CBC4
seg005:0C8D                 sub     dx, bp
seg005:0C8F                 sub     cx, dx
seg005:0C91                 shr     cl, 1
seg005:0C93                 jnb     short loc_CBB6
seg005:0C95                 stosb
seg005:0C96
seg005:0C96 loc_CBB6:                               ; CODE XREF: sub_CB6D+46␘j
seg005:0C96                 jz      short loc_CBBA
seg005:0C98                 rep stosw
seg005:0C9A
seg005:0C9A loc_CBBA:                               ; CODE XREF: sub_CB6D:loc_CBB6␘j
seg005:0C9A                 sub     di, 140h
seg005:0C9E                 sub     di, bp
seg005:0CA0                 mov     cx, dx
seg005:0CA2                 jmp     short loc_CBA9
seg005:0CA4 ; ---------------------------------------------------------------------------
seg005:0CA4
seg005:0CA4 loc_CBC4:                               ; CODE XREF: sub_CB6D+3E␘j
seg005:0CA4                 shr     cl, 1
seg005:0CA6                 jnb     short loc_CBC9
seg005:0CA8                 stosb
seg005:0CA9
seg005:0CA9 loc_CBC9:                               ; CODE XREF: sub_CB6D+59␘j
seg005:0CA9                 jz      short loc_CBCD
seg005:0CAB                 rep stosw
seg005:0CAD
seg005:0CAD loc_CBCD:                               ; CODE XREF: sub_CB6D:loc_CBC9␘j
seg005:0CAD                 dec     bx
seg005:0CAE                 jnz     short loc_CB9D
seg005:0CB0                 pop     es
seg005:0CB1                 pop     di
seg005:0CB2                 pop     si
seg005:0CB3                 pop     bp
seg005:0CB4                 pop     bp
seg005:0CB5                 retf
seg005:0CB5 sub_CB6D        endp
seg005:0CB5
