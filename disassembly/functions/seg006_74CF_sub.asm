seg006:74CF ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:74CF
seg006:74CF
seg006:74CF sub_1531F       proc near               ; CODE XREF: sub_137A0+13C␘p
seg006:74CF                                         ; sub_139BE+7A␘p ...
seg006:74CF                 mov     dx, es:[si]
seg006:74D2                 add     si, bx
seg006:74D4                 mov     ax, es:[si]
seg006:74D7                 mov     cl, byte_2AD22
seg006:74DB                 or      cl, cl
seg006:74DD                 jnz     short loc_1534F
seg006:74DF
seg006:74DF loc_1532F:                              ; CODE XREF: sub_1531F+44␙j
seg006:74DF                 push    dx
seg006:74E0                 add     si, bx
seg006:74E2                 mov     cx, es:[si]
seg006:74E5                 mov     dh, byte_28456
seg006:74E9                 test    dh, 3Fh
seg006:74EC                 jnz     short loc_15370
seg006:74EE
seg006:74EE loc_1533E:                              ; CODE XREF: sub_1531F+97␙j
seg006:74EE                 cmp     dh, 40h ; '@'
seg006:74F1                 jb      short loc_1536E
seg006:74F3                 jz      short loc_1536B
seg006:74F5                 cmp     dh, 80h ; 'Ç'
seg006:74F8                 jz      short loc_15365
seg006:74FA                 xchg    ax, cx
seg006:74FB                 neg     ax
seg006:74FD                 pop     dx
seg006:74FE                 retn
seg006:74FF ; ---------------------------------------------------------------------------
seg006:74FF
seg006:74FF loc_1534F:                              ; CODE XREF: sub_1531F+E␘j
seg006:74FF                 mov     bp, ax
seg006:7501                 shl     bp, 1
seg006:7503                 mov     ch, cl
seg006:7505                 jns     short loc_15359
seg006:7507                 neg     cl
seg006:7509
seg006:7509 loc_15359:                              ; CODE XREF: sub_1531F+36␘j
seg006:7509                 sar     bp, cl
seg006:750B                 or      ch, ch
seg006:750D                 js      short loc_15361
seg006:750F                 neg     bp
seg006:7511
seg006:7511 loc_15361:                              ; CODE XREF: sub_1531F+3E␘j
seg006:7511                 add     dx, bp
seg006:7513                 jmp     short loc_1532F
seg006:7515 ; ---------------------------------------------------------------------------
seg006:7515
seg006:7515 loc_15365:                              ; CODE XREF: sub_1531F+29␘j
seg006:7515                 neg     ax
seg006:7517                 neg     cx
seg006:7519                 pop     dx
seg006:751A                 retn
seg006:751B ; ---------------------------------------------------------------------------
seg006:751B
seg006:751B loc_1536B:                              ; CODE XREF: sub_1531F+24␘j
seg006:751B                 xchg    ax, cx
seg006:751C                 neg     cx
seg006:751E
seg006:751E loc_1536E:                              ; CODE XREF: sub_1531F+22␘j
seg006:751E                 pop     dx
seg006:751F                 retn
seg006:7520 ; ---------------------------------------------------------------------------
seg006:7520
seg006:7520 loc_15370:                              ; CODE XREF: sub_1531F+1D␘j
seg006:7520                 push    bx
seg006:7521                 push    si
seg006:7522                 mov     bl, dh
seg006:7524                 and     bx, 3Fh
seg006:7527                 shl     bx, 1
seg006:7529                 mov     si, ax
seg006:752B                 imul    word ptr [bx-48A5h]
seg006:752F                 shl     ax, 1
seg006:7531                 rcl     dx, 1
seg006:7533                 mov     bp, dx
seg006:7535                 mov     ax, cx
seg006:7537                 imul    word ptr [bx-4927h]
seg006:753B                 shl     ax, 1
seg006:753D                 rcl     dx, 1
seg006:753F                 add     bp, dx
seg006:7541                 mov     ax, si
seg006:7543                 imul    word ptr [bx-4927h]
seg006:7547                 shl     ax, 1
seg006:7549                 rcl     dx, 1
seg006:754B                 neg     dx
seg006:754D                 mov     ax, cx
seg006:754F                 mov     cx, dx
seg006:7551                 imul    word ptr [bx-48A5h]
seg006:7555                 shl     ax, 1
seg006:7557                 rcl     dx, 1
seg006:7559                 add     cx, dx
seg006:755B                 mov     ax, bp
seg006:755D                 mov     dh, byte_28456
seg006:7561                 and     dh, 0C0h
seg006:7564                 pop     si
seg006:7565                 pop     bx
seg006:7566                 jmp     short loc_1533E
seg006:7566 sub_1531F       endp
seg006:7566
seg006:7568
