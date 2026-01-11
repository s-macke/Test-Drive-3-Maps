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
seg032:0EA0 ; ---------------------------------------------------------------------------
seg032:0EA1                 db 3Dh, 2 dup(0FFh), 75h, 4, 3Bh, 0D0h, 74h, 44h, 50h
seg032:0EA1                 db 52h, 53h, 0E8h, 0E3h, 1Dh, 5Bh, 5Ah, 58h, 72h, 39h
seg032:0EA1                 db 0Ah, 0DBh, 75h, 35h, 0E8h, 0Ch, 1Eh, 0F6h, 6, 0Ch, 0CEh
seg032:0EA1                 db 18h, 74h, 16h, 0B3h, 10h, 86h, 0F0h, 86h, 0ECh, 86h
seg032:0EA1                 db 0CAh, 0B0h, 10h, 55h, 56h, 57h, 0B4h, 10h, 0CDh, 10h
seg032:0EA1                 db 5Fh, 5Eh, 5Dh, 0EBh, 15h, 80h, 3Eh, 9, 0CEh, 0, 74h
seg032:0EA1                 db 0Eh, 8Ah, 0F8h, 0B0h, 1, 55h, 56h, 57h, 0B4h, 10h, 0CDh
seg032:0EA1                 db 10h, 5Fh, 5Eh, 5Dh, 0C3h, 80h, 0FBh, 3, 77h, 14h, 0D0h
seg032:0EA1                 db 0E3h, 74h, 3, 80h, 0C3h, 9, 0F7h, 0C2h, 0C0h, 0FFh
seg032:0EA1                 db 75h, 7, 0A9h, 2 dup(0C0h), 75h, 2, 0F8h, 0C3h, 0F9h
seg032:0EA1                 db 0C3h, 33h, 0C0h, 0D1h, 0EAh, 0D1h, 0D8h, 0D1h, 0E8h
seg032:0EA1                 db 0D1h, 0E8h, 8Bh, 0DAh, 0D1h, 0E2h, 0D1h, 0E2h, 3, 0D3h
seg032:0EA1                 db 0D1h, 0E2h, 0D1h, 0E2h, 0D1h, 0E2h, 0D1h, 0E2h, 3, 0D0h
seg032:0EA1                 db 8Bh, 0C1h, 0D1h, 0E8h, 0D1h, 0E8h, 3, 0D0h, 89h, 16h
seg032:0EA1                 db 58h, 0CDh, 80h, 0E1h, 3, 0D0h, 0E1h, 0B5h, 0C0h, 0D2h
seg032:0EA1                 db 0EDh, 88h, 2Eh, 56h, 0CDh, 0C3h, 33h, 0C0h, 0D1h, 0EAh
seg032:0EA1                 db 0D1h, 0D8h, 0D1h, 0E8h, 0D1h, 0E8h, 8Bh, 0DAh, 0D1h
seg032:0EA1                 db 0E2h, 0D1h, 0E2h, 3, 0D3h, 0D1h, 0E2h, 0D1h, 0E2h, 0D1h
seg032:0EA1                 db 0E2h, 0D1h, 0E2h, 3, 0D0h, 8Bh, 0C1h, 0D1h, 0E8h, 0D1h
seg032:0EA1                 db 0E8h, 0D1h, 0E8h, 3, 0D0h, 89h, 16h, 58h, 0CDh, 80h
seg032:0EA1                 db 0E1h, 7, 0B5h, 80h, 0D2h, 0EDh, 88h, 2Eh, 56h, 0CDh
seg032:0EA1                 db 0C3h, 50h, 3Ah, 6, 0F7h, 0C4h, 76h, 3, 0A0h, 0F7h, 0C4h
seg032:0EA1                 db 0B1h, 2, 8Ah, 0E0h, 0D2h, 0E4h, 0Ah, 0C4h, 0D2h, 0E4h
seg032:0EA1                 db 0Ah, 0C4h, 0D2h, 0E4h, 0Ah, 0C4h, 0A2h, 57h, 0CDh, 58h
seg032:0EA1                 db 0C3h, 0, 7, 0Dh, 0, 28h, 19h, 40h, 1, 0C8h, 2 dup(0)
seg032:0EA1                 db 0A0h, 2 dup(0Fh), 20h, 0, 2, 0, 0Fh, 2, 36h, 2Ch
seg032:0FAB                 dw seg seg032
seg032:0FAD                 dd byte_1C997
seg032:0FB1                 db 86h, 12h, 0ADh, 12h, 5Ch, 2Ch, 93h, 2Ch, 0C8h, 2Ch
seg032:0FB1                 db 1Dh, 2Dh, 1, 4, 28h, 0, 80h, 1, 8, 0, 3, 7, 0, 0D6h
seg032:0FB1                 db 0, 34h, 1, 9Ah, 23h, 0CEh, 23h, 0DAh, 23h, 0E5h, 23h
seg032:0FB1                 db 0EEh, 23h, 0F9h, 23h, 2, 24h, 12h, 24h, 62h, 24h, 8Eh
seg032:0FB1                 db 24h, 0A2h, 24h, 59h, 6, 0B6h, 24h, 0F8h, 24h, 22h, 25h
seg032:0FB1                 db 4Bh, 25h, 71h, 25h, 0A6h, 25h, 3Ch, 26h, 0E4h, 26h
seg032:0FB1                 db 67h, 27h, 0CFh, 2Ah, 86h, 2Bh, 8, 0Eh, 0, 50h, 19h
seg032:0FB1                 db 80h, 2, 0C8h, 2 dup(0), 0A0h, 2 dup(0Fh), 40h, 0, 4
seg032:0FB1                 db 0, 0Fh, 2, 36h, 2Ch
seg032:100F                 dw seg seg032
seg032:1011                 dd byte_1C997
seg032:1015                 db 86h, 12h, 0ADh, 12h, 5Ch, 2Ch, 93h, 2Ch, 0C8h, 2Ch
seg032:1015                 db 1Dh, 2Dh, 1, 4, 50h, 0, 80h, 1, 8, 0, 3, 7, 0, 6Bh
seg032:1015                 db 0, 68h, 2, 0A4h, 23h, 0CEh, 23h, 0DAh, 23h, 0E5h, 23h
seg032:1015                 db 0EEh, 23h, 0F9h, 23h, 2, 24h, 12h, 24h, 62h, 24h, 8Eh
seg032:1015                 db 24h, 0A2h, 24h, 59h, 6, 0B6h, 24h, 0F8h, 24h, 22h, 25h
seg032:1015                 db 4Bh, 25h, 71h, 25h, 0A6h, 25h, 3Ch, 26h, 0F4h, 26h
seg032:1015                 db 67h, 27h, 0CFh, 2Ah, 86h, 2Bh, 0Ah, 0Fh, 0, 50h, 19h
seg032:1015                 db 80h, 2, 5Eh, 1, 0, 0A0h, 3, 8, 40h, 0, 8, 0, 3, 2, 0EEh
seg032:1015                 db 11h
seg032:1073                 dw seg seg032
seg032:1075                 db 4 dup(0), 86h, 12h, 0ADh, 12h, 63h, 2Ch, 0CBh, 12h
seg032:1075                 db 18h, 13h, 1Dh, 2Dh, 1, 2, 50h, 0, 80h, 1, 8, 0, 3, 7
seg032:1075                 db 0, 0BBh, 0, 60h, 1, 0A4h, 23h, 0CEh, 23h, 0DAh, 23h
seg032:1075                 db 0E5h, 23h, 0EEh, 23h, 0F9h, 23h, 57h, 13h, 46h, 24h
seg032:1075                 db 62h, 24h, 8Eh, 24h, 0A2h, 24h, 59h, 6, 0B6h, 24h, 0F8h
seg032:1075                 db 24h, 22h, 25h, 48h, 25h, 6Fh, 25h, 0A1h, 25h, 3Ch, 26h
seg032:1075                 db 0F4h, 26h, 67h, 27h, 0F4h, 13h, 0E0h, 14h, 0Ah, 0Fh
seg032:1075                 db 0, 50h, 19h, 80h, 2, 5Eh, 1, 0, 0A0h, 3, 8, 40h, 0
seg032:1075                 db 8, 0, 3, 12h, 0EEh, 11h
seg032:10D7                 dw seg seg032
seg032:10D9                 db 4 dup(0), 86h, 12h, 0ADh, 12h, 63h, 2Ch, 0CBh, 12h
seg032:10D9                 db 18h, 13h, 1Dh, 2Dh, 1, 2, 50h, 0, 80h, 1, 8, 0, 3, 7
seg032:10D9                 db 0, 0BBh, 0, 60h, 1, 0A4h, 23h, 0CEh, 23h, 0DAh, 23h
seg032:10D9                 db 0E5h, 23h, 0EEh, 23h, 0F9h, 23h, 57h, 13h, 51h, 24h
seg032:10D9                 db 62h, 24h, 8Eh, 24h, 0A2h, 24h, 59h, 6, 0B6h, 24h, 0F8h
seg032:10D9                 db 24h, 22h, 25h, 45h, 25h, 0CEh, 15h, 39h, 16h, 3Ch, 26h
seg032:10D9                 db 0F4h, 26h, 67h, 27h, 0F4h, 13h, 0E0h, 14h, 9, 10h, 0
seg032:10D9                 db 50h, 19h, 80h, 2, 5Eh, 1, 0, 0A0h, 0Fh, 3Fh, 80h, 0
seg032:10D9                 db 8, 0, 0Fh, 2, 46h, 2Ch
seg032:113B                 dw seg seg032
seg032:113D                 dd byte_1C997
seg032:1141                 db 86h, 12h, 0ADh, 12h, 5Ch, 2Ch, 93h, 2Ch, 0C8h, 2Ch
seg032:1141                 db 1Dh, 2Dh, 1, 4, 50h, 0, 80h, 1, 8, 0, 3, 7, 0, 0BBh
seg032:1141                 db 0, 60h, 1, 0A4h, 23h, 0CEh, 23h, 0DAh, 23h, 0E5h, 23h
seg032:1141                 db 0EEh, 23h, 0F9h, 23h, 2, 24h, 12h, 24h, 62h, 24h, 8Eh
seg032:1141                 db 24h, 0A2h, 24h, 59h, 6, 0B6h, 24h, 0F8h, 24h, 22h, 25h
seg032:1141                 db 4Bh, 25h, 71h, 25h, 0A6h, 25h, 3Ch, 26h, 0F4h, 26h
seg032:1141                 db 67h, 27h, 0CFh, 2Ah, 86h, 2Bh, 9, 10h, 0, 50h, 19h
seg032:1141                 db 80h, 2, 5Eh, 1, 0, 0A0h, 3, 3Fh, 40h, 0, 8, 0, 3, 12h
seg032:1141                 db 0FEh, 11h
seg032:119F                 dw seg seg032
seg032:11A1                 dd byte_1C3A4
seg032:11A5                 db 86h, 12h, 0ADh, 12h, 5Ch, 2Ch, 93h, 2Ch, 42h, 13h, 1Dh
seg032:11A5                 db 2Dh, 1, 2, 50h, 0, 80h, 1, 8, 0, 3, 7, 0, 0BBh, 0, 60h
seg032:11A5                 db 1, 0A4h, 23h, 0CEh, 23h, 0DAh, 23h, 0E5h, 23h, 0EEh
seg032:11A5                 db 23h, 0F9h, 23h, 57h, 13h, 51h, 24h, 62h, 24h, 8Eh, 24h
seg032:11A5                 db 0A2h, 24h, 59h, 6, 0B6h, 24h, 0F8h, 24h, 22h, 25h, 45h
seg032:11A5                 db 25h, 0CEh, 15h, 39h, 16h, 3Ch, 26h, 0F4h, 26h, 67h
seg032:11A5                 db 27h, 0F4h, 13h, 0E0h, 14h, 0, 8, 2 dup(0), 2 dup(18h)
seg032:11A5                 db 3 dup(0), 8, 3 dup(0), 18h, 3 dup(0), 3Bh, 2 dup(0)
seg032:11A5                 db 3Dh, 3Fh
seg032:1204 byte_1C3A4      db 3 dup(0), 15h, 3 dup(3Fh), 15h, 4 dup(3Fh)
seg032:1204                                         ; DATA XREF: seg032:11A1␘o
seg032:1210
