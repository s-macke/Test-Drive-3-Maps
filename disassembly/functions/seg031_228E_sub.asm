seg031:228E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:228E
seg031:228E ; Attributes: bp-based frame
seg031:228E
seg031:228E sub_1B0EE       proc far                ; CODE XREF: sub_19AEE+86␘P
seg031:228E                                         ; sub_19DFA+23␘P ...
seg031:228E
seg031:228E arg_0           = word ptr  6
seg031:228E
seg031:228E                 push    bp
seg031:228F                 mov     bp, sp
seg031:2291                 mov     bx, [bp+arg_0]
seg031:2294                 cmp     bx, word_2B440
seg031:2298                 jge     short loc_1B10B
seg031:229A                 cmp     bx, 0
seg031:229D                 jl      short loc_1B10B
seg031:229F                 test    byte ptr [bx-3C9Eh], 40h
seg031:22A4                 jz      short loc_1B10B
seg031:22A6                 mov     ax, 1
seg031:22A9                 jmp     short loc_1B10D
seg031:22AB ; ---------------------------------------------------------------------------
seg031:22AB
seg031:22AB loc_1B10B:                              ; CODE XREF: sub_1B0EE+A␘j
seg031:22AB                                         ; sub_1B0EE+F␘j ...
seg031:22AB                 xor     ax, ax
seg031:22AD
seg031:22AD loc_1B10D:                              ; CODE XREF: sub_1B0EE+1B␘j
seg031:22AD                 mov     sp, bp
seg031:22AF                 pop     bp
seg031:22B0                 retf
seg031:22B0 sub_1B0EE       endp
seg031:22B0
seg031:22B0 ; ---------------------------------------------------------------------------
seg031:22B1                 align 2
seg031:22B2 ; START OF FUNCTION CHUNK FOR sub_1B0E4
seg031:22B2
seg031:22B2 loc_1B112:                              ; CODE XREF: sub_1B0E4+7␘j
seg031:22B2                 mov     cx, [bp+arg_8]
seg031:22B5                 mov     ax, [bp+arg_2]
seg031:22B8                 mov     dx, [bp+arg_4]
seg031:22BB                 mov     di, [bp+arg_6]
seg031:22BB ; END OF FUNCTION CHUNK FOR sub_1B0E4
seg031:22BE ; START OF FUNCTION CHUNK FOR sub_1AD1A
seg031:22BE
seg031:22BE loc_1B11E:                              ; CODE XREF: sub_1AD1A+18␘j
seg031:22BE                 push    di
seg031:22BF                 push    ds
seg031:22C0                 pop     es
seg031:22C1                 cld
seg031:22C2                 xchg    ax, bx
seg031:22C3                 or      al, al
seg031:22C5                 jz      short loc_1B13A
seg031:22C7                 cmp     cx, 0Ah
seg031:22CA                 jnz     short loc_1B13A
seg031:22CC                 or      dx, dx
seg031:22CE                 jns     short loc_1B13A
seg031:22D0                 mov     al, 2Dh ; '-'
seg031:22D2                 stosb
seg031:22D3                 neg     bx
seg031:22D5                 adc     dx, 0
seg031:22D8                 neg     dx
seg031:22DA
seg031:22DA loc_1B13A:                              ; CODE XREF: sub_1AD1A+40B␘j
seg031:22DA                                         ; sub_1AD1A+410␘j ...
seg031:22DA                 mov     si, di
seg031:22DC
seg031:22DC loc_1B13C:                              ; CODE XREF: sub_1AD1A+43E␙j
seg031:22DC                 xchg    ax, dx
seg031:22DD                 xor     dx, dx
seg031:22DF                 or      ax, ax
seg031:22E1                 jz      short loc_1B145
seg031:22E3                 div     cx
seg031:22E5
seg031:22E5 loc_1B145:                              ; CODE XREF: sub_1AD1A+427␘j
seg031:22E5                 xchg    ax, bx
seg031:22E6                 div     cx
seg031:22E8                 xchg    ax, dx
seg031:22E9                 xchg    dx, bx
seg031:22EB                 add     al, 30h ; '0'
seg031:22ED                 cmp     al, 39h ; '9'
seg031:22EF                 jbe     short loc_1B153
seg031:22F1                 add     al, 27h ; '''
seg031:22F3
seg031:22F3 loc_1B153:                              ; CODE XREF: sub_1AD1A+435␘j
seg031:22F3                 stosb
seg031:22F4                 mov     ax, dx
seg031:22F6                 or      ax, bx
seg031:22F8                 jnz     short loc_1B13C
seg031:22FA                 mov     [di], al
seg031:22FC
seg031:22FC loc_1B15C:                              ; CODE XREF: sub_1AD1A+44E␙j
seg031:22FC                 dec     di
seg031:22FD                 lodsb
seg031:22FE                 xchg    al, [di]
seg031:2300                 mov     [si-1], al
seg031:2303                 lea     ax, [si+1]
seg031:2306                 cmp     ax, di
seg031:2308                 jb      short loc_1B15C
seg031:230A                 pop     ax
seg031:230B                 pop     di
seg031:230C                 pop     si
seg031:230D                 mov     sp, bp
seg031:230F                 pop     bp
seg031:2310                 retf
seg031:2310 ; END OF FUNCTION CHUNK FOR sub_1AD1A
seg031:2310 ; ---------------------------------------------------------------------------
seg031:2311                 align 2
seg031:2312
seg031:2312 loc_1B172:                              ; DATA XREF: dseg:CB6E␙o
seg031:2312                 push    bp
seg031:2313                 mov     bp, sp
seg031:2315                 sub     sp, 4
seg031:2318                 push    di
seg031:2319                 push    si
seg031:231A                 mov     si, 0C39Ah
seg031:231D                 sub     di, di
seg031:231F                 jmp     short loc_1B198
seg031:231F ; ---------------------------------------------------------------------------
seg031:2321                 align 2
seg031:2322
seg031:2322 loc_1B182:                              ; CODE XREF: seg031:233C␙j
seg031:2322                 test    byte ptr [si+6], 83h
seg031:2326                 jz      short loc_1B195
seg031:2328                 push    si
seg031:2329                 call    sub_19E98
seg031:232E                 add     sp, 2
seg031:2331                 inc     ax
seg031:2332                 jz      short loc_1B195
seg031:2334                 inc     di
seg031:2335
seg031:2335 loc_1B195:                              ; CODE XREF: seg031:2326␘j
seg031:2335                                         ; seg031:2332␘j
seg031:2335                 add     si, 8
seg031:2338
seg031:2338 loc_1B198:                              ; CODE XREF: seg031:231F␘j
seg031:2338                 cmp     word_2B592, si
seg031:233C                 jnb     short loc_1B182
seg031:233E                 mov     ax, di
seg031:2340                 pop     si
seg031:2341                 pop     di
seg031:2342                 mov     sp, bp
seg031:2344                 pop     bp
seg031:2345                 retf
seg031:2345 seg031          ends
seg031:2345
seg032:0006 ; ---------------------------------------------------------------------------
seg032:0006 ; ---------------------------------------------------------------------------
seg032:0006
seg032:0006 ; Segment type: Pure code
seg032:0006 seg032          segment byte public 'CODE' use16
seg032:0006                 assume cs:seg032
seg032:0006                 ;org 6
seg032:0006                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg032:0006                 push    bp
seg032:0007                 mov     bp, sp
seg032:0009                 call    sub_1B3EC
seg032:000C
seg032:000C loc_1B1AC:                              ; CODE XREF: seg032:0031␙j
seg032:000C                                         ; seg032:0042␙j ...
seg032:000C                 les     bx, [bp+6]
seg032:000F                 inc     word ptr [bp+6]
seg032:0012                 mov     al, es:[bx]
seg032:0015                 or      al, al
seg032:0017                 jz      short loc_1B1F4
seg032:0019                 push    ax
seg032:001A                 call    sub_1B325
seg032:001D                 pop     ax
seg032:001E                 cmp     al, 0Ah
seg032:0020                 jnz     short loc_1B1D3
seg032:0022                 mov     word_2BDA7, 0
seg032:0028                 mov     byte_2BDB1, 0
seg032:002D                 inc     word_2BDA5
seg032:0031                 jmp     short loc_1B1AC
seg032:0033 ; ---------------------------------------------------------------------------
seg032:0033
seg032:0033 loc_1B1D3:                              ; CODE XREF: seg032:0020␘j
seg032:0033                 cmp     al, 0Dh
seg032:0035                 jnz     short loc_1B1E4
seg032:0037                 mov     word_2BDA7, 0
seg032:003D                 mov     byte_2BDB1, 0
seg032:0042                 jmp     short loc_1B1AC
seg032:0044 ; ---------------------------------------------------------------------------
seg032:0044
seg032:0044 loc_1B1E4:                              ; CODE XREF: seg032:0035␘j
seg032:0044                 cmp     byte_2BDB1, 0
seg032:0049                 jnz     short loc_1B1AC
seg032:004B                 call    sub_1B2E6
seg032:004E                 inc     word_2BDA7
seg032:0052                 jmp     short loc_1B1AC
seg032:0054 ; ---------------------------------------------------------------------------
seg032:0054
seg032:0054 loc_1B1F4:                              ; CODE XREF: seg032:0017␘j
seg032:0054                 call    sub_1B325
seg032:0057                 call    sub_1B40A
seg032:005A                 pop     bp
seg032:005B                 retf
seg032:005C
