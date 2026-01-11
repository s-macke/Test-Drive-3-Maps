seg033:0BC5 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0BC5
seg033:0BC5
seg033:0BC5 sub_1EB55       proc near               ; CODE XREF: seg033:0BB8␘p
seg033:0BC5                 mov     ax, 6000h
seg033:0BC8                 call    sub_1E7F9
seg033:0BCB                 call    sub_1ED12
seg033:0BCE                 shr     ax, cl
seg033:0BD0                 pushf
seg033:0BD1                 cli
seg033:0BD2                 out     42h, al         ; Timer 8253-5 (AT: 8254.2).
seg033:0BD4                 mov     al, ah
seg033:0BD6                 out     42h, al         ; Timer 8253-5 (AT: 8254.2).
seg033:0BD8                 popf
seg033:0BD9                 retn
seg033:0BD9 sub_1EB55       endp
seg033:0BD9
seg033:0BDA ; ---------------------------------------------------------------------------
seg033:0BDA                 push    cx
seg033:0BDB                 cmp     bl, 2
seg033:0BDE                 ja      short loc_1EB98
seg033:0BE0                 sub     ch, 18h
seg033:0BE3
seg033:0BE3 loc_1EB73:                              ; CODE XREF: seg033:0BE8␙j
seg033:0BE3                 jns     short loc_1EB7A
seg033:0BE5                 add     ch, 0Ch
seg033:0BE8                 jmp     short loc_1EB73
seg033:0BEA ; ---------------------------------------------------------------------------
seg033:0BEA
seg033:0BEA loc_1EB7A:                              ; CODE XREF: seg033:loc_1EB73␘j
seg033:0BEA                 test    byte_2BA73, 1
seg033:0BEF                 jnz     short loc_1EB87
seg033:0BF1                 cmp     ch, byte_2B9A3
seg033:0BF5                 jnz     short loc_1EB98
seg033:0BF7
seg033:0BF7 loc_1EB87:                              ; CODE XREF: seg033:0BEF␘j
seg033:0BF7                 mov     word_2B953, 0
seg033:0BFD                 mov     byte_2B9A3, 0
seg033:0C02                 in      al, 61h         ; PC/XT PPI port B bits:
seg033:0C02                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg033:0C02                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg033:0C02                                         ; 3: 1=read high switches
seg033:0C02                                         ; 4: 0=enable RAM parity checking
seg033:0C02                                         ; 5: 0=enable I/O channel check
seg033:0C02                                         ; 6: 0=hold keyboard clock low
seg033:0C02                                         ; 7: 0=enable kbrd
seg033:0C04                 and     al, 0FCh
seg033:0C06                 out     61h, al         ; PC/XT PPI port B bits:
seg033:0C06                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg033:0C06                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg033:0C06                                         ; 3: 1=read high switches
seg033:0C06                                         ; 4: 0=enable RAM parity checking
seg033:0C06                                         ; 5: 0=enable I/O channel check
seg033:0C06                                         ; 6: 0=hold keyboard clock low
seg033:0C06                                         ; 7: 0=enable kbrd
seg033:0C08
seg033:0C08 loc_1EB98:                              ; CODE XREF: seg033:0BDE␘j
seg033:0C08                                         ; seg033:0BF5␘j
seg033:0C08                 pop     cx
seg033:0C09                 retn
seg033:0C0A ; ---------------------------------------------------------------------------
seg033:0C0A                 in      al, 61h         ; PC/XT PPI port B bits:
seg033:0C0A                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg033:0C0A                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg033:0C0A                                         ; 3: 1=read high switches
seg033:0C0A                                         ; 4: 0=enable RAM parity checking
seg033:0C0A                                         ; 5: 0=enable I/O channel check
seg033:0C0A                                         ; 6: 0=hold keyboard clock low
seg033:0C0A                                         ; 7: 0=enable kbrd
seg033:0C0C                 and     al, 0FCh
seg033:0C0E                 out     61h, al         ; PC/XT PPI port B bits:
seg033:0C0E                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg033:0C0E                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg033:0C0E                                         ; 3: 1=read high switches
seg033:0C0E                                         ; 4: 0=enable RAM parity checking
seg033:0C0E                                         ; 5: 0=enable I/O channel check
seg033:0C0E                                         ; 6: 0=hold keyboard clock low
seg033:0C0E                                         ; 7: 0=enable kbrd
seg033:0C10                 retn
seg033:0C11 ; ---------------------------------------------------------------------------
seg033:0C11                 push    bx
seg033:0C12                 push    cx
seg033:0C13                 push    dx
seg033:0C14                 cmp     bl, 2
seg033:0C17                 ja      short loc_1EBEE
seg033:0C19                 cmp     dl, 5Fh ; '_'
seg033:0C1C                 jge     short loc_1EBB0
seg033:0C1E                 mov     dl, 5Fh ; '_'
seg033:0C20
seg033:0C20 loc_1EBB0:                              ; CODE XREF: seg033:0C1C␘j
seg033:0C20                 cmp     dl, 68h ; 'h'
seg033:0C23                 jle     short loc_1EBB7
seg033:0C25                 mov     dl, 68h ; 'h'
seg033:0C27
seg033:0C27 loc_1EBB7:                              ; CODE XREF: seg033:0C23␘j
seg033:0C27                 sub     cl, cl
seg033:0C29                 sub     ch, 18h
seg033:0C2C
seg033:0C2C loc_1EBBC:                              ; CODE XREF: seg033:0C31␙j
seg033:0C2C                 jns     short loc_1EBC3
seg033:0C2E                 add     ch, 0Ch
seg033:0C31                 jmp     short loc_1EBBC
seg033:0C33 ; ---------------------------------------------------------------------------
seg033:0C33
seg033:0C33 loc_1EBC3:                              ; CODE XREF: seg033:loc_1EBBC␘j
seg033:0C33                 call    sub_1E56B
seg033:0C36                 jb      short loc_1EBEE
seg033:0C38                 mov     al, byte_2B9E5
seg033:0C3B                 mov     [bx-374Dh], al
seg033:0C3F                 mov     [si-378Dh], cx
seg033:0C43                 mov     [bx-373Dh], ch
seg033:0C47                 call    sub_1EBF2
seg033:0C4A                 mov     al, dl
seg033:0C4C                 shr     al, 1
seg033:0C4E                 shr     al, 1
seg033:0C50                 shr     al, 1
seg033:0C52                 xor     al, 0Fh
seg033:0C54                 mov     cl, [bx-3508h]
seg033:0C58                 or      al, cl
seg033:0C5A                 or      al, 90h
seg033:0C5C                 out     0C0h, al        ; DMA controller, 8237A-5.
seg033:0C5C                                         ; channel 0 base address
seg033:0C5C                                         ; (also sets current address)
seg033:0C5E
seg033:0C5E loc_1EBEE:                              ; CODE XREF: seg033:0C17␘j
seg033:0C5E                                         ; seg033:0C36␘j
seg033:0C5E                 pop     dx
seg033:0C5F                 pop     cx
seg033:0C60                 pop     bx
seg033:0C61                 retn
seg033:0C62
