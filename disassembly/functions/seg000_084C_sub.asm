seg000:084C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:084C
seg000:084C ; Attributes: bp-based frame
seg000:084C
seg000:084C sub_84C         proc far                ; CODE XREF: seg000:0845␘p
seg000:084C                                         ; sub_8DC+31A␙p ...
seg000:084C
seg000:084C arg_0           = word ptr  6
seg000:084C
seg000:084C                 push    bp
seg000:084D                 mov     bp, sp
seg000:084F                 call    sub_3BD4
seg000:0854                 cmp     [bp+arg_0], 4
seg000:0858                 jz      short loc_870
seg000:085A                 push    cs
seg000:085B                 call    near ptr sub_1344
seg000:085E                 cmp     [bp+arg_0], 1
seg000:0862                 jz      short loc_870
seg000:0864                 mov     ax, 1
seg000:0867                 push    ax
seg000:0868                 call    far ptr sub_16DC6
seg000:086D                 add     sp, 2
seg000:0870
seg000:0870 loc_870:                                ; CODE XREF: sub_84C+C␘j
seg000:0870                                         ; sub_84C+16␘j
seg000:0870                 push    word_2DB52
seg000:0874                 call    sub_18ABD
seg000:0879                 add     sp, 2
seg000:087C                 call    sub_16A2D
seg000:0881                 call    sub_CDA5
seg000:0886                 mov     ax, [bp+arg_0]
seg000:0889                 cmp     ax, 1
seg000:088C                 jz      short loc_8A2
seg000:088E                 cmp     ax, 2
seg000:0891                 jz      short loc_8BC
seg000:0893                 cmp     ax, 3
seg000:0896                 jz      short loc_8C2
seg000:0898                 cmp     ax, 5
seg000:089B                 jz      short loc_8C8
seg000:089D                 mov     ax, 1F4h
seg000:08A0                 jmp     short loc_8B1
seg000:08A2 ; ---------------------------------------------------------------------------
seg000:08A2
seg000:08A2 loc_8A2:                                ; CODE XREF: sub_84C+40␘j
seg000:08A2                 mov     ax, 103h
seg000:08A5                 push    ax
seg000:08A6                 call    sub_194CE
seg000:08AB                 add     sp, 2
seg000:08AE                 mov     ax, 136h
seg000:08B1
seg000:08B1 loc_8B1:                                ; CODE XREF: sub_84C+54␘j
seg000:08B1                                         ; sub_84C+73␙j ...
seg000:08B1                 push    ax
seg000:08B2                 call    sub_194CE
seg000:08B7                 add     sp, 2
seg000:08BA                 jmp     short loc_8CE
seg000:08BC ; ---------------------------------------------------------------------------
seg000:08BC
seg000:08BC loc_8BC:                                ; CODE XREF: sub_84C+45␘j
seg000:08BC                 mov     ax, 15Dh
seg000:08BF                 jmp     short loc_8B1
seg000:08BF ; ---------------------------------------------------------------------------
seg000:08C1                 align 2
seg000:08C2
seg000:08C2 loc_8C2:                                ; CODE XREF: sub_84C+4A␘j
seg000:08C2                 mov     ax, 18Eh
seg000:08C5                 jmp     short loc_8B1
seg000:08C5 ; ---------------------------------------------------------------------------
seg000:08C7                 align 2
seg000:08C8
seg000:08C8 loc_8C8:                                ; CODE XREF: sub_84C+4F␘j
seg000:08C8                 mov     ax, 1C3h
seg000:08CB                 jmp     short loc_8B1
seg000:08CB ; ---------------------------------------------------------------------------
seg000:08CD                 align 2
seg000:08CE
seg000:08CE loc_8CE:                                ; CODE XREF: sub_84C+6E␘j
seg000:08CE                 push    [bp+arg_0]
seg000:08D1                 call    far ptr sub_19004
seg000:08D6                 add     sp, 2
seg000:08D9                 pop     bp
seg000:08DA                 retf
seg000:08DA sub_84C         endp
seg000:08DA
seg000:08DA ; ---------------------------------------------------------------------------
seg000:08DB                 align 2
seg000:08DC
