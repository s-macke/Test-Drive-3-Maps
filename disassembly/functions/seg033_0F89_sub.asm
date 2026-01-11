seg033:0F89 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0F89
seg033:0F89
seg033:0F89 sub_1EF19       proc near               ; CODE XREF: seg033:0F83␘p
seg033:0F89                 sub     ax, ax
seg033:0F8B                 mov     [si-34CBh], ax
seg033:0F8F                 mov     [si-34C5h], ax
seg033:0F93                 mov     [si-34F5h], ax
seg033:0F97                 mov     [si-34E3h], ax
seg033:0F9B                 mov     [si-34EFh], ax
seg033:0F9F                 mov     [si-34DDh], ax
seg033:0FA3                 inc     ax
seg033:0FA4                 mov     [si-34E9h], ax
seg033:0FA8                 mov     [si-34D7h], ax
seg033:0FAC                 retn
seg033:0FAC sub_1EF19       endp
seg033:0FAC
seg033:0FAD ; ---------------------------------------------------------------------------
seg033:0FAD                 push    bx
seg033:0FAE                 push    si
seg033:0FAF                 mov     bl, [bx-34BFh]
seg033:0FB3                 mov     si, [di]
seg033:0FB5                 mov     ch, [si-39C2h]
seg033:0FB9                 mov     si, bx
seg033:0FBB                 shl     si, 1
seg033:0FBD                 call    off_2B9F0
seg033:0FC1                 add     di, 2
seg033:0FC4                 pop     si
seg033:0FC5                 pop     bx
seg033:0FC6                 retn
seg033:0FC7 ; ---------------------------------------------------------------------------
seg033:0FC7                 push    bx
seg033:0FC8                 push    si
seg033:0FC9                 test    byte_2B9E6, 0FFh
seg033:0FCE                 jnz     short loc_1EF85
seg033:0FD0                 mov     si, 0Fh
seg033:0FD3                 mov     al, 1
seg033:0FD5
seg033:0FD5 loc_1EF65:                              ; CODE XREF: seg033:0FDC␙j
seg033:0FD5                 cmp     al, [si-3505h]
seg033:0FD9                 jz      short loc_1EF85
seg033:0FDB                 dec     si
seg033:0FDC                 jns     short loc_1EF65
seg033:0FDE                 mov     di, [di]
seg033:0FE0                 mov     bl, [bx-34BFh]
seg033:0FE4                 mov     byte ptr [bx-372Dh], 60h ; '`'
seg033:0FE9                 mov     byte ptr [bx-3505h], 1
seg033:0FEE                 mov     byte_28163, bl
seg033:0FF2                 pop     si
seg033:0FF3                 pop     bx
seg033:0FF4                 retn
seg033:0FF5 ; ---------------------------------------------------------------------------
seg033:0FF5
seg033:0FF5 loc_1EF85:                              ; CODE XREF: seg033:0FCE␘j
seg033:0FF5                                         ; seg033:0FD9␘j
seg033:0FF5                 pop     si
seg033:0FF6                 pop     bx
seg033:0FF7                 jmp     loc_1EF04
seg033:0FFA
