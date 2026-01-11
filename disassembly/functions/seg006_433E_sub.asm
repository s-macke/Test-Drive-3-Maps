seg006:433E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:433E
seg006:433E
seg006:433E sub_1218E       proc near               ; CODE XREF: sub_1447B+30␙p
seg006:433E                 push    es
seg006:433F                 mov     es, word_280BC
seg006:4343                 mov     word_2AAAD, 0
seg006:4349                 mov     bx, word_2AA86
seg006:434D                 mov     dx, 0FFE0h
seg006:4350                 cmp     bx, word_2AA7B
seg006:4354                 jge     short loc_121CE
seg006:4356                 jb      short loc_121D2
seg006:4358                 mov     cx, bx
seg006:435A                 neg     cx
seg006:435C                 sub     bx, bx
seg006:435E                 sub     word_2AAAB, cx
seg006:4362                 cmp     word_2AAAB, 1
seg006:4367                 jl      short loc_121CE
seg006:4369                 jz      short loc_121CB
seg006:436B                 shr     cx, 1
seg006:436D                 jz      short loc_121D0
seg006:436F                 jnb     short loc_121C3
seg006:4371                 sub     bp, si
seg006:4373
seg006:4373 loc_121C3:                              ; CODE XREF: sub_1218E+31␘j
seg006:4373                                         ; sub_1218E+39␙j
seg006:4373                 sub     bp, si
seg006:4375                 sub     bp, si
seg006:4377                 loop    loc_121C3
seg006:4379                 jmp     short loc_121D2
seg006:437B ; ---------------------------------------------------------------------------
seg006:437B
seg006:437B loc_121CB:                              ; CODE XREF: sub_1218E+2B␘j
seg006:437B                 jmp     loc_12254
seg006:437E ; ---------------------------------------------------------------------------
seg006:437E
seg006:437E loc_121CE:                              ; CODE XREF: sub_1218E+16␘j
seg006:437E                                         ; sub_1218E+29␘j
seg006:437E                 pop     es
seg006:437F                 retn
seg006:4380 ; ---------------------------------------------------------------------------
seg006:4380
seg006:4380 loc_121D0:                              ; CODE XREF: sub_1218E+2F␘j
seg006:4380                 sub     bp, si
seg006:4382
seg006:4382 loc_121D2:                              ; CODE XREF: sub_1218E+18␘j
seg006:4382                                         ; sub_1218E+3B␘j
seg006:4382                 mov     ax, bx
seg006:4384                 shl     bx, 1
seg006:4386                 add     ax, word_2AAAB
seg006:438A                 sub     ax, word_2AA7B
seg006:438E                 js      short loc_121EA
seg006:4390                 jz      short loc_121EA
seg006:4392                 mov     word_2AAAD, si
seg006:4396                 sub     word_2AAAB, ax
seg006:439A
seg006:439A loc_121EA:                              ; CODE XREF: sub_1218E+50␘j
seg006:439A                                         ; sub_1218E+52␘j ...
seg006:439A                 mov     ax, bp
seg006:439C                 mov     cx, ax
seg006:439E                 sub     cx, si
seg006:43A0                 cmp     ax, cx
seg006:43A2                 js      short loc_121F5
seg006:43A4                 xchg    ax, cx
seg006:43A5
seg006:43A5 loc_121F5:                              ; CODE XREF: sub_1218E+64␘j
seg006:43A5                 and     ax, dx
seg006:43A7                 and     cx, dx
seg006:43A9                 cmp     cx, 27E0h
seg006:43AD                 jbe     short loc_12211
seg006:43AF                 cmp     cx, 0A7E0h
seg006:43B3                 ja      short loc_12242
seg006:43B5                 cmp     ax, 27E0h
seg006:43B8                 jbe     short loc_1220E
seg006:43BA                 cmp     ax, cx
seg006:43BC                 jbe     short loc_12242
seg006:43BE
seg006:43BE loc_1220E:                              ; CODE XREF: sub_1218E+7A␘j
seg006:43BE                 mov     cx, 27E0h
seg006:43C1
seg006:43C1 loc_12211:                              ; CODE XREF: sub_1218E+6F␘j
seg006:43C1                 cmp     ax, 27E0h
seg006:43C4                 jbe     short loc_1221D
seg006:43C6                 cmp     ax, 8000h
seg006:43C9                 jbe     short loc_12242
seg006:43CB                 sub     ax, ax
seg006:43CD
seg006:43CD loc_1221D:                              ; CODE XREF: sub_1218E+86␘j
seg006:43CD                 sub     cx, ax
seg006:43CF                 shl     ax, 1
seg006:43D1                 shl     ax, 1
seg006:43D3                 rol     ax, 1
seg006:43D5                 xchg    al, ah
seg006:43D7                 shl     cx, 1
seg006:43D9                 shl     cx, 1
seg006:43DB                 rol     cx, 1
seg006:43DD                 xchg    cl, ch
seg006:43DF                 inc     cx
seg006:43E0                 mov     di, [bx-4823h]
seg006:43E4                 add     di, ax
seg006:43E6                 mov     ax, word_2AA9B
seg006:43E9                 shr     cx, 1
seg006:43EB                 jz      short loc_12241
seg006:43ED                 rep stosw
seg006:43EF                 jnb     short loc_12242
seg006:43F1
seg006:43F1 loc_12241:                              ; CODE XREF: sub_1218E+AD␘j
seg006:43F1                 stosb
seg006:43F2
seg006:43F2 loc_12242:                              ; CODE XREF: sub_1218E+75␘j
seg006:43F2                                         ; sub_1218E+7E␘j ...
seg006:43F2                 add     bx, 2
seg006:43F5                 sub     bp, si
seg006:43F7                 dec     word_2AAAB
seg006:43FB                 cmp     word_2AAAB, 1
seg006:4400                 ja      short loc_121EA
seg006:4402                 jb      short loc_1225A
seg006:4404
seg006:4404 loc_12254:                              ; CODE XREF: sub_1218E:loc_121CB␘j
seg006:4404                 mov     si, word_2AAAD
seg006:4408                 jmp     short loc_121EA
seg006:440A ; ---------------------------------------------------------------------------
seg006:440A
seg006:440A loc_1225A:                              ; CODE XREF: sub_1218E+C4␘j
seg006:440A                 pop     es
seg006:440B                 retn
seg006:440B sub_1218E       endp
seg006:440B
seg006:440C
