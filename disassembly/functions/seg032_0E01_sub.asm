seg032:0E01 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0E01
seg032:0E01
seg032:0E01 sub_1BFA1       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:0E01                                         ; DATA XREF: dseg:C5A4␙o
seg032:0E01                 mov     ax, 1
seg032:0E04
seg032:0E04 loc_1BFA4:                              ; CODE XREF: sub_1BF9C+3␘j
seg032:0E04                 test    byte ptr word_2BEEC, 1Eh
seg032:0E09                 jz      short loc_1BFD9
seg032:0E0B                 test    byte ptr word_2BEEC+1, 16h
seg032:0E10                 jz      short loc_1BFD9
seg032:0E12                 mov     al, ah
seg032:0E14                 add     al, 4
seg032:0E16                 mov     bx, 0D1Ch
seg032:0E19                 mov     cx, 64h ; 'd'
seg032:0E1C                 push    ax
seg032:0E1D                 call    sub_1B68E
seg032:0E20                 pop     ax
seg032:0E21                 mov     word_2B5CD, ax
seg032:0E24                 test    byte ptr word_2BEEC, 10h
seg032:0E29                 jz      short loc_1BFD7
seg032:0E2B                 mov     word_2B5E3, 17F7h
seg032:0E31                 mov     off_2B5EF, 0EEFh
seg032:0E37
seg032:0E37 loc_1BFD7:                              ; CODE XREF: sub_1BFA1+28␘j
seg032:0E37                 jmp     short loc_1C005
seg032:0E39 ; ---------------------------------------------------------------------------
seg032:0E39
seg032:0E39 loc_1BFD9:                              ; CODE XREF: sub_1BFA1+8␘j
seg032:0E39                                         ; sub_1BFA1+F␘j ...
seg032:0E39                 stc
seg032:0E3A                 retn
seg032:0E3A sub_1BFA1       endp
seg032:0E3A
seg032:0E3B
