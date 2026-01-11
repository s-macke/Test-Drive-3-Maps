seg031:0940 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0940
seg031:0940 ; Attributes: bp-based frame
seg031:0940
seg031:0940 sub_197A0       proc far                ; CODE XREF: sub_0+3D6␘P
seg031:0940                                         ; sub_0+5DF␘P ...
seg031:0940
seg031:0940 arg_0           = word ptr  6
seg031:0940 arg_2           = word ptr  8
seg031:0940 arg_4           = word ptr  0Ah
seg031:0940 arg_6           = word ptr  0Ch
seg031:0940
seg031:0940                 push    bp
seg031:0941                 mov     bp, sp
seg031:0943                 push    di
seg031:0944                 push    si
seg031:0945                 push    bx
seg031:0946                 xor     di, di
seg031:0948                 mov     ax, [bp+arg_2]
seg031:094B                 or      ax, ax
seg031:094D                 jge     short loc_197C0
seg031:094F                 inc     di
seg031:0950                 mov     dx, [bp+arg_0]
seg031:0953                 neg     ax
seg031:0955                 neg     dx
seg031:0957                 sbb     ax, 0
seg031:095A                 mov     [bp+arg_2], ax
seg031:095D                 mov     [bp+arg_0], dx
seg031:0960
seg031:0960 loc_197C0:                              ; CODE XREF: sub_197A0+D␘j
seg031:0960                 mov     ax, [bp+arg_6]
seg031:0963                 or      ax, ax
seg031:0965                 jge     short loc_197D8
seg031:0967                 inc     di
seg031:0968                 mov     dx, [bp+arg_4]
seg031:096B                 neg     ax
seg031:096D                 neg     dx
seg031:096F                 sbb     ax, 0
seg031:0972                 mov     [bp+arg_6], ax
seg031:0975                 mov     [bp+arg_4], dx
seg031:0978
seg031:0978 loc_197D8:                              ; CODE XREF: sub_197A0+25␘j
seg031:0978                 or      ax, ax
seg031:097A                 jnz     short loc_197F1
seg031:097C                 mov     cx, [bp+arg_4]
seg031:097F                 mov     ax, [bp+arg_2]
seg031:0982                 xor     dx, dx
seg031:0984                 div     cx
seg031:0986                 mov     bx, ax
seg031:0988                 mov     ax, [bp+arg_0]
seg031:098B                 div     cx
seg031:098D                 mov     dx, bx
seg031:098F                 jmp     short loc_19829
seg031:0991 ; ---------------------------------------------------------------------------
seg031:0991
seg031:0991 loc_197F1:                              ; CODE XREF: sub_197A0+3A␘j
seg031:0991                 mov     bx, ax
seg031:0993                 mov     cx, [bp+arg_4]
seg031:0996                 mov     dx, [bp+arg_2]
seg031:0999                 mov     ax, [bp+arg_0]
seg031:099C
seg031:099C loc_197FC:                              ; CODE XREF: sub_197A0+66␙j
seg031:099C                 shr     bx, 1
seg031:099E                 rcr     cx, 1
seg031:09A0                 shr     dx, 1
seg031:09A2                 rcr     ax, 1
seg031:09A4                 or      bx, bx
seg031:09A6                 jnz     short loc_197FC
seg031:09A8                 div     cx
seg031:09AA                 mov     si, ax
seg031:09AC                 mul     [bp+arg_6]
seg031:09AF                 xchg    ax, cx
seg031:09B0                 mov     ax, [bp+arg_4]
seg031:09B3                 mul     si
seg031:09B5                 add     dx, cx
seg031:09B7                 jb      short loc_19825
seg031:09B9                 cmp     dx, [bp+arg_2]
seg031:09BC                 ja      short loc_19825
seg031:09BE                 jb      short loc_19826
seg031:09C0                 cmp     ax, [bp+arg_0]
seg031:09C3                 jbe     short loc_19826
seg031:09C5
seg031:09C5 loc_19825:                              ; CODE XREF: sub_197A0+77␘j
seg031:09C5                                         ; sub_197A0+7C␘j
seg031:09C5                 dec     si
seg031:09C6
seg031:09C6 loc_19826:                              ; CODE XREF: sub_197A0+7E␘j
seg031:09C6                                         ; sub_197A0+83␘j
seg031:09C6                 xor     dx, dx
seg031:09C8                 xchg    ax, si
seg031:09C9
seg031:09C9 loc_19829:                              ; CODE XREF: sub_197A0+4F␘j
seg031:09C9                 dec     di
seg031:09CA                 jnz     short loc_19833
seg031:09CC                 neg     dx
seg031:09CE                 neg     ax
seg031:09D0                 sbb     dx, 0
seg031:09D3
seg031:09D3 loc_19833:                              ; CODE XREF: sub_197A0+8A␘j
seg031:09D3                 pop     bx
seg031:09D4                 pop     si
seg031:09D5                 pop     di
seg031:09D6                 mov     sp, bp
seg031:09D8                 pop     bp
seg031:09D9                 retf    8
seg031:09D9 sub_197A0       endp
seg031:09D9
seg031:09DC
