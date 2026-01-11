seg033:06FF ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:06FF
seg033:06FF
seg033:06FF sub_1E68F       proc near               ; CODE XREF: seg033:06E2␘p
seg033:06FF                 push    bx
seg033:0700                 mov     ah, 0D0h ; '-'
seg033:0702                 call    sub_1E6C9
seg033:0705                 test    byte_2BA73, 1
seg033:070A                 jz      short loc_1E6AF
seg033:070C                 mov     al, bl
seg033:070E                 or      al, 0B0h
seg033:0710                 call    sub_1E6F9
seg033:0713                 mov     al, 7Bh ; '{'
seg033:0715                 call    sub_1E6F9
seg033:0718                 sub     al, al
seg033:071A                 call    sub_1E6F9
seg033:071D                 jmp     short loc_1E6C7
seg033:071F ; ---------------------------------------------------------------------------
seg033:071F
seg033:071F loc_1E6AF:                              ; CODE XREF: sub_1E68F+B␘j
seg033:071F                 cmp     byte ptr [bx-374Dh], 1
seg033:0724                 ja      short loc_1E6C7
seg033:0726                 mov     al, bl
seg033:0728                 or      al, 80h
seg033:072A                 call    sub_1E6F9
seg033:072D                 mov     al, ch
seg033:072F                 call    sub_1E6F9
seg033:0732                 sub     al, al
seg033:0734                 call    sub_1E6F9
seg033:0737
seg033:0737 loc_1E6C7:                              ; CODE XREF: sub_1E68F+1E␘j
seg033:0737                                         ; sub_1E68F+25␘j
seg033:0737                 pop     bx
seg033:0738                 retn
seg033:0738 sub_1E68F       endp
seg033:0738
seg033:0739
