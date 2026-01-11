seg005:08CD ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:08CD
seg005:08CD
seg005:08CD sub_C7ED        proc far                ; CODE XREF: sub_391C+14␘P
seg005:08CD                 push    es
seg005:08CE                 push    si
seg005:08CF                 push    di
seg005:08D0                 mov     word_280C0, si
seg005:08D4                 mov     word_280C2, di
seg005:08D8                 mov     word_280C4, es
seg005:08DC                 call    sub_C9CD
seg005:08DF                 cmp     byte_1F16C, 0
seg005:08E4                 jz      short loc_C80A
seg005:08E6                 pop     di
seg005:08E7                 pop     si
seg005:08E8                 pop     es
seg005:08E9                 retf
seg005:08EA ; ---------------------------------------------------------------------------
seg005:08EA
seg005:08EA loc_C80A:                               ; CODE XREF: sub_C7ED+17␘j
seg005:08EA                 mov     ax, word_2D628
seg005:08ED                 cmp     al, 0Dh
seg005:08EF                 jnz     short loc_C814
seg005:08F1                 jmp     short loc_C88C
seg005:08F1 ; ---------------------------------------------------------------------------
seg005:08F3                 align 2
seg005:08F4
seg005:08F4 loc_C814:                               ; CODE XREF: sub_C7ED+22␘j
seg005:08F4                 ja      short loc_C81E
seg005:08F6                 jmp     loc_C92B
seg005:08F9 ; ---------------------------------------------------------------------------
seg005:08F9
seg005:08F9 loc_C819:                               ; CODE XREF: sub_C7ED+8A␙j
seg005:08F9                 pop     bx
seg005:08FA                 pop     di
seg005:08FB                 pop     si
seg005:08FC                 pop     es
seg005:08FD                 retf
seg005:08FE ; ---------------------------------------------------------------------------
seg005:08FE
seg005:08FE loc_C81E:                               ; CODE XREF: sub_C7ED:loc_C814␘j
seg005:08FE                 mov     bx, 0
seg005:0901                 mov     es, word_280B8
seg005:0905
seg005:0905 loc_C825:                               ; CODE XREF: sub_C7ED+99␙j
seg005:0905                 push    bx
seg005:0906                 mov     al, [bx-7003h]
seg005:090A                 sub     ah, ah
seg005:090C                 and     bl, 7
seg005:090F                 shl     bx, 1
seg005:0911                 mov     di, [bx-6FB9h]
seg005:0915                 shl     di, 1
seg005:0917                 shl     di, 1
seg005:0919                 shl     di, 1
seg005:091B                 add     di, ax
seg005:091D                 mov     ax, word_1F180
seg005:0920                 push    ax
seg005:0921                 push    ds
seg005:0922                 mov     ds, word_280BA
seg005:0926                 mov     ah, 19h
seg005:0928
seg005:0928 loc_C848:                               ; CODE XREF: sub_C7ED+7E␙j
seg005:0928                 mov     cx, 0Ah
seg005:092B
seg005:092B loc_C84B:                               ; CODE XREF: sub_C7ED+76␙j
seg005:092B                 mov     si, di
seg005:092D                 movsb
seg005:092E                 add     di, 7
seg005:0931                 mov     si, di
seg005:0933                 movsb
seg005:0934                 add     di, 7
seg005:0937                 mov     si, di
seg005:0939                 movsb
seg005:093A                 add     di, 7
seg005:093D                 mov     si, di
seg005:093F                 movsb
seg005:0940                 add     di, 7
seg005:0943                 loop    loc_C84B
seg005:0945                 add     di, 8C0h
seg005:0949                 dec     ah
seg005:094B                 jnz     short loc_C848
seg005:094D                 pop     ds
seg005:094E                 call    sub_C9CD
seg005:0951                 pop     ax
seg005:0952                 cmp     byte_1F16C, 0
seg005:0957                 jnz     short loc_C819
seg005:0959
seg005:0959 loc_C879:                               ; CODE XREF: sub_C7ED+92␙j
seg005:0959                 mov     dx, word_1F180
seg005:095D                 sub     dx, ax
seg005:095F                 jz      short loc_C879
seg005:0961                 pop     bx
seg005:0962                 inc     bx
seg005:0963                 cmp     bx, 40h ; '@'
seg005:0966                 jb      short loc_C825
seg005:0968                 pop     di
seg005:0969                 pop     si
seg005:096A                 pop     es
seg005:096B                 retf
seg005:096C ; ---------------------------------------------------------------------------
seg005:096C
seg005:096C loc_C88C:                               ; CODE XREF: sub_C7ED+24␘j
seg005:096C                 mov     dx, 3C4h
seg005:096F                 mov     ax, 0F02h
seg005:0972                 out     dx, ax          ; EGA: sequencer address reg
seg005:0972                                         ; unknown register
seg005:0973                 mov     dx, 3CEh
seg005:0976                 mov     ax, 5
seg005:0979                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:0979                                         ; mode register.Data bits:
seg005:0979                                         ; 0-1: Write mode 0-2
seg005:0979                                         ; 2: test condition
seg005:0979                                         ; 3: read mode: 1=color compare, 0=direct
seg005:0979                                         ; 4: 1=use odd/even RAM addressing
seg005:0979                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg005:097A                 mov     ax, 0F01h
seg005:097D                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:097D                                         ; unknown register
seg005:097E                 mov     ax, 3
seg005:0981                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:0981                                         ; data rotate and function select for write mode 00. Bits:
seg005:0981                                         ; 0-2: set rotate count for write mode 00
seg005:0981                                         ; 3-4: fn for write modes 00 and 02
seg005:0981                                         ;      00=no change; 01=AND; 10=OR; 11=XOR
seg005:0982                 sub     bx, bx
seg005:0984                 mov     es, word_280B8
seg005:0988
seg005:0988 loc_C8A8:                               ; CODE XREF: sub_C7ED+138␙j
seg005:0988                 mov     cl, [bx-7003h]
seg005:098C                 push    bx
seg005:098D                 and     bl, 7
seg005:0990                 shl     bx, 1
seg005:0992                 mov     di, [bx-6FB9h]
seg005:0996                 mov     bl, cl
seg005:0998                 mov     ch, [bx-6FC3h]
seg005:099C                 mov     byte_28457, 19h
seg005:09A1
seg005:09A1 loc_C8C1:                               ; CODE XREF: sub_C7ED+125␙j
seg005:09A1                 push    ds
seg005:09A2                 mov     ds, word_280BA
seg005:09A6                 mov     cl, 28h ; '('
seg005:09A8
seg005:09A8 loc_C8C8:                               ; CODE XREF: sub_C7ED+11A␙j
seg005:09A8                 sub     bl, bl
seg005:09AA                 mov     ax, 304h
seg005:09AD                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:09AD                                         ; unknown register
seg005:09AE                 mov     bh, [di]
seg005:09B0                 and     bh, ch
seg005:09B2                 neg     bh
seg005:09B4                 dec     ah
seg005:09B6                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:09B6                                         ; unknown register
seg005:09B7                 rol     bx, 1
seg005:09B9                 mov     bh, [di]
seg005:09BB                 and     bh, ch
seg005:09BD                 neg     bh
seg005:09BF                 dec     ah
seg005:09C1                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:09C1                                         ; unknown register
seg005:09C2                 rol     bx, 1
seg005:09C4                 mov     bh, [di]
seg005:09C6                 and     bh, ch
seg005:09C8                 neg     bh
seg005:09CA                 sub     ah, ah
seg005:09CC                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:09CC                                         ; read map select.
seg005:09CC                                         ; Data bits 0-2 select map # for read mode 00.
seg005:09CD                 rol     bx, 1
seg005:09CF                 mov     bh, [di]
seg005:09D1                 and     bh, ch
seg005:09D3                 neg     bh
seg005:09D5                 rol     bx, 1
seg005:09D7                 mov     ah, bl
seg005:09D9                 sub     al, al
seg005:09DB                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:09DB                                         ; set/reset.
seg005:09DB                                         ; Data bits 0-3 select planes for write mode 00
seg005:09DC                 mov     ah, ch
seg005:09DE                 mov     al, 8
seg005:09E0                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:09E0                                         ; set/reset.
seg005:09E0                                         ; Data bits 0-3 select planes for write mode 00
seg005:09E1                 and     es:[di], al
seg005:09E4                 inc     di
seg005:09E5                 dec     cl
seg005:09E7                 jnz     short loc_C8C8
seg005:09E9                 add     di, 118h
seg005:09ED                 pop     ds
seg005:09EE                 dec     byte_28457
seg005:09F2                 jnz     short loc_C8C1
seg005:09F4                 call    sub_C9CD
seg005:09F7                 pop     bx
seg005:09F8                 cmp     byte_1F16C, 0
seg005:09FD                 jnz     short loc_C927
seg005:09FF                 inc     bx
seg005:0A00                 cmp     bl, 40h ; '@'
seg005:0A03                 jnb     short loc_C927
seg005:0A05                 jmp     short loc_C8A8
seg005:0A07 ; ---------------------------------------------------------------------------
seg005:0A07
seg005:0A07 loc_C927:                               ; CODE XREF: sub_C7ED+130␘j
seg005:0A07                                         ; sub_C7ED+136␘j
seg005:0A07                 pop     di
seg005:0A08                 pop     si
seg005:0A09                 pop     es
seg005:0A0A                 retf
seg005:0A0B ; ---------------------------------------------------------------------------
seg005:0A0B
seg005:0A0B loc_C92B:                               ; CODE XREF: sub_C7ED+29␘j
seg005:0A0B                 mov     bx, 0
seg005:0A0E                 mov     es, word_280B8
seg005:0A12
seg005:0A12 loc_C932:                               ; CODE XREF: sub_C7ED+1D4␙j
seg005:0A12                 push    bx
seg005:0A13                 mov     al, [bx-7003h]
seg005:0A17                 mov     dl, al
seg005:0A19                 mov     cl, al
seg005:0A1B                 shr     cl, 1
seg005:0A1D                 sub     ch, ch
seg005:0A1F                 mov     di, cx
seg005:0A21                 and     bl, 7
seg005:0A24                 mov     al, [bx-6FA9h]
seg005:0A28                 test    al, 4
seg005:0A2A                 jz      short loc_C950
seg005:0A2C                 add     di, 0A0h ; 'á'
seg005:0A30
seg005:0A30 loc_C950:                               ; CODE XREF: sub_C7ED+15D␘j
seg005:0A30                 and     al, 3
seg005:0A32                 mov     ah, al
seg005:0A34                 sub     al, al
seg005:0A36                 ror     ah, 1
seg005:0A38                 ror     ah, 1
seg005:0A3A                 ror     ah, 1
seg005:0A3C                 add     di, ax
seg005:0A3E                 mov     bl, dl
seg005:0A40                 and     bl, 1
seg005:0A43                 sub     bh, bh
seg005:0A45                 mov     dh, [bx-6FBBh]
seg005:0A49                 mov     dl, dh
seg005:0A4B                 xor     dl, 0FFh
seg005:0A4E                 mov     ax, word_1F180
seg005:0A51                 push    ax
seg005:0A52                 push    ds
seg005:0A53                 mov     ds, word_280BA
seg005:0A57                 mov     bh, 19h
seg005:0A59
seg005:0A59 loc_C979:                               ; CODE XREF: sub_C7ED+1B7␙j
seg005:0A59                 mov     cx, 14h
seg005:0A5C
seg005:0A5C loc_C97C:                               ; CODE XREF: sub_C7ED+1AF␙j
seg005:0A5C                 mov     si, di
seg005:0A5E                 lodsb
seg005:0A5F                 and     al, dh
seg005:0A61                 mov     ah, es:[di]
seg005:0A64                 and     ah, dl
seg005:0A66                 or      al, ah
seg005:0A68                 stosb
seg005:0A69                 add     di, 3
seg005:0A6C                 mov     si, di
seg005:0A6E                 lodsb
seg005:0A6F                 and     al, dh
seg005:0A71                 mov     ah, es:[di]
seg005:0A74                 and     ah, dl
seg005:0A76                 or      al, ah
seg005:0A78                 stosb
seg005:0A79                 add     di, 3
seg005:0A7C                 loop    loc_C97C
seg005:0A7E                 add     di, 0A0h ; 'á'
seg005:0A82                 dec     bh
seg005:0A84                 jnz     short loc_C979
seg005:0A86                 pop     ds
seg005:0A87                 call    sub_C9CD
seg005:0A8A                 pop     ax
seg005:0A8B                 cmp     byte_1F16C, 0
seg005:0A90                 jnz     short loc_C9C8
seg005:0A92
seg005:0A92 loc_C9B2:                               ; CODE XREF: sub_C7ED+1CB␙j
seg005:0A92                 mov     dx, word_1F180
seg005:0A96                 sub     dx, ax
seg005:0A98                 jz      short loc_C9B2
seg005:0A9A                 pop     bx
seg005:0A9B                 inc     bx
seg005:0A9C                 cmp     bl, 40h ; '@'
seg005:0A9F                 jnb     short loc_C9C4
seg005:0AA1                 jmp     loc_C932
seg005:0AA4 ; ---------------------------------------------------------------------------
seg005:0AA4
seg005:0AA4 loc_C9C4:                               ; CODE XREF: sub_C7ED+1D2␘j
seg005:0AA4                 pop     di
seg005:0AA5                 pop     si
seg005:0AA6                 pop     es
seg005:0AA7                 retf
seg005:0AA8 ; ---------------------------------------------------------------------------
seg005:0AA8
seg005:0AA8 loc_C9C8:                               ; CODE XREF: sub_C7ED+1C3␘j
seg005:0AA8                 pop     bx
seg005:0AA9                 pop     di
seg005:0AAA                 pop     si
seg005:0AAB                 pop     es
seg005:0AAC                 retf
seg005:0AAC sub_C7ED        endp
seg005:0AAC
seg005:0AAD
