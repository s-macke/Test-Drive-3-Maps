seg033:0E51 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0E51
seg033:0E51
seg033:0E51 sub_1EDE1       proc near               ; CODE XREF: seg033:03F1␘p
seg033:0E51                                         ; DATA XREF: dseg:off_2B9F6␙o
seg033:0E51                 test    byte_2B6C6, 4
seg033:0E56                 jz      short locret_1EE36
seg033:0E58                 mov     bx, 2
seg033:0E5B
seg033:0E5B loc_1EDEB:                              ; CODE XREF: sub_1EDE1+53␙j
seg033:0E5B                 mov     al, [bx-34BFh]
seg033:0E5F                 cmp     al, 0FFh
seg033:0E61                 jz      short loc_1EE2D
seg033:0E63                 mov     si, bx
seg033:0E65                 shl     si, 1
seg033:0E67                 mov     di, [si-34D1h]
seg033:0E6B                 or      di, di
seg033:0E6D                 jz      short loc_1EE2D
seg033:0E6F                 mov     ax, [si-34D7h]
seg033:0E73                 or      ax, ax
seg033:0E75                 jz      short loc_1EE0E
seg033:0E77                 dec     ax
seg033:0E78                 mov     [si-34D7h], ax
seg033:0E7C                 jmp     short loc_1EE2D
seg033:0E7E ; ---------------------------------------------------------------------------
seg033:0E7E
seg033:0E7E loc_1EE0E:                              ; CODE XREF: sub_1EDE1+24␘j
seg033:0E7E                 mov     dx, [di]
seg033:0E80                 cmp     dx, 0Ch
seg033:0E83                 jle     short loc_1EE18
seg033:0E85                 mov     dx, 9
seg033:0E88
seg033:0E88 loc_1EE18:                              ; CODE XREF: sub_1EDE1+32␘j
seg033:0E88                 add     di, 2
seg033:0E8B                 shl     dx, 1
seg033:0E8D                 push    si
seg033:0E8E                 mov     si, dx
seg033:0E90                 mov     dx, [si-34BEh]
seg033:0E94                 pop     si
seg033:0E95                 mov     word_2BA74, dx
seg033:0E99                 call    word_2BA74
seg033:0E9D
seg033:0E9D loc_1EE2D:                              ; CODE XREF: sub_1EDE1+10␘j
seg033:0E9D                                         ; sub_1EDE1+1C␘j ...
seg033:0E9D                 mov     [si-34D1h], di
seg033:0EA1                 dec     bx
seg033:0EA2                 js      short locret_1EE36
seg033:0EA4                 jmp     short loc_1EDEB
seg033:0EA6 ; ---------------------------------------------------------------------------
seg033:0EA6
seg033:0EA6 locret_1EE36:                           ; CODE XREF: sub_1EDE1+5␘j
seg033:0EA6                                         ; sub_1EDE1+51␘j
seg033:0EA6                 retn
seg033:0EA6 sub_1EDE1       endp
seg033:0EA6
seg033:0EA7 ; ---------------------------------------------------------------------------
seg033:0EA7                 mov     ax, [di]
seg033:0EA9                 mov     dx, [di+2]
seg033:0EAC                 or      ax, ax
seg033:0EAE                 jnz     short loc_1EE42
seg033:0EB0                 neg     dx
seg033:0EB2
seg033:0EB2 loc_1EE42:                              ; CODE XREF: seg033:0EAE␘j
seg033:0EB2                 mov     [si-34DDh], dx
seg033:0EB6                 add     di, 4
seg033:0EB9                 retn
seg033:0EBA ; ---------------------------------------------------------------------------
seg033:0EBA                 mov     word ptr [si-34DDh], 0
seg033:0EC0                 retn
seg033:0EC1 ; ---------------------------------------------------------------------------
seg033:0EC1                 mov     dx, [di]
seg033:0EC3                 mov     [si-34E3h], dx
seg033:0EC7                 shr     dx, 1
seg033:0EC9                 or      dl, 1
seg033:0ECC                 mov     [si-34E9h], dx
seg033:0ED0                 mov     dx, [di+2]
seg033:0ED3                 mov     [si-34F5h], dx
seg033:0ED7                 add     di, 4
seg033:0EDA                 retn
seg033:0EDB ; ---------------------------------------------------------------------------
seg033:0EDB                 sub     ax, ax
seg033:0EDD                 mov     [si-34F5h], ax
seg033:0EE1                 mov     [si-34E3h], ax
seg033:0EE5                 retn
seg033:0EE6 ; ---------------------------------------------------------------------------
seg033:0EE6                 mov     dx, [di]
seg033:0EE8                 mov     [si-34D7h], dx
seg033:0EEC                 add     di, 2
seg033:0EEF                 retn
seg033:0EF0 ; ---------------------------------------------------------------------------
seg033:0EF0                 push    bx
seg033:0EF1                 push    si
seg033:0EF2                 mov     al, bl
seg033:0EF4                 inc     al
seg033:0EF6                 mov     byte_2B9E5, al
seg033:0EF9                 mov     bl, [bx-34BFh]
seg033:0EFD                 mov     si, bx
seg033:0EFF                 shl     si, 1
seg033:0F01                 mov     ax, [si-378Dh]
seg033:0F05                 or      ax, ax
seg033:0F07                 jz      short loc_1EEAB
seg033:0F09                 mov     byte_2BA73, 1
seg033:0F0E                 mov     ch, [bx-373Dh]
seg033:0F12                 call    off_2B9EE
seg033:0F16                 mov     byte_2BA73, 0
seg033:0F1B
seg033:0F1B loc_1EEAB:                              ; CODE XREF: seg033:0F07␘j
seg033:0F1B                 mov     ax, [di]
seg033:0F1D                 mov     ch, al
seg033:0F1F                 sub     cl, cl
seg033:0F21                 mov     dx, [di+2]
seg033:0F24                 mov     [bx-376Dh], dl
seg033:0F28                 or      dx, dx
seg033:0F2A                 jz      short loc_1EEC4
seg033:0F2C                 mov     dh, [bx-372Dh]
seg033:0F30                 call    off_2B9EC
seg033:0F34
seg033:0F34 loc_1EEC4:                              ; CODE XREF: seg033:0F2A␘j
seg033:0F34                 add     di, 4
seg033:0F37                 pop     si
seg033:0F38                 pop     bx
seg033:0F39                 retn
seg033:0F3A ; ---------------------------------------------------------------------------
seg033:0F3A                 mov     ax, [si-34C5h]
seg033:0F3E                 or      ax, ax
seg033:0F40                 jz      short loc_1EEEB
seg033:0F42                 cmp     ax, 0FFFFh
seg033:0F45                 jz      short loc_1EED8
seg033:0F47                 dec     ax
seg033:0F48
seg033:0F48 loc_1EED8:                              ; CODE XREF: seg033:0F45␘j
seg033:0F48                 mov     [si-34C5h], ax
seg033:0F4C                 or      ax, ax
seg033:0F4E                 jz      short loc_1EEE6
seg033:0F50                 mov     di, [si-34CBh]
seg033:0F54                 jmp     short locret_1EEFB
seg033:0F56 ; ---------------------------------------------------------------------------
seg033:0F56
seg033:0F56 loc_1EEE6:                              ; CODE XREF: seg033:0F4E␘j
seg033:0F56                 add     di, 4
seg033:0F59                 jmp     short locret_1EEFB
seg033:0F5B ; ---------------------------------------------------------------------------
seg033:0F5B
seg033:0F5B loc_1EEEB:                              ; CODE XREF: seg033:0F40␘j
seg033:0F5B                 mov     ax, [di+2]
seg033:0F5E                 or      ax, ax
seg033:0F60                 jnz     short loc_1EEF3
seg033:0F62                 dec     ax
seg033:0F63
seg033:0F63 loc_1EEF3:                              ; CODE XREF: seg033:0F60␘j
seg033:0F63                 mov     [si-34C5h], ax
seg033:0F67                 mov     di, [si-34CBh]
seg033:0F6B
seg033:0F6B locret_1EEFB:                           ; CODE XREF: seg033:0F54␘j
seg033:0F6B                                         ; seg033:0F59␘j
seg033:0F6B                 retn
seg033:0F6C ; ---------------------------------------------------------------------------
seg033:0F6C                 add     di, 2
seg033:0F6F                 mov     [si-34CBh], di
seg033:0F73                 retn
seg033:0F74 ; ---------------------------------------------------------------------------
seg033:0F74
seg033:0F74 loc_1EF04:                              ; CODE XREF: seg033:0FF7␙j
seg033:0F74                 mov     al, [bx-34BFh]
seg033:0F78                 sub     ah, ah
seg033:0F7A                 push    ax
seg033:0F7B                 call    sub_1E078
seg033:0F80                 add     sp, 2
seg033:0F83                 call    sub_1EF19
seg033:0F86                 sub     di, di
seg033:0F88                 retn
seg033:0F89
