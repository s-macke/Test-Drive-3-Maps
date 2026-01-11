seg006:0404 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0404
seg006:0404 ; Attributes: bp-based frame
seg006:0404
seg006:0404 sub_E254        proc far                ; CODE XREF: sub_76D6+18C␘P
seg006:0404                                         ; seg004:12B6␘P ...
seg006:0404
seg006:0404 arg_0           = word ptr  6
seg006:0404
seg006:0404                 push    bp
seg006:0405                 mov     bp, sp
seg006:0407                 mov     bl, byte_1FABE
seg006:040B                 mov     ax, 25h ; '%'
seg006:040E                 dec     bl
seg006:0410                 jz      short loc_E28A
seg006:0412                 mov     ax, 15h
seg006:0415                 cmp     bl, 1
seg006:0418                 jz      short loc_E28A
seg006:041A                 mov     al, 16h
seg006:041C                 mov     bh, 20h ; ' '
seg006:041E                 cmp     bl, 0Ah
seg006:0421                 jb      short loc_E27F
seg006:0423                 mov     bh, 30h ; '0'
seg006:0425
seg006:0425 loc_E275:                               ; CODE XREF: sub_E254+29␙j
seg006:0425                 inc     bh
seg006:0427                 sub     bl, 0Ah
seg006:042A                 cmp     bl, 0Ah
seg006:042D                 jnb     short loc_E275
seg006:042F
seg006:042F loc_E27F:                               ; CODE XREF: sub_E254+1D␘j
seg006:042F                 add     bl, 30h ; '0'
seg006:0432                 mov     byte_20A21, bh
seg006:0436                 mov     byte_20A22, bl
seg006:043A
seg006:043A loc_E28A:                               ; CODE XREF: sub_E254+C␘j
seg006:043A                                         ; sub_E254+14␘j
seg006:043A                 push    ax
seg006:043B                 cmp     byte_2BF82, 1
seg006:0440                 jnz     short loc_E29A
seg006:0442                 mov     dx, [bp+arg_0]
seg006:0445                 call    sub_E2F7
seg006:044A
seg006:044A loc_E29A:                               ; CODE XREF: sub_E254+3C␘j
seg006:044A                 mov     byte_28147, 0
seg006:044F                 call    sub_1688
seg006:0454                 add     sp, 2
seg006:0457                 cmp     [bp+arg_0], 0
seg006:045B                 jnz     short loc_E2B4
seg006:045D                 cmp     byte_2A6BF, 0
seg006:0462                 jnz     short loc_E2DD
seg006:0464
seg006:0464 loc_E2B4:                               ; CODE XREF: sub_E254+57␘j
seg006:0464                 inc     byte_1FB55
seg006:0468                 mov     byte_2849E, 0
seg006:046D                 mov     byte_28477, 0
seg006:0472                 dec     byte_1FABE
seg006:0476                 jz      short loc_E2D5
seg006:0478                 mov     word_1F16A, 2
seg006:047E                 mov     byte_2D851, 1
seg006:0483                 pop     bp
seg006:0484                 retf
seg006:0485 ; ---------------------------------------------------------------------------
seg006:0485
seg006:0485 loc_E2D5:                               ; CODE XREF: sub_E254+72␘j
seg006:0485                 mov     word_1F16A, 3
seg006:048B                 pop     bp
seg006:048C                 retf
seg006:048D ; ---------------------------------------------------------------------------
seg006:048D
seg006:048D loc_E2DD:                               ; CODE XREF: sub_E254+5E␘j
seg006:048D                 cmp     byte_2BF82, 1
seg006:0492                 jnz     short loc_E2EB
seg006:0494                 call    sub_7CC4
seg006:0499                 pop     bp
seg006:049A                 retf
seg006:049B ; ---------------------------------------------------------------------------
seg006:049B
seg006:049B loc_E2EB:                               ; CODE XREF: sub_E254+8E␘j
seg006:049B                 mov     byte_2A6BF, 0
seg006:04A0                 mov     byte_207B8, 0
seg006:04A5                 pop     bp
seg006:04A6                 retf
seg006:04A6 sub_E254        endp
seg006:04A6
seg006:04A7
