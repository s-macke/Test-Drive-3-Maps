seg032:1B36 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:1B36
seg032:1B36
seg032:1B36 sub_1CCD6       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:1B36                                         ; DATA XREF: dseg:C5C2␙o
seg032:1B36                 mov     bx, 1782h
seg032:1B39                 test    byte ptr word_2BEEC+1, 10h
seg032:1B3E                 jz      short loc_1CCE7
seg032:1B40                 test    byte_2BEE8, 8
seg032:1B45                 jnz     short loc_1CCCE
seg032:1B47
seg032:1B47 loc_1CCE7:                              ; CODE XREF: sub_1CC97+8␘j
seg032:1B47                                         ; sub_1CC97+F␘j ...
seg032:1B47                 stc
seg032:1B48                 retn
seg032:1B48 sub_1CCD6       endp
seg032:1B48
seg032:1B48 ; ---------------------------------------------------------------------------
seg032:1B49 aAaUvw_0        db 'áf-UVW¦',0
seg032:1B51                 db 0CDh, 10h, 5Fh, 5Eh, 5Dh, 80h, 3Eh, 0F0h, 0C4h, 3Ch
seg032:1B51                 db 75h, 0Fh, 0B2h, 3Ch, 0B8h, 23h, 11h, 32h, 0DBh, 55h
seg032:1B51                 db 56h, 57h, 0CDh, 10h, 5Fh, 5Eh, 5Dh, 0C3h, 0A3h, 53h
seg032:1B51                 db 0C5h, 0A1h, 0F5h, 0C4h, 0A3h, 5Ah, 0CDh, 0C3h, 6, 0Eh
seg032:1B51                 db 7, 0B9h, 0, 1, 0EBh, 2Fh, 6, 0Eh, 7, 80h, 3Eh, 9, 0CEh
seg032:1B51                 db 0, 74h, 22h, 0B0h, 10h, 0BBh, 10h, 0, 33h, 0D2h, 33h
seg032:1B51                 db 0C9h, 55h, 56h, 57h, 0B4h, 10h, 0CDh, 10h, 5Fh, 5Eh
seg032:1B51                 db 5Dh, 0BAh, 0E6h, 17h, 0B0h, 2, 55h, 56h, 57h, 0B4h
seg032:1B51                 db 10h, 0CDh, 10h, 5Fh, 5Eh, 5Dh, 0B9h, 10h, 0, 33h, 0DBh
seg032:1B51                 db 0C4h, 16h, 3, 0C5h, 0B0h, 12h, 55h, 56h, 57h, 0B4h
seg032:1B51                 db 10h, 0CDh, 10h, 5Fh, 5Eh, 5Dh, 7, 0C3h, 3Dh, 2 dup(0FFh)
seg032:1B51                 db 75h, 4, 3Bh, 0D0h, 74h, 1Bh, 0FFh, 16h, 0Fh, 0C5h, 72h
seg032:1B51                 db 15h, 8Ah, 0FEh, 86h, 0F0h, 86h, 0ECh, 86h, 0CAh, 0B0h
seg032:1B51                 db 10h, 55h, 56h, 57h, 0B4h, 10h, 0CDh, 10h, 5Fh, 5Eh
seg032:1B51                 db 5Dh, 0F8h, 0C3h, 80h, 0FBh, 1, 77h, 19h, 0F6h, 0DBh
seg032:1B51                 db 80h, 0E3h, 0Fh, 0EBh, 5, 80h, 0FBh, 0Fh, 77h, 0Dh, 0F7h
seg032:1B51                 db 0C2h, 0C0h, 0FFh, 75h, 7, 0A9h, 2 dup(0C0h), 75h, 2
seg032:1B51                 db 0F8h, 0C3h, 0F9h, 0C3h, 0E9h, 13h, 11h, 8Bh, 0C1h, 8Bh
seg032:1B51                 db 0DAh, 0D1h, 0E2h, 0D1h, 0E2h, 3, 0D3h, 0B1h, 6, 0D3h
seg032:1B51                 db 0E2h, 3, 0C2h, 0A3h, 58h, 0CDh, 0C6h, 6, 56h, 0CDh
seg032:1B51                 db 0FFh, 0C3h, 0A2h, 57h, 0CDh, 0F8h, 0C3h, 1Eh, 0C5h
seg032:1B51                 db 1Eh, 58h, 0CDh, 8Ah, 7, 1Fh, 0C3h, 1Eh, 0A0h, 57h, 0CDh
seg032:1B51                 db 0C5h, 1Eh, 58h, 0CDh, 88h, 7, 1Fh, 0C3h, 0C6h, 6, 80h
seg032:1B51                 db 0CDh, 1, 0A0h, 57h, 0CDh, 8Bh, 1Eh, 58h, 0CDh, 26h
seg032:1B51                 db 88h, 7, 0C3h, 8Bh, 1Eh, 62h, 0CDh, 0D1h, 0C7h, 73h
seg032:1B51                 db 4, 26h, 88h, 66h, 0, 0Bh, 0F6h, 79h, 6, 3, 0F3h, 45h
seg032:1B51                 db 0E2h, 0EFh, 0C3h, 3, 36h, 64h, 0CDh, 45h, 3, 0EAh, 0E2h
seg032:1B51                 db 0E5h, 0C3h, 8Bh, 1Eh, 62h, 0CDh, 0D1h, 0C7h, 73h, 4
seg032:1B51                 db 26h, 88h, 66h, 0, 0Bh, 0F6h, 79h, 7, 3, 0F3h, 3, 0EAh
seg032:1B51                 db 0E2h, 0EEh, 0C3h, 3, 36h, 64h, 0CDh, 45h, 3, 0EAh, 0E2h
seg032:1B51                 db 0E4h, 0C3h, 8Bh, 36h, 66h, 0CDh, 0D1h, 0C7h, 73h, 4
seg032:1B51                 db 26h, 88h, 66h, 0, 3, 0EAh, 0E2h, 0F4h, 0C3h, 0FBh, 1Ch
seg032:1B51                 db 0F6h, 1Ch, 0, 1Dh, 34h, 6, 5, 1Dh, 32h, 0E4h, 0D1h
seg032:1B51                 db 0E0h, 8Bh, 0D8h, 2Eh, 8Bh, 87h, 9Fh, 1Ch, 0A3h, 50h
seg032:1B51                 db 0C5h, 0C3h, 8Bh, 0CDh, 0D1h, 0E9h, 0D1h, 0E9h, 0D1h
seg032:1B51                 db 0E9h, 0BBh, 3Eh, 6, 8Bh, 0D7h, 0F7h, 0DAh, 3Bh, 0CAh
seg032:1B51                 db 77h, 3, 0F3h, 0A4h, 0C3h, 2Bh, 0CAh, 87h, 0CAh, 0F3h
seg032:1B51                 db 0A4h, 87h, 0CAh, 0FFh, 0D3h, 0EBh, 0F1h, 36h, 8Bh, 1Eh
seg032:1B51                 db 50h, 0C5h, 8Bh, 0D6h, 8Bh, 0CDh, 0D1h, 0E9h, 0D1h, 0E9h
seg032:1B51                 db 0D1h, 0E9h, 81h, 0FBh, 34h, 6, 74h, 0D6h, 0ACh, 0Bh
seg032:1B51                 db 0F6h, 74h, 18h, 0FFh, 0E3h, 26h, 20h, 5, 0EBh, 0Dh
seg032:1B51                 db 26h, 8, 5, 0EBh, 8, 0F6h, 0D0h, 0AAh, 0EBh, 4, 26h
seg032:1B51                 db 30h, 5, 47h, 0E2h, 0E4h, 0C3h, 0E8h, 25h, 0E9h, 0FFh
seg032:1B51                 db 0E3h, 57h, 6, 0C6h, 6, 80h, 0CDh, 1, 0C4h, 3Eh, 58h
seg032:1B51                 db 0CDh, 0A0h, 57h, 0CDh, 80h, 3Eh, 5Dh, 0CDh, 0, 74h
seg032:1B51                 db 23h, 8Bh, 0CFh, 83h, 0E1h, 7, 0B4h, 1, 0D2h, 0CCh, 87h
seg032:1B51                 db 0CBh, 8Ah, 1Eh, 0CCh, 0CDh, 8Ah, 97h, 0B5h, 0CCh, 0D0h
seg032:1B51                 db 0CCh, 84h, 0E2h, 74h, 5, 0AAh, 0E2h, 0F7h, 0EBh, 9
seg032:1B51                 db 47h, 0E2h, 0F2h, 0EBh, 4, 8Bh, 0CBh, 0F3h, 0AAh, 7
seg032:1B51                 db 5Fh, 0C3h, 0A1h, 58h, 0CDh
seg032:1D53                 db 33h, 0D2h, 0B9h, 40h, 1, 0F7h, 0F1h, 8Bh, 0D8h, 0D1h
seg032:1D53                 db 0E0h, 0D1h, 0E0h, 3, 0C3h, 0B1h, 6, 0D3h, 0E0h, 8Bh
seg032:1D53                 db 0D0h, 0A1h, 6Ch, 0CDh, 3, 0C2h, 0A3h, 72h, 0CDh, 3
seg032:1D53                 db 16h, 6Eh, 0CDh, 89h, 16h, 74h, 0CDh, 0C3h, 52h, 57h
seg032:1D53                 db 6, 0C4h, 3Eh, 58h, 0CDh, 8Ah, 16h, 5Ch, 0CDh, 8Ah, 36h
seg032:1D53                 db 57h, 0CDh, 33h, 0C9h, 33h, 0DBh, 3Bh, 3Eh, 72h, 0CDh
seg032:1D53                 db 74h, 10h, 4Fh, 26h, 8Ah, 5, 3Ah, 0C2h, 74h, 7, 32h
seg032:1D53                 db 0C6h, 0Ah, 0C8h, 43h, 2 dup(0EBh), 47h, 89h, 3Eh, 58h
seg032:1D53                 db 0CDh, 0Bh, 0DBh, 74h, 7, 53h, 51h, 0E8h, 62h, 0FFh
seg032:1D53                 db 59h, 5Bh, 7, 5Fh, 5Ah, 0C3h, 57h, 6, 55h, 8Bh, 0DAh
seg032:1D53                 db 0C4h, 3Eh, 58h, 0CDh, 8Ah, 16h, 5Ch, 0CDh, 8Ah, 36h
seg032:1D53                 db 57h, 0CDh, 33h, 0C9h, 26h, 8Ah, 5, 3Ah, 0C2h, 75h, 11h
seg032:1D53                 db 4Bh, 74h, 0Ah, 47h, 3Bh, 3Eh, 74h, 0CDh, 76h, 0EFh
seg032:1D53                 db 4Fh, 33h, 0DBh, 8Bh, 0D3h, 0EBh, 2Dh, 89h, 3Eh, 5Eh
seg032:1D53                 db 0CDh, 89h, 3Eh, 58h, 0CDh, 53h, 33h, 0DBh, 3Bh, 3Eh
seg032:1D53                 db 74h, 0CDh, 77h, 0Fh, 26h, 8Ah, 5, 3Ah, 0C2h, 74h, 9
seg032:1D53                 db 32h, 0C6h, 0Ah, 0C8h, 43h, 47h, 2 dup(0EBh), 4Fh, 0Bh
seg032:1D53                 db 0DBh, 74h, 7, 53h, 51h, 0E8h, 7, 0FFh, 59h, 5Bh, 5Ah
seg032:1D53                 db 89h, 3Eh, 58h, 0CDh, 8Bh, 36h, 5Eh, 0CDh, 5Dh, 7, 5Fh
seg032:1D53                 db 0C3h, 0, 3, 8, 0, 50h, 19h, 0D0h, 2, 5Ch, 1, 0, 0B0h
seg032:1D53                 db 1, 0FFh, 20h, 0, 8, 2 dup(1), 9 dup(0), 0ADh, 1Eh, 0B6h
seg032:1D53                 db 1Eh, 0F4h, 6, 0F4h, 6, 0F4h, 6, 0F4h, 6, 2 dup(1), 5Ah
seg032:1D53                 db 0, 80h, 1, 8, 0, 3, 7, 0, 0A6h, 0, 16h, 0, 0D4h, 1Eh
seg032:1D53                 db 6Ah, 2Dh, 77h, 2Dh, 8Eh, 2Dh, 0A0h, 2Dh, 0B7h, 2Dh
seg032:1D53                 db 22h, 1Fh, 2Dh, 1Fh, 48h, 1Fh, 59h, 1Fh, 6Fh, 1Fh, 73h
seg032:1D53                 db 1Fh, 0CFh, 22h, 38h, 23h, 7Ah, 23h, 88h, 1Fh, 0BDh
seg032:1D53                 db 1Fh, 0E3h, 1Fh, 45h, 20h, 0C9h, 2Dh, 11h, 21h, 42h
seg032:1D53                 db 21h, 0D2h, 21h
seg032:1E7E
