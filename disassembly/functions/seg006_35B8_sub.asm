seg006:35B8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:35B8
seg006:35B8
seg006:35B8 sub_11408       proc near               ; CODE XREF: sub_1118F:loc_111AF␘p
seg006:35B8                 push    bp
seg006:35B9                 sub     bx, bx
seg006:35BB                 mov     byte_2AA6C, bh
seg006:35BF                 mov     al, byte_2AA90
seg006:35C2                 or      al, al
seg006:35C4                 jz      short loc_11438
seg006:35C6                 dec     al
seg006:35C8                 jnz     short loc_11429
seg006:35CA                 mov     bl, byte_2AC9A
seg006:35CE                 or      bl, bl
seg006:35D0                 jz      short loc_11429
seg006:35D2                 mov     byte_2AC9A, al
seg006:35D5                 mov     word_28474, bx
seg006:35D9
seg006:35D9 loc_11429:                              ; CODE XREF: sub_11408+10␘j
seg006:35D9                                         ; sub_11408+18␘j
seg006:35D9                 mov     byte_2AA90, al
seg006:35DC                 mov     word_2AABE, 0
seg006:35E2                 mov     word_2AAC0, 0
seg006:35E8
seg006:35E8 loc_11438:                              ; CODE XREF: sub_11408+C␘j
seg006:35E8                 mov     byte_2AA84, 70h ; 'p'
seg006:35ED                 mov     es, word_280BC
seg006:35F1                 sub     bx, bx
seg006:35F3                 mov     word_2AA6D, bx
seg006:35F7                 mov     word_2AA6F, bx
seg006:35FB                 mov     byte_2AA85, 0FFh
seg006:3600                 mov     si, 2
seg006:3603                 mov     dx, [bx+560Eh]
seg006:3607                 push    dx
seg006:3608                 mov     dx, [si+560Eh]
seg006:360C                 push    dx
seg006:360D                 mov     ax, word_28482
seg006:3610                 sub     dx, dx
seg006:3612                 mov     cl, byte_2848C
seg006:3616                 or      cl, cl
seg006:3618                 jz      short loc_1147C
seg006:361A                 mov     ch, cl
seg006:361C                 jns     short loc_11470
seg006:361E                 neg     cl
seg006:3620
seg006:3620 loc_11470:                              ; CODE XREF: sub_11408+64␘j
seg006:3620                 mov     dx, word_2AA81
seg006:3624                 sar     dx, cl
seg006:3626                 or      ch, ch
seg006:3628                 js      short loc_1147C
seg006:362A                 neg     dx
seg006:362C
seg006:362C loc_1147C:                              ; CODE XREF: sub_11408+60␘j
seg006:362C                                         ; sub_11408+70␘j
seg006:362C                 add     ax, dx
seg006:362E                 mov     di, word_2AAC0
seg006:3632                 cmp     di, ax
seg006:3634                 jle     short loc_11488
seg006:3636                 mov     di, ax
seg006:3638
seg006:3638 loc_11488:                              ; CODE XREF: sub_11408+7C␘j
seg006:3638                 cmp     ax, word_2AABE
seg006:363C                 jge     short loc_11491
seg006:363E                 mov     word_2AABE, ax
seg006:3641
seg006:3641 loc_11491:                              ; CODE XREF: sub_11408+84␘j
seg006:3641                 shl     dx, 1
seg006:3643                 neg     dx
seg006:3645                 add     dx, ax
seg006:3647                 cmp     di, dx
seg006:3649                 jle     short loc_1149D
seg006:364B                 mov     di, dx
seg006:364D
seg006:364D loc_1149D:                              ; CODE XREF: sub_11408+91␘j
seg006:364D                 cmp     dx, word_2AABE
seg006:3651                 jge     short loc_114A7
seg006:3653                 mov     word_2AABE, dx
seg006:3657
seg006:3657 loc_114A7:                              ; CODE XREF: sub_11408+99␘j
seg006:3657                 mov     word_2AA86, di
seg006:365B                 mov     word_2AA88, di
seg006:365F                 sub     ax, di
seg006:3661                 sub     dx, di
seg006:3663                 mov     [si+560Eh], ax
seg006:3667                 mov     [bx+560Eh], dx
seg006:366B                 mov     al, byte_285AC
seg006:366E                 mov     bl, byte_285AE
seg006:3672                 cmp     byte_285B4, 0
seg006:3677                 jz      short loc_114D0
seg006:3679                 mov     al, byte_285AD
seg006:367C                 mov     bl, byte_285AF
seg006:3680
seg006:3680 loc_114D0:                              ; CODE XREF: sub_11408+BF␘j
seg006:3680                 mov     ah, byte_2AA90
seg006:3684                 or      ah, ah
seg006:3686                 jz      short loc_114EC
seg006:3688                 mov     word_2AABE, 0
seg006:368E                 mov     cl, 1
seg006:3690                 mov     al, ah
seg006:3692                 shl     al, 1
seg006:3694                 shl     al, 1
seg006:3696                 shl     al, 1
seg006:3698                 dec     al
seg006:369A                 mov     bl, al
seg006:369C
seg006:369C loc_114EC:                              ; CODE XREF: sub_11408+CE␘j
seg006:369C                 cmp     word_2D628, 13h
seg006:36A1                 jnz     short loc_114FC
seg006:36A3                 mov     al, bl
seg006:36A5                 mov     ah, al
seg006:36A7                 mov     word_2AA8A, ax
seg006:36AA                 jmp     short loc_11517
seg006:36AC ; ---------------------------------------------------------------------------
seg006:36AC
seg006:36AC loc_114FC:                              ; CODE XREF: sub_11408+E9␘j
seg006:36AC                 mov     cl, 1
seg006:36AE                 mov     ah, al
seg006:36B0                 mov     word_2AA8A, ax
seg006:36B3                 shl     ah, 1
seg006:36B5                 shl     ah, 1
seg006:36B7                 shl     ah, 1
seg006:36B9                 shl     ah, 1
seg006:36BB                 mov     bl, al
seg006:36BD                 or      bl, ah
seg006:36BF                 sub     bh, bh
seg006:36C1                 shl     bx, 1
seg006:36C3                 mov     ax, [bx-4C3Bh]
seg006:36C7
seg006:36C7 loc_11517:                              ; CODE XREF: sub_11408+F2␘j
seg006:36C7                 mov     word_2AA9B, ax
seg006:36CA                 mov     word_2AA8C, ax
seg006:36CD                 cmp     byte_2A6C7, 0
seg006:36D2                 jz      short loc_1152B
seg006:36D4                 or      cl, cl
seg006:36D6                 jnz     short loc_1152B
seg006:36D8                 jmp     short loc_11593
seg006:36D8 ; ---------------------------------------------------------------------------
seg006:36DA                 db 90h
seg006:36DB ; ---------------------------------------------------------------------------
seg006:36DB
seg006:36DB loc_1152B:                              ; CODE XREF: sub_11408+11A␘j
seg006:36DB                                         ; sub_11408+11E␘j
seg006:36DB                 sub     ax, ax
seg006:36DD                 sub     bx, bx
seg006:36DF                 mov     cx, word_2AA7F
seg006:36E3                 add     cx, 20h ; ' '
seg006:36E6                 call    sub_11CB1
seg006:36E9
seg006:36E9 loc_11539:                              ; CODE XREF: sub_11408:loc_11615␙j
seg006:36E9                 sub     bx, bx
seg006:36EB                 mov     si, 2
seg006:36EE                 mov     di, word_2AA88
seg006:36F2                 add     [si+560Eh], di
seg006:36F6                 add     [bx+560Eh], di
seg006:36FA                 mov     ax, word_285B0
seg006:36FD                 cmp     byte ptr word_2AC61, 0
seg006:3702                 jz      short loc_11557
seg006:3704                 mov     ax, 0F0Fh
seg006:3707
seg006:3707 loc_11557:                              ; CODE XREF: sub_11408+14A␘j
seg006:3707                 shl     ah, 1
seg006:3709                 shl     ah, 1
seg006:370B                 shl     ah, 1
seg006:370D                 shl     ah, 1
seg006:370F                 mov     bl, al
seg006:3711                 or      bl, ah
seg006:3713                 sub     bh, bh
seg006:3715                 shl     bx, 1
seg006:3717                 mov     ax, [bx-4C3Bh]
seg006:371B                 mov     word_2AA9B, ax
seg006:371E                 mov     word_2AA8E, ax
seg006:3721                 sub     ax, ax
seg006:3723                 sub     bx, bx
seg006:3725                 mov     cx, word_2AA7F
seg006:3729                 add     cx, 20h ; ' '
seg006:372C                 call    sub_11C38
seg006:372F                 call    sub_15867
seg006:3732                 sub     bx, bx
seg006:3734                 mov     si, 2
seg006:3737                 pop     dx
seg006:3738                 mov     [si+560Eh], dx
seg006:373C                 pop     dx
seg006:373D                 mov     [bx+560Eh], dx
seg006:3741                 pop     bp
seg006:3742                 retn
seg006:3743 ; ---------------------------------------------------------------------------
seg006:3743
seg006:3743 loc_11593:                              ; CODE XREF: sub_11408+120␘j
seg006:3743                 mov     cx, dx
seg006:3745                 sub     cx, 14h
seg006:3748                 jns     short loc_1159E
seg006:374A                 sub     dx, cx
seg006:374C                 add     di, cx
seg006:374E
seg006:374E loc_1159E:                              ; CODE XREF: sub_11408+190␘j
seg006:374E                 add     dx, di
seg006:3750                 js      short loc_11615
seg006:3752                 or      di, di
seg006:3754                 jns     short loc_115A8
seg006:3756                 sub     di, di
seg006:3758
seg006:3758 loc_115A8:                              ; CODE XREF: sub_11408+19C␘j
seg006:3758                 sub     dx, 14h
seg006:375B                 jns     short loc_115CC
seg006:375D                 mov     word_2AABE, 0
seg006:3763                 mov     ax, word_2AA9B
seg006:3766                 sub     di, di
seg006:3768                 mov     bh, 5
seg006:376A                 mov     bl, 4
seg006:376C
seg006:376C loc_115BC:                              ; CODE XREF: sub_11408+1C0␙j
seg006:376C                 dec     bl
seg006:376E                 jnz     short loc_115C7
seg006:3770                 add     ax, 101h
seg006:3773                 dec     bh
seg006:3775                 mov     bl, 4
seg006:3777
seg006:3777 loc_115C7:                              ; CODE XREF: sub_11408+1B6␘j
seg006:3777                 inc     dx
seg006:3778                 js      short loc_115BC
seg006:377A                 jmp     short loc_115FF
seg006:377C ; ---------------------------------------------------------------------------
seg006:377C
seg006:377C loc_115CC:                              ; CODE XREF: sub_11408+1A3␘j
seg006:377C                 cmp     dx, word_2AABE
seg006:3780                 jnb     short loc_115D6
seg006:3782                 mov     word_2AABE, dx
seg006:3786
seg006:3786 loc_115D6:                              ; CODE XREF: sub_11408+1C8␘j
seg006:3786                 mov     bx, dx
seg006:3788                 sub     bx, di
seg006:378A                 mov     ax, di
seg006:378C                 xchg    al, ah
seg006:378E                 mov     di, ax
seg006:3790                 shr     ax, 1
seg006:3792                 shr     ax, 1
seg006:3794                 add     di, ax
seg006:3796                 mov     ax, word_2AA9B
seg006:3799                 or      bx, bx
seg006:379B                 jz      short loc_115FB
seg006:379D
seg006:379D loc_115ED:                              ; CODE XREF: sub_11408+1F1␙j
seg006:379D                 mov     cx, 0A0h ; 'á'
seg006:37A0                 cmp     di, 7800h
seg006:37A4                 jnb     short loc_11615
seg006:37A6                 rep stosw
seg006:37A8                 dec     bx
seg006:37A9                 jnz     short loc_115ED
seg006:37AB
seg006:37AB loc_115FB:                              ; CODE XREF: sub_11408+1E3␘j
seg006:37AB                 mov     bh, 5
seg006:37AD
seg006:37AD loc_115FD:                              ; CODE XREF: sub_11408+20B␙j
seg006:37AD                 mov     bl, 4
seg006:37AF
seg006:37AF loc_115FF:                              ; CODE XREF: sub_11408+1C2␘j
seg006:37AF                 add     ax, 101h
seg006:37B2
seg006:37B2 loc_11602:                              ; CODE XREF: sub_11408+207␙j
seg006:37B2                 mov     cx, 0A0h ; 'á'
seg006:37B5                 cmp     di, 7800h
seg006:37B9                 jnb     short loc_11615
seg006:37BB                 rep stosw
seg006:37BD                 dec     bl
seg006:37BF                 jnz     short loc_11602
seg006:37C1                 dec     bh
seg006:37C3                 jnz     short loc_115FD
seg006:37C5
seg006:37C5 loc_11615:                              ; CODE XREF: sub_11408+198␘j
seg006:37C5                                         ; sub_11408+1EC␘j ...
seg006:37C5                 jmp     loc_11539
seg006:37C5 sub_11408       endp
seg006:37C5
seg006:37C8
