seg033:0926 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0926
seg033:0926
seg033:0926 sub_1E8B6       proc near               ; CODE XREF: seg033:09AF␙p
seg033:0926                                         ; sub_1E979+20␙p
seg033:0926                 push    bx
seg033:0927                 push    cx
seg033:0928                 push    dx
seg033:0929                 push    es
seg033:092A                 push    si
seg033:092B                 push    di
seg033:092C                 les     di, dword_2BA50
seg033:0930                 mov     al, ch
seg033:0932                 cbw
seg033:0933                 mov     dl, 9
seg033:0935                 mul     dl
seg033:0937                 add     di, ax
seg033:0939                 mov     al, es:[di+8]
seg033:093D                 and     al, 1
seg033:093F                 mov     [bx-35E5h], al
seg033:0943                 mov     al, es:[di+1]
seg033:0947                 mov     bl, [si-3621h]
seg033:094B                 mov     [bx-35F5h], al
seg033:094F                 mov     bl, [si-3620h]
seg033:0953                 cmp     bl, 0FFh
seg033:0956                 jz      short loc_1E8F0
seg033:0958                 mov     al, es:[di+5]
seg033:095C                 mov     [bx-35F5h], al
seg033:0960
seg033:0960 loc_1E8F0:                              ; CODE XREF: sub_1E8B6+30␘j
seg033:0960                 mov     dx, 2
seg033:0963
seg033:0963 loc_1E8F3:                              ; CODE XREF: sub_1E8B6+64␙j
seg033:0963                 mov     cx, 0
seg033:0966
seg033:0966 loc_1E8F6:                              ; CODE XREF: sub_1E8B6+60␙j
seg033:0966                 mov     bl, [si-3621h]
seg033:096A                 cmp     bl, 0FFh
seg033:096D                 jz      short loc_1E926
seg033:096F                 mov     ah, es:[di]
seg033:0972                 inc     di
seg033:0973                 mov     al, [bx-3633h]
seg033:0977                 mov     bx, cx
seg033:0979                 add     al, [bx-35F9h]
seg033:097D                 call    sub_1F03A
seg033:0982                 inc     cx
seg033:0983                 cmp     cx, 4
seg033:0986                 jl      short loc_1E8F6
seg033:0988                 inc     si
seg033:0989                 dec     dx
seg033:098A                 jnz     short loc_1E8F3
seg033:098C                 mov     ah, es:[di]
seg033:098F                 mov     al, 0C0h ; '+'
seg033:0991                 call    sub_1F03A
seg033:0996
seg033:0996 loc_1E926:                              ; CODE XREF: sub_1E8B6+47␘j
seg033:0996                 pop     di
seg033:0997                 pop     si
seg033:0998                 pop     es
seg033:0999                 pop     dx
seg033:099A                 pop     cx
seg033:099B                 pop     bx
seg033:099C                 retn
seg033:099C sub_1E8B6       endp
seg033:099C
seg033:099D ; ---------------------------------------------------------------------------
seg033:099D                 push    bx
seg033:099E                 cmp     bl, 6
seg033:09A1                 jge     short loc_1E944
seg033:09A3                 mov     [bx-37B7h], ch
seg033:09A7                 push    bx
seg033:09A8                 mov     bl, ch
seg033:09AA                 mov     ch, [bx-39C2h]
seg033:09AE                 pop     bx
seg033:09AF                 call    sub_1E8B6
seg033:09B2                 jmp     short loc_1E94C
seg033:09B4 ; ---------------------------------------------------------------------------
seg033:09B4
seg033:09B4 loc_1E944:                              ; CODE XREF: seg033:09A1␘j
seg033:09B4                 mov     ch, [bx-35D5h]
seg033:09B8                 mov     [bx-37B7h], ch
seg033:09BC
seg033:09BC loc_1E94C:                              ; CODE XREF: seg033:09B2␘j
seg033:09BC                 pop     bx
seg033:09BD                 retn
seg033:09BE ; ---------------------------------------------------------------------------
seg033:09BE                 push    bx
seg033:09BF                 push    cx
seg033:09C0                 mov     cx, 8
seg033:09C3
seg033:09C3 loc_1E953:                              ; CODE XREF: seg033:09D8␙j
seg033:09C3                 mov     al, 0B0h ; '¦'
seg033:09C5                 add     al, cl
seg033:09C7                 mov     ah, [bx-370Dh]
seg033:09CB                 and     ah, 1Fh
seg033:09CE                 mov     [bx-370Dh], ah
seg033:09D2                 call    sub_1F03A
seg033:09D7                 dec     cx
seg033:09D8                 jns     short loc_1E953
seg033:09DA                 mov     ax, 20BDh
seg033:09DD                 mov     byte_2B6CC, ah
seg033:09E1                 call    sub_1F03A
seg033:09E6                 pop     cx
seg033:09E7                 pop     bx
seg033:09E8                 retn
seg033:09E9
