seg031:0242 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0242
seg031:0242 ; Attributes: bp-based frame
seg031:0242
seg031:0242 sub_190A2       proc far                ; CODE XREF: sub_8DC+A3␘P
seg031:0242                                         ; sub_8DC+2BE␘P ...
seg031:0242
seg031:0242 var_E           = word ptr -0Eh
seg031:0242 var_C           = word ptr -0Ch
seg031:0242 var_4           = word ptr -4
seg031:0242 var_2           = word ptr -2
seg031:0242 arg_0           = word ptr  6
seg031:0242
seg031:0242                 push    bp
seg031:0243                 mov     bp, sp
seg031:0245                 sub     sp, 10h
seg031:0248                 push    di
seg031:0249                 push    si
seg031:024A                 mov     si, [bp+arg_0]
seg031:024D                 mov     di, 0FFFFh
seg031:0250                 test    byte ptr [si+6], 83h
seg031:0254                 jnz     short loc_190B9
seg031:0256                 jmp     loc_1915E
seg031:0259 ; ---------------------------------------------------------------------------
seg031:0259
seg031:0259 loc_190B9:                              ; CODE XREF: sub_190A2+12␘j
seg031:0259                 test    byte ptr [si+6], 40h
seg031:025D                 jz      short loc_190C2
seg031:025F                 jmp     loc_1915E
seg031:0262 ; ---------------------------------------------------------------------------
seg031:0262
seg031:0262 loc_190C2:                              ; CODE XREF: sub_190A2+1B␘j
seg031:0262                 push    si
seg031:0263                 call    sub_19E98
seg031:0268                 add     sp, 2
seg031:026B                 mov     di, ax
seg031:026D                 mov     bx, si
seg031:026F                 sub     bx, 0C39Ah
seg031:0273                 mov     cl, 3
seg031:0275                 sar     bx, cl
seg031:0277                 mov     ax, bx
seg031:0279                 shl     bx, 1
seg031:027B                 add     bx, ax
seg031:027D                 shl     bx, 1
seg031:027F                 mov     ax, [bx-3BC2h]
seg031:0283                 mov     [bp+var_4], ax
seg031:0286                 push    si
seg031:0287                 call    sub_19C4C
seg031:028C                 add     sp, 2
seg031:028F                 mov     al, [si+7]
seg031:0292                 cbw
seg031:0293                 push    ax
seg031:0294                 call    sub_1A832
seg031:0299                 add     sp, 2
seg031:029C                 or      ax, ax
seg031:029E                 jl      short loc_1915B
seg031:02A0                 cmp     [bp+var_4], 0
seg031:02A4                 jz      short loc_1915E
seg031:02A6                 mov     ax, 0C38Ah
seg031:02A9                 push    ax
seg031:02AA                 lea     ax, [bp+var_E]
seg031:02AD                 push    ax
seg031:02AE                 call    sub_195EA
seg031:02B3                 add     sp, 4
seg031:02B6                 lea     ax, [bp+var_C]
seg031:02B9                 mov     [bp+var_2], ax
seg031:02BC                 mov     bx, ax
seg031:02BE                 cmp     byte ptr [bx-2], 5Ch ; '\'
seg031:02C2                 jz      short loc_19136
seg031:02C4                 mov     ax, 0C38Ch
seg031:02C7                 push    ax
seg031:02C8                 lea     ax, [bp+var_E]
seg031:02CB                 push    ax
seg031:02CC                 call    sub_1ACDA
seg031:02D1                 add     sp, 4
seg031:02D4                 jmp     short loc_19139
seg031:02D6 ; ---------------------------------------------------------------------------
seg031:02D6
seg031:02D6 loc_19136:                              ; CODE XREF: sub_190A2+80␘j
seg031:02D6                 dec     [bp+var_2]
seg031:02D9
seg031:02D9 loc_19139:                              ; CODE XREF: sub_190A2+92␘j
seg031:02D9                 mov     ax, 0Ah
seg031:02DC                 push    ax
seg031:02DD                 push    [bp+var_2]
seg031:02E0                 push    [bp+var_4]
seg031:02E3                 call    sub_1AD1A
seg031:02E8                 add     sp, 6
seg031:02EB                 lea     ax, [bp+var_E]
seg031:02EE                 push    ax
seg031:02EF                 call    far ptr sub_1ADBE
seg031:02F4                 add     sp, 2
seg031:02F7                 or      ax, ax
seg031:02F9                 jz      short loc_1915E
seg031:02FB
seg031:02FB loc_1915B:                              ; CODE XREF: sub_190A2+5C␘j
seg031:02FB                 mov     di, 0FFFFh
seg031:02FE
seg031:02FE loc_1915E:                              ; CODE XREF: sub_190A2+14␘j
seg031:02FE                                         ; sub_190A2+1D␘j ...
seg031:02FE                 mov     byte ptr [si+6], 0
seg031:0302                 mov     ax, di
seg031:0304                 pop     si
seg031:0305                 pop     di
seg031:0306                 mov     sp, bp
seg031:0308                 pop     bp
seg031:0309                 retf
seg031:0309 sub_190A2       endp
seg031:0309
seg031:030A
