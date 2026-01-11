seg001:518C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:518C
seg001:518C ; Attributes: bp-based frame
seg001:518C
seg001:518C sub_6ECC        proc far                ; CODE XREF: sub_663E+67␘p
seg001:518C                                         ; sub_663E+82␘p
seg001:518C
seg001:518C var_12          = word ptr -12h
seg001:518C var_10          = word ptr -10h
seg001:518C var_E           = word ptr -0Eh
seg001:518C var_C           = word ptr -0Ch
seg001:518C var_A           = word ptr -0Ah
seg001:518C var_8           = word ptr -8
seg001:518C var_6           = word ptr -6
seg001:518C var_4           = word ptr -4
seg001:518C var_2           = word ptr -2
seg001:518C arg_0           = word ptr  6
seg001:518C arg_2           = word ptr  8
seg001:518C
seg001:518C                 push    bp
seg001:518D                 mov     bp, sp
seg001:518F                 sub     sp, 12h
seg001:5192                 push    di
seg001:5193                 push    si
seg001:5194                 mov     [bp+var_2], 0
seg001:5199                 mov     ax, 1770h
seg001:519C                 cwd
seg001:519D                 push    dx
seg001:519E                 push    ax
seg001:519F                 mov     bx, [bp+arg_0]
seg001:51A2                 mov     al, [bx]
seg001:51A4                 sub     ah, ah
seg001:51A6                 sub     cx, cx
seg001:51A8                 push    cx
seg001:51A9                 push    ax
seg001:51AA                 call    sub_1983C
seg001:51AF                 mov     cx, 64h ; 'd'
seg001:51B2                 sub     bx, bx
seg001:51B4                 push    bx
seg001:51B5                 push    cx
seg001:51B6                 mov     bx, [bp+arg_0]
seg001:51B9                 mov     cl, [bx+1]
seg001:51BC                 sub     ch, ch
seg001:51BE                 sub     bx, bx
seg001:51C0                 push    bx
seg001:51C1                 push    cx
seg001:51C2                 mov     si, ax
seg001:51C4                 mov     di, dx
seg001:51C6                 call    sub_1983C
seg001:51CB                 mov     bx, [bp+arg_0]
seg001:51CE                 mov     cl, [bx+2]
seg001:51D1                 sub     ch, ch
seg001:51D3                 sub     bx, bx
seg001:51D5                 mov     [bp+var_12], ax
seg001:51D8                 mov     [bp+var_10], dx
seg001:51DB                 mov     ax, cx
seg001:51DD                 mov     dx, bx
seg001:51DF                 shl     cx, 1
seg001:51E1                 rcl     bx, 1
seg001:51E3                 shl     cx, 1
seg001:51E5                 rcl     bx, 1
seg001:51E7                 add     cx, ax
seg001:51E9                 adc     bx, dx
seg001:51EB                 shl     cx, 1
seg001:51ED                 rcl     bx, 1
seg001:51EF                 add     cx, [bp+var_12]
seg001:51F2                 adc     bx, [bp+var_10]
seg001:51F5                 add     cx, si
seg001:51F7                 adc     bx, di
seg001:51F9                 mov     [bp+var_6], cx
seg001:51FC                 mov     [bp+var_4], bx
seg001:51FF                 mov     ax, 1770h
seg001:5202                 cwd
seg001:5203                 push    dx
seg001:5204                 push    ax
seg001:5205                 mov     bx, [bp+arg_2]
seg001:5208                 mov     al, [bx]
seg001:520A                 sub     ah, ah
seg001:520C                 sub     cx, cx
seg001:520E                 push    cx
seg001:520F                 push    ax
seg001:5210                 call    sub_1983C
seg001:5215                 mov     cx, 64h ; 'd'
seg001:5218                 sub     bx, bx
seg001:521A                 push    bx
seg001:521B                 push    cx
seg001:521C                 mov     bx, [bp+arg_2]
seg001:521F                 mov     cl, [bx+1]
seg001:5222                 sub     ch, ch
seg001:5224                 sub     bx, bx
seg001:5226                 push    bx
seg001:5227                 push    cx
seg001:5228                 mov     si, ax
seg001:522A                 mov     di, dx
seg001:522C                 call    sub_1983C
seg001:5231                 mov     bx, [bp+arg_2]
seg001:5234                 mov     cl, [bx+2]
seg001:5237                 sub     ch, ch
seg001:5239                 sub     bx, bx
seg001:523B                 mov     [bp+var_12], ax
seg001:523E                 mov     [bp+var_10], dx
seg001:5241                 mov     ax, cx
seg001:5243                 mov     dx, bx
seg001:5245                 shl     cx, 1
seg001:5247                 rcl     bx, 1
seg001:5249                 shl     cx, 1
seg001:524B                 rcl     bx, 1
seg001:524D                 add     cx, ax
seg001:524F                 adc     bx, dx
seg001:5251                 shl     cx, 1
seg001:5253                 rcl     bx, 1
seg001:5255                 add     cx, [bp+var_12]
seg001:5258                 adc     bx, [bp+var_10]
seg001:525B                 add     cx, si
seg001:525D                 adc     bx, di
seg001:525F                 mov     [bp+var_A], cx
seg001:5262                 mov     [bp+var_8], bx
seg001:5265                 mov     ax, cx
seg001:5267                 mov     dx, bx
seg001:5269                 cmp     [bp+var_4], dx
seg001:526C                 jb      short loc_6FBC
seg001:526E                 ja      short loc_6FB5
seg001:5270                 cmp     [bp+var_6], ax
seg001:5273                 jbe     short loc_6FBC
seg001:5275
seg001:5275 loc_6FB5:                               ; CODE XREF: sub_6ECC+E2␘j
seg001:5275                 mov     ax, [bp+var_A]
seg001:5278                 or      ax, bx
seg001:527A                 jnz     short loc_6FE1
seg001:527C
seg001:527C loc_6FBC:                               ; CODE XREF: sub_6ECC+E0␘j
seg001:527C                                         ; sub_6ECC+E7␘j
seg001:527C                 inc     [bp+var_2]
seg001:527F                 mov     bx, [bp+arg_2]
seg001:5282                 mov     si, [bp+arg_0]
seg001:5285                 mov     al, [si]
seg001:5287                 mov     [bx], al
seg001:5289                 mov     bx, [bp+arg_2]
seg001:528C                 mov     si, [bp+arg_0]
seg001:528F                 mov     al, [si+1]
seg001:5292                 mov     [bx+1], al
seg001:5295                 mov     bx, [bp+arg_2]
seg001:5298                 mov     si, [bp+arg_0]
seg001:529B                 mov     al, [si+2]
seg001:529E                 mov     [bx+2], al
seg001:52A1
seg001:52A1 loc_6FE1:                               ; CODE XREF: sub_6ECC+EE␘j
seg001:52A1                 mov     bx, [bp+arg_0]
seg001:52A4                 mov     si, [bp+arg_2]
seg001:52A7                 mov     al, [si+3]
seg001:52AA                 cmp     [bx+3], al
seg001:52AD                 jb      short loc_6FFE
seg001:52AF                 add     [bp+var_2], 2
seg001:52B3                 mov     bx, si
seg001:52B5                 mov     si, [bp+arg_0]
seg001:52B8                 mov     al, [si+3]
seg001:52BB                 mov     [bx+3], al
seg001:52BE
seg001:52BE loc_6FFE:                               ; CODE XREF: sub_6ECC+121␘j
seg001:52BE                 mov     bx, [bp+arg_0]
seg001:52C1                 mov     ah, [bx+5]
seg001:52C4                 sub     al, al
seg001:52C6                 mov     cl, [bx+4]
seg001:52C9                 sub     ch, ch
seg001:52CB                 add     ax, cx
seg001:52CD                 mov     [bp+var_6], ax
seg001:52D0                 mov     [bp+var_4], 0
seg001:52D5                 mov     ah, [bx+7]
seg001:52D8                 sub     al, al
seg001:52DA                 mov     cl, [bx+6]
seg001:52DD                 add     ax, cx
seg001:52DF                 mov     [bp+var_A], ax
seg001:52E2                 mov     [bp+var_8], 0
seg001:52E7                 mov     dx, ax
seg001:52E9                 sub     ax, ax
seg001:52EB                 add     [bp+var_6], ax
seg001:52EE                 adc     [bp+var_4], dx
seg001:52F1                 mov     bx, [bp+arg_2]
seg001:52F4                 mov     ah, [bx+5]
seg001:52F7                 sub     al, al
seg001:52F9                 mov     cl, [bx+4]
seg001:52FC                 add     ax, cx
seg001:52FE                 mov     [bp+var_E], ax
seg001:5301                 mov     [bp+var_C], 0
seg001:5306                 mov     ah, [bx+7]
seg001:5309                 sub     al, al
seg001:530B                 mov     cl, [bx+6]
seg001:530E                 add     ax, cx
seg001:5310                 mov     [bp+var_A], ax
seg001:5313                 mov     [bp+var_8], 0
seg001:5318                 mov     dx, ax
seg001:531A                 sub     ax, ax
seg001:531C                 add     [bp+var_E], ax
seg001:531F                 adc     [bp+var_C], dx
seg001:5322                 mov     ax, [bp+var_E]
seg001:5325                 mov     dx, [bp+var_C]
seg001:5328                 cmp     [bp+var_4], dx
seg001:532B                 jb      short loc_70A5
seg001:532D                 ja      short loc_7074
seg001:532F                 cmp     [bp+var_6], ax
seg001:5332                 jb      short loc_70A5
seg001:5334
seg001:5334 loc_7074:                               ; CODE XREF: sub_6ECC+1A1␘j
seg001:5334                 add     [bp+var_2], 4
seg001:5338                 mov     si, [bp+arg_0]
seg001:533B                 mov     al, [si+4]
seg001:533E                 mov     [bx+4], al
seg001:5341                 mov     bx, [bp+arg_2]
seg001:5344                 mov     si, [bp+arg_0]
seg001:5347                 mov     al, [si+5]
seg001:534A                 mov     [bx+5], al
seg001:534D                 mov     bx, [bp+arg_2]
seg001:5350                 mov     si, [bp+arg_0]
seg001:5353                 mov     al, [si+6]
seg001:5356                 mov     [bx+6], al
seg001:5359                 mov     bx, [bp+arg_2]
seg001:535C                 mov     si, [bp+arg_0]
seg001:535F                 mov     al, [si+7]
seg001:5362                 mov     [bx+7], al
seg001:5365
seg001:5365 loc_70A5:                               ; CODE XREF: sub_6ECC+19F␘j
seg001:5365                                         ; sub_6ECC+1A6␘j
seg001:5365                 mov     ax, [bp+var_2]
seg001:5368                 pop     si
seg001:5369                 pop     di
seg001:536A                 mov     sp, bp
seg001:536C                 pop     bp
seg001:536D                 retf
seg001:536D sub_6ECC        endp
seg001:536D
seg001:536E
