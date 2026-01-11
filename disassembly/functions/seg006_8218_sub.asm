seg006:8218 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:8218
seg006:8218
seg006:8218 sub_16068       proc near               ; CODE XREF: sub_16275+AE␙p
seg006:8218                 mov     cx, [bx+498Eh]
seg006:821C                 sub     cx, word_2AD27
seg006:8220                 neg     cx
seg006:8222                 add     cx, 1600h
seg006:8226                 sar     cx, 1
seg006:8228                 mov     dx, [si+498Eh]
seg006:822C                 sub     dx, word_2AD27
seg006:8230                 neg     dx
seg006:8232                 add     dx, 1600h
seg006:8236                 sar     dx, 1
seg006:8238                 mov     ax, [di+498Eh]
seg006:823C                 sub     ax, word_2AD27
seg006:8240                 neg     ax
seg006:8242                 add     ax, 1600h
seg006:8245                 sar     ax, 1
seg006:8247                 cmp     ax, dx
seg006:8249                 js      short loc_160AB
seg006:824B                 cmp     ax, cx
seg006:824D                 js      short loc_160BB
seg006:824F                 cmp     cx, dx
seg006:8251                 js      short loc_160A7
seg006:8253                 mov     cx, ax
seg006:8255                 jmp     short loc_160BB
seg006:8257 ; ---------------------------------------------------------------------------
seg006:8257
seg006:8257 loc_160A7:                              ; CODE XREF: sub_16068+39␘j
seg006:8257                 mov     dx, ax
seg006:8259                 jmp     short loc_160B9
seg006:825B ; ---------------------------------------------------------------------------
seg006:825B
seg006:825B loc_160AB:                              ; CODE XREF: sub_16068+31␘j
seg006:825B                 cmp     ax, cx
seg006:825D                 jns     short loc_160B9
seg006:825F                 cmp     cx, dx
seg006:8261                 js      short loc_160B7
seg006:8263                 mov     dx, ax
seg006:8265                 jmp     short loc_160BB
seg006:8267 ; ---------------------------------------------------------------------------
seg006:8267
seg006:8267 loc_160B7:                              ; CODE XREF: sub_16068+49␘j
seg006:8267                 mov     cx, ax
seg006:8269
seg006:8269 loc_160B9:                              ; CODE XREF: sub_16068+41␘j
seg006:8269                                         ; sub_16068+45␘j
seg006:8269                 xchg    cx, dx
seg006:826B
seg006:826B loc_160BB:                              ; CODE XREF: sub_16068+35␘j
seg006:826B                                         ; sub_16068+3D␘j ...
seg006:826B                 mov     bp, cx
seg006:826D                 mov     si, dx
seg006:826F                 mov     ax, [bx+7B8Eh]
seg006:8273                 mov     word_2AA86, ax
seg006:8276                 sub     cx, cx
seg006:8278                 mov     word_2AAAD, cx
seg006:827C                 mov     word_2AAAF, cx
seg006:8280                 inc     cx
seg006:8281                 mov     word_2AAAB, cx
seg006:8285                 call    sub_15ADD
seg006:8288                 retn
seg006:8288 sub_16068       endp
seg006:8288
seg006:8289 ; ---------------------------------------------------------------------------
seg006:8289 ; START OF FUNCTION CHUNK FOR sub_1603A
seg006:8289
seg006:8289 loc_160D9:                              ; CODE XREF: sub_1603A+2C␘j
seg006:8289                 cmp     ax, [si+7B8Eh]
seg006:828D                 jnz     short loc_16152
seg006:828D ; END OF FUNCTION CHUNK FOR sub_1603A
seg006:828F
