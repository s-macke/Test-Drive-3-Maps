seg006:4257 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4257
seg006:4257
seg006:4257 sub_120A7       proc near               ; CODE XREF: sub_14379+FE␙p
seg006:4257                 push    es
seg006:4258                 mov     es, word_280BC
seg006:425C                 sub     si, 20h ; ' '
seg006:425F                 add     bp, 20h ; ' '
seg006:4262                 mov     bx, word_2AA86
seg006:4266                 mov     dx, 0FFE0h
seg006:4269                 or      bx, bx
seg006:426B                 jns     short loc_120C2
seg006:426D                 jmp     loc_1214B
seg006:4270 ; ---------------------------------------------------------------------------
seg006:4270
seg006:4270 loc_120C0:                              ; CODE XREF: sub_120A7+1F␙j
seg006:4270                 pop     es
seg006:4271                 retn
seg006:4272 ; ---------------------------------------------------------------------------
seg006:4272
seg006:4272 loc_120C2:                              ; CODE XREF: sub_120A7+14␘j
seg006:4272                                         ; sub_120A7+D8␙j ...
seg006:4272                 cmp     bx, word_2AA7B
seg006:4276                 jnb     short loc_120C0
seg006:4278                 mov     ax, bx
seg006:427A                 add     ax, word_2AAAB
seg006:427E                 sub     ax, word_2AA7B
seg006:4282                 js      short loc_120D8
seg006:4284                 sub     word_2AAAB, ax
seg006:4288
seg006:4288 loc_120D8:                              ; CODE XREF: sub_120A7+2B␘j
seg006:4288                 shl     bx, 1
seg006:428A
seg006:428A loc_120DA:                              ; CODE XREF: sub_120A7+A0␙j
seg006:428A                 mov     ax, si
seg006:428C                 and     ax, dx
seg006:428E                 mov     cx, bp
seg006:4290                 and     cx, dx
seg006:4292                 cmp     cx, 2800h
seg006:4296                 jbe     short loc_120FA
seg006:4298                 cmp     cx, 0A800h
seg006:429C                 ja      short loc_12132
seg006:429E                 cmp     ax, 27E0h
seg006:42A1                 jbe     short loc_120F7
seg006:42A3                 cmp     ax, cx
seg006:42A5                 jbe     short loc_12132
seg006:42A7
seg006:42A7 loc_120F7:                              ; CODE XREF: sub_120A7+4A␘j
seg006:42A7                 mov     cx, 2800h
seg006:42AA
seg006:42AA loc_120FA:                              ; CODE XREF: sub_120A7+3F␘j
seg006:42AA                 sub     cx, ax
seg006:42AC                 jns     short loc_12100
seg006:42AE                 sub     cx, cx
seg006:42B0
seg006:42B0 loc_12100:                              ; CODE XREF: sub_120A7+55␘j
seg006:42B0                 cmp     ax, 27E0h
seg006:42B3                 jbe     short loc_12110
seg006:42B5                 cmp     ax, 8000h
seg006:42B8                 jbe     short loc_12132
seg006:42BA                 add     cx, ax
seg006:42BC                 js      short loc_12132
seg006:42BE                 sub     ax, ax
seg006:42C0
seg006:42C0 loc_12110:                              ; CODE XREF: sub_120A7+5C␘j
seg006:42C0                 shl     ax, 1
seg006:42C2                 shl     ax, 1
seg006:42C4                 rol     ax, 1
seg006:42C6                 xchg    al, ah
seg006:42C8                 shl     cx, 1
seg006:42CA                 shl     cx, 1
seg006:42CC                 rol     cx, 1
seg006:42CE                 xchg    cl, ch
seg006:42D0                 mov     di, [bx-4823h]
seg006:42D4                 add     di, ax
seg006:42D6                 mov     ax, word_2AA9B
seg006:42D9                 shr     cx, 1
seg006:42DB                 jz      short loc_12131
seg006:42DD                 rep stosw
seg006:42DF                 jnb     short loc_12132
seg006:42E1
seg006:42E1 loc_12131:                              ; CODE XREF: sub_120A7+84␘j
seg006:42E1                 stosb
seg006:42E2
seg006:42E2 loc_12132:                              ; CODE XREF: sub_120A7+45␘j
seg006:42E2                                         ; sub_120A7+4E␘j ...
seg006:42E2                 add     bx, 2
seg006:42E5                 mov     ax, word_2AA9D
seg006:42E8                 sub     ax, word_2AA9F
seg006:42EC                 mov     word_2AA9D, ax
seg006:42EF                 sub     si, ax
seg006:42F1                 add     bp, ax
seg006:42F3                 dec     word_2AAAB
seg006:42F7                 jnz     short loc_120DA
seg006:42F9                 pop     es
seg006:42FA                 retn
seg006:42FB ; ---------------------------------------------------------------------------
seg006:42FB
seg006:42FB loc_1214B:                              ; CODE XREF: sub_120A7+16␘j
seg006:42FB                 mov     cx, bx
seg006:42FD                 neg     cx
seg006:42FF                 sub     bx, bx
seg006:4301                 mov     ax, word_2AA9D
seg006:4304                 mov     di, word_2AA9F
seg006:4308                 sub     word_2AAAB, cx
seg006:430C                 jz      short loc_12160
seg006:430E                 jns     short loc_12162
seg006:4310
seg006:4310 loc_12160:                              ; CODE XREF: sub_120A7+B5␘j
seg006:4310                 pop     es
seg006:4311                 retn
seg006:4312 ; ---------------------------------------------------------------------------
seg006:4312
seg006:4312 loc_12162:                              ; CODE XREF: sub_120A7+B7␘j
seg006:4312                 shr     cx, 1
seg006:4314                 jz      short loc_12182
seg006:4316                 jnb     short loc_1216E
seg006:4318                 sub     ax, di
seg006:431A                 sub     si, ax
seg006:431C                 add     bp, ax
seg006:431E
seg006:431E loc_1216E:                              ; CODE XREF: sub_120A7+BF␘j
seg006:431E                                         ; sub_120A7+D3␙j
seg006:431E                 sub     ax, di
seg006:4320                 sub     si, ax
seg006:4322                 add     bp, ax
seg006:4324                 sub     ax, di
seg006:4326                 sub     si, ax
seg006:4328                 add     bp, ax
seg006:432A                 loop    loc_1216E
seg006:432C                 mov     word_2AA9D, ax
seg006:432F                 jmp     loc_120C2
seg006:4332 ; ---------------------------------------------------------------------------
seg006:4332
seg006:4332 loc_12182:                              ; CODE XREF: sub_120A7+BD␘j
seg006:4332                 sub     ax, di
seg006:4334                 sub     si, ax
seg006:4336                 add     bp, ax
seg006:4338                 mov     word_2AA9D, ax
seg006:433B                 jmp     loc_120C2
seg006:433B sub_120A7       endp
seg006:433B
seg006:433E
