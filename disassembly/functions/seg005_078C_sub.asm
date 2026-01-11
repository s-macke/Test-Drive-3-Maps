seg005:078C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:078C
seg005:078C ; Attributes: bp-based frame
seg005:078C
seg005:078C sub_C6AC        proc far                ; CODE XREF: sub_2C88+19E␘P
seg005:078C                                         ; sub_37BC+28␘P ...
seg005:078C
seg005:078C arg_0           = word ptr  6
seg005:078C
seg005:078C                 push    bp
seg005:078D                 mov     bp, sp
seg005:078F                 push    es
seg005:0790                 push    si
seg005:0791                 push    di
seg005:0792                 mov     bx, [bp+arg_0]
seg005:0795                 mov     al, [bx]
seg005:0797                 cmp     al, 20h ; ' '
seg005:0799                 jnb     short loc_C6BE
seg005:079B                 jmp     loc_C759
seg005:079E ; ---------------------------------------------------------------------------
seg005:079E
seg005:079E loc_C6BE:                               ; CODE XREF: sub_C6AC+D␘j
seg005:079E                 sub     ah, ah
seg005:07A0                 shl     ax, 1
seg005:07A2                 shl     ax, 1
seg005:07A4                 shl     ax, 1
seg005:07A6                 add     ax, 36Ah
seg005:07A9                 sub     ax, 100h
seg005:07AC                 push    si
seg005:07AD                 mov     si, ax
seg005:07AF                 mov     bx, 8FF4h
seg005:07B2                 mov     dx, bx
seg005:07B4                 mov     cx, 8
seg005:07B7
seg005:07B7 loc_C6D7:                               ; CODE XREF: sub_C6AC+32␙j
seg005:07B7                 mov     al, cs:[si]
seg005:07BA                 inc     si
seg005:07BB                 mov     [bx], al
seg005:07BD                 inc     bx
seg005:07BE                 loop    loc_C6D7
seg005:07C0                 pop     si
seg005:07C1                 mov     al, byte_280D3
seg005:07C4                 sub     ah, ah
seg005:07C6                 mov     bx, word_280D1
seg005:07CA                 add     ax, 7
seg005:07CD                 push    dx
seg005:07CE                 push    ax
seg005:07CF                 push    bx
seg005:07D0                 call    sub_16A1A
seg005:07D5                 add     sp, 4
seg005:07D8                 mov     ax, word_280CF
seg005:07DB                 mov     al, ah
seg005:07DD                 sub     ah, ah
seg005:07DF                 push    ax
seg005:07E0                 call    far ptr sub_16A93
seg005:07E5                 add     sp, 2
seg005:07E8                 pop     dx
seg005:07E9                 push    dx
seg005:07EA                 mov     ax, 8
seg005:07ED                 push    ax
seg005:07EE                 mov     al, 1
seg005:07F0                 push    ax
seg005:07F1                 push    dx
seg005:07F2                 call    far ptr sub_1805D
seg005:07F7                 add     sp, 6
seg005:07FA                 mov     ax, word_280CD
seg005:07FD                 mov     al, ah
seg005:07FF                 sub     ah, ah
seg005:0801                 push    ax
seg005:0802                 call    far ptr sub_16A93
seg005:0807                 add     sp, 2
seg005:080A                 pop     dx
seg005:080B                 cmp     byte_280CC, 0
seg005:0810                 jnz     short loc_C759
seg005:0812                 push    si
seg005:0813                 mov     si, dx
seg005:0815                 mov     dx, 8FF4h
seg005:0818                 mov     bx, dx
seg005:081A                 mov     cx, 4
seg005:081D
seg005:081D loc_C73D:                               ; CODE XREF: sub_C6AC+9A␙j
seg005:081D                 lodsw
seg005:081E                 xor     ax, 0FFFFh
seg005:0821                 mov     [bx], ax
seg005:0823                 add     bx, 2
seg005:0826                 loop    loc_C73D
seg005:0828                 pop     si
seg005:0829                 mov     ax, 8
seg005:082C                 push    ax
seg005:082D                 mov     al, 1
seg005:082F                 push    ax
seg005:0830                 push    dx
seg005:0831                 call    far ptr sub_1805D
seg005:0836                 add     sp, 6
seg005:0839
seg005:0839 loc_C759:                               ; CODE XREF: sub_C6AC+F␘j
seg005:0839                                         ; sub_C6AC+84␘j
seg005:0839                 mov     bx, [bp+arg_0]
seg005:083C                 mov     bl, [bx]
seg005:083E                 sub     bh, bh
seg005:0840                 add     bx, 2EAh
seg005:0844                 mov     ax, word_280D1
seg005:0847                 mov     cl, cs:[bx]
seg005:084A                 sub     ch, ch
seg005:084C                 add     ax, cx
seg005:084E                 mov     word_280D1, ax
seg005:0851                 pop     di
seg005:0852                 pop     si
seg005:0853                 pop     es
seg005:0854                 pop     bp
seg005:0855                 retf
seg005:0855 sub_C6AC        endp
seg005:0855
seg005:0856
