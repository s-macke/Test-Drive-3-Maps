seg033:0CE5 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0CE5
seg033:0CE5
seg033:0CE5 sub_1EC75       proc near               ; CODE XREF: sub_1ECA8+37␙p
seg033:0CE5                                         ; sub_1ECA8+62␙p
seg033:0CE5                 push    bx
seg033:0CE6                 push    cx
seg033:0CE7                 push    si
seg033:0CE8                 mov     bl, al
seg033:0CEA                 shl     bx, 1
seg033:0CEC                 mov     cx, [bx-378Dh]
seg033:0CF0                 add     cx, [si-34DDh]
seg033:0CF4                 add     cx, [si-34F5h]
seg033:0CF8                 cmp     cx, [bx-378Dh]
seg033:0CFC                 jnz     short loc_1EC98
seg033:0CFE                 shr     bx, 1
seg033:0D00                 cmp     [bx-373Dh], ch
seg033:0D04                 jz      short loc_1ECA4
seg033:0D06                 shl     bx, 1
seg033:0D08
seg033:0D08 loc_1EC98:                              ; CODE XREF: sub_1EC75+17␘j
seg033:0D08                 mov     [bx-378Dh], cx
seg033:0D0C                 mov     si, bx
seg033:0D0E                 shr     bx, 1
seg033:0D10                 call    off_2B9F4
seg033:0D14
seg033:0D14 loc_1ECA4:                              ; CODE XREF: sub_1EC75+1F␘j
seg033:0D14                 pop     si
seg033:0D15                 pop     cx
seg033:0D16                 pop     bx
seg033:0D17                 retn
seg033:0D17 sub_1EC75       endp
seg033:0D17
seg033:0D18
