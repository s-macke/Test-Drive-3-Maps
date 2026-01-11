seg001:1B88 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1B88
seg001:1B88 ; Attributes: bp-based frame
seg001:1B88
seg001:1B88 sub_38C8        proc far                ; CODE XREF: sub_1DAA+261␘p
seg001:1B88                                         ; sub_1DAA+76A␘p ...
seg001:1B88
seg001:1B88 var_4           = word ptr -4
seg001:1B88 var_2           = word ptr -2
seg001:1B88 arg_0           = word ptr  6
seg001:1B88
seg001:1B88                 push    bp
seg001:1B89                 mov     bp, sp
seg001:1B8B                 sub     sp, 4
seg001:1B8E                 mov     [bp+var_2], 1
seg001:1B93                 jmp     short loc_390F
seg001:1B93 ; ---------------------------------------------------------------------------
seg001:1B95                 align 2
seg001:1B96
seg001:1B96 loc_38D6:                               ; CODE XREF: sub_38C8+4D␙j
seg001:1B96                 mov     ax, 2
seg001:1B99                 push    ax
seg001:1B9A                 call    sub_16A5D
seg001:1B9F                 add     sp, 2
seg001:1BA2                 call    sub_E9E
seg001:1BA7                 mov     [bp+var_4], ax
seg001:1BAA                 lea     ax, [bp+var_4]
seg001:1BAD                 push    ax
seg001:1BAE                 call    sub_EC6
seg001:1BB3                 add     sp, 2
seg001:1BB6                 cmp     [bp+var_4], 0
seg001:1BBA                 jz      short loc_3906
seg001:1BBC                 mov     al, byte ptr [bp+var_4]
seg001:1BBF                 sub     ah, ah
seg001:1BC1                 mov     sp, bp
seg001:1BC3                 pop     bp
seg001:1BC4                 retf
seg001:1BC4 ; ---------------------------------------------------------------------------
seg001:1BC5                 align 2
seg001:1BC6
seg001:1BC6 loc_3906:                               ; CODE XREF: sub_38C8+32␘j
seg001:1BC6                 cmp     [bp+arg_0], 0
seg001:1BCA                 jz      short loc_390F
seg001:1BCC                 inc     [bp+var_2]
seg001:1BCF
seg001:1BCF loc_390F:                               ; CODE XREF: sub_38C8+B␘j
seg001:1BCF                                         ; sub_38C8+42␘j
seg001:1BCF                 mov     ax, [bp+arg_0]
seg001:1BD2                 cmp     [bp+var_2], ax
seg001:1BD5                 jnz     short loc_38D6
seg001:1BD7                 mov     sp, bp
seg001:1BD9                 pop     bp
seg001:1BDA                 retf
seg001:1BDA sub_38C8        endp
seg001:1BDA
seg001:1BDA ; ---------------------------------------------------------------------------
seg001:1BDB                 align 2
seg001:1BDC
