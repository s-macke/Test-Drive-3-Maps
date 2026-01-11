seg032:081B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:081B
seg032:081B
seg032:081B sub_1B9BB       proc near               ; CODE XREF: sub_1B896+44␘p
seg032:081B                 test    byte ptr word_2BEEC, 0Ch
seg032:0820                 jz      short locret_1B9F4
seg032:0822                 mov     bx, 0C5C4h
seg032:0825                 mov     al, byte ptr word_2B5CD
seg032:0828                 xlat
seg032:0829                 test    al, 80h
seg032:082B                 jz      short locret_1B9F4
seg032:082D                 mov     al, byte_2B5D0
seg032:0830                 cmp     al, 19h
seg032:0832                 jz      short locret_1B9F4
seg032:0834                 and     al, 1
seg032:0836                 or      al, 6
seg032:0838                 cmp     byte_2B5CF, 28h ; '('
seg032:083D                 jz      short loc_1B9E1
seg032:083F                 shr     al, 1
seg032:0841
seg032:0841 loc_1B9E1:                              ; CODE XREF: sub_1B9BB+22␘j
seg032:0841                 test    byte ptr word_2BEEC, 4
seg032:0846                 jz      short loc_1B9F1
seg032:0848                 cmp     word_2BEEE, 40h ; '@'
seg032:084D                 ja      short loc_1B9F1
seg032:084F                 shr     al, 1
seg032:0851
seg032:0851 loc_1B9F1:                              ; CODE XREF: sub_1B9BB+2B␘j
seg032:0851                                         ; sub_1B9BB+32␘j
seg032:0851                 mov     byte_2B5DC, al
seg032:0854
seg032:0854 locret_1B9F4:                           ; CODE XREF: sub_1B9BB+5␘j
seg032:0854                                         ; sub_1B9BB+10␘j ...
seg032:0854                 retn
seg032:0854 sub_1B9BB       endp
seg032:0854
seg032:0855 ; ---------------------------------------------------------------------------
seg032:0855                 push    bp
seg032:0856                 mov     bp, sp
seg032:0858                 call    sub_1B3EC
seg032:085B                 mov     ax, [bp+6]
seg032:085E                 mov     bl, 0FFh
seg032:0860                 or      ah, ah
seg032:0862                 jnz     short loc_1BA18
seg032:0864                 cmp     al, byte_2B5DC
seg032:0868                 ja      short loc_1BA18
seg032:086A                 mov     bl, byte ptr word_2B633
seg032:086E                 mov     ah, byte ptr word_2B633+1
seg032:0872                 push    bx
seg032:0873                 call    off_2B5E9
seg032:0877                 pop     bx
seg032:0878
seg032:0878 loc_1BA18:                              ; CODE XREF: seg032:0862␘j
seg032:0878                                         ; seg032:0868␘j
seg032:0878                 mov     ax, bx
seg032:087A                 cbw
seg032:087B                 call    sub_1B40A
seg032:087E                 pop     bp
seg032:087F                 retf
seg032:0880 ; ---------------------------------------------------------------------------
seg032:0880                 push    bp
seg032:0881                 mov     bp, sp
seg032:0883                 call    sub_1B3EC
seg032:0886                 mov     ax, [bp+6]
seg032:0889                 mov     bl, 0FFh
seg032:088B                 or      ah, ah
seg032:088D                 jnz     short loc_1BA44
seg032:088F                 cmp     al, byte_2B5DC
seg032:0893                 ja      short loc_1BA44
seg032:0895                 mov     bl, byte ptr word_2B633+1
seg032:0899                 xchg    ah, al
seg032:089B                 mov     al, byte ptr word_2B633
seg032:089E                 push    bx
seg032:089F                 call    off_2B5E9
seg032:08A3                 pop     bx
seg032:08A4
seg032:08A4 loc_1BA44:                              ; CODE XREF: seg032:088D␘j
seg032:08A4                                         ; seg032:0893␘j
seg032:08A4                 mov     ax, bx
seg032:08A6                 cbw
seg032:08A7                 call    sub_1B40A
seg032:08AA                 pop     bp
seg032:08AB                 retf
seg032:08AC ; ---------------------------------------------------------------------------
seg032:08AC                 push    bp
seg032:08AD                 mov     bp, sp
seg032:08AF                 push    di
seg032:08B0                 push    es
seg032:08B1                 les     di, [bp+6]
seg032:08B4                 cld
seg032:08B5                 xor     ax, ax
seg032:08B7                 mov     bx, ax
seg032:08B9                 mov     dx, ax
seg032:08BB                 mov     cx, 20h ; ' '
seg032:08BE                 cmp     byte_2B5CC, al
seg032:08C2                 jz      short loc_1BA78
seg032:08C4                 mov     al, byte_2B5F3
seg032:08C7                 mul     byte_2B5F4
seg032:08CB                 xchg    ax, dx
seg032:08CC                 mov     ax, word_2B5D1
seg032:08CF                 mov     bx, word_2B5D3
seg032:08D3                 mov     cl, byte_2B5D7
seg032:08D7                 inc     cx
seg032:08D8
seg032:08D8 loc_1BA78:                              ; CODE XREF: seg032:08C2␘j
seg032:08D8                 stosw
seg032:08D9                 xchg    ax, bx
seg032:08DA                 stosw
seg032:08DB                 xor     ax, ax
seg032:08DD                 mov     al, byte_2B5CF
seg032:08E0                 stosw
seg032:08E1                 mov     al, byte_2B5D0
seg032:08E4                 stosw
seg032:08E5                 xchg    ax, cx
seg032:08E6                 stosw
seg032:08E7                 xchg    ax, dx
seg032:08E8                 stosw
seg032:08E9                 mov     al, byte_2B5DC
seg032:08EC                 inc     ax
seg032:08ED                 stosw
seg032:08EE                 mov     al, byte ptr word_2B5CD
seg032:08F1                 stosw
seg032:08F2                 mov     al, byte ptr word_2BEEC
seg032:08F5                 stosw
seg032:08F6                 mov     al, byte ptr word_2BEEC+1
seg032:08F9                 stosw
seg032:08FA                 mov     ax, word_2BEEE
seg032:08FD                 stosw
seg032:08FE                 mov     ax, [bp+6]
seg032:0901                 mov     dx, es
seg032:0903                 pop     es
seg032:0904                 pop     di
seg032:0905                 pop     bp
seg032:0906                 retf
seg032:0907
