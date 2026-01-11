seg031:0BCC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0BCC
seg031:0BCC ; Attributes: bp-based frame
seg031:0BCC
seg031:0BCC sub_19A2C       proc far                ; CODE XREF: sub_19196+B5␘P
seg031:0BCC                                         ; sub_19196+14F␘P
seg031:0BCC
seg031:0BCC var_2           = word ptr -2
seg031:0BCC arg_0           = word ptr  6
seg031:0BCC
seg031:0BCC                 push    bp
seg031:0BCD                 mov     bp, sp
seg031:0BCF                 sub     sp, 2
seg031:0BD2                 push    si
seg031:0BD3                 mov     si, [bp+arg_0]
seg031:0BD6                 mov     ax, si
seg031:0BD8                 sub     ax, 0C39Ah
seg031:0BDB                 mov     cl, 3
seg031:0BDD                 sar     ax, cl
seg031:0BDF                 mov     cx, ax
seg031:0BE1                 shl     ax, 1
seg031:0BE3                 add     ax, cx
seg031:0BE5                 shl     ax, 1
seg031:0BE7                 add     ax, 0C43Ah
seg031:0BEA                 mov     [bp+var_2], ax
seg031:0BED                 test    byte ptr [si+6], 83h
seg031:0BF1                 jz      short loc_19A59
seg031:0BF3                 test    byte ptr [si+6], 40h
seg031:0BF7                 jz      short loc_19A60
seg031:0BF9
seg031:0BF9 loc_19A59:                              ; CODE XREF: sub_19A2C+25␘j
seg031:0BF9                                         ; sub_19A2C+3E␙j ...
seg031:0BF9                 mov     ax, 0FFFFh
seg031:0BFC                 jmp     loc_19AE9
seg031:0BFC ; ---------------------------------------------------------------------------
seg031:0BFF                 align 2
seg031:0C00
seg031:0C00 loc_19A60:                              ; CODE XREF: sub_19A2C+2B␘j
seg031:0C00                 test    byte ptr [si+6], 2
seg031:0C04                 jz      short loc_19A6C
seg031:0C06                 or      byte ptr [si+6], 20h
seg031:0C0A                 jmp     short loc_19A59
seg031:0C0C ; ---------------------------------------------------------------------------
seg031:0C0C
seg031:0C0C loc_19A6C:                              ; CODE XREF: sub_19A2C+38␘j
seg031:0C0C                 or      byte ptr [si+6], 1
seg031:0C10                 mov     bx, [bp+var_2]
seg031:0C13                 and     byte ptr [bx], 0FBh
seg031:0C16                 test    byte ptr [si+6], 0Ch
seg031:0C1A                 jnz     short loc_19A9E
seg031:0C1C                 mov     bx, si
seg031:0C1E                 sub     bx, 0C39Ah
seg031:0C22                 mov     cl, 3
seg031:0C24                 sar     bx, cl
seg031:0C26                 mov     ax, bx
seg031:0C28                 shl     bx, 1
seg031:0C2A                 add     bx, ax
seg031:0C2C                 shl     bx, 1
seg031:0C2E                 test    byte ptr [bx-3BC6h], 1
seg031:0C33                 jnz     short loc_19A9E
seg031:0C35                 push    si
seg031:0C36                 call    sub_1AE44
seg031:0C39                 add     sp, 2
seg031:0C3C                 jmp     short loc_19AA3
seg031:0C3E ; ---------------------------------------------------------------------------
seg031:0C3E
seg031:0C3E loc_19A9E:                              ; CODE XREF: sub_19A2C+4E␘j
seg031:0C3E                                         ; sub_19A2C+67␘j
seg031:0C3E                 mov     ax, [si+4]
seg031:0C41                 mov     [si], ax
seg031:0C43
seg031:0C43 loc_19AA3:                              ; CODE XREF: sub_19A2C+70␘j
seg031:0C43                 mov     bx, [bp+var_2]
seg031:0C46                 push    word ptr [bx+2]
seg031:0C49                 push    word ptr [si+4]
seg031:0C4C                 mov     al, [si+7]
seg031:0C4F                 cbw
seg031:0C50                 push    ax
seg031:0C51                 call    far ptr sub_1A852
seg031:0C56                 add     sp, 6
seg031:0C59                 mov     [si+2], ax
seg031:0C5C                 or      ax, ax
seg031:0C5E                 jz      short loc_19AC5
seg031:0C60                 cmp     ax, 0FFFFh
seg031:0C63                 jnz     short loc_19ADE
seg031:0C65
seg031:0C65 loc_19AC5:                              ; CODE XREF: sub_19A2C+92␘j
seg031:0C65                 cmp     word ptr [si+2], 0
seg031:0C69                 jz      short loc_19AD0
seg031:0C6B                 mov     al, 20h ; ' '
seg031:0C6D                 jmp     short loc_19AD2
seg031:0C6D ; ---------------------------------------------------------------------------
seg031:0C6F                 align 2
seg031:0C70
seg031:0C70 loc_19AD0:                              ; CODE XREF: sub_19A2C+9D␘j
seg031:0C70                 mov     al, 10h
seg031:0C72
seg031:0C72 loc_19AD2:                              ; CODE XREF: sub_19A2C+A1␘j
seg031:0C72                 or      [si+6], al
seg031:0C75                 mov     word ptr [si+2], 0
seg031:0C7A                 jmp     loc_19A59
seg031:0C7A ; ---------------------------------------------------------------------------
seg031:0C7D                 align 2
seg031:0C7E
seg031:0C7E loc_19ADE:                              ; CODE XREF: sub_19A2C+97␘j
seg031:0C7E                 dec     word ptr [si+2]
seg031:0C81                 mov     bx, [si]
seg031:0C83                 inc     word ptr [si]
seg031:0C85                 mov     al, [bx]
seg031:0C87                 sub     ah, ah
seg031:0C89
seg031:0C89 loc_19AE9:                              ; CODE XREF: sub_19A2C+30␘j
seg031:0C89                 pop     si
seg031:0C8A                 mov     sp, bp
seg031:0C8C                 pop     bp
seg031:0C8D                 retf
seg031:0C8D sub_19A2C       endp
seg031:0C8D
seg031:0C8E
