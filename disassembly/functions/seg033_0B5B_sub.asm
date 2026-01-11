seg033:0B5B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0B5B
seg033:0B5B
seg033:0B5B sub_1EAEB       proc near               ; CODE XREF: sub_1E158+62␘p
seg033:0B5B                                         ; sub_1EF8A+4A␙p
seg033:0B5B                 push    cx
seg033:0B5C                 push    dx
seg033:0B5D                 mov     dx, 221h
seg033:0B60
seg033:0B60 loc_1EAF0:                              ; CODE XREF: sub_1EAEB+2E␙j
seg033:0B60                 sub     al, al
seg033:0B62
seg033:0B62 loc_1EAF2:                              ; CODE XREF: sub_1EAEB+15␙j
seg033:0B62                 out     dx, al
seg033:0B63                 mov     ah, al
seg033:0B65                 dec     dx
seg033:0B66                 sub     al, al
seg033:0B68                 out     dx, al
seg033:0B69                 inc     dx
seg033:0B6A                 mov     al, ah
seg033:0B6C                 inc     al
seg033:0B6E                 cmp     al, 20h ; ' '
seg033:0B70                 jb      short loc_1EAF2
seg033:0B72                 mov     al, 1Ch
seg033:0B74                 out     dx, al
seg033:0B75                 dec     dx
seg033:0B76                 mov     al, 2
seg033:0B78                 out     dx, al
seg033:0B79                 inc     dx
seg033:0B7A                 mov     al, 1Ch
seg033:0B7C                 out     dx, al
seg033:0B7D                 mov     al, 1
seg033:0B7F                 dec     dx
seg033:0B80                 out     dx, al
seg033:0B81                 inc     dx
seg033:0B82                 add     dx, 2
seg033:0B85                 cmp     dx, 225h
seg033:0B89                 jb      short loc_1EAF0
seg033:0B8B                 pop     dx
seg033:0B8C                 pop     cx
seg033:0B8D                 retn
seg033:0B8D sub_1EAEB       endp
seg033:0B8D
seg033:0B8E ; ---------------------------------------------------------------------------
seg033:0B8E                 push    bx
seg033:0B8F                 push    cx
seg033:0B90                 push    si
seg033:0B91                 cmp     bl, 2
seg033:0B94                 ja      short loc_1EB51
seg033:0B96                 sub     ch, 18h
seg033:0B99
seg033:0B99 loc_1EB29:                              ; CODE XREF: seg033:0B9E␙j
seg033:0B99                 jns     short loc_1EB30
seg033:0B9B                 add     ch, 0Ch
seg033:0B9E                 jmp     short loc_1EB29
seg033:0BA0 ; ---------------------------------------------------------------------------
seg033:0BA0
seg033:0BA0 loc_1EB30:                              ; CODE XREF: seg033:loc_1EB29␘j
seg033:0BA0                 sub     bl, bl
seg033:0BA2                 sub     si, si
seg033:0BA4                 call    sub_1E56B
seg033:0BA7                 jb      short loc_1EB51
seg033:0BA9                 mov     al, byte_2B9E5
seg033:0BAC                 mov     [bx-374Dh], al
seg033:0BB0                 mov     word_2B953, cx
seg033:0BB4                 mov     byte_2B9A3, ch
seg033:0BB8                 call    sub_1EB55
seg033:0BBB                 in      al, 61h         ; PC/XT PPI port B bits:
seg033:0BBB                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg033:0BBB                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg033:0BBB                                         ; 3: 1=read high switches
seg033:0BBB                                         ; 4: 0=enable RAM parity checking
seg033:0BBB                                         ; 5: 0=enable I/O channel check
seg033:0BBB                                         ; 6: 0=hold keyboard clock low
seg033:0BBB                                         ; 7: 0=enable kbrd
seg033:0BBD                 or      al, 3
seg033:0BBF                 out     61h, al         ; PC/XT PPI port B bits:
seg033:0BBF                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg033:0BBF                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg033:0BBF                                         ; 3: 1=read high switches
seg033:0BBF                                         ; 4: 0=enable RAM parity checking
seg033:0BBF                                         ; 5: 0=enable I/O channel check
seg033:0BBF                                         ; 6: 0=hold keyboard clock low
seg033:0BBF                                         ; 7: 0=enable kbrd
seg033:0BC1
seg033:0BC1 loc_1EB51:                              ; CODE XREF: seg033:0B94␘j
seg033:0BC1                                         ; seg033:0BA7␘j
seg033:0BC1                 pop     si
seg033:0BC2                 pop     cx
seg033:0BC3                 pop     bx
seg033:0BC4                 retn
seg033:0BC5
