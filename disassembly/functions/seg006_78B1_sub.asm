seg006:78B1 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:78B1
seg006:78B1 ; Attributes: bp-based frame
seg006:78B1
seg006:78B1 sub_15701       proc near               ; CODE XREF: sub_156E4+16␘p
seg006:78B1                                         ; sub_15701+4A␙p ...
seg006:78B1
seg006:78B1 arg_0           = word ptr  4
seg006:78B1 arg_2           = word ptr  6
seg006:78B1
seg006:78B1                 push    bp
seg006:78B2                 mov     bp, sp
seg006:78B4                 mov     si, [bp+arg_2]
seg006:78B7                 mov     dx, es:[si]
seg006:78BA                 add     si, bx
seg006:78BC                 mov     di, [bp+arg_0]
seg006:78BF
seg006:78BF loc_1570F:                              ; CODE XREF: sub_15701+17␙j
seg006:78BF                                         ; sub_15701+CE␙j
seg006:78BF                 cmp     dx, es:[si]
seg006:78C2                 jb      short loc_15775
seg006:78C4                 add     si, bx
seg006:78C6                 cmp     si, di
seg006:78C8                 jbe     short loc_1570F
seg006:78CA                 mov     si, [bp+arg_2]
seg006:78CD                 cmp     si, di
seg006:78CF                 jz      short loc_1573E
seg006:78D1                 mov     cx, es:[si]
seg006:78D4                 xchg    cx, es:[di]
seg006:78D7                 mov     es:[si], cx
seg006:78DA                 mov     ax, 0C80h
seg006:78DD                 sub     si, ax
seg006:78DF                 sub     di, ax
seg006:78E1                 mov     cx, es:[si]
seg006:78E4                 xchg    cx, es:[di]
seg006:78E7                 mov     es:[si], cx
seg006:78EA                 add     si, ax
seg006:78EC                 add     di, ax
seg006:78EE
seg006:78EE loc_1573E:                              ; CODE XREF: sub_15701+1E␘j
seg006:78EE                                         ; sub_15701+A7␙j
seg006:78EE                 sub     di, bx
seg006:78F0                 push    si
seg006:78F1                 push    di
seg006:78F2                 sub     di, si
seg006:78F4                 jle     short loc_15753
seg006:78F6                 cmp     di, 28h ; '('
seg006:78F9                 jbe     short loc_15750
seg006:78FB                 call    sub_15701
seg006:78FE                 jmp     short loc_15753
seg006:7900 ; ---------------------------------------------------------------------------
seg006:7900
seg006:7900 loc_15750:                              ; CODE XREF: sub_15701+48␘j
seg006:7900                 call    sub_157D2
seg006:7903
seg006:7903 loc_15753:                              ; CODE XREF: sub_15701+43␘j
seg006:7903                                         ; sub_15701+4D␘j
seg006:7903                 pop     si
seg006:7904                 add     sp, bx
seg006:7906                 add     si, bx
seg006:7908
seg006:7908 loc_15758:                              ; CODE XREF: sub_15701+88␙j
seg006:7908                 add     si, bx
seg006:790A                 push    si
seg006:790B                 mov     di, [bp+arg_0]
seg006:790E                 push    di
seg006:790F                 sub     di, si
seg006:7911                 jle     short loc_15770
seg006:7913                 cmp     di, 28h ; '('
seg006:7916                 jbe     short loc_1576D
seg006:7918                 call    sub_15701
seg006:791B                 jmp     short loc_15770
seg006:791D ; ---------------------------------------------------------------------------
seg006:791D
seg006:791D loc_1576D:                              ; CODE XREF: sub_15701+65␘j
seg006:791D                 call    sub_157D2
seg006:7920
seg006:7920 loc_15770:                              ; CODE XREF: sub_15701+60␘j
seg006:7920                                         ; sub_15701+6A␘j
seg006:7920                 add     sp, 4
seg006:7923                 pop     bp
seg006:7924                 retn
seg006:7925 ; ---------------------------------------------------------------------------
seg006:7925
seg006:7925 loc_15775:                              ; CODE XREF: sub_15701+11␘j
seg006:7925                                         ; sub_15701+7D␙j
seg006:7925                 cmp     dx, es:[di]
seg006:7928                 ja      short loc_157AA
seg006:792A                 sub     di, bx
seg006:792C                 cmp     di, si
seg006:792E                 jnb     short loc_15775
seg006:7930
seg006:7930 loc_15780:                              ; CODE XREF: sub_15701+CA␙j
seg006:7930                 mov     di, si
seg006:7932                 sub     di, bx
seg006:7934                 mov     si, [bp+arg_2]
seg006:7937                 cmp     si, di
seg006:7939                 jz      short loc_15758
seg006:793B                 mov     cx, es:[si]
seg006:793E                 xchg    cx, es:[di]
seg006:7941                 mov     es:[si], cx
seg006:7944                 mov     ax, 0C80h
seg006:7947                 sub     si, ax
seg006:7949                 sub     di, ax
seg006:794B                 mov     cx, es:[si]
seg006:794E                 xchg    cx, es:[di]
seg006:7951                 mov     es:[si], cx
seg006:7954                 add     si, ax
seg006:7956                 add     di, ax
seg006:7958                 jmp     short loc_1573E
seg006:795A ; ---------------------------------------------------------------------------
seg006:795A
seg006:795A loc_157AA:                              ; CODE XREF: sub_15701+77␘j
seg006:795A                 mov     cx, es:[si]
seg006:795D                 xchg    cx, es:[di]
seg006:7960                 mov     es:[si], cx
seg006:7963                 mov     ax, 0C80h
seg006:7966                 sub     si, ax
seg006:7968                 sub     di, ax
seg006:796A                 mov     cx, es:[si]
seg006:796D                 xchg    cx, es:[di]
seg006:7970                 mov     es:[si], cx
seg006:7973                 add     si, ax
seg006:7975                 add     di, ax
seg006:7977                 add     si, bx
seg006:7979                 cmp     di, si
seg006:797B                 jbe     short loc_15780
seg006:797D                 sub     di, bx
seg006:797F                 jmp     loc_1570F
seg006:797F sub_15701       endp
seg006:797F
seg006:7982
