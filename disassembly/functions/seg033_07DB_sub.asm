seg033:07DB ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:07DB
seg033:07DB
seg033:07DB sub_1E76B       proc near               ; CODE XREF: sub_1E231+4C␘p
seg033:07DB                 push    bx
seg033:07DC                 push    cx
seg033:07DD                 push    si
seg033:07DE                 cmp     bl, 9
seg033:07E1                 jnz     short loc_1E7B5
seg033:07E3                 sub     ch, 24h ; '$'
seg033:07E6                 mov     bl, ch
seg033:07E8                 mov     dh, [bx-35CAh]
seg033:07EC                 cmp     dh, 0Bh
seg033:07EF                 jge     short loc_1E7F5
seg033:07F1                 mov     ch, [bx-38A2h]
seg033:07F5                 mov     bl, dh
seg033:07F7                 mov     si, bx
seg033:07F9                 shl     si, 1
seg033:07FB                 shr     dl, 1
seg033:07FD                 call    sub_1E739
seg033:0800                 cmp     bl, 7
seg033:0803                 jge     short loc_1E799
seg033:0805                 inc     si
seg033:0806                 call    sub_1E739
seg033:0809
seg033:0809 loc_1E799:                              ; CODE XREF: sub_1E76B+28␘j
seg033:0809                 mov     ah, [bx-363Eh]
seg033:080D                 or      ah, byte_2B6CC
seg033:0811                 mov     byte_2B6CC, ah
seg033:0815                 mov     al, 0BDh ; '+'
seg033:0817                 call    sub_1F03A
seg033:081C                 mov     [bx-370Dh], cl
seg033:0820                 call    sub_1E810
seg033:0823                 jmp     short loc_1E7F5
seg033:0825 ; ---------------------------------------------------------------------------
seg033:0825
seg033:0825 loc_1E7B5:                              ; CODE XREF: sub_1E76B+6␘j
seg033:0825                                         ; sub_1E76B+52␙j
seg033:0825                 cmp     ch, 13h
seg033:0828                 jge     short loc_1E7BF
seg033:082A                 add     ch, 0Ch
seg033:082D                 jmp     short loc_1E7B5
seg033:082F ; ---------------------------------------------------------------------------
seg033:082F
seg033:082F loc_1E7BF:                              ; CODE XREF: sub_1E76B+4D␘j
seg033:082F                 sub     ch, 13h
seg033:0832                 call    sub_1E56B
seg033:0835                 jb      short loc_1E7F5
seg033:0837                 mov     al, byte_2B9E5
seg033:083A                 mov     [bx-374Dh], al
seg033:083E                 mov     byte_2BA73, 1
seg033:0843                 call    sub_1E84D
seg033:0846                 mov     byte_2BA73, 0
seg033:084B                 mov     [si-378Dh], cx
seg033:084F                 mov     [bx-373Dh], ch
seg033:0853                 sar     dl, 1
seg033:0855                 call    sub_1E739
seg033:0858                 inc     si
seg033:0859                 call    sub_1E739
seg033:085C                 dec     si
seg033:085D                 mov     byte ptr [bx-370Dh], 20h ; ' '
seg033:0862                 call    sub_1E810
seg033:0865
seg033:0865 loc_1E7F5:                              ; CODE XREF: sub_1E76B+14␘j
seg033:0865                                         ; sub_1E76B+48␘j ...
seg033:0865                 pop     si
seg033:0866                 pop     cx
seg033:0867                 pop     bx
seg033:0868                 retn
seg033:0868 sub_1E76B       endp
seg033:0868
seg033:0869
