seg001:559A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:559A
seg001:559A ; Attributes: bp-based frame
seg001:559A
seg001:559A sub_72DA        proc far                ; CODE XREF: sub_0+70C␘P
seg001:559A
seg001:559A var_16          = word ptr -16h
seg001:559A var_14          = word ptr -14h
seg001:559A var_12          = word ptr -12h
seg001:559A var_10          = word ptr -10h
seg001:559A var_E           = word ptr -0Eh
seg001:559A var_C           = word ptr -0Ch
seg001:559A var_A           = word ptr -0Ah
seg001:559A var_8           = word ptr -8
seg001:559A var_6           = word ptr -6
seg001:559A var_4           = word ptr -4
seg001:559A var_2           = word ptr -2
seg001:559A
seg001:559A                 push    bp
seg001:559B                 mov     bp, sp
seg001:559D                 sub     sp, 16h
seg001:55A0                 push    si
seg001:55A1                 cmp     byte_1FABE, 0
seg001:55A6                 jnz     short loc_72EB
seg001:55A8                 jmp     loc_7690
seg001:55AB ; ---------------------------------------------------------------------------
seg001:55AB
seg001:55AB loc_72EB:                               ; CODE XREF: sub_72DA+C␘j
seg001:55AB                 cmp     byte_1FBE9, 0
seg001:55B0                 jnz     short loc_72F5
seg001:55B2                 jmp     loc_7690
seg001:55B5 ; ---------------------------------------------------------------------------
seg001:55B5
seg001:55B5 loc_72F5:                               ; CODE XREF: sub_72DA+16␘j
seg001:55B5                 mov     [bp+var_2], 1
seg001:55BA                 jmp     loc_75CC
seg001:55BA ; ---------------------------------------------------------------------------
seg001:55BD                 align 2
seg001:55BE
seg001:55BE loc_72FE:                               ; CODE XREF: sub_72DA+392␙j
seg001:55BE                 mov     ax, 1Bh
seg001:55C1                 imul    [bp+var_2]
seg001:55C4                 mov     bx, ax
seg001:55C6                 mov     byte ptr [bx-15F9h], 0
seg001:55CB
seg001:55CB loc_730B:                               ; CODE XREF: sub_72DA+3B3␙j
seg001:55CB                 mov     ax, 1Bh
seg001:55CE                 imul    [bp+var_2]
seg001:55D1                 mov     bx, ax
seg001:55D3                 mov     al, [bx-15F9h]
seg001:55D7                 sub     ah, ah
seg001:55D9                 mov     cx, word_1FBE4
seg001:55DD                 add     cx, 4
seg001:55E0                 mul     cx
seg001:55E2                 mov     [bp+var_A], ax
seg001:55E5                 mov     [bp+var_8], 0
seg001:55EA                 mov     ax, [bp+var_6]
seg001:55ED                 or      ax, [bp+var_4]
seg001:55F0                 jz      short loc_735C
seg001:55F2                 cmp     byte_1FABE, 0
seg001:55F7                 jz      short loc_735C
seg001:55F9                 push    [bp+var_4]
seg001:55FC                 push    [bp+var_6]
seg001:55FF                 mov     ax, 14h
seg001:5602                 cwd
seg001:5603                 push    dx
seg001:5604                 push    ax
seg001:5605                 sub     ax, ax
seg001:5607                 push    ax
seg001:5608                 push    word_285A7
seg001:560C                 push    [bp+var_8]
seg001:560F                 push    [bp+var_A]
seg001:5612                 call    sub_1983C
seg001:5617                 push    dx
seg001:5618                 push    ax
seg001:5619                 jmp     short loc_738A
seg001:5619 ; ---------------------------------------------------------------------------
seg001:561B                 align 2
seg001:561C
seg001:561C loc_735C:                               ; CODE XREF: sub_72DA+56␘j
seg001:561C                                         ; sub_72DA+5D␘j
seg001:561C                 mov     ax, word_285A7
seg001:561F                 sub     dx, dx
seg001:5621                 cmp     [bp+var_4], dx
seg001:5624                 jb      short loc_7378
seg001:5626                 ja      short loc_736D
seg001:5628                 cmp     [bp+var_6], ax
seg001:562B                 jbe     short loc_7378
seg001:562D
seg001:562D loc_736D:                               ; CODE XREF: sub_72DA+8C␘j
seg001:562D                 mov     ax, word_285A7
seg001:5630                 mov     [bp+var_6], ax
seg001:5633                 mov     [bp+var_4], 0
seg001:5638
seg001:5638 loc_7378:                               ; CODE XREF: sub_72DA+8A␘j
seg001:5638                                         ; sub_72DA+91␘j
seg001:5638                 mov     ax, 60h ; '`'
seg001:563B                 cwd
seg001:563C                 push    dx
seg001:563D                 push    ax
seg001:563E                 push    [bp+var_8]
seg001:5641                 push    [bp+var_A]
seg001:5644                 push    [bp+var_4]
seg001:5647                 push    [bp+var_6]
seg001:564A
seg001:564A loc_738A:                               ; CODE XREF: sub_72DA+7F␘j
seg001:564A                 call    sub_1983C
seg001:564F                 push    dx
seg001:5650                 push    ax
seg001:5651                 call    sub_198B8
seg001:5656                 mov     [bp+var_E], ax
seg001:5659                 mov     [bp+var_C], dx
seg001:565C                 cmp     dx, 0Fh
seg001:565F                 jb      short loc_73B2
seg001:5661                 ja      short loc_73A8
seg001:5663                 cmp     ax, 4240h
seg001:5666                 jbe     short loc_73B2
seg001:5668
seg001:5668 loc_73A8:                               ; CODE XREF: sub_72DA+C7␘j
seg001:5668                 mov     [bp+var_E], 4240h
seg001:566D                 mov     [bp+var_C], 0Fh
seg001:5672
seg001:5672 loc_73B2:                               ; CODE XREF: sub_72DA+C5␘j
seg001:5672                                         ; sub_72DA+CC␘j
seg001:5672                 mov     ax, 1Bh
seg001:5675                 imul    [bp+var_2]
seg001:5678                 mov     si, ax
seg001:567A                 mov     al, byte ptr [bp+var_E]
seg001:567D                 mov     [si-15F8h], al
seg001:5681                 mov     ax, [bp+var_E]
seg001:5684                 mov     dx, [bp+var_C]
seg001:5687                 mov     al, ah
seg001:5689                 mov     ah, dl
seg001:568B                 mov     dl, dh
seg001:568D                 sub     dh, dh
seg001:568F                 mov     [si-15F7h], al
seg001:5693                 mov     al, byte ptr [bp+var_C]
seg001:5696                 mov     [si-15F6h], al
seg001:569A                 mov     ax, [bp+var_E]
seg001:569D                 mov     dx, [bp+var_C]
seg001:56A0                 mov     cl, 18h
seg001:56A2
seg001:56A2 loc_73E2:                               ; CODE XREF: sub_72DA+10E␙j
seg001:56A2                 shr     dx, 1
seg001:56A4                 rcr     ax, 1
seg001:56A6                 dec     cl
seg001:56A8                 jnz     short loc_73E2
seg001:56AA                 mov     [si-15F5h], al
seg001:56AE                 mov     ah, [si-15EDh]
seg001:56B2                 sub     al, al
seg001:56B4                 sub     dx, dx
seg001:56B6                 mov     cl, [si-15EEh]
seg001:56BA                 sub     ch, ch
seg001:56BC                 add     ax, cx
seg001:56BE                 adc     dx, dx
seg001:56C0                 mov     [bp+var_6], ax
seg001:56C3                 mov     [bp+var_4], dx
seg001:56C6                 mov     ah, [si-15EBh]
seg001:56CA                 sub     al, al
seg001:56CC                 sub     dx, dx
seg001:56CE                 mov     cl, [si-15ECh]
seg001:56D2                 add     ax, cx
seg001:56D4                 adc     dx, dx
seg001:56D6                 mov     [bp+var_A], ax
seg001:56D9                 mov     [bp+var_8], dx
seg001:56DC                 mov     dx, ax
seg001:56DE                 sub     ax, ax
seg001:56E0                 add     [bp+var_6], ax
seg001:56E3                 adc     [bp+var_4], dx
seg001:56E6                 mov     ax, [bp+var_E]
seg001:56E9                 mov     dx, [bp+var_C]
seg001:56EC                 add     [bp+var_6], ax
seg001:56EF                 adc     [bp+var_4], dx
seg001:56F2                 mov     al, byte ptr [bp+var_6]
seg001:56F5                 mov     [si-15EEh], al
seg001:56F9                 mov     ax, [bp+var_6]
seg001:56FC                 mov     dx, [bp+var_4]
seg001:56FF                 mov     al, ah
seg001:5701                 mov     ah, dl
seg001:5703                 mov     dl, dh
seg001:5705                 sub     dh, dh
seg001:5707                 mov     [si-15EDh], al
seg001:570B                 mov     al, byte ptr [bp+var_4]
seg001:570E                 mov     [si-15ECh], al
seg001:5712                 mov     ax, [bp+var_6]
seg001:5715                 mov     dx, [bp+var_4]
seg001:5718                 mov     cl, 18h
seg001:571A
seg001:571A loc_745A:                               ; CODE XREF: sub_72DA+186␙j
seg001:571A                 shr     dx, 1
seg001:571C                 rcr     ax, 1
seg001:571E                 dec     cl
seg001:5720                 jnz     short loc_745A
seg001:5722                 mov     [si-15EBh], al
seg001:5726                 mov     al, [si-15FAh]
seg001:572A                 add     [si-15F0h], al
seg001:572E                 cmp     byte ptr [si-15F0h], 9
seg001:5733                 jbe     short loc_7486
seg001:5735                 mov     ax, 1Bh
seg001:5738                 imul    [bp+var_2]
seg001:573B                 mov     si, ax
seg001:573D                 sub     byte ptr [si-15F0h], 0Ah
seg001:5742                 inc     byte ptr [si-15F1h]
seg001:5746
seg001:5746 loc_7486:                               ; CODE XREF: sub_72DA+199␘j
seg001:5746                 mov     ax, 1Bh
seg001:5749                 imul    [bp+var_2]
seg001:574C                 mov     si, ax
seg001:574E                 mov     al, [si-15FBh]
seg001:5752                 add     [si-15F1h], al
seg001:5756                 cmp     byte ptr [si-15F1h], 3Bh ; ';'
seg001:575B                 jbe     short loc_74AD
seg001:575D                 sub     byte ptr [si-15F1h], 3Ch ; '<'
seg001:5762                 cmp     byte ptr [si-15F2h], 0FFh
seg001:5767                 jz      short loc_74AD
seg001:5769                 inc     byte ptr [si-15F2h]
seg001:576D
seg001:576D loc_74AD:                               ; CODE XREF: sub_72DA+1C1␘j
seg001:576D                                         ; sub_72DA+1CD␘j
seg001:576D                 mov     ax, 1Bh
seg001:5770                 imul    [bp+var_2]
seg001:5773                 mov     si, ax
seg001:5775                 mov     al, [si-15F2h]
seg001:5779                 sub     ah, ah
seg001:577B                 mov     cl, [si-15FCh]
seg001:577F                 sub     ch, ch
seg001:5781                 add     ax, cx
seg001:5783                 cmp     ax, 100h
seg001:5786                 jnb     short loc_74D0
seg001:5788                 mov     al, cl
seg001:578A                 add     [si-15F2h], al
seg001:578E                 jmp     short loc_74DD
seg001:5790 ; ---------------------------------------------------------------------------
seg001:5790
seg001:5790 loc_74D0:                               ; CODE XREF: sub_72DA+1EC␘j
seg001:5790                 mov     ax, 1Bh
seg001:5793                 imul    [bp+var_2]
seg001:5796                 mov     bx, ax
seg001:5798                 mov     byte ptr [bx-15F2h], 0FFh
seg001:579D
seg001:579D loc_74DD:                               ; CODE XREF: sub_72DA+1F4␘j
seg001:579D                 mov     ax, 1Bh
seg001:57A0                 imul    [bp+var_2]
seg001:57A3                 mov     si, ax
seg001:57A5                 mov     al, [si-15F3h]
seg001:57A9                 add     [si-15E9h], al
seg001:57AD                 cmp     byte ptr [si-15E9h], 3Bh ; ';'
seg001:57B2                 jbe     short loc_74FD
seg001:57B4                 sub     byte ptr [si-15E9h], 3Ch ; '<'
seg001:57B9                 inc     byte ptr [si-15EAh]
seg001:57BD
seg001:57BD loc_74FD:                               ; CODE XREF: sub_72DA+218␘j
seg001:57BD                 mov     ax, 1Bh
seg001:57C0                 imul    [bp+var_2]
seg001:57C3                 mov     si, ax
seg001:57C5                 mov     al, [si-15F4h]
seg001:57C9                 add     [si-15EAh], al
seg001:57CD                 mov     ax, 3Ch ; '<'
seg001:57D0                 cwd
seg001:57D1                 push    dx
seg001:57D2                 push    ax
seg001:57D3                 mov     al, [si-15EAh]
seg001:57D7                 sub     ah, ah
seg001:57D9                 sub     cx, cx
seg001:57DB                 push    cx
seg001:57DC                 push    ax
seg001:57DD                 call    sub_1983C
seg001:57E2                 mov     cl, [si-15E9h]
seg001:57E6                 sub     ch, ch
seg001:57E8                 add     ax, cx
seg001:57EA                 adc     dx, 0
seg001:57ED                 mov     [bp+var_6], ax
seg001:57F0                 mov     [bp+var_4], dx
seg001:57F3                 mov     ax, 1770h
seg001:57F6                 cwd
seg001:57F7                 push    dx
seg001:57F8                 push    ax
seg001:57F9                 mov     al, [si-15F2h]
seg001:57FD                 sub     ah, ah
seg001:57FF                 sub     cx, cx
seg001:5801                 push    cx
seg001:5802                 push    ax
seg001:5803                 call    sub_1983C
seg001:5808                 mov     cx, 64h ; 'd'
seg001:580B                 sub     bx, bx
seg001:580D                 push    bx
seg001:580E                 push    cx
seg001:580F                 mov     cl, [si-15F1h]
seg001:5813                 sub     ch, ch
seg001:5815                 push    bx
seg001:5816                 push    cx
seg001:5817                 mov     [bp+var_16], ax
seg001:581A                 mov     [bp+var_14], dx
seg001:581D                 call    sub_1983C
seg001:5822                 mov     cl, [si-15F0h]
seg001:5826                 sub     ch, ch
seg001:5828                 sub     bx, bx
seg001:582A                 mov     [bp+var_12], ax
seg001:582D                 mov     [bp+var_10], dx
seg001:5830                 mov     ax, cx
seg001:5832                 mov     dx, bx
seg001:5834                 shl     cx, 1
seg001:5836                 rcl     bx, 1
seg001:5838                 shl     cx, 1
seg001:583A                 rcl     bx, 1
seg001:583C                 add     cx, ax
seg001:583E                 adc     bx, dx
seg001:5840                 shl     cx, 1
seg001:5842                 rcl     bx, 1
seg001:5844                 add     cx, [bp+var_12]
seg001:5847                 adc     bx, [bp+var_10]
seg001:584A                 add     cx, [bp+var_16]
seg001:584D                 adc     bx, [bp+var_14]
seg001:5850                 mov     [bp+var_A], cx
seg001:5853                 mov     [bp+var_8], bx
seg001:5856                 mov     ax, cx
seg001:5858                 or      ax, bx
seg001:585A                 jz      short loc_75BC
seg001:585C                 push    bx
seg001:585D                 push    cx
seg001:585E                 mov     ax, 1770h
seg001:5861                 cwd
seg001:5862                 push    dx
seg001:5863                 push    ax
seg001:5864                 push    [bp+var_4]
seg001:5867                 push    [bp+var_6]
seg001:586A                 call    sub_1983C
seg001:586F                 push    dx
seg001:5870                 push    ax
seg001:5871                 call    sub_197A0
seg001:5876                 mov     [si-15EFh], al
seg001:587A                 jmp     short loc_75C9
seg001:587C ; ---------------------------------------------------------------------------
seg001:587C
seg001:587C loc_75BC:                               ; CODE XREF: sub_72DA+2C0␘j
seg001:587C                 mov     ax, 1Bh
seg001:587F                 imul    [bp+var_2]
seg001:5882                 mov     bx, ax
seg001:5884                 mov     byte ptr [bx-15EFh], 0
seg001:5889
seg001:5889 loc_75C9:                               ; CODE XREF: sub_72DA+2E0␘j
seg001:5889                 inc     [bp+var_2]
seg001:588C
seg001:588C loc_75CC:                               ; CODE XREF: sub_72DA+20␘j
seg001:588C                 cmp     [bp+var_2], 3
seg001:5890                 jl      short loc_75D5
seg001:5892                 jmp     loc_7690
seg001:5895 ; ---------------------------------------------------------------------------
seg001:5895
seg001:5895 loc_75D5:                               ; CODE XREF: sub_72DA+2F6␘j
seg001:5895                 mov     ax, 1Bh
seg001:5898                 imul    [bp+var_2]
seg001:589B                 mov     si, ax
seg001:589D                 mov     ax, 3Ch ; '<'
seg001:58A0                 cwd
seg001:58A1                 push    dx
seg001:58A2                 push    ax
seg001:58A3                 mov     al, [si-15F4h]
seg001:58A7                 sub     ah, ah
seg001:58A9                 sub     cx, cx
seg001:58AB                 push    cx
seg001:58AC                 push    ax
seg001:58AD                 call    sub_1983C
seg001:58B2                 mov     cl, [si-15F3h]
seg001:58B6                 sub     ch, ch
seg001:58B8                 add     ax, cx
seg001:58BA                 adc     dx, 0
seg001:58BD                 mov     [bp+var_6], ax
seg001:58C0                 mov     [bp+var_4], dx
seg001:58C3                 mov     ax, 1770h
seg001:58C6                 cwd
seg001:58C7                 push    dx
seg001:58C8                 push    ax
seg001:58C9                 mov     al, [si-15FCh]
seg001:58CD                 sub     ah, ah
seg001:58CF                 sub     cx, cx
seg001:58D1                 push    cx
seg001:58D2                 push    ax
seg001:58D3                 call    sub_1983C
seg001:58D8                 mov     cx, 64h ; 'd'
seg001:58DB                 sub     bx, bx
seg001:58DD                 push    bx
seg001:58DE                 push    cx
seg001:58DF                 mov     cl, [si-15FBh]
seg001:58E3                 sub     ch, ch
seg001:58E5                 push    bx
seg001:58E6                 push    cx
seg001:58E7                 mov     [bp+var_12], ax
seg001:58EA                 mov     [bp+var_10], dx
seg001:58ED                 call    sub_1983C
seg001:58F2                 mov     cl, [si-15FAh]
seg001:58F6                 sub     ch, ch
seg001:58F8                 sub     bx, bx
seg001:58FA                 mov     [bp+var_16], ax
seg001:58FD                 mov     [bp+var_14], dx
seg001:5900                 mov     ax, cx
seg001:5902                 mov     dx, bx
seg001:5904                 shl     cx, 1
seg001:5906                 rcl     bx, 1
seg001:5908                 shl     cx, 1
seg001:590A                 rcl     bx, 1
seg001:590C                 add     cx, ax
seg001:590E                 adc     bx, dx
seg001:5910                 shl     cx, 1
seg001:5912                 rcl     bx, 1
seg001:5914                 add     cx, [bp+var_16]
seg001:5917                 adc     bx, [bp+var_14]
seg001:591A                 add     cx, [bp+var_12]
seg001:591D                 adc     bx, [bp+var_10]
seg001:5920                 mov     [bp+var_A], cx
seg001:5923                 mov     [bp+var_8], bx
seg001:5926                 mov     ax, cx
seg001:5928                 or      ax, bx
seg001:592A                 jnz     short loc_766F
seg001:592C                 jmp     loc_72FE
seg001:592F ; ---------------------------------------------------------------------------
seg001:592F
seg001:592F loc_766F:                               ; CODE XREF: sub_72DA+390␘j
seg001:592F                 push    bx
seg001:5930                 push    cx
seg001:5931                 mov     ax, 1770h
seg001:5934                 cwd
seg001:5935                 push    dx
seg001:5936                 push    ax
seg001:5937                 push    [bp+var_4]
seg001:593A                 push    [bp+var_6]
seg001:593D                 call    sub_1983C
seg001:5942                 push    dx
seg001:5943                 push    ax
seg001:5944                 call    sub_197A0
seg001:5949                 mov     [si-15F9h], al
seg001:594D                 jmp     loc_730B
seg001:5950 ; ---------------------------------------------------------------------------
seg001:5950
seg001:5950 loc_7690:                               ; CODE XREF: sub_72DA+E␘j
seg001:5950                                         ; sub_72DA+18␘j ...
seg001:5950                 pop     si
seg001:5951                 mov     sp, bp
seg001:5953                 pop     bp
seg001:5954                 retf
seg001:5954 sub_72DA        endp
seg001:5954
seg001:5954 ; ---------------------------------------------------------------------------
seg001:5955                 align 2
seg001:5956
