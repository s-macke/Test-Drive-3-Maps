seg033:00E8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:00E8
seg033:00E8 ; Attributes: bp-based frame
seg033:00E8
seg033:00E8 sub_1E078       proc far                ; CODE XREF: sub_D045+6C␘P
seg033:00E8                                         ; sub_100AB+24␘P ...
seg033:00E8
seg033:00E8 arg_0           = word ptr  6
seg033:00E8
seg033:00E8                 push    bp
seg033:00E9                 mov     bp, sp
seg033:00EB                 push    ax
seg033:00EC                 push    bx
seg033:00ED                 push    cx
seg033:00EE                 push    dx
seg033:00EF                 push    si
seg033:00F0                 mov     bx, [bp+arg_0]
seg033:00F3                 cmp     bx, 0Fh
seg033:00F6                 ja      short loc_1E0D6
seg033:00F8                 mov     si, bx
seg033:00FA                 shl     si, 1
seg033:00FC                 sub     ax, ax
seg033:00FE                 mov     al, [bx-374Dh]
seg033:0102                 cmp     al, 1
seg033:0104                 jle     short loc_1E0D6
seg033:0106                 mov     byte ptr [bx-3505h], 0
seg033:010B                 push    si
seg033:010C                 mov     si, ax
seg033:010E                 dec     si
seg033:010F                 mov     byte ptr [si-34BFh], 0FFh
seg033:0114                 shl     si, 1
seg033:0116                 mov     word ptr [si-34D1h], 0
seg033:011C                 pop     si
seg033:011D                 mov     byte_2BA73, 1
seg033:0122                 mov     ch, [bx-373Dh]
seg033:0126                 call    off_2B9EE
seg033:012A                 mov     byte_2BA73, 0
seg033:012F                 sub     ax, ax
seg033:0131                 mov     [bx-372Dh], al
seg033:0135                 mov     [si-378Dh], ax
seg033:0139                 mov     [bx-373Dh], ah
seg033:013D                 mov     [bx-374Dh], al
seg033:0141                 and     byte_2B6C7, 0FBh
seg033:0146
seg033:0146 loc_1E0D6:                              ; CODE XREF: sub_1E078+E␘j
seg033:0146                                         ; sub_1E078+1C␘j
seg033:0146                 pop     si
seg033:0147                 pop     dx
seg033:0148                 pop     cx
seg033:0149                 pop     bx
seg033:014A                 pop     ax
seg033:014B                 pop     bp
seg033:014C                 retf
seg033:014C sub_1E078       endp
seg033:014C
seg033:014D
