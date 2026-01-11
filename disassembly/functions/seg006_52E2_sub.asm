seg006:52E2 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:52E2
seg006:52E2
seg006:52E2 sub_13132       proc near               ; CODE XREF: sub_12D67:loc_12E00␘p
seg006:52E2                 mov     ax, [bx-577Bh]
seg006:52E6                 mov     dl, al
seg006:52E8                 sub     dl, ah
seg006:52EA                 jz      short loc_13141
seg006:52EC                 mov     byte_2ACAD, 1
seg006:52F1
seg006:52F1 loc_13141:                              ; CODE XREF: sub_13132+8␘j
seg006:52F1                 add     dl, 4
seg006:52F4                 and     dl, 0F8h
seg006:52F7                 jz      short loc_13153
seg006:52F9                 jns     short loc_1314E
seg006:52FB                 sub     ah, 10h
seg006:52FE
seg006:52FE loc_1314E:                              ; CODE XREF: sub_13132+17␘j
seg006:52FE                 add     ah, 8
seg006:5301                 jmp     short loc_13155
seg006:5303 ; ---------------------------------------------------------------------------
seg006:5303
seg006:5303 loc_13153:                              ; CODE XREF: sub_13132+15␘j
seg006:5303                 mov     ah, al
seg006:5305
seg006:5305 loc_13155:                              ; CODE XREF: sub_13132+1F␘j
seg006:5305                 mov     [bx-577Bh], ax
seg006:5309                 cmp     byte_1FAA3, 0
seg006:530E                 jnz     short locret_131A7
seg006:5310                 mov     ax, [bx-5C7Bh]
seg006:5314                 test    ah, 0Fh
seg006:5317                 jz      short loc_131A8
seg006:5319                 cmp     bx, 4
seg006:531C                 ja      short loc_13179
seg006:531E                 shr     bx, 1
seg006:5320                 cmp     byte ptr [bx-444Ch], 0
seg006:5325                 shl     bx, 1
seg006:5327                 jnz     short loc_1317E
seg006:5329
seg006:5329 loc_13179:                              ; CODE XREF: sub_13132+3A␘j
seg006:5329                 test    ah, 10h
seg006:532C                 jnz     short locret_131A7
seg006:532E
seg006:532E loc_1317E:                              ; CODE XREF: sub_13132+45␘j
seg006:532E                 test    ah, 80h
seg006:5331                 jz      short loc_13191
seg006:5333                 cmp     word ptr [bx-54FBh], 0
seg006:5338                 jz      short loc_13191
seg006:533A                 test    byte_2ACAB, 1
seg006:533F                 jnz     short locret_131A7
seg006:5341
seg006:5341 loc_13191:                              ; CODE XREF: sub_13132+4F␘j
seg006:5341                                         ; sub_13132+56␘j
seg006:5341                 mov     cx, [bx-527Bh]
seg006:5345                 test    cx, 0FFC0h
seg006:5349                 jz      short locret_131A7
seg006:534B                 sub     cx, 40h ; '@'
seg006:534E                 mov     [bx-527Bh], cx
seg006:5352                 and     cx, 0FFC0h
seg006:5355                 jz      short loc_131AE
seg006:5357
seg006:5357 locret_131A7:                           ; CODE XREF: sub_13132+2C␘j
seg006:5357                                         ; sub_13132+4A␘j ...
seg006:5357                 retn
seg006:5358 ; ---------------------------------------------------------------------------
seg006:5358
seg006:5358 loc_131A8:                              ; CODE XREF: sub_13132+35␘j
seg006:5358                 mov     byte ptr [bx-563Bh], 0
seg006:535D                 retn
seg006:535E ; ---------------------------------------------------------------------------
seg006:535E
seg006:535E loc_131AE:                              ; CODE XREF: sub_13132+73␘j
seg006:535E                 and     ah, 0Fh
seg006:5361                 mov     cx, [bx-527Bh]
seg006:5365                 cmp     ah, 9
seg006:5368                 jz      short loc_131BF
seg006:536A                 cmp     ah, 2
seg006:536D                 jnb     short loc_131E9
seg006:536F
seg006:536F loc_131BF:                              ; CODE XREF: sub_13132+86␘j
seg006:536F                 mov     ch, byte_285B8
seg006:5373                 mov     [bx-527Bh], cx
seg006:5377                 mov     ax, [bx-54FBh]
seg006:537B                 neg     ah
seg006:537D                 neg     al
seg006:537F                 mov     [bx-54FBh], ax
seg006:5383                 mov     ax, [bx-563Bh]
seg006:5387                 neg     al
seg006:5389                 mov     [bx-563Bh], ax
seg006:538D                 mov     ax, [bx-577Bh]
seg006:5391                 xor     ax, 8080h
seg006:5394                 mov     [bx-577Bh], ax
seg006:5398                 retn
seg006:5399 ; ---------------------------------------------------------------------------
seg006:5399
seg006:5399 loc_131E9:                              ; CODE XREF: sub_13132+8B␘j
seg006:5399                 rol     al, 1
seg006:539B                 rol     al, 1
seg006:539D                 mov     si, ax
seg006:539F                 push    ax
seg006:53A0                 and     si, 3
seg006:53A3                 shl     si, 1
seg006:53A5                 mov     si, [si-6B45h]
seg006:53A9                 cmp     ah, 8
seg006:53AC                 mov     byte_2845B, ah
seg006:53B0                 mov     byte_2ACA1, ah
seg006:53B4                 jz      short loc_1326F
seg006:53B6                 and     ah, 7
seg006:53B9                 mov     byte_2845B, ah
seg006:53BD                 cmp     byte_1FBE9, 0
seg006:53C2                 jz      short loc_13243
seg006:53C4                 cmp     bx, 4
seg006:53C7                 ja      short loc_13243
seg006:53C9                 push    bx
seg006:53CA                 mov     bx, [bx-53BBh]
seg006:53CE                 mov     ax, [bx-6A83h]
seg006:53D2                 pop     bx
seg006:53D3                 cmp     al, 74h ; 't'
seg006:53D5                 jb      short loc_1322F
seg006:53D7                 mov     ax, si
seg006:53D9                 shr     ax, 1
seg006:53DB                 shr     ax, 1
seg006:53DD                 add     si, ax
seg006:53DF
seg006:53DF loc_1322F:                              ; CODE XREF: sub_13132+F3␘j
seg006:53DF                 shr     bx, 1
seg006:53E1                 mov     al, [bx-444Ah]
seg006:53E5                 shl     bx, 1
seg006:53E7                 or      al, al
seg006:53E9                 jz      short loc_13243
seg006:53EB                 mov     ax, si
seg006:53ED                 shr     ax, 1
seg006:53EF                 shr     ax, 1
seg006:53F1                 add     si, ax
seg006:53F3
seg006:53F3 loc_13243:                              ; CODE XREF: sub_13132+E0␘j
seg006:53F3                                         ; sub_13132+E5␘j ...
seg006:53F3                 mov     ax, word_1FBE4
seg006:53F6                 shr     ax, 1
seg006:53F8                 shr     ax, 1
seg006:53FA                 add     ax, 6
seg006:53FD                 mul     si
seg006:53FF                 shr     ax, 1
seg006:5401                 shr     ax, 1
seg006:5403                 shr     ax, 1
seg006:5405                 shr     ax, 1
seg006:5407                 cmp     byte ptr word_2AC5F, 0
seg006:540C                 jz      short loc_13261
seg006:540E                 sub     ax, 2
seg006:5411
seg006:5411 loc_13261:                              ; CODE XREF: sub_13132+12A␘j
seg006:5411                 cmp     byte ptr word_2AC61, 0
seg006:5416                 jz      short loc_1326B
seg006:5418                 sub     ax, 4
seg006:541B
seg006:541B loc_1326B:                              ; CODE XREF: sub_13132+134␘j
seg006:541B                 mov     si, ax
seg006:541D                 jmp     short loc_13271
seg006:541F ; ---------------------------------------------------------------------------
seg006:541F
seg006:541F loc_1326F:                              ; CODE XREF: sub_13132+D2␘j
seg006:541F                 shr     si, 1
seg006:5421
seg006:5421 loc_13271:                              ; CODE XREF: sub_13132+13B␘j
seg006:5421                 mov     word_2844C, si
seg006:5425                 pop     ax
seg006:5426                 sub     al, al
seg006:5428                 mov     byte_2ACAC, al
seg006:542B                 cmp     ah, 3
seg006:542E                 jb      short loc_132A8
seg006:5430                 mov     al, 1
seg006:5432                 jz      short loc_132A8
seg006:5434                 inc     al
seg006:5436                 mov     ch, byte ptr word_1F1B4
seg006:543A                 and     ch, 1
seg006:543D                 cmp     ah, 5
seg006:5440                 jb      short loc_132A8
seg006:5442                 mov     al, ch
seg006:5444                 jz      short loc_132A8
seg006:5446                 shl     al, 1
seg006:5448                 cmp     ah, 6
seg006:544B                 jz      short loc_132A8
seg006:544D                 mov     al, byte ptr word_1F1B4
seg006:5450                 and     al, 3
seg006:5452                 cmp     al, 3
seg006:5454                 jb      short loc_132A8
seg006:5456                 sub     al, al
seg006:5458
seg006:5458 loc_132A8:                              ; CODE XREF: sub_13132+14C␘j
seg006:5458                                         ; sub_13132+150␘j ...
seg006:5458                 mov     byte_2845A, al
seg006:545B                 mov     byte_28457, cl
seg006:545F                 mov     si, [bx-53BBh]
seg006:5463                 call    sub_13770
seg006:5466                 mov     al, byte_28457
seg006:5469                 sub     ah, ah
seg006:546B                 shl     ax, 1
seg006:546D                 shl     ax, 1
seg006:546F                 shl     ax, 1
seg006:5471                 add     si, ax
seg006:5473                 mov     ax, es:[si]
seg006:5476                 mov     di, [bx-53BBh]
seg006:547A                 mov     cl, al
seg006:547C                 and     cl, 0C0h
seg006:547F                 cmp     cl, 80h ; 'Ç'
seg006:5482                 jz      short loc_132D7
seg006:5484                 jmp     loc_13369
seg006:5487 ; ---------------------------------------------------------------------------
seg006:5487
seg006:5487 loc_132D7:                              ; CODE XREF: sub_13132+1A0␘j
seg006:5487                 sub     ch, ch
seg006:5489                 mov     cl, al
seg006:548B                 xor     cl, 40h
seg006:548E                 cmp     word_2AC9B, bx
seg006:5492                 jnz     short loc_132EC
seg006:5494                 mov     word_2AC9B, 0
seg006:549A                 jz      short loc_13337
seg006:549C
seg006:549C loc_132EC:                              ; CODE XREF: sub_13132+1B0␘j
seg006:549C                 mov     cl, byte_28456
seg006:54A0                 mov     byte_28458, al
seg006:54A3                 rol     cl, 1
seg006:54A5                 rol     cl, 1
seg006:54A7                 add     cl, al
seg006:54A9                 mov     dx, 0FFE0h
seg006:54AC                 and     cl, 3
seg006:54AF                 jz      short loc_1330F
seg006:54B1                 neg     dx
seg006:54B3                 cmp     cl, 2
seg006:54B6                 jz      short loc_1330F
seg006:54B8                 mov     dx, 1
seg006:54BB                 jb      short loc_1330F
seg006:54BD                 neg     dx
seg006:54BF
seg006:54BF loc_1330F:                              ; CODE XREF: sub_13132+1CD␘j
seg006:54BF                                         ; sub_13132+1D4␘j ...
seg006:54BF                 push    cx
seg006:54C0                 mov     cx, dx
seg006:54C2                 add     cx, di
seg006:54C4                 and     cx, 1Fh
seg006:54C7                 add     di, dx
seg006:54C9                 and     di, 1E0h
seg006:54CD                 or      di, cx
seg006:54CF                 shl     di, 1
seg006:54D1                 pop     cx
seg006:54D2                 xor     cl, 2
seg006:54D5                 mov     al, [di-6A82h]
seg006:54D9                 shr     di, 1
seg006:54DB                 rol     al, 1
seg006:54DD                 rol     al, 1
seg006:54DF                 sub     cl, al
seg006:54E1                 and     cx, 3
seg006:54E4                 or      cl, 0C0h
seg006:54E7
seg006:54E7 loc_13337:                              ; CODE XREF: sub_13132+1B8␘j
seg006:54E7                                         ; sub_13132+22C␙j
seg006:54E7                 push    cx
seg006:54E8                 mov     si, di
seg006:54EA                 call    sub_13770
seg006:54ED                 pop     cx
seg006:54EE                 sub     al, al
seg006:54F0
seg006:54F0 loc_13340:                              ; CODE XREF: sub_13132+21C␙j
seg006:54F0                 cmp     cx, es:[si]
seg006:54F3                 jz      short loc_13360
seg006:54F5                 add     si, 8
seg006:54F8                 inc     al
seg006:54FA                 dec     byte_28459
seg006:54FE                 jnz     short loc_13340
seg006:5500                 mov     cl, byte_28458
seg006:5504                 and     cx, 3
seg006:5507                 or      cl, 0C0h
seg006:550A                 mov     di, [bx-53BBh]
seg006:550E                 jmp     short loc_13337
seg006:5510 ; ---------------------------------------------------------------------------
seg006:5510
seg006:5510 loc_13360:                              ; CODE XREF: sub_13132+211␘j
seg006:5510                 mov     byte_28457, al
seg006:5513                 jmp     loc_13439
seg006:5516 ; ---------------------------------------------------------------------------
seg006:5516
seg006:5516 loc_13366:                              ; CODE XREF: sub_13132+243␙j
seg006:5516                 jmp     loc_13693
seg006:5519 ; ---------------------------------------------------------------------------
seg006:5519
seg006:5519 loc_13369:                              ; CODE XREF: sub_13132+1A2␘j
seg006:5519                 or      al, al
seg006:551B                 jns     short loc_1336F
seg006:551D                 sub     ax, ax
seg006:551F
seg006:551F loc_1336F:                              ; CODE XREF: sub_13132+239␘j
seg006:551F                 mov     bp, ax
seg006:5521                 and     bp, 4040h
seg006:5525                 jnz     short loc_13366
seg006:5527
seg006:5527 loc_13377:                              ; CODE XREF: sub_13132+5BB␙j
seg006:5527                 test    ax, 0BF3Fh
seg006:552A                 jz      short loc_133EE
seg006:552C                 mov     cx, [bx-5C7Bh]
seg006:5530                 mov     dx, cx
seg006:5532                 and     cx, 3Fh
seg006:5535                 sub     cx, 2
seg006:5538                 js      short loc_133EE
seg006:553A                 cmp     cl, 2
seg006:553D                 jnb     short loc_133EE
seg006:553F                 push    bx
seg006:5540                 push    ax
seg006:5541                 mov     bx, cx
seg006:5543                 inc     byte ptr [bx-443Dh]
seg006:5547                 mov     cl, [bx-443Dh]
seg006:554B                 shl     bx, 1
seg006:554D                 mov     ax, bx
seg006:554F                 shl     bx, 1
seg006:5551                 shl     bx, 1
seg006:5553                 add     bx, ax
seg006:5555                 add     bx, cx
seg006:5557                 mov     cl, [bx-6B5Dh]
seg006:555B                 and     dx, 0F8FFh
seg006:555F                 or      cl, cl
seg006:5561                 jnz     short loc_133E6
seg006:5563                 mov     dl, byte_2A6F4
seg006:5567                 mov     dh, byte_2A6F5
seg006:556B                 mov     cl, byte_2A6F6
seg006:556F                 mov     bx, ax
seg006:5571                 shr     ax, 1
seg006:5573                 add     bx, ax
seg006:5575                 mov     al, byte_2AC90
seg006:5578
seg006:5578 loc_133C8:                              ; CODE XREF: sub_13132+29F␙j
seg006:5578                                         ; sub_13132+2A6␙j
seg006:5578                 or      al, al
seg006:557A                 jz      short loc_133DA
seg006:557C                 dec     al
seg006:557E                 sub     dh, 14h
seg006:5581                 jns     short loc_133C8
seg006:5583                 add     dh, 3Ch ; '<'
seg006:5586                 dec     cl
seg006:5588                 jmp     short loc_133C8
seg006:558A ; ---------------------------------------------------------------------------
seg006:558A
seg006:558A loc_133DA:                              ; CODE XREF: sub_13132+298␘j
seg006:558A                 mov     [bx-443Bh], dx
seg006:558E                 mov     [bx-4439h], cl
seg006:5592                 sub     cl, cl
seg006:5594                 sub     dx, dx
seg006:5596
seg006:5596 loc_133E6:                              ; CODE XREF: sub_13132+27F␘j
seg006:5596                 or      dh, cl
seg006:5598                 pop     ax
seg006:5599                 pop     bx
seg006:559A                 mov     [bx-5C7Bh], dx
seg006:559E
seg006:559E loc_133EE:                              ; CODE XREF: sub_13132+248␘j
seg006:559E                                         ; sub_13132+256␘j ...
seg006:559E                 cmp     byte_2845A, 1
seg006:55A3                 jb      short loc_13402
seg006:55A5                 jz      short loc_133FE
seg006:55A7                 test    ah, 3Fh
seg006:55AA                 jnz     short loc_13413
seg006:55AC                 jz      short loc_13402
seg006:55AE
seg006:55AE loc_133FE:                              ; CODE XREF: sub_13132+2C3␘j
seg006:55AE                 test    al, 3Fh
seg006:55B0                 jnz     short loc_1340F
seg006:55B2
seg006:55B2 loc_13402:                              ; CODE XREF: sub_13132+2C1␘j
seg006:55B2                                         ; sub_13132+2CA␘j
seg006:55B2                 or      ax, ax
seg006:55B4                 jns     short loc_13432
seg006:55B6                 cmp     byte_2845B, 6
seg006:55BB                 jnz     short loc_1340F
seg006:55BD                 xchg    al, ah
seg006:55BF
seg006:55BF loc_1340F:                              ; CODE XREF: sub_13132+2CE␘j
seg006:55BF                                         ; sub_13132+2D9␘j
seg006:55BF                 test    al, 3Fh
seg006:55C1                 jnz     short loc_13415
seg006:55C3
seg006:55C3 loc_13413:                              ; CODE XREF: sub_13132+2C8␘j
seg006:55C3                 xchg    al, ah
seg006:55C5
seg006:55C5 loc_13415:                              ; CODE XREF: sub_13132+2DF␘j
seg006:55C5                 shl     al, 1
seg006:55C7                 shl     al, 1
seg006:55C9                 sar     al, 1
seg006:55CB                 sar     al, 1
seg006:55CD                 mov     byte_2ACAC, 1
seg006:55D2                 add     byte_28457, al
seg006:55D6                 cbw
seg006:55D7                 shl     ax, 1
seg006:55D9                 shl     ax, 1
seg006:55DB                 shl     ax, 1
seg006:55DD                 add     si, ax
seg006:55DF                 jmp     short loc_13439
seg006:55DF ; ---------------------------------------------------------------------------
seg006:55E1                 align 2
seg006:55E2
seg006:55E2 loc_13432:                              ; CODE XREF: sub_13132+2D2␘j
seg006:55E2                 inc     byte_28457
seg006:55E6                 add     si, 8
seg006:55E9
seg006:55E9 loc_13439:                              ; CODE XREF: sub_13132+231␘j
seg006:55E9                                         ; sub_13132+2FD␘j
seg006:55E9                 mov     [bx-53BBh], di
seg006:55ED                 mov     cl, byte_28457
seg006:55F1                 mov     [bx-527Bh], cl
seg006:55F5                 add     si, 2
seg006:55F8                 mov     cx, es:[si]
seg006:55FB                 shl     di, 1
seg006:55FD                 mov     ax, [di-6A83h]
seg006:5601                 shr     di, 1
seg006:5603                 and     ax, 3F00h
seg006:5606                 add     cx, ax
seg006:5608                 shl     cx, 1
seg006:560A                 shl     cx, 1
seg006:560C                 shl     cx, 1
seg006:560E                 mov     word_2844E, cx
seg006:5612                 add     si, 2
seg006:5615                 mov     cx, es:[si]
seg006:5618                 add     si, 2
seg006:561B                 mov     dx, es:[si]
seg006:561E                 mov     al, byte_28456
seg006:5621                 and     al, 0C0h
seg006:5623                 jz      short loc_1348B
seg006:5625                 cmp     al, 80h ; 'Ç'
seg006:5627                 ja      short loc_13487
seg006:5629                 jz      short loc_13481
seg006:562B                 xchg    cx, dx
seg006:562D                 neg     dx
seg006:562F                 jmp     short loc_1348B
seg006:5631 ; ---------------------------------------------------------------------------
seg006:5631
seg006:5631 loc_13481:                              ; CODE XREF: sub_13132+347␘j
seg006:5631                 neg     cx
seg006:5633                 neg     dx
seg006:5635                 jmp     short loc_1348B
seg006:5637 ; ---------------------------------------------------------------------------
seg006:5637
seg006:5637 loc_13487:                              ; CODE XREF: sub_13132+345␘j
seg006:5637                 xchg    cx, dx
seg006:5639                 neg     cx
seg006:563B
seg006:563B loc_1348B:                              ; CODE XREF: sub_13132+341␘j
seg006:563B                                         ; sub_13132+34D␘j ...
seg006:563B                 mov     ax, di
seg006:563D                 and     ax, 1Fh
seg006:5640                 xchg    al, ah
seg006:5642                 shl     ax, 1
seg006:5644                 shl     ax, 1
seg006:5646                 add     ah, 2
seg006:5649                 add     cx, ax
seg006:564B                 sub     cx, [bx-5B3Bh]
seg006:564F                 mov     ax, cx
seg006:5651                 jns     short loc_134A5
seg006:5653                 neg     ax
seg006:5655
seg006:5655 loc_134A5:                              ; CODE XREF: sub_13132+36F␘j
seg006:5655                 cmp     ah, 40h ; '@'
seg006:5658                 jb      short loc_134AE
seg006:565A                 add     cx, 8000h
seg006:565E
seg006:565E loc_134AE:                              ; CODE XREF: sub_13132+376␘j
seg006:565E                 push    cx
seg006:565F                 mov     ax, di
seg006:5661                 and     ax, 1E0h
seg006:5664                 neg     ax
seg006:5666                 add     ax, 1E0h
seg006:5669                 shl     ax, 1
seg006:566B                 shl     ax, 1
seg006:566D                 shl     ax, 1
seg006:566F                 shl     ax, 1
seg006:5671                 shl     ax, 1
seg006:5673                 add     ah, 2
seg006:5676                 add     dx, ax
seg006:5678                 sub     dx, [bx-59FBh]
seg006:567C                 mov     bp, 0C000h
seg006:567F                 mov     ax, dx
seg006:5681                 jns     short loc_134D8
seg006:5683                 neg     ax
seg006:5685                 mov     bp, 4000h
seg006:5688
seg006:5688 loc_134D8:                              ; CODE XREF: sub_13132+39F␘j
seg006:5688                 cmp     ah, 20h ; ' '
seg006:568B                 jb      short loc_134DF
seg006:568D                 add     dx, bp
seg006:568F
seg006:568F loc_134DF:                              ; CODE XREF: sub_13132+3A9␘j
seg006:568F                 push    dx
seg006:5690                 test    word ptr [bx-5C7Bh], 4000h
seg006:5696                 jz      short loc_13563
seg006:5698                 mov     al, byte_2AC99
seg006:569B                 mov     ah, 0
seg006:569D                 cmp     bx, 4
seg006:56A0                 ja      short loc_134FE
seg006:56A2                 shr     bx, 1
seg006:56A4                 mov     al, [bx-444Ah]
seg006:56A8                 mov     ah, [bx-444Ch]
seg006:56AC                 shl     bx, 1
seg006:56AE
seg006:56AE loc_134FE:                              ; CODE XREF: sub_13132+3BE␘j
seg006:56AE                 or      ah, ah
seg006:56B0                 jnz     short loc_13563
seg006:56B2                 or      al, al
seg006:56B4                 jnz     short loc_1350D
seg006:56B6                 test    byte_2ACA1, 8
seg006:56BB                 jz      short loc_13563
seg006:56BD
seg006:56BD loc_1350D:                              ; CODE XREF: sub_13132+3D2␘j
seg006:56BD                 and     word ptr [bx-5C7Bh], 0F7FFh
seg006:56C3                 test    byte_2ACA2, 80h
seg006:56C8                 jnz     short loc_13563
seg006:56CA                 cmp     bx, 4
seg006:56CD                 jbe     short loc_13526
seg006:56CF                 mov     byte_2AC99, 28h ; '('
seg006:56D4                 jmp     short loc_1352F
seg006:56D6 ; ---------------------------------------------------------------------------
seg006:56D6
seg006:56D6 loc_13526:                              ; CODE XREF: sub_13132+3EB␘j
seg006:56D6                 shr     bx, 1
seg006:56D8                 mov     byte ptr [bx-444Ah], 28h ; '('
seg006:56DD                 shl     bx, 1
seg006:56DF
seg006:56DF loc_1352F:                              ; CODE XREF: sub_13132+3F2␘j
seg006:56DF                 call    sub_FFCA
seg006:56E2                 mov     dx, word_2844C
seg006:56E6                 push    dx
seg006:56E7                 mov     dx, word_2844E
seg006:56EB                 push    dx
seg006:56EC                 neg     ax
seg006:56EE                 add     ax, 4000h
seg006:56F1                 mov     dx, 40h ; '@'
seg006:56F4                 push    dx
seg006:56F5                 push    ax
seg006:56F6                 call    sub_10017
seg006:56FB                 add     sp, 4
seg006:56FE                 pop     si
seg006:56FF                 pop     ax
seg006:5700                 pop     dx
seg006:5701                 pop     cx
seg006:5702                 add     cx, word_2844E
seg006:5706                 add     dx, word_2844C
seg006:570A                 mov     word_2844C, ax
seg006:570D                 mov     word_2844E, si
seg006:5711                 push    cx
seg006:5712                 push    dx
seg006:5713
seg006:5713 loc_13563:                              ; CODE XREF: sub_13132+3B4␘j
seg006:5713                                         ; sub_13132+3CE␘j ...
seg006:5713                 call    sub_FFCA
seg006:5716                 mov     si, [bx-577Bh]
seg006:571A                 and     si, 0FF00h
seg006:571E                 mov     al, ah
seg006:5720                 sub     ah, ah
seg006:5722                 or      si, ax
seg006:5724                 mov     [bx-577Bh], si
seg006:5728                 or      cx, cx
seg006:572A                 jns     short loc_1357E
seg006:572C                 neg     cx
seg006:572E
seg006:572E loc_1357E:                              ; CODE XREF: sub_13132+448␘j
seg006:572E                 add     cx, dx
seg006:5730                 shl     dx, 1
seg006:5732                 add     cx, dx
seg006:5734                 rcr     cx, 1
seg006:5736                 pop     dx
seg006:5737                 sub     si, si
seg006:5739                 or      dx, dx
seg006:573B                 jns     short loc_13590
seg006:573D                 inc     si
seg006:573E                 neg     dx
seg006:5740
seg006:5740 loc_13590:                              ; CODE XREF: sub_13132+459␘j
seg006:5740                 mov     di, dx
seg006:5742                 mov     ax, 0FFFFh
seg006:5745                 cmp     cx, dx
seg006:5747                 jbe     short loc_1359D
seg006:5749                 sub     ax, ax
seg006:574B                 div     cx
seg006:574D
seg006:574D loc_1359D:                              ; CODE XREF: sub_13132+465␘j
seg006:574D                 mov     dx, word_2844C
seg006:5751                 cmp     byte_2ACAC, 1
seg006:5756                 jnz     short loc_135AA
seg006:5758                 shr     dx, 1
seg006:575A
seg006:575A loc_135AA:                              ; CODE XREF: sub_13132+474␘j
seg006:575A                 mul     dx
seg006:575C                 or      si, si
seg006:575E                 jz      short loc_135B2
seg006:5760                 neg     dx
seg006:5762
seg006:5762 loc_135B2:                              ; CODE XREF: sub_13132+47C␘j
seg006:5762                 mov     byte_28456, dl
seg006:5766                 pop     dx
seg006:5767                 sub     si, si
seg006:5769                 or      dx, dx
seg006:576B                 jns     short loc_135C0
seg006:576D                 inc     si
seg006:576E                 neg     dx
seg006:5770
seg006:5770 loc_135C0:                              ; CODE XREF: sub_13132+489␘j
seg006:5770                 mov     bp, dx
seg006:5772                 mov     ax, 0FFFFh
seg006:5775                 cmp     cx, dx
seg006:5777                 jbe     short loc_135CD
seg006:5779                 sub     ax, ax
seg006:577B                 div     cx
seg006:577D
seg006:577D loc_135CD:                              ; CODE XREF: sub_13132+495␘j
seg006:577D                 mov     dx, word_2844C
seg006:5781                 cmp     byte_2ACAC, 1
seg006:5786                 jnz     short loc_135DA
seg006:5788                 shr     dx, 1
seg006:578A
seg006:578A loc_135DA:                              ; CODE XREF: sub_13132+4A4␘j
seg006:578A                 mul     dx
seg006:578C                 or      si, si
seg006:578E                 jz      short loc_135E2
seg006:5790                 neg     dx
seg006:5792
seg006:5792 loc_135E2:                              ; CODE XREF: sub_13132+4AC␘j
seg006:5792                 mov     dh, byte_28456
seg006:5796                 mov     [bx-54FBh], dx
seg006:579A                 cmp     bp, di
seg006:579C                 jnb     short loc_135F2
seg006:579E                 xchg    bp, di
seg006:57A0                 xchg    dl, dh
seg006:57A2
seg006:57A2 loc_135F2:                              ; CODE XREF: sub_13132+4BA␘j
seg006:57A2                 mov     al, dl
seg006:57A4                 cbw
seg006:57A5                 or      ax, ax
seg006:57A7                 jns     short loc_135FB
seg006:57A9                 neg     ax
seg006:57AB
seg006:57AB loc_135FB:                              ; CODE XREF: sub_13132+4C5␘j
seg006:57AB                 xchg    ax, bp
seg006:57AC                 sub     dx, dx
seg006:57AE                 or      bp, bp
seg006:57B0                 jz      short loc_13606
seg006:57B2                 div     bp
seg006:57B4                 mov     dx, ax
seg006:57B6
seg006:57B6 loc_13606:                              ; CODE XREF: sub_13132+4CE␘j
seg006:57B6                 or      dx, dx
seg006:57B8                 jnz     short loc_1360B
seg006:57BA                 inc     dx
seg006:57BB
seg006:57BB loc_1360B:                              ; CODE XREF: sub_13132+4D6␘j
seg006:57BB                 mov     ax, dx
seg006:57BD                 shl     ax, 1
seg006:57BF                 shl     ax, 1
seg006:57C1                 shl     ax, 1
seg006:57C3                 shl     ax, 1
seg006:57C5                 shl     ax, 1
seg006:57C7                 shl     ax, 1
seg006:57C9                 or      [bx-527Bh], ax
seg006:57CD                 mov     ax, word_2844E
seg006:57D0                 sub     ax, [bx-58BBh]
seg006:57D4                 mov     cx, dx
seg006:57D6                 cwd
seg006:57D7                 idiv    cx
seg006:57D9                 sar     ax, 1
seg006:57DB                 sar     ax, 1
seg006:57DD                 sub     ah, ah
seg006:57DF                 mov     cx, [bx-54FBh]
seg006:57E3                 or      cl, cl
seg006:57E5                 jns     short loc_13639
seg006:57E7                 neg     cl
seg006:57E9
seg006:57E9 loc_13639:                              ; CODE XREF: sub_13132+503␘j
seg006:57E9                 or      ch, ch
seg006:57EB                 jns     short loc_1363F
seg006:57ED                 neg     ch
seg006:57EF
seg006:57EF loc_1363F:                              ; CODE XREF: sub_13132+509␘j
seg006:57EF                 add     cl, ch
seg006:57F1                 jz      short loc_13683
seg006:57F3                 mov     dl, al
seg006:57F5                 mov     dh, 3
seg006:57F7                 or      al, al
seg006:57F9                 jns     short loc_1364D
seg006:57FB                 neg     al
seg006:57FD
seg006:57FD loc_1364D:                              ; CODE XREF: sub_13132+517␘j
seg006:57FD                 shl     ax, 1
seg006:57FF                 shl     ax, 1
seg006:5801                 shl     ax, 1
seg006:5803                 shl     ax, 1
seg006:5805                 cmp     ah, cl
seg006:5807                 jnb     short loc_13679
seg006:5809                 div     cl
seg006:580B                 cmp     al, 18h
seg006:580D                 jnb     short loc_13679
seg006:580F                 inc     dh
seg006:5811                 cmp     al, 0Ch
seg006:5813                 jnb     short loc_13679
seg006:5815                 inc     dh
seg006:5817                 cmp     al, 6
seg006:5819                 jnb     short loc_13679
seg006:581B                 inc     dh
seg006:581D                 cmp     al, 3
seg006:581F                 jnb     short loc_13679
seg006:5821                 inc     dh
seg006:5823                 cmp     al, 1
seg006:5825                 jnb     short loc_13679
seg006:5827                 sub     dh, dh
seg006:5829
seg006:5829 loc_13679:                              ; CODE XREF: sub_13132+525␘j
seg006:5829                                         ; sub_13132+52B␘j ...
seg006:5829                 mov     ah, dh
seg006:582B                 mov     al, dl
seg006:582D                 or      al, al
seg006:582F                 js      short loc_13683
seg006:5831                 neg     ah
seg006:5833
seg006:5833 loc_13683:                              ; CODE XREF: sub_13132+50F␘j
seg006:5833                                         ; sub_13132+54D␘j
seg006:5833                 cmp     [bx-563Ah], ah
seg006:5837                 jz      short loc_1368E
seg006:5839                 mov     byte_2ACAD, 1
seg006:583E
seg006:583E loc_1368E:                              ; CODE XREF: sub_13132+555␘j
seg006:583E                 mov     [bx-563Bh], ax
seg006:5842                 retn
seg006:5843 ; ---------------------------------------------------------------------------
seg006:5843
seg006:5843 loc_13693:                              ; CODE XREF: sub_13132:loc_13366␘j
seg006:5843                 mov     dx, [bx-54FBh]
seg006:5847                 cmp     bp, 4000h
seg006:584B                 jnb     short loc_136F0
seg006:584D                 or      dx, dx
seg006:584F                 jz      short loc_136E7
seg006:5851                 test    word ptr [bx-5C7Bh], 4000h
seg006:5857                 jnz     short loc_136E7
seg006:5859                 or      word ptr [bx-5C7Bh], 8000h
seg006:585F                 mov     word ptr [bx-54FBh], 0
seg006:5865                 mov     byte ptr [bx-563Bh], 0
seg006:586A                 sub     al, al
seg006:586C                 or      dl, dl
seg006:586E                 jz      short loc_136C2
seg006:5870                 jns     short loc_136C4
seg006:5872
seg006:5872 loc_136C2:                              ; CODE XREF: sub_13132+58C␘j
seg006:5872                 inc     al
seg006:5874
seg006:5874 loc_136C4:                              ; CODE XREF: sub_13132+58E␘j
seg006:5874                 or      dh, dh
seg006:5876                 jz      short loc_136CA
seg006:5878                 jns     short loc_136CC
seg006:587A
seg006:587A loc_136CA:                              ; CODE XREF: sub_13132+594␘j
seg006:587A                 add     al, 2
seg006:587C
seg006:587C loc_136CC:                              ; CODE XREF: sub_13132+596␘j
seg006:587C                 shl     al, 1
seg006:587E                 shl     al, 1
seg006:5880                 shl     al, 1
seg006:5882                 sub     al, byte_2ACAB
seg006:5886                 and     al, 1Fh
seg006:5888                 add     al, 10h
seg006:588A                 sub     ah, ah
seg006:588C                 xchg    al, ah
seg006:588E                 shr     ax, 1
seg006:5890                 shr     ax, 1
seg006:5892                 or      [bx-527Bh], ax
seg006:5896                 retn
seg006:5897 ; ---------------------------------------------------------------------------
seg006:5897
seg006:5897 loc_136E7:                              ; CODE XREF: sub_13132+56D␘j
seg006:5897                                         ; sub_13132+575␘j ...
seg006:5897                 and     word ptr [bx-5C7Bh], 7FFFh
seg006:589D                 jmp     loc_13377
seg006:58A0 ; ---------------------------------------------------------------------------
seg006:58A0
seg006:58A0 loc_136F0:                              ; CODE XREF: sub_13132+569␘j
seg006:58A0                 jbe     short loc_13715
seg006:58A2                 cmp     byte_2ACC2, 10h
seg006:58A7                 jb      short loc_136E7
seg006:58A9                 or      dx, dx
seg006:58AB                 jz      short loc_136E7
seg006:58AD                 or      word ptr [bx-5C7Bh], 8000h
seg006:58B3                 mov     word ptr [bx-54FBh], 0
seg006:58B9                 mov     byte ptr [bx-563Bh], 0
seg006:58BE                 or      word ptr [bx-527Bh], 140h
seg006:58C4                 retn
seg006:58C5 ; ---------------------------------------------------------------------------
seg006:58C5
seg006:58C5 loc_13715:                              ; CODE XREF: sub_13132:loc_136F0␘j
seg006:58C5                 or      dx, dx
seg006:58C7                 jz      short loc_136E7
seg006:58C9                 test    word ptr [bx-5C7Bh], 4000h
seg006:58CF                 jnz     short loc_136E7
seg006:58D1                 sub     ch, ch
seg006:58D3                 or      dl, dl
seg006:58D5                 jz      short loc_13732
seg006:58D7                 jns     short loc_1372C
seg006:58D9                 xor     ch, 2
seg006:58DC
seg006:58DC loc_1372C:                              ; CODE XREF: sub_13132+5F5␘j
seg006:58DC                 or      dh, dh
seg006:58DE                 jz      short loc_13737
seg006:58E0                 jns     short loc_13739
seg006:58E2
seg006:58E2 loc_13732:                              ; CODE XREF: sub_13132+5F3␘j
seg006:58E2                 xor     ch, 2
seg006:58E5                 jmp     short loc_13739
seg006:58E7 ; ---------------------------------------------------------------------------
seg006:58E7
seg006:58E7 loc_13737:                              ; CODE XREF: sub_13132+5FC␘j
seg006:58E7                 sub     ch, ch
seg006:58E9
seg006:58E9 loc_13739:                              ; CODE XREF: sub_13132+5FE␘j
seg006:58E9                                         ; sub_13132+603␘j
seg006:58E9                 mov     dl, byte_2ACB9
seg006:58ED                 and     dl, 2
seg006:58F0                 xor     dl, ch
seg006:58F2                 jnz     short loc_136E7
seg006:58F4                 or      word ptr [bx-5C7Bh], 8000h
seg006:58FA                 mov     word ptr [bx-54FBh], 0
seg006:5900                 mov     byte ptr [bx-563Bh], 0
seg006:5905                 mov     al, byte_2ACB8
seg006:5908                 test    byte_2ACB9, 1
seg006:590D                 jnz     short loc_13761
seg006:590F                 add     al, 9
seg006:5911
seg006:5911 loc_13761:                              ; CODE XREF: sub_13132+62B␘j
seg006:5911                 add     al, 4
seg006:5913                 sub     ah, ah
seg006:5915                 xchg    al, ah
seg006:5917                 shr     ax, 1
seg006:5919                 shr     ax, 1
seg006:591B                 or      [bx-527Bh], ax
seg006:591F                 retn
seg006:591F sub_13132       endp
seg006:591F
seg006:5920
