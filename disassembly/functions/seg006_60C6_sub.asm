seg006:60C6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:60C6
seg006:60C6
seg006:60C6 sub_13F16       proc near               ; CODE XREF: sub_13EC9+7␘p
seg006:60C6                                         ; sub_13EC9+10␘p
seg006:60C6                 mov     cl, [si-443Bh]
seg006:60CA                 mov     dh, [si-443Ah]
seg006:60CE                 mov     dl, [si-4439h]
seg006:60D2                 mov     al, cl
seg006:60D4                 or      al, dh
seg006:60D6                 or      al, dl
seg006:60D8                 jz      short loc_13F2D
seg006:60DA                 jmp     loc_13FB8
seg006:60DD ; ---------------------------------------------------------------------------
seg006:60DD
seg006:60DD loc_13F2D:                              ; CODE XREF: sub_13F16+12␘j
seg006:60DD                 mov     ax, word_295A5
seg006:60E0                 sub     ax, [bx-5B3Bh]
seg006:60E4                 jns     short loc_13F38
seg006:60E6                 neg     ax
seg006:60E8
seg006:60E8 loc_13F38:                              ; CODE XREF: sub_13F16+1E␘j
seg006:60E8                 mov     cx, word_296E5
seg006:60EC                 sub     cx, [bx-59FBh]
seg006:60F0                 jns     short loc_13F44
seg006:60F2                 neg     cx
seg006:60F4
seg006:60F4 loc_13F44:                              ; CODE XREF: sub_13F16+2A␘j
seg006:60F4                 add     cx, ax
seg006:60F6                 mov     dx, word_285A1
seg006:60FA                 mov     ax, word_1FBE4
seg006:60FD                 shr     ax, 1
seg006:60FF                 add     ax, 4
seg006:6102                 mul     dx
seg006:6104                 shr     ax, 1
seg006:6106                 shr     ax, 1
seg006:6108                 shr     ax, 1
seg006:610A                 shr     ax, 1
seg006:610C                 xchg    ax, cx
seg006:610D                 sub     dx, dx
seg006:610F                 cmp     ax, cx
seg006:6111                 jbe     short loc_13F67
seg006:6113                 div     cx
seg006:6115                 mov     dx, ax
seg006:6117
seg006:6117 loc_13F67:                              ; CODE XREF: sub_13F16+4B␘j
seg006:6117                 inc     dx
seg006:6118                 mov     ax, dx
seg006:611A                 mov     dl, 7
seg006:611C                 cmp     ax, 700h
seg006:611F                 mov     dh, 0FFh
seg006:6121                 jnb     short loc_13F79
seg006:6123                 div     dl
seg006:6125                 mov     cl, ah
seg006:6127                 mov     dh, al
seg006:6129
seg006:6129 loc_13F79:                              ; CODE XREF: sub_13F16+5B␘j
seg006:6129                 sub     dl, dl
seg006:612B                 shl     dh, 1
seg006:612D                 jnb     short loc_13F82
seg006:612F                 add     dl, 4
seg006:6132
seg006:6132 loc_13F82:                              ; CODE XREF: sub_13F16+67␘j
seg006:6132                                         ; sub_13F16+76␙j
seg006:6132                 cmp     dh, 3Ch ; '<'
seg006:6135                 jb      short loc_13F8E
seg006:6137                 inc     dl
seg006:6139                 sub     dh, 3Ch ; '<'
seg006:613C                 jmp     short loc_13F82
seg006:613E ; ---------------------------------------------------------------------------
seg006:613E
seg006:613E loc_13F8E:                              ; CODE XREF: sub_13F16+6F␘j
seg006:613E                 add     dh, byte_2A6F5
seg006:6142                 cmp     dh, 3Ch ; '<'
seg006:6145                 jb      short loc_13F9C
seg006:6147                 inc     dl
seg006:6149                 sub     dh, 3Ch ; '<'
seg006:614C
seg006:614C loc_13F9C:                              ; CODE XREF: sub_13F16+7F␘j
seg006:614C                 add     dl, byte_2A6F6
seg006:6150                 and     cl, 7
seg006:6153                 mov     al, byte_2AC90
seg006:6156
seg006:6156 loc_13FA6:                              ; CODE XREF: sub_13F16+99␙j
seg006:6156                                         ; sub_13F16+A0␙j
seg006:6156                 or      al, al
seg006:6158                 jz      short loc_13FB8
seg006:615A                 dec     al
seg006:615C                 sub     dh, 14h
seg006:615F                 jns     short loc_13FA6
seg006:6161                 add     dh, 3Ch ; '<'
seg006:6164                 dec     dl
seg006:6166                 jmp     short loc_13FA6
seg006:6168 ; ---------------------------------------------------------------------------
seg006:6168
seg006:6168 loc_13FB8:                              ; CODE XREF: sub_13F16+14␘j
seg006:6168                                         ; sub_13F16+92␘j
seg006:6168                 shr     bx, 1
seg006:616A                 mov     al, [bx-4450h]
seg006:616E                 shl     bx, 1
seg006:6170
seg006:6170 loc_13FC0:                              ; CODE XREF: sub_13F16+B6␙j
seg006:6170                                         ; sub_13F16+BD␙j
seg006:6170                 or      al, al
seg006:6172                 jz      short loc_13FD5
seg006:6174                 dec     al
seg006:6176                 add     dh, 14h
seg006:6179                 cmp     dh, 3Ch ; '<'
seg006:617C                 jb      short loc_13FC0
seg006:617E                 sub     dh, 3Ch ; '<'
seg006:6181                 inc     dl
seg006:6183                 jmp     short loc_13FC0
seg006:6185 ; ---------------------------------------------------------------------------
seg006:6185
seg006:6185 loc_13FD5:                              ; CODE XREF: sub_13F16+AC␘j
seg006:6185                 mov     [si-443Bh], cl
seg006:6189                 mov     [si-443Ah], dh
seg006:618D                 mov     [si-4439h], dl
seg006:6191                 retn
seg006:6191 sub_13F16       endp
seg006:6191
seg006:6192
