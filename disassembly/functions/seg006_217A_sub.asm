seg006:217A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:217A
seg006:217A
seg006:217A sub_FFCA        proc near               ; CODE XREF: sub_13132:loc_1352F␙p
seg006:217A                                         ; sub_13132:loc_13563␙p ...
seg006:217A                 sub     bp, bp
seg006:217C                 or      cx, cx
seg006:217E                 jns     short loc_FFD5
seg006:2180                 neg     cx
seg006:2182                 mov     bp, 6
seg006:2185
seg006:2185 loc_FFD5:                               ; CODE XREF: sub_FFCA+4␘j
seg006:2185                 or      dx, dx
seg006:2187                 jns     short loc_FFDE
seg006:2189                 neg     dx
seg006:218B                 xor     bp, 2
seg006:218E
seg006:218E loc_FFDE:                               ; CODE XREF: sub_FFCA+D␘j
seg006:218E                 cmp     cx, dx
seg006:2190                 jb      short loc_FFE7
seg006:2192                 xchg    cx, dx
seg006:2194                 xor     bp, 8
seg006:2197
seg006:2197 loc_FFE7:                               ; CODE XREF: sub_FFCA+16␘j
seg006:2197                 mov     di, dx
seg006:2199                 mov     ax, 1FFh
seg006:219C                 cmp     dx, cx
seg006:219E                 jz      short loc_10003
seg006:21A0                 sub     ax, ax
seg006:21A2                 or      di, di
seg006:21A4                 jz      short loc_10003
seg006:21A6                 mov     dx, cx
seg006:21A8                 div     di
seg006:21AA                 mov     dx, di
seg006:21AC                 rol     ax, 1
seg006:21AE                 xchg    al, ah
seg006:21B0                 and     ah, 1
seg006:21B3
seg006:21B3 loc_10003:                              ; CODE XREF: sub_FFCA+24␘j
seg006:21B3                                         ; sub_FFCA+2A␘j
seg006:21B3                 mov     di, ax
seg006:21B5                 shl     di, 1
seg006:21B7                 add     di, 1172h
seg006:21BB                 add     di, [bp-4957h]
seg006:21BF                 mov     ax, cs:[di]
seg006:21C2                 add     ax, [bp-4937h]
seg006:21C6                 retn
seg006:21C6 sub_FFCA        endp
seg006:21C6
seg006:21C7
