seg033:05DB ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:05DB
seg033:05DB
seg033:05DB sub_1E56B       proc near               ; CODE XREF: sub_1E5DB+1␙p
seg033:05DB                                         ; sub_1E76B+57␙p ...
seg033:05DB                 push    bx
seg033:05DC                 push    cx
seg033:05DD                 push    dx
seg033:05DE                 mov     al, byte_2B9E5
seg033:05E1                 cmp     al, 1
seg033:05E3                 ja      short loc_1E5AE
seg033:05E5                 cmp     dh, [bx-372Dh]
seg033:05E9                 jb      short loc_1E5AB
seg033:05EB                 mov     al, 1
seg033:05ED                 cmp     [bx-374Dh], al
seg033:05F1                 jz      short loc_1E596
seg033:05F3                 push    bx
seg033:05F4                 call    sub_1E078
seg033:05F9                 add     sp, 2
seg033:05FC                 mov     byte ptr [bx-374Dh], 1
seg033:0601                 mov     byte ptr [bx-372Dh], 40h ; '@'
seg033:0606
seg033:0606 loc_1E596:                              ; CODE XREF: sub_1E56B+16␘j
seg033:0606                 mov     al, 80h ; 'Ç'
seg033:0608                 cmp     al, byte_2B6C9
seg033:060C                 jz      short loc_1E5AE
seg033:060E                 test    byte ptr [bx-371Dh], 0FFh
seg033:0613                 jz      short loc_1E5AE
seg033:0615                 cmp     ch, [bx-373Dh]
seg033:0619                 ja      short loc_1E5AE
seg033:061B
seg033:061B loc_1E5AB:                              ; CODE XREF: sub_1E56B+E␘j
seg033:061B                 stc
seg033:061C                 jmp     short loc_1E5B4
seg033:061E ; ---------------------------------------------------------------------------
seg033:061E
seg033:061E loc_1E5AE:                              ; CODE XREF: sub_1E56B+8␘j
seg033:061E                                         ; sub_1E56B+31␘j ...
seg033:061E                 mov     byte ptr [bx-371Dh], 1
seg033:0623                 clc
seg033:0624
seg033:0624 loc_1E5B4:                              ; CODE XREF: sub_1E56B+41␘j
seg033:0624                 pop     dx
seg033:0625                 pop     cx
seg033:0626                 pop     bx
seg033:0627                 retn
seg033:0627 sub_1E56B       endp
seg033:0627
seg033:0628
