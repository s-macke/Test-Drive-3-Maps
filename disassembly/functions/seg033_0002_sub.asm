seg033:0002 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0002
seg033:0002
seg033:0002 sub_1DF92       proc near               ; CODE XREF: sub_1DFD7+8␙p
seg033:0002                                         ; sub_1E040+D␙p ...
seg033:0002                 push    cx
seg033:0003                 push    es
seg033:0004                 push    si
seg033:0005                 and     byte_2B6C7, 0FEh
seg033:000A                 mov     bx, 0Fh
seg033:000D
seg033:000D loc_1DF9D:                              ; CODE XREF: sub_1DF92+3F␙j
seg033:000D                 push    bx
seg033:000E                 mov     bl, [bx-38B2h]
seg033:0012                 cmp     bl, 0Fh
seg033:0015                 ja      short loc_1DFCF
seg033:0017                 mov     al, 1
seg033:0019                 cmp     al, [bx-374Dh]
seg033:001D                 jnz     short loc_1DFCF
seg033:001F                 mov     si, bx
seg033:0021                 shl     si, 1
seg033:0023                 mov     byte_2BA73, 1
seg033:0028                 mov     cx, [si-378Dh]
seg033:002C                 call    off_2B9EE
seg033:0030                 mov     byte_2BA73, 0
seg033:0035                 mov     byte ptr [bx-374Dh], 0
seg033:003A                 mov     byte ptr [bx-372Dh], 0
seg033:003F
seg033:003F loc_1DFCF:                              ; CODE XREF: sub_1DF92+13␘j
seg033:003F                                         ; sub_1DF92+1B␘j
seg033:003F                 pop     bx
seg033:0040                 dec     bx
seg033:0041                 jns     short loc_1DF9D
seg033:0043                 pop     si
seg033:0044                 pop     es
seg033:0045                 pop     cx
seg033:0046                 retn
seg033:0046 sub_1DF92       endp
seg033:0046
seg033:0047
