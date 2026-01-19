seg032:0E3B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0E3B
seg032:0E3B
seg032:0E3B sub_1BFDB       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:0E3B                                         ; DATA XREF: dseg:C5A8␙o
seg032:0E3B                 test    byte ptr word_2BEEC, 1Eh
seg032:0E40                 jz      short loc_1BFD9
seg032:0E42                 test    byte ptr word_2BEEC+1, 16h
seg032:0E47                 jz      short loc_1BFD9
seg032:0E49                 mov     bx, 0D80h
seg032:0E4C                 mov     cx, 64h ; 'd'
seg032:0E4F                 call    sub_1B68E
seg032:0E52                 test    byte ptr word_2BEEC, 10h
seg032:0E57                 jz      short loc_1C005
seg032:0E59                 mov     word_2B5E3, 17F7h
seg032:0E5F                 mov     off_2B5EF, 1BE7h
seg032:0E65
seg032:0E65 loc_1C005:                              ; CODE XREF: sub_1BFA1:loc_1BFD7␘j
seg032:0E65                                         ; sub_1BFDB+1C␘j
seg032:0E65                 mov     word_2BEF6, 2000h
seg032:0E6B                 mov     word_2BEF8, 1FB0h
seg032:0E71                 mov     word_2BEFA, 3FB0h
seg032:0E77                 clc
seg032:0E78                 retn
seg032:0E78 sub_1BFDB       endp
seg032:0E78
seg032:0E79 ; ---------------------------------------------------------------------------
seg032:0E79                 mov     al, byte ptr word_2B5CD
seg032:0E7C                 mov     ah, 0
seg032:0E7E                 call    sub_1B83E
seg032:0E81                 cmp     byte_2B5CC, 1
seg032:0E86                 jnz     short locret_1C036
seg032:0E88                 test    byte ptr word_2BEEC, 0Ch
seg032:0E8D                 jz      short locret_1C036
seg032:0E8F                 xor     bx, bx
seg032:0E91                 mov     ah, 0Bh
seg032:0E93                 call    sub_1B83E
seg032:0E96
seg032:0E96 locret_1C036:                           ; CODE XREF: seg032:0E86␘j
seg032:0E96                                         ; seg032:0E8D␘j
seg032:0E96                 retn
seg032:0E97 ; ---------------------------------------------------------------------------
seg032:0E97                 mov     word_2B633, ax
seg032:0E9A                 mov     ax, word_2B5D5
seg032:0E9D                 mov     word ptr dword_2BE38+2, ax
seg032:0EA0                 retn
