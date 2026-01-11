seg031:1FB6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1FB6
seg031:1FB6
seg031:1FB6 sub_1AE16       proc near               ; CODE XREF: seg031:1F9B␘p
seg031:1FB6                                         ; sub_1AF2C:loc_1AE05␘p ...
seg031:1FB6                 mov     byte_2B43E, al
seg031:1FB9                 or      ah, ah
seg031:1FBB                 jnz     short loc_1AE40
seg031:1FBD                 cmp     byte_2B43B, 3
seg031:1FC2                 jb      short loc_1AE31
seg031:1FC4                 cmp     al, 22h ; '"'
seg031:1FC6                 jnb     short loc_1AE35
seg031:1FC8                 cmp     al, 20h ; ' '
seg031:1FCA                 jb      short loc_1AE31
seg031:1FCC                 mov     al, 5
seg031:1FCE                 jmp     short loc_1AE37
seg031:1FCE ; ---------------------------------------------------------------------------
seg031:1FD0                 db 90h
seg031:1FD1 ; ---------------------------------------------------------------------------
seg031:1FD1
seg031:1FD1 loc_1AE31:                              ; CODE XREF: sub_1AE16+C␘j
seg031:1FD1                                         ; sub_1AE16+14␘j
seg031:1FD1                 cmp     al, 13h
seg031:1FD3                 jbe     short loc_1AE37
seg031:1FD5
seg031:1FD5 loc_1AE35:                              ; CODE XREF: sub_1AE16+10␘j
seg031:1FD5                 mov     al, 13h
seg031:1FD7
seg031:1FD7 loc_1AE37:                              ; CODE XREF: sub_1AE16+18␘j
seg031:1FD7                                         ; sub_1AE16+1D␘j
seg031:1FD7                 mov     bx, 0C56Ch
seg031:1FDA                 xlat
seg031:1FDB
seg031:1FDB loc_1AE3B:                              ; CODE XREF: sub_1AE16+2C␙j
seg031:1FDB                 cbw
seg031:1FDC                 mov     word_2B433, ax
seg031:1FDF                 retn
seg031:1FE0 ; ---------------------------------------------------------------------------
seg031:1FE0
seg031:1FE0 loc_1AE40:                              ; CODE XREF: sub_1AE16+5␘j
seg031:1FE0                 mov     al, ah
seg031:1FE2                 jmp     short loc_1AE3B
seg031:1FE2 sub_1AE16       endp
seg031:1FE2
seg031:1FE4
