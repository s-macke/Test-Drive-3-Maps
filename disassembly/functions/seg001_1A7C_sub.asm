seg001:1A7C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1A7C
seg001:1A7C ; Attributes: bp-based frame
seg001:1A7C
seg001:1A7C sub_37BC        proc far                ; CODE XREF: sub_1688+12B␘P
seg001:1A7C                                         ; sub_1688+3DA␘P ...
seg001:1A7C
seg001:1A7C var_2           = word ptr -2
seg001:1A7C arg_0           = word ptr  6
seg001:1A7C arg_2           = word ptr  8
seg001:1A7C
seg001:1A7C                 push    bp
seg001:1A7D                 mov     bp, sp
seg001:1A7F                 sub     sp, 2
seg001:1A82                 push    si
seg001:1A83                 mov     byte ptr [bp+var_2], 0
seg001:1A87
seg001:1A87 loc_37C7:                               ; CODE XREF: sub_37BC+49␙j
seg001:1A87                 mov     si, [bp+arg_2]
seg001:1A8A                 add     si, [bp+arg_0]
seg001:1A8D                 mov     al, [si]
seg001:1A8F                 sub     ah, ah
seg001:1A91                 push    ax
seg001:1A92                 mov     al, [si+1]
seg001:1A95                 push    ax
seg001:1A96                 call    sub_C674
seg001:1A9B                 add     sp, 4
seg001:1A9E                 jmp     short loc_37EF
seg001:1AA0 ; ---------------------------------------------------------------------------
seg001:1AA0
seg001:1AA0 loc_37E0:                               ; CODE XREF: sub_37BC+41␙j
seg001:1AA0                 lea     ax, [bp+var_2]
seg001:1AA3                 push    ax
seg001:1AA4                 call    sub_C6AC
seg001:1AA9                 add     sp, 2
seg001:1AAC                 inc     [bp+arg_2]
seg001:1AAF
seg001:1AAF loc_37EF:                               ; CODE XREF: sub_37BC+22␘j
seg001:1AAF                 mov     si, [bp+arg_2]
seg001:1AB2                 mov     bx, [bp+arg_0]
seg001:1AB5                 mov     al, [bx+si+2]
seg001:1AB8                 mov     byte ptr [bp+var_2], al
seg001:1ABB                 cmp     al, 80h ; 'Ç'
seg001:1ABD                 jb      short loc_37E0
seg001:1ABF                 add     [bp+arg_2], 3
seg001:1AC3                 cmp     al, 0AAh ; '¬'
seg001:1AC5                 jnz     short loc_37C7
seg001:1AC7                 mov     ax, [bp+arg_2]
seg001:1ACA                 pop     si
seg001:1ACB                 mov     sp, bp
seg001:1ACD                 pop     bp
seg001:1ACE                 retf
seg001:1ACE sub_37BC        endp
seg001:1ACE
seg001:1ACE ; ---------------------------------------------------------------------------
seg001:1ACF                 align 2
seg001:1AD0
