seg001:536E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:536E
seg001:536E ; Attributes: bp-based frame
seg001:536E
seg001:536E sub_70AE        proc far                ; CODE XREF: sub_0+15D␘P
seg001:536E                                         ; sub_0:loc_1A6␘P ...
seg001:536E
seg001:536E var_4           = word ptr -4
seg001:536E var_2           = word ptr -2
seg001:536E
seg001:536E                 push    bp
seg001:536F                 mov     bp, sp
seg001:5371                 sub     sp, 4
seg001:5374                 cmp     byte_1F164, 0
seg001:5379                 jz      short loc_70C2
seg001:537B                 sub     ax, ax
seg001:537D                 mov     sp, bp
seg001:537F                 pop     bp
seg001:5380                 retf
seg001:5380 ; ---------------------------------------------------------------------------
seg001:5381                 align 2
seg001:5382
seg001:5382 loc_70C2:                               ; CODE XREF: sub_70AE+B␘j
seg001:5382                 sub     ax, ax
seg001:5384                 mov     [bp+var_4], ax
seg001:5387                 mov     [bp+var_2], ax
seg001:538A                 jmp     short loc_7115
seg001:538C ; ---------------------------------------------------------------------------
seg001:538C
seg001:538C loc_70CC:                               ; CODE XREF: sub_70AE+6B␙j
seg001:538C                 mov     ax, 1112h
seg001:538F                 push    ax
seg001:5390                 mov     ax, 0A9Ch
seg001:5393                 push    ax
seg001:5394                 call    sub_195EA
seg001:5399                 add     sp, 4
seg001:539C                 mov     ax, 111Ch
seg001:539F                 push    ax
seg001:53A0                 mov     ax, 0A9Ah
seg001:53A3                 push    ax
seg001:53A4                 call    sub_1916A
seg001:53A9                 add     sp, 4
seg001:53AC                 mov     word_2D896, ax
seg001:53AF                 or      ax, ax
seg001:53B1                 jz      short loc_7104
seg001:53B3                 push    ax
seg001:53B4                 call    sub_190A2
seg001:53B9                 add     sp, 2
seg001:53BC                 mov     [bp+var_4], 1
seg001:53C1                 jmp     short loc_7115
seg001:53C1 ; ---------------------------------------------------------------------------
seg001:53C3                 align 2
seg001:53C4
seg001:53C4 loc_7104:                               ; CODE XREF: sub_70AE+43␘j
seg001:53C4                 mov     [bp+var_2], 1
seg001:53C9                 mov     ax, 1Eh
seg001:53CC                 push    ax
seg001:53CD                 call    sub_1688
seg001:53D2                 add     sp, 2
seg001:53D5
seg001:53D5 loc_7115:                               ; CODE XREF: sub_70AE+1C␘j
seg001:53D5                                         ; sub_70AE+53␘j
seg001:53D5                 cmp     [bp+var_4], 0
seg001:53D9                 jz      short loc_70CC
seg001:53DB                 cmp     word_1F166, 3
seg001:53E0                 jnz     short loc_7125
seg001:53E2                 jmp     loc_72C2
seg001:53E5 ; ---------------------------------------------------------------------------
seg001:53E5
seg001:53E5 loc_7125:                               ; CODE XREF: sub_70AE+72␘j
seg001:53E5                 mov     ax, 111Fh
seg001:53E8                 push    ax
seg001:53E9                 mov     ax, 0A9Ch
seg001:53EC                 push    ax
seg001:53ED                 call    sub_195EA
seg001:53F2                 add     sp, 4
seg001:53F5                 push    word_2DB56
seg001:53F9                 push    word_2DB54
seg001:53FD                 mov     ax, 0A9Ah
seg001:5400                 push    ax
seg001:5401                 call    sub_E26
seg001:5406                 add     sp, 6
seg001:5409                 mov     ax, 1129h
seg001:540C                 push    ax
seg001:540D                 mov     ax, 0A9Ch
seg001:5410                 push    ax
seg001:5411                 call    sub_195EA
seg001:5416                 add     sp, 4
seg001:5419                 push    word_2DACA
seg001:541D                 push    word_2DAC8
seg001:5421                 mov     ax, 0A9Ah
seg001:5424                 push    ax
seg001:5425                 call    sub_E26
seg001:542A                 add     sp, 6
seg001:542D                 mov     ax, 1135h
seg001:5430                 push    ax
seg001:5431                 mov     ax, 0A9Ch
seg001:5434                 push    ax
seg001:5435                 call    sub_195EA
seg001:543A                 add     sp, 4
seg001:543D                 push    word_2DAD6
seg001:5441                 push    word_2DAD4
seg001:5445                 mov     ax, 0A9Ah
seg001:5448                 push    ax
seg001:5449                 call    sub_E26
seg001:544E                 add     sp, 6
seg001:5451                 mov     ax, 1141h
seg001:5454                 push    ax
seg001:5455                 mov     ax, 0A9Ch
seg001:5458                 push    ax
seg001:5459                 call    sub_195EA
seg001:545E                 add     sp, 4
seg001:5461                 push    word_2DADC
seg001:5465                 push    word_2DADA
seg001:5469                 mov     ax, 0A9Ah
seg001:546C                 push    ax
seg001:546D                 call    sub_E26
seg001:5472                 add     sp, 6
seg001:5475                 mov     ax, 114Dh
seg001:5478                 push    ax
seg001:5479                 mov     ax, 0A9Ch
seg001:547C                 push    ax
seg001:547D                 call    sub_195EA
seg001:5482                 add     sp, 4
seg001:5485                 push    word_2DD62
seg001:5489                 push    word_2DD60
seg001:548D                 mov     ax, 0A9Ah
seg001:5490                 push    ax
seg001:5491                 call    sub_E26
seg001:5496                 add     sp, 6
seg001:5499                 mov     ax, 1155h
seg001:549C                 push    ax
seg001:549D                 mov     ax, 0A9Ch
seg001:54A0                 push    ax
seg001:54A1                 call    sub_195EA
seg001:54A6                 add     sp, 4
seg001:54A9                 push    word_2DAD2
seg001:54AD                 push    word_2DAD0
seg001:54B1                 mov     ax, 0A9Ah
seg001:54B4                 push    ax
seg001:54B5                 call    sub_E26
seg001:54BA                 add     sp, 6
seg001:54BD                 mov     ax, 1162h
seg001:54C0                 push    ax
seg001:54C1                 mov     ax, 0AA3h
seg001:54C4                 push    ax
seg001:54C5                 call    sub_195EA
seg001:54CA                 add     sp, 4
seg001:54CD                 push    word_2D83E
seg001:54D1                 push    word_2D83C
seg001:54D5                 mov     ax, 0A9Ah
seg001:54D8                 push    ax
seg001:54D9                 call    sub_E26
seg001:54DE                 add     sp, 6
seg001:54E1                 mov     ax, 1168h
seg001:54E4                 push    ax
seg001:54E5                 mov     ax, 0AA3h
seg001:54E8                 push    ax
seg001:54E9                 call    sub_195EA
seg001:54EE                 add     sp, 4
seg001:54F1                 push    word_2C190
seg001:54F5                 push    word_2C18E
seg001:54F9                 mov     ax, 0A9Ah
seg001:54FC                 push    ax
seg001:54FD                 call    sub_E26
seg001:5502                 add     sp, 6
seg001:5505                 mov     ax, 116Eh
seg001:5508                 push    ax
seg001:5509                 mov     ax, 0AA3h
seg001:550C                 push    ax
seg001:550D                 call    sub_195EA
seg001:5512                 add     sp, 4
seg001:5515                 mov     ax, 949Eh
seg001:5518                 push    ax
seg001:5519                 mov     ax, 0A9Ah
seg001:551C                 push    ax
seg001:551D                 call    sub_DBA
seg001:5522                 add     sp, 4
seg001:5525                 mov     ax, 1174h
seg001:5528                 push    ax
seg001:5529                 mov     ax, 0AA3h
seg001:552C                 push    ax
seg001:552D                 call    sub_195EA
seg001:5532                 add     sp, 4
seg001:5535                 mov     ax, 240Ch
seg001:5538                 push    ax
seg001:5539                 mov     ax, 0A9Ah
seg001:553C                 push    ax
seg001:553D                 call    sub_DBA
seg001:5542                 add     sp, 4
seg001:5545                 call    sub_10455
seg001:554A                 mov     ax, 117Ah
seg001:554D                 push    ax
seg001:554E                 mov     ax, 0A9Ch
seg001:5551                 push    ax
seg001:5552                 call    sub_195EA
seg001:5557                 add     sp, 4
seg001:555A                 sub     ax, ax
seg001:555C                 push    ax
seg001:555D                 call    sub_1E040
seg001:5562                 add     sp, 2
seg001:5565                 push    word_2DAE2
seg001:5569                 push    word_2DAE0
seg001:556D                 mov     ax, 0A9Ah
seg001:5570                 push    ax
seg001:5571                 call    sub_E26
seg001:5576                 add     sp, 6
seg001:5579                 mov     byte_1F164, 1
seg001:557E                 mov     sp, bp
seg001:5580                 pop     bp
seg001:5581                 retf
seg001:5582 ; ---------------------------------------------------------------------------
seg001:5582
seg001:5582 loc_72C2:                               ; CODE XREF: sub_70AE+74␘j
seg001:5582                 cmp     [bp+var_2], 0
seg001:5586                 jz      short loc_72D5
seg001:5588                 mov     al, byte_2A6B6
seg001:558B                 sub     ah, ah
seg001:558D                 push    ax
seg001:558E                 push    cs
seg001:558F                 call    near ptr sub_3A5C
seg001:5592                 add     sp, 2
seg001:5595
seg001:5595 loc_72D5:                               ; CODE XREF: sub_70AE+218␘j
seg001:5595                 mov     sp, bp
seg001:5597                 pop     bp
seg001:5598                 retf
seg001:5598 sub_70AE        endp
seg001:5598
seg001:5598 ; ---------------------------------------------------------------------------
seg001:5599                 align 2
seg001:559A
