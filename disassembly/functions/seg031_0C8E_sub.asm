seg031:0C8E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0C8E
seg031:0C8E ; Attributes: bp-based frame
seg031:0C8E
seg031:0C8E sub_19AEE       proc far                ; CODE XREF: sub_19388+89␘P
seg031:0C8E                                         ; sub_19388+D1␘P ...
seg031:0C8E
seg031:0C8E var_8           = word ptr -8
seg031:0C8E var_6           = word ptr -6
seg031:0C8E var_4           = word ptr -4
seg031:0C8E arg_0           = word ptr  6
seg031:0C8E arg_2           = word ptr  8
seg031:0C8E
seg031:0C8E                 push    bp
seg031:0C8F                 mov     bp, sp
seg031:0C91                 sub     sp, 8
seg031:0C94                 push    di
seg031:0C95                 push    si
seg031:0C96                 mov     si, [bp+arg_2]
seg031:0C99                 mov     al, [si+7]
seg031:0C9C                 cbw
seg031:0C9D                 mov     [bp+var_6], ax
seg031:0CA0                 mov     ax, si
seg031:0CA2                 sub     ax, 0C39Ah
seg031:0CA5                 mov     cl, 3
seg031:0CA7                 sar     ax, cl
seg031:0CA9                 mov     cx, ax
seg031:0CAB                 shl     ax, 1
seg031:0CAD                 add     ax, cx
seg031:0CAF                 shl     ax, 1
seg031:0CB1                 add     ax, 0C43Ah
seg031:0CB4                 mov     [bp+var_8], ax
seg031:0CB7                 test    byte ptr [si+6], 83h
seg031:0CBB                 jz      short loc_19B23
seg031:0CBD                 test    byte ptr [si+6], 40h
seg031:0CC1                 jz      short loc_19B2E
seg031:0CC3
seg031:0CC3 loc_19B23:                              ; CODE XREF: sub_19AEE+2D␘j
seg031:0CC3                                         ; sub_19AEE+44␙j ...
seg031:0CC3                 or      byte ptr [si+6], 20h
seg031:0CC7                 mov     ax, 0FFFFh
seg031:0CCA                 jmp     loc_19C45
seg031:0CCA ; ---------------------------------------------------------------------------
seg031:0CCD                 align 2
seg031:0CCE
seg031:0CCE loc_19B2E:                              ; CODE XREF: sub_19AEE+33␘j
seg031:0CCE                 test    byte ptr [si+6], 1
seg031:0CD2                 jnz     short loc_19B23
seg031:0CD4                 or      byte ptr [si+6], 2
seg031:0CD8                 and     byte ptr [si+6], 0EFh
seg031:0CDC                 sub     ax, ax
seg031:0CDE                 mov     [si+2], ax
seg031:0CE1                 mov     di, ax
seg031:0CE3                 mov     [bp+var_4], di
seg031:0CE6                 test    byte ptr [si+6], 0Ch
seg031:0CEA                 jnz     short loc_19BAD
seg031:0CEC                 mov     bx, si
seg031:0CEE                 sub     bx, 0C39Ah
seg031:0CF2                 mov     cl, 3
seg031:0CF4                 sar     bx, cl
seg031:0CF6                 mov     ax, bx
seg031:0CF8                 shl     bx, 1
seg031:0CFA                 add     bx, ax
seg031:0CFC                 shl     bx, 1
seg031:0CFE                 test    byte ptr [bx-3BC6h], 1
seg031:0D03                 jnz     short loc_19BAD
seg031:0D05                 cmp     si, 0C3A2h
seg031:0D09                 jz      short loc_19B71
seg031:0D0B                 cmp     si, 0C3AAh
seg031:0D0F                 jnz     short loc_19BA6
seg031:0D11
seg031:0D11 loc_19B71:                              ; CODE XREF: sub_19AEE+7B␘j
seg031:0D11                 push    [bp+var_6]
seg031:0D14                 call    sub_1B0EE
seg031:0D19                 add     sp, 2
seg031:0D1C                 or      ax, ax
seg031:0D1E                 jnz     short loc_19BAD
seg031:0D20                 inc     word_2B660
seg031:0D24                 cmp     si, 0C3A2h
seg031:0D28                 jnz     short loc_19B90
seg031:0D2A                 mov     ax, 0CEA4h
seg031:0D2D                 jmp     short loc_19B93
seg031:0D2D ; ---------------------------------------------------------------------------
seg031:0D2F                 align 2
seg031:0D30
seg031:0D30 loc_19B90:                              ; CODE XREF: sub_19AEE+9A␘j
seg031:0D30                 mov     ax, 0EA80h
seg031:0D33
seg031:0D33 loc_19B93:                              ; CODE XREF: sub_19AEE+9F␘j
seg031:0D33                 mov     [si+4], ax
seg031:0D36                 mov     [si], ax
seg031:0D38                 mov     bx, [bp+var_8]
seg031:0D3B                 mov     word ptr [bx+2], 200h
seg031:0D40                 mov     byte ptr [bx], 1
seg031:0D43                 jmp     short loc_19BAD
seg031:0D43 ; ---------------------------------------------------------------------------
seg031:0D45                 align 2
seg031:0D46
seg031:0D46 loc_19BA6:                              ; CODE XREF: sub_19AEE+81␘j
seg031:0D46                 push    si
seg031:0D47                 call    sub_1AE44
seg031:0D4A                 add     sp, 2
seg031:0D4D
seg031:0D4D loc_19BAD:                              ; CODE XREF: sub_19AEE+5C␘j
seg031:0D4D                                         ; sub_19AEE+75␘j ...
seg031:0D4D                 test    byte ptr [si+6], 8
seg031:0D51                 jnz     short loc_19BCC
seg031:0D53                 mov     bx, si
seg031:0D55                 sub     bx, 0C39Ah
seg031:0D59                 mov     cl, 3
seg031:0D5B                 sar     bx, cl
seg031:0D5D                 mov     ax, bx
seg031:0D5F                 shl     bx, 1
seg031:0D61                 add     bx, ax
seg031:0D63                 shl     bx, 1
seg031:0D65                 test    byte ptr [bx-3BC6h], 1
seg031:0D6A                 jz      short loc_19C20
seg031:0D6C
seg031:0D6C loc_19BCC:                              ; CODE XREF: sub_19AEE+C3␘j
seg031:0D6C                 mov     di, [si]
seg031:0D6E                 sub     di, [si+4]
seg031:0D71                 mov     ax, [si+4]
seg031:0D74                 inc     ax
seg031:0D75                 mov     [si], ax
seg031:0D77                 mov     bx, [bp+var_8]
seg031:0D7A                 mov     ax, [bx+2]
seg031:0D7D                 dec     ax
seg031:0D7E                 mov     [si+2], ax
seg031:0D81                 or      di, di
seg031:0D83                 jle     short loc_19BFA
seg031:0D85                 push    di
seg031:0D86                 push    word ptr [si+4]
seg031:0D89                 push    [bp+var_6]
seg031:0D8C                 call    sub_1A930
seg031:0D91                 add     sp, 6
seg031:0D94                 mov     [bp+var_4], ax
seg031:0D97                 jmp     short loc_19C15
seg031:0D97 ; ---------------------------------------------------------------------------
seg031:0D99                 align 2
seg031:0D9A
seg031:0D9A loc_19BFA:                              ; CODE XREF: sub_19AEE+F5␘j
seg031:0D9A                 mov     bx, [bp+var_6]
seg031:0D9D                 test    byte ptr [bx-3C9Eh], 20h
seg031:0DA2                 jz      short loc_19C15
seg031:0DA4                 mov     ax, 2
seg031:0DA7                 push    ax
seg031:0DA8                 sub     ax, ax
seg031:0DAA                 push    ax
seg031:0DAB                 push    ax
seg031:0DAC                 push    bx
seg031:0DAD                 call    sub_1AEB2
seg031:0DB2                 add     sp, 8
seg031:0DB5
seg031:0DB5 loc_19C15:                              ; CODE XREF: sub_19AEE+109␘j
seg031:0DB5                                         ; sub_19AEE+114␘j
seg031:0DB5                 mov     bx, [si+4]
seg031:0DB8                 mov     al, byte ptr [bp+arg_0]
seg031:0DBB                 mov     [bx], al
seg031:0DBD                 jmp     short loc_19C38
seg031:0DBD ; ---------------------------------------------------------------------------
seg031:0DBF                 align 2
seg031:0DC0
seg031:0DC0 loc_19C20:                              ; CODE XREF: sub_19AEE+DC␘j
seg031:0DC0                 mov     di, 1
seg031:0DC3                 mov     ax, di
seg031:0DC5                 push    ax
seg031:0DC6                 lea     ax, [bp+arg_0]
seg031:0DC9                 push    ax
seg031:0DCA                 push    [bp+var_6]
seg031:0DCD                 call    sub_1A930
seg031:0DD2                 add     sp, 6
seg031:0DD5                 mov     [bp+var_4], ax
seg031:0DD8
seg031:0DD8 loc_19C38:                              ; CODE XREF: sub_19AEE+12F␘j
seg031:0DD8                 cmp     [bp+var_4], di
seg031:0DDB                 jz      short loc_19C40
seg031:0DDD                 jmp     loc_19B23
seg031:0DE0 ; ---------------------------------------------------------------------------
seg031:0DE0
seg031:0DE0 loc_19C40:                              ; CODE XREF: sub_19AEE+14D␘j
seg031:0DE0                 mov     al, byte ptr [bp+arg_0]
seg031:0DE3                 sub     ah, ah
seg031:0DE5
seg031:0DE5 loc_19C45:                              ; CODE XREF: sub_19AEE+3C␘j
seg031:0DE5                 pop     si
seg031:0DE6                 pop     di
seg031:0DE7                 mov     sp, bp
seg031:0DE9                 pop     bp
seg031:0DEA                 retf
seg031:0DEA sub_19AEE       endp
seg031:0DEA
seg031:0DEA ; ---------------------------------------------------------------------------
seg031:0DEB                 align 2
seg031:0DEC
