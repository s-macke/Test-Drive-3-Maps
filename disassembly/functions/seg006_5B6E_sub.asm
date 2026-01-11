seg006:5B6E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:5B6E
seg006:5B6E
seg006:5B6E sub_139BE       proc near               ; CODE XREF: sub_137A0+171␘p
seg006:5B6E                 mov     ax, [bx-563Bh]
seg006:5B72                 mov     byte_2AD22, ah
seg006:5B76                 mov     ax, [bx-577Bh]
seg006:5B7A                 mov     byte_28456, ah
seg006:5B7E                 mov     si, [bx-5C7Bh]
seg006:5B82                 and     si, 3Fh
seg006:5B85                 cmp     si, 3
seg006:5B88                 ja      short loc_139F5
seg006:5B8A                 mov     ax, ds
seg006:5B8C                 mov     es, ax
seg006:5B8E                 assume es:dseg
seg006:5B8E                 cmp     si, 2
seg006:5B91                 mov     si, 0D9B4h
seg006:5B94                 ja      short loc_13A06
seg006:5B96                 mov     si, 0D0CCh
seg006:5B99                 jz      short loc_13A06
seg006:5B9B                 mov     si, word_2C194
seg006:5B9F                 mov     es, word_2C196
seg006:5BA3                 assume es:nothing
seg006:5BA3                 jmp     short loc_13A06
seg006:5BA5 ; ---------------------------------------------------------------------------
seg006:5BA5
seg006:5BA5 loc_139F5:                              ; CODE XREF: sub_139BE+1A␘j
seg006:5BA5                 shl     si, 1
seg006:5BA7                 mov     es, word_2D83E
seg006:5BAB                 add     si, word_2D83C
seg006:5BAF                 mov     si, es:[si]
seg006:5BB2                 add     si, word_2D83C
seg006:5BB6
seg006:5BB6 loc_13A06:                              ; CODE XREF: sub_139BE+26␘j
seg006:5BB6                                         ; sub_139BE+2B␘j ...
seg006:5BB6                 mov     cx, es:[si]
seg006:5BB9                 xchg    cl, ch
seg006:5BBB                 add     si, 2
seg006:5BBE                 mov     ax, es:[si]
seg006:5BC1                 or      ah, ah
seg006:5BC3                 jnz     short loc_13A16
seg006:5BC5                 retn
seg006:5BC6 ; ---------------------------------------------------------------------------
seg006:5BC6
seg006:5BC6 loc_13A16:                              ; CODE XREF: sub_139BE+55␘j
seg006:5BC6                 add     al, ch
seg006:5BC8                 sub     ch, ch
seg006:5BCA                 shl     cx, 1
seg006:5BCC                 add     si, cx
seg006:5BCE                 add     si, cx
seg006:5BD0                 add     si, cx
seg006:5BD2                 mov     cl, ah
seg006:5BD4                 sub     ch, ch
seg006:5BD6                 sub     ah, ah
seg006:5BD8                 shl     ax, 1
seg006:5BDA                 shl     ax, 1
seg006:5BDC                 shl     ax, 1
seg006:5BDE                 add     si, 6
seg006:5BE1                 add     si, ax
seg006:5BE3
seg006:5BE3 loc_13A33:                              ; CODE XREF: sub_139BE+103␙j
seg006:5BE3                 push    cx
seg006:5BE4                 push    bx
seg006:5BE5                 mov     bx, 2
seg006:5BE8                 call    sub_1531F
seg006:5BEB                 add     si, bx
seg006:5BED                 pop     bx
seg006:5BEE                 add     ax, [bx-5B3Bh]
seg006:5BF2                 add     cx, [bx-59FBh]
seg006:5BF6                 mov     di, [bx-58BBh]
seg006:5BFA                 shr     di, 1
seg006:5BFC                 shr     di, 1
seg006:5BFE                 shr     di, 1
seg006:5C00                 add     dx, di
seg006:5C02                 sub     ax, word_2ACAE
seg006:5C06                 jns     short loc_13A5A
seg006:5C08                 neg     ax
seg006:5C0A
seg006:5C0A loc_13A5A:                              ; CODE XREF: sub_139BE+98␘j
seg006:5C0A                 sub     cx, word_2ACB0
seg006:5C0E                 jns     short loc_13A62
seg006:5C10                 neg     cx
seg006:5C12
seg006:5C12 loc_13A62:                              ; CODE XREF: sub_139BE+A0␘j
seg006:5C12                 cmp     ax, cx
seg006:5C14                 jbe     short loc_13A67
seg006:5C16                 xchg    ax, cx
seg006:5C17
seg006:5C17 loc_13A67:                              ; CODE XREF: sub_139BE+A6␘j
seg006:5C17                 add     ax, cx
seg006:5C19                 shl     cx, 1
seg006:5C1B                 add     ax, cx
seg006:5C1D                 rcr     ax, 1
seg006:5C1F                 shr     ax, 1
seg006:5C21                 or      ah, ah
seg006:5C23                 jnz     short loc_13ABD
seg006:5C25                 sub     dx, word_2ACB2
seg006:5C29                 jns     short loc_13A7D
seg006:5C2B                 neg     dx
seg006:5C2D
seg006:5C2D loc_13A7D:                              ; CODE XREF: sub_139BE+BB␘j
seg006:5C2D                 shr     dx, 1
seg006:5C2F                 or      dh, dh
seg006:5C31                 jnz     short loc_13ABD
seg006:5C33                 mov     cx, es:[si]
seg006:5C36                 add     cx, word_2844E
seg006:5C3A                 mov     di, cx
seg006:5C3C                 add     si, 2
seg006:5C3F                 cmp     al, cl
seg006:5C41                 mov     dh, 7
seg006:5C43                 ja      short loc_13A99
seg006:5C45                 cmp     dl, ch
seg006:5C47                 jb      short loc_13AB9
seg006:5C49
seg006:5C49 loc_13A99:                              ; CODE XREF: sub_139BE+D5␘j
seg006:5C49                 add     cx, cx
seg006:5C4B                 add     cx, cx
seg006:5C4D                 add     cx, cx
seg006:5C4F                 mov     dh, 6
seg006:5C51                 cmp     al, cl
seg006:5C53                 jnb     short loc_13AA9
seg006:5C55                 cmp     dl, ch
seg006:5C57                 jb      short loc_13AB9
seg006:5C59
seg006:5C59 loc_13AA9:                              ; CODE XREF: sub_139BE+E5␘j
seg006:5C59                 add     ch, ch
seg006:5C5B                 mov     dh, 4
seg006:5C5D                 add     cl, cl
seg006:5C5F                 jb      short loc_13AB5
seg006:5C61                 cmp     al, cl
seg006:5C63                 jnb     short loc_13ABD
seg006:5C65
seg006:5C65 loc_13AB5:                              ; CODE XREF: sub_139BE+F1␘j
seg006:5C65                 cmp     dl, ch
seg006:5C67                 jnb     short loc_13ABD
seg006:5C69
seg006:5C69 loc_13AB9:                              ; CODE XREF: sub_139BE+D9␘j
seg006:5C69                                         ; sub_139BE+E9␘j
seg006:5C69                 or      byte_28458, dh
seg006:5C6D
seg006:5C6D loc_13ABD:                              ; CODE XREF: sub_139BE+B5␘j
seg006:5C6D                                         ; sub_139BE+C3␘j ...
seg006:5C6D                 pop     cx
seg006:5C6E                 dec     cx
seg006:5C6F                 jz      short locret_13AC4
seg006:5C71                 jmp     loc_13A33
seg006:5C74 ; ---------------------------------------------------------------------------
seg006:5C74
seg006:5C74 locret_13AC4:                           ; CODE XREF: sub_139BE+101␘j
seg006:5C74                 retn
seg006:5C74 sub_139BE       endp
seg006:5C74
seg006:5C75
