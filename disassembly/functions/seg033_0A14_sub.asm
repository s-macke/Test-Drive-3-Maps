seg033:0A14 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0A14
seg033:0A14
seg033:0A14 sub_1E9A4       proc near               ; CODE XREF: sub_1E158+5B␘p
seg033:0A14                                         ; sub_1EF8A+43␙p
seg033:0A14                 push    cx
seg033:0A15                 push    dx
seg033:0A16                 mov     dx, 226h
seg033:0A19                 mov     al, 0A5h ; 'Ñ'
seg033:0A1B                 out     dx, al
seg033:0A1C                 mov     dx, 22Ah
seg033:0A1F                 in      al, dx
seg033:0A20                 in      al, dx
seg033:0A21                 in      al, dx
seg033:0A22                 cmp     ax, 0A5h ; 'Ñ'
seg033:0A25                 jz      short loc_1E9DF
seg033:0A27                 mov     dx, 226h
seg033:0A2A                 mov     al, 1
seg033:0A2C                 out     dx, al
seg033:0A2D                 in      al, dx
seg033:0A2E                 in      al, dx
seg033:0A2F                 in      al, dx
seg033:0A30                 in      al, dx
seg033:0A31                 sub     al, al
seg033:0A33                 out     dx, al
seg033:0A34                 mov     dx, 22Eh
seg033:0A37
seg033:0A37 loc_1E9C7:                              ; CODE XREF: sub_1E9A4+26␙j
seg033:0A37                 in      al, dx
seg033:0A38                 or      al, al
seg033:0A3A                 jns     short loc_1E9C7
seg033:0A3C                 mov     al, 0FFh
seg033:0A3E                 mov     dx, 22Ah
seg033:0A41                 mov     cx, 64h ; 'd'
seg033:0A44
seg033:0A44 loc_1E9D4:                              ; CODE XREF: sub_1E9A4+35␙j
seg033:0A44                 in      al, dx
seg033:0A45                 cmp     al, 0AAh ; '¬'
seg033:0A47                 jz      short loc_1E9DF
seg033:0A49                 loop    loc_1E9D4
seg033:0A4B                 sub     ax, ax
seg033:0A4D                 jmp     short loc_1E9E2
seg033:0A4F ; ---------------------------------------------------------------------------
seg033:0A4F
seg033:0A4F loc_1E9DF:                              ; CODE XREF: sub_1E9A4+11␘j
seg033:0A4F                                         ; sub_1E9A4+33␘j
seg033:0A4F                 mov     ax, 1
seg033:0A52
seg033:0A52 loc_1E9E2:                              ; CODE XREF: sub_1E9A4+39␘j
seg033:0A52                 pop     dx
seg033:0A53                 pop     cx
seg033:0A54                 retn
seg033:0A54 sub_1E9A4       endp
seg033:0A54
seg033:0A55 ; ---------------------------------------------------------------------------
seg033:0A55                 push    bx
seg033:0A56                 push    cx
seg033:0A57                 push    dx
seg033:0A58                 push    si
seg033:0A59                 cmp     bl, 8
seg033:0A5C                 ja      short loc_1EA46
seg033:0A5E                 sub     ch, 15h
seg033:0A61
seg033:0A61 loc_1E9F1:                              ; CODE XREF: seg033:0A66␙j
seg033:0A61                 jns     short loc_1E9F8
seg033:0A63                 add     ch, 0Ch
seg033:0A66                 jmp     short loc_1E9F1
seg033:0A68 ; ---------------------------------------------------------------------------
seg033:0A68
seg033:0A68 loc_1E9F8:                              ; CODE XREF: seg033:loc_1E9F1␘j
seg033:0A68                 call    sub_1E56B
seg033:0A6B                 jb      short loc_1EA46
seg033:0A6D                 mov     al, byte_2B9E5
seg033:0A70                 mov     [bx-374Dh], al
seg033:0A74                 mov     [si-378Dh], cx
seg033:0A78                 mov     [bx-373Dh], ch
seg033:0A7C                 push    dx
seg033:0A7D                 call    sub_1EA4B
seg033:0A80                 mov     dx, 221h
seg033:0A83                 cmp     bl, 6
seg033:0A86                 jl      short loc_1EA1E
seg033:0A88                 add     dx, 2
seg033:0A8B                 sub     bl, 6
seg033:0A8E
seg033:0A8E loc_1EA1E:                              ; CODE XREF: seg033:0A86␘j
seg033:0A8E                 mov     al, bl
seg033:0A90                 out     dx, al
seg033:0A91                 dec     dx
seg033:0A92                 pop     ax
seg033:0A93                 mov     ah, al
seg033:0A95                 shr     al, 1
seg033:0A97                 shr     al, 1
seg033:0A99                 shr     al, 1
seg033:0A9B                 shr     al, 1
seg033:0A9D                 and     al, 0Fh
seg033:0A9F                 and     ah, 0F0h
seg033:0AA2                 or      al, ah
seg033:0AA4                 out     dx, al
seg033:0AA5                 inc     dx
seg033:0AA6                 mov     al, 14h
seg033:0AA8                 out     dx, al
seg033:0AA9                 dec     dx
seg033:0AAA                 mov     al, [bx-3571h]
seg033:0AAE                 or      al, byte_2BB6E
seg033:0AB2                 mov     byte_2BB6E, al
seg033:0AB5                 out     dx, al
seg033:0AB6
seg033:0AB6 loc_1EA46:                              ; CODE XREF: seg033:0A5C␘j
seg033:0AB6                                         ; seg033:0A6B␘j
seg033:0AB6                 pop     si
seg033:0AB7                 pop     dx
seg033:0AB8                 pop     cx
seg033:0AB9                 pop     bx
seg033:0ABA                 retn
seg033:0ABB
