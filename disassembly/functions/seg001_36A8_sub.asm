seg001:36A8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:36A8
seg001:36A8 ; Attributes: bp-based frame
seg001:36A8
seg001:36A8 sub_53E8        proc far                ; CODE XREF: sub_5340+84␘p
seg001:36A8
seg001:36A8 var_4           = word ptr -4
seg001:36A8 var_2           = word ptr -2
seg001:36A8 arg_0           = word ptr  6
seg001:36A8
seg001:36A8                 push    bp
seg001:36A9                 mov     bp, sp
seg001:36AB                 sub     sp, 4
seg001:36AE                 mov     ax, [bp+arg_0]
seg001:36B1                 mov     [bp+var_2], ax
seg001:36B4                 mov     al, byte_1FBE7
seg001:36B7                 sub     ah, ah
seg001:36B9                 dec     ax
seg001:36BA                 cmp     [bp+arg_0], ax
seg001:36BD                 jnz     short loc_5406
seg001:36BF                 mov     [bp+arg_0], 0
seg001:36C4                 jmp     short loc_5409
seg001:36C6 ; ---------------------------------------------------------------------------
seg001:36C6
seg001:36C6 loc_5406:                               ; CODE XREF: sub_53E8+15␘j
seg001:36C6                 inc     [bp+arg_0]
seg001:36C9
seg001:36C9 loc_5409:                               ; CODE XREF: sub_53E8+1C␘j
seg001:36C9                                         ; sub_53E8+57␙j
seg001:36C9                 mov     ax, 0AEAh
seg001:36CC                 push    ax
seg001:36CD                 mov     ax, 0ADAh
seg001:36D0                 push    ax
seg001:36D1                 push    [bp+arg_0]
seg001:36D4                 push    cs
seg001:36D5                 call    near ptr sub_48D0
seg001:36D8                 add     sp, 6
seg001:36DB                 mov     [bp+var_4], ax
seg001:36DE                 or      ax, ax
seg001:36E0                 jz      short loc_5441
seg001:36E2                 mov     al, byte_1FBE7
seg001:36E5                 sub     ah, ah
seg001:36E7                 dec     ax
seg001:36E8                 cmp     [bp+arg_0], ax
seg001:36EB                 jnz     short loc_5434
seg001:36ED                 mov     [bp+arg_0], 0
seg001:36F2                 jmp     short loc_5437
seg001:36F4 ; ---------------------------------------------------------------------------
seg001:36F4
seg001:36F4 loc_5434:                               ; CODE XREF: sub_53E8+43␘j
seg001:36F4                 inc     [bp+arg_0]
seg001:36F7
seg001:36F7 loc_5437:                               ; CODE XREF: sub_53E8+4A␘j
seg001:36F7                 mov     ax, [bp+var_2]
seg001:36FA                 mov     [bp+arg_0], ax
seg001:36FD                 or      ax, ax
seg001:36FF                 jz      short loc_5409
seg001:3701
seg001:3701 loc_5441:                               ; CODE XREF: sub_53E8+38␘j
seg001:3701                 mov     ax, [bp+arg_0]
seg001:3704                 mov     sp, bp
seg001:3706                 pop     bp
seg001:3707                 retf
seg001:3707 sub_53E8        endp
seg001:3707
seg001:3708
