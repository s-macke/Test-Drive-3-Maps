seg032:1F1B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:1F1B
seg032:1F1B
seg032:1F1B sub_1D0BB       proc near               ; CODE XREF: sub_1BCE7+6␘p
seg032:1F1B                 cmp     byte_2B5CC, 0
seg032:1F20                 retn
seg032:1F20 sub_1D0BB       endp
seg032:1F20
seg032:1F20 ; ---------------------------------------------------------------------------
seg032:1F21                 align 2
seg032:1F22                 push    ax
seg032:1F23                 neg     al
seg032:1F25                 sbb     al, al
seg032:1F27                 mov     byte ptr word_2BE36+1, al
seg032:1F2A                 clc
seg032:1F2B                 pop     ax
seg032:1F2C                 retn
seg032:1F2D ; ---------------------------------------------------------------------------
seg032:1F2D                 push    es
seg032:1F2E                 mov     al, byte ptr word_2BE36
seg032:1F31                 les     bx, dword_2BE38
seg032:1F35                 mov     cl, byte_2B5F3
seg032:1F39                 mov     ah, es:[bx]
seg032:1F3C                 and     ah, al
seg032:1F3E
seg032:1F3E loc_1D0DE:                              ; CODE XREF: seg032:1F40␙j
seg032:1F3E                 shr     ax, cl
seg032:1F40                 jnb     short loc_1D0DE
seg032:1F42                 shl     ax, cl
seg032:1F44                 mov     al, ah
seg032:1F46                 pop     es
seg032:1F47                 retn
seg032:1F48 ; ---------------------------------------------------------------------------
seg032:1F48                 push    ds
seg032:1F49                 mov     cx, word_2BE36
seg032:1F4D                 lds     bx, dword_2BE38
seg032:1F51                 xor     ch, [bx]
seg032:1F53                 and     ch, cl
seg032:1F55                 xor     [bx], ch
seg032:1F57                 pop     ds
seg032:1F58                 retn
seg032:1F59 ; ---------------------------------------------------------------------------
seg032:1F59                 mov     byte_2BE60, 1
seg032:1F5E                 mov     cx, word_2BE36
seg032:1F62                 mov     bx, word ptr dword_2BE38
seg032:1F66                 xor     ch, es:[bx]
seg032:1F69                 and     ch, cl
seg032:1F6B                 xor     es:[bx], ch
seg032:1F6E                 retn
seg032:1F6F ; ---------------------------------------------------------------------------
seg032:1F6F                 mov     es, word ptr dword_2BE38+2
seg032:1F73                 retn
seg032:1F73 ; ---------------------------------------------------------------------------
seg032:1F74                 db 0AAh, 1Fh, 9Fh, 1Fh, 0B1h, 1Fh, 0B3h, 1Fh, 0B6h, 1Fh
seg032:1F74                 db 9, 20h, 4, 20h, 0Eh, 20h, 10h, 20h, 15h, 20h, 32h, 0E4h
seg032:1F74                 db 0D1h, 0E0h, 8Bh, 0D8h, 2Eh, 8Bh, 87h, 74h, 1Fh, 0A3h
seg032:1F74                 db 50h, 0C5h, 2Eh, 8Bh, 87h, 7Eh, 1Fh, 0A3h, 1Fh, 0CEh
seg032:1F74                 db 0C3h, 0F6h, 0D6h, 0Ah, 0E6h, 0F6h, 0D6h, 26h, 20h, 25h
seg032:1F74                 db 47h, 0C3h, 22h, 0E6h, 26h, 8, 25h, 47h, 0C3h, 0F6h
seg032:1F74                 db 0D4h, 26h, 32h, 25h, 22h, 0E6h, 26h, 30h, 25h, 47h
seg032:1F74                 db 0C3h, 8Ah, 24h, 46h, 0ACh, 8Ah, 0F8h, 0D3h, 0C0h, 83h
seg032:1F74                 db 0EDh, 8, 76h, 0Dh, 26h, 88h, 25h, 47h, 8Ah, 0E7h, 75h
seg032:1F74                 db 0EEh, 0E8h, 69h, 0E6h, 0EBh, 0E9h, 22h, 0E5h, 26h, 88h
seg032:1F74                 db 25h, 47h, 75h, 3, 0E8h, 5Ch, 0E6h, 0C3h, 8Ah, 24h, 46h
seg032:1F74                 db 75h, 3, 0E8h, 49h, 0E6h, 0D3h, 0C8h, 3, 0E9h, 83h, 0EDh
seg032:1F74                 db 8, 76h, 44h, 36h, 0FFh, 16h, 50h, 0C5h, 0B6h, 0FFh
seg032:1F74                 db 36h, 8Bh, 1Eh, 1Fh, 0CEh, 0EBh, 17h, 0FFh, 0E3h, 26h
seg032:1F74                 db 20h, 25h, 0EBh, 0Fh, 26h, 8, 25h, 0EBh, 0Ah, 0F6h, 0D4h
seg032:1F74                 db 26h, 88h, 25h, 0EBh, 3, 26h, 30h, 25h, 47h, 0D3h, 0C0h
seg032:1F74                 db 0ACh, 0Bh, 0F6h, 74h, 20h, 86h, 0E0h, 0D3h, 0C8h, 83h
seg032:1F74                 db 0EDh, 8, 77h, 0D9h, 83h, 0C5h, 8, 3Bh, 0CDh, 72h, 8
seg032:1F74                 db 0Bh, 0F6h, 75h, 3, 0E8h, 11h, 0E6h, 4Eh, 22h, 0F2h
seg032:1F74                 db 36h, 0FFh, 16h, 50h, 0C5h, 0C3h, 0E8h, 0F1h, 0E5h, 0EBh
seg032:1F74                 db 0DBh, 57h, 6, 0C6h, 6, 80h, 0CDh, 1, 0C4h, 3Eh, 58h
seg032:1F74                 db 0CDh, 8Bh, 16h, 56h, 0CDh, 0Ah, 0D2h, 78h, 24h, 32h
seg032:1F74                 db 0E4h, 8Ah, 0Eh, 13h, 0C5h, 0Ah, 0E2h, 4Bh, 74h, 71h
seg032:1F74                 db 0D2h, 0CAh, 73h, 0F7h, 80h, 3Eh, 5Dh, 0CDh, 0, 74h
seg032:1F74                 db 3, 0E8h, 78h, 0, 8Ah, 0C6h, 26h, 32h, 5, 22h, 0C4h
seg032:1F74                 db 26h, 30h, 5, 47h, 8Bh, 0C3h, 8Ah, 0Eh, 1Bh, 0C5h, 0D3h
seg032:1F74                 db 0E8h, 74h, 46h, 91h, 80h, 3Eh, 5Dh, 0CDh, 0, 74h, 3Ah
seg032:1F74                 db 53h, 32h, 0FFh, 8Ah, 1Eh, 0CCh, 0CDh, 80h, 3Eh, 13h
seg032:1F74                 db 0C5h, 2, 75h, 1Ah, 8Bh, 0C7h, 0D1h, 0C8h, 0D1h, 0D3h
seg032:1F74                 db 8Ah, 0C6h, 26h, 32h, 5, 22h, 87h, 0B5h, 0CCh, 26h, 30h
seg032:1F74                 db 5, 47h, 0D1h, 0CBh, 0E2h, 0E9h, 5Bh, 0EBh, 16h, 8Ah
seg032:1F74                 db 0C6h, 26h, 32h, 5, 22h, 87h, 0B5h, 0CCh, 26h, 30h, 5
seg032:1F74                 db 47h, 0E2h, 0F1h, 5Bh, 0EBh, 4, 8Ah, 0C6h, 0F3h, 0AAh
seg032:1F74                 db 23h, 1Eh, 1Ch, 0C5h, 74h, 14h, 0EBh, 84h, 80h, 3Eh
seg032:1F74                 db 5Dh, 0CDh, 0, 74h, 3, 0E8h, 0Bh, 0, 26h, 32h, 35h, 22h
seg032:1F74                 db 0F4h, 26h, 30h, 35h, 7, 5Fh, 0C3h, 53h, 80h, 3Eh, 13h
seg032:1F74                 db 0C5h, 2, 75h, 14h, 52h, 32h, 0FFh, 8Ah, 1Eh, 0CCh, 0CDh
seg032:1F74                 db 8Bh, 0D7h, 0D1h, 0CAh, 0D1h, 0D3h, 22h, 0A7h, 0B5h
seg032:1F74                 db 0CCh, 5Ah, 0EBh, 0Ah, 32h, 0FFh, 8Ah, 1Eh, 0CCh, 0CDh
seg032:1F74                 db 22h, 0A7h, 0B5h, 0CCh, 5Bh, 0C3h, 88h, 1Eh, 57h, 0CDh
seg032:1F74                 db 0C3h, 0C4h, 3Eh, 58h, 0CDh, 8Ah, 2Eh, 56h, 0CDh, 8Ah
seg032:1F74                 db 16h, 5Ch, 0CDh, 8Ah, 36h, 57h, 0CDh, 8Ah, 0Eh, 13h
seg032:1F74                 db 0C5h, 26h, 8Ah, 1Dh, 33h, 0F6h, 0C3h, 8Ah, 0C3h, 32h
seg032:1F74                 db 0C2h, 22h, 0C5h, 74h, 9, 8Ah, 0C3h, 32h, 0C6h, 22h
seg032:1F74                 db 0C5h, 0Bh, 0F0h, 45h, 0C3h, 52h, 56h, 57h, 6, 55h, 0E8h
seg032:1F74                 db 0CCh, 0FFh, 8Bh, 0EEh, 3Bh, 3Eh, 72h, 0CDh, 74h, 59h
seg032:1F74                 db 0D2h, 0C5h, 72h, 9, 0E8h, 0D7h, 0FFh, 74h, 2Ah, 0D2h
seg032:1F74                 db 0C5h, 0EBh, 0F5h, 83h, 0EFh, 1, 72h, 27h, 26h, 8Ah
seg032:1F74                 db 1Dh, 3Bh, 3Eh, 72h, 0CDh, 74h, 25h, 8Ah, 0C3h, 32h
seg032:1F74                 db 0C2h, 84h, 0C5h, 74h
seg032:2174                 db 1Dh, 0D2h, 0C5h, 73h, 0F8h, 8Ah, 0C3h, 32h, 0C6h, 0Bh
seg032:2174                 db 0F0h, 3, 2Eh, 19h, 0C5h, 0EBh, 0DAh, 0D2h, 0CDh, 73h
seg032:2174                 db 2Eh, 0EBh, 4, 8Ah, 2Eh, 17h, 0C5h, 47h, 0EBh, 25h, 8Ah
seg032:2174                 db 0Eh, 13h, 0C5h, 8Ah, 2Eh, 18h, 0C5h, 0E8h, 93h, 0FFh
seg032:2174                 db 74h, 0E6h, 0D2h, 0C5h, 72h, 12h, 3Ah, 2Eh, 70h, 0CDh
seg032:2174                 db 77h, 0DCh, 0EBh, 0EFh, 0D2h, 0C5h, 72h, 6, 3Ah, 2Eh
seg032:2174                 db 70h, 0CDh, 76h, 0E5h, 0D2h, 0CDh, 8Bh, 0DDh, 0Bh, 0DBh
seg032:2174                 db 74h, 0Bh, 89h, 3Eh, 58h, 0CDh, 88h, 2Eh, 56h, 0CDh
seg032:2174                 db 0E8h, 7Dh, 0FEh, 8Bh, 0DDh, 8Bh, 0CEh, 5Dh, 7, 5Fh
seg032:2174                 db 5Eh, 5Ah, 0C3h, 57h, 6, 55h, 8Bh, 0EAh, 0E8h, 3Ch, 0FFh
seg032:2174                 db 8Ah, 0C3h, 32h, 0C2h, 84h, 0C5h, 75h, 1Ch, 4Dh, 74h
seg032:2174                 db 16h, 0D2h, 0CDh, 73h, 0F5h, 47h, 26h, 8Ah, 1Dh, 3Bh
seg032:2174                 db 3Eh, 74h, 0CDh, 75h, 0E7h, 3Ah, 2Eh, 71h, 0CDh, 73h
seg032:2174                 db 0E1h, 33h, 0EDh, 0E9h, 0ABh, 0, 89h, 3Eh, 1Ch, 0CEh
seg032:2174                 db 88h, 2Eh, 1Eh, 0CEh, 89h, 3Eh, 58h, 0CDh, 88h, 2Eh
seg032:2174                 db 56h, 0CDh, 55h, 33h, 0EDh, 0F6h, 0C5h, 80h, 75h, 0Ah
seg032:2174                 db 0E8h, 17h, 0FFh, 74h, 55h, 0D2h, 0CDh, 73h, 0F7h, 47h
seg032:2174                 db 80h, 3Eh, 13h, 0C5h, 2, 74h, 1Bh, 26h, 8Ah, 1Dh, 39h
seg032:2174                 db 3Eh, 74h, 0CDh, 76h, 37h, 8Ah, 0C3h, 0F6h, 0D0h, 32h
seg032:2174                 db 0C2h, 75h, 0DEh, 32h, 0DEh, 0Bh, 0F3h, 83h, 0C5h, 8
seg032:2174                 db 47h, 0EBh, 0E5h, 0B4h, 55h, 26h, 8Ah, 1Dh, 39h, 3Eh
seg032:2174                 db 74h, 0CDh, 76h, 1Ah, 8Ah, 0C3h, 0F6h, 0D0h, 32h, 0C2h
seg032:2174                 db 8Ah, 0F8h, 0D0h, 0EFh, 22h, 0FCh, 22h, 0F8h, 75h, 0B9h
seg032:2174                 db 32h, 0DEh, 0Bh, 0F3h, 83h, 0C5h, 4, 47h, 0EBh, 0DDh
seg032:2174                 db 74h, 9, 8Ah, 0Eh, 13h, 0C5h, 0D2h, 0C5h, 47h, 0EBh
seg032:2174                 db 1Dh, 8Ah, 2Eh, 17h, 0C5h, 0E8h, 0B7h, 0FEh, 74h, 14h
seg032:2174                 db 0D2h, 0CDh, 72h, 0Eh, 3Bh, 3Eh, 74h, 0CDh, 75h, 0F1h
seg032:2174                 db 3Ah, 2Eh, 71h, 0CDh, 72h, 2, 0EBh, 0E9h, 0D2h, 0C5h
seg032:2174                 db 51h, 8Bh, 0DDh, 0Bh, 0DBh, 74h, 3, 0E8h, 0ACh, 0FDh
seg032:2174                 db 8Bh, 0DDh, 59h, 89h, 3Eh, 58h, 0CDh, 88h, 2Eh, 56h
seg032:2174                 db 0CDh, 5Ah, 8Bh, 0CEh, 0EBh, 0Eh, 8Bh, 0DDh, 8Bh, 0D5h
seg032:2174                 db 8Ah, 0CBh, 89h, 3Eh, 58h, 0CDh, 88h, 2Eh, 56h, 0CDh
seg032:2174                 db 8Bh, 36h, 1Ch, 0CEh, 0A0h, 1Eh, 0CEh, 5Dh, 7, 5Fh, 0C3h
seg032:2174                 db 0Bh, 0D2h, 8Bh, 2 dup(16h), 0CEh, 78h, 4, 8Bh, 16h
seg032:2174                 db 18h, 0CEh, 0C3h, 0E8h, 0F0h, 0FFh, 87h, 0D9h, 8Ah, 0Eh
seg032:2174                 db 13h, 0C5h, 0D1h, 0C7h, 73h, 2, 0Ah, 0C5h, 0Bh, 0F6h
seg032:2174                 db 79h, 25h, 3, 36h, 62h, 0CDh, 0D2h, 0CDh, 72h, 5, 4Bh
seg032:2174                 db 75h, 2 dup(0EBh), 3Eh, 8Ah, 0CCh, 26h, 32h, 4Eh, 0
seg032:2174                 db 22h, 0C8h, 26h, 30h, 4Eh, 0, 32h, 0C0h, 8Ah, 0Eh, 13h
seg032:2174                 db 0C5h, 45h, 4Bh, 75h, 0D3h, 0EBh, 26h, 3, 36h, 64h, 0CDh
seg032:2174                 db 8Ah, 0CCh, 26h, 32h, 4Eh, 0, 22h, 0C8h, 26h, 30h, 4Eh
seg032:2174                 db 0, 32h, 0C0h, 8Ah, 0Eh, 13h, 0C5h, 0D2h, 0CDh, 83h
seg032:2174                 db 0D5h, 0, 2Bh, 0EAh, 73h, 4, 3, 2Eh, 1Ah, 0CEh, 4Bh
seg032:2174                 db 75h, 0ABh, 26h, 32h, 66h, 0, 22h, 0E0h, 26h, 30h, 66h
seg032:2174                 db 0, 0C3h, 0E8h, 87h, 0FFh, 87h, 0D9h, 8Ah, 0Eh, 13h
seg032:2174                 db 0C5h, 0D1h, 0C7h, 73h, 0Ch, 8Ah, 0ECh, 26h, 32h, 6Eh
seg032:2174                 db 0, 22h, 0E8h, 26h, 30h, 6Eh, 0, 0Bh, 0F6h, 79h, 10h
seg032:2174                 db 3, 36h, 62h, 0CDh, 2Bh, 0EAh, 73h, 4, 3, 2Eh, 1Ah, 0CEh
seg032:2174                 db 4Bh, 75h, 0DDh, 0C3h, 3, 36h, 64h, 0CDh, 0D2h, 0C8h
seg032:2174                 db 83h, 0D5h, 0, 2Bh, 0EAh, 73h, 4, 3, 2Eh, 1Ah, 0CEh
seg032:2376                 db 4Bh, 75h, 0C8h, 0C3h, 0E8h, 45h, 0FFh, 8Bh, 36h, 1Ah
seg032:2376                 db 0CEh, 0D1h, 0C7h, 73h, 0Ch, 8Ah, 0FCh, 26h, 32h, 7Eh
seg032:2376                 db 0, 22h, 0F8h, 26h, 30h, 7Eh, 0, 2Bh, 0EAh, 73h, 2, 3
seg032:2376                 db 0EEh, 0E2h, 0E8h, 0C3h, 8Bh, 0DAh, 0D1h, 0E2h, 0D1h
seg032:2376                 db 0E2h, 3, 0D3h, 0EBh, 0Ah, 8Bh, 0DAh, 0D1h, 0E2h, 0D1h
seg032:2376                 db 0E2h, 3, 0D3h, 0D1h, 0E2h, 0D1h, 0E2h, 0D1h, 0E2h, 0D1h
seg032:2376                 db 0E2h, 8Bh, 0C1h, 0D1h, 0E8h, 0D1h, 0E8h, 0D1h, 0E8h
seg032:2376                 db 3, 0D0h, 89h, 16h, 58h, 0CDh, 80h, 0E1h, 7, 0B5h, 80h
seg032:2376                 db 0D2h, 0EDh, 88h, 2Eh, 56h, 0CDh, 0C3h, 0D0h, 6, 56h
seg032:2376                 db 0CDh, 72h, 1, 0C3h, 0FFh, 0Eh, 58h, 0CDh, 0C3h, 0A1h
seg032:2376                 db 58h, 0CDh, 3Bh, 6, 68h, 0CDh, 73h, 2, 0F9h, 0C3h, 0A1h
seg032:2376                 db 15h, 0C5h, 29h, 6, 58h, 0CDh, 0F8h, 0C3h, 0A1h, 58h
seg032:2376                 db 0CDh, 3Bh, 6, 6Ah, 0CDh, 72h, 2, 0F9h, 0C3h, 0A1h, 15h
seg032:2376                 db 0C5h, 1, 6, 58h, 0CDh, 0F8h, 0C3h, 50h, 3Ah, 6, 0F7h
seg032:2376                 db 0C4h, 76h, 3, 0A0h, 0F7h, 0C4h, 0A2h, 57h, 0CDh, 0F8h
seg032:2376                 db 58h, 0C3h, 56h, 6, 0C4h, 36h, 58h, 0CDh, 0BBh, 3, 1
seg032:2376                 db 0BAh, 0CEh, 3, 0B8h, 5, 0, 0E8h, 2Eh, 0E2h, 0B0h, 4
seg032:2376                 db 0EEh, 42h, 8Ah, 0C3h, 32h, 0E4h, 8Ah, 0Eh, 56h, 0CDh
seg032:2376                 db 0EEh, 26h, 8Ah, 2Ch, 22h, 0E9h, 0F6h, 0DDh, 0D0h, 0D4h
seg032:2376                 db 2Ah, 0C7h, 73h, 0F2h, 86h, 0E0h, 0E8h, 16h, 0E2h, 7
seg032:2376                 db 5Eh, 0C3h, 56h, 6, 0C4h, 36h, 58h, 0CDh, 0BBh, 2 dup(2)
seg032:2376                 db 0EBh, 0CAh, 56h, 6, 0C4h, 36h, 58h, 0CDh, 8Bh, 0DEh
seg032:2376                 db 0B7h, 2, 80h, 0E3h, 1, 2, 0DFh, 0EBh, 0B9h, 6, 0BAh
seg032:2376                 db 0CEh, 3, 0B0h, 5, 0EEh, 0A0h, 0FEh, 0C4h, 42h, 0EEh
seg032:2376                 db 0B0h, 8, 4Ah, 0EEh, 0A1h, 56h, 0CDh, 42h, 0EEh, 0C4h
seg032:2376                 db 1Eh, 58h, 0CDh, 26h, 86h, 27h, 0B0h, 0FFh, 0EEh, 0B0h
seg032:2376                 db 5, 4Ah, 0EEh, 0A0h, 0FEh, 0C4h, 24h, 10h, 42h, 0EEh
seg032:2376                 db 7, 0C3h, 0C6h, 6, 80h, 0CDh, 1, 0BAh, 0CFh, 3, 0A1h
seg032:2376                 db 56h, 0CDh, 0EEh, 8Bh, 1Eh, 58h, 0CDh, 26h, 86h, 27h
seg032:2376                 db 0C3h, 8Eh, 6, 5Ah, 0CDh, 0BAh, 0CEh, 3, 0B0h, 5, 0EEh
seg032:2376                 db 0A0h, 0FEh, 0C4h, 42h, 0EEh, 0B0h, 8, 4Ah, 0EEh, 0C3h
seg032:2376                 db 0BAh, 0CFh, 3, 0D1h, 0C7h, 73h, 2, 0Ah, 0C7h, 0Bh, 0F6h
seg032:2376                 db 79h, 1Ah, 3, 36h, 62h, 0CDh, 0D0h, 0CFh, 72h, 4, 0E2h
seg032:2376                 db 0ECh, 0EBh, 23h, 0EEh, 8Ah, 0C4h, 26h, 86h, 46h, 0
seg032:2376                 db 32h, 0C0h, 45h, 0E2h, 0DEh, 0EBh, 15h, 3, 36h, 64h
seg032:2376                 db 0CDh, 0EEh, 8Ah, 0C4h, 26h, 86h, 46h, 0, 32h, 0C0h
seg032:2376                 db 0D0h, 0CFh, 13h, 2Eh, 66h, 0CDh, 0E2h, 0C7h, 0EEh, 26h
seg032:2376                 db 86h, 66h, 0, 0C3h, 0BAh, 0CFh, 3, 0D1h, 0C7h, 73h, 7
seg032:2376                 db 0EEh, 8Ah, 0FCh, 26h, 86h, 7Eh, 0, 0Bh, 0F6h, 79h, 0Bh
seg032:2376                 db 3, 36h, 62h, 0CDh, 3, 2Eh, 66h, 0CDh, 0E2h, 0E7h, 0C3h
seg032:2376                 db 3, 36h, 64h, 0CDh, 0D0h, 0C8h, 13h, 2Eh, 66h, 0CDh
seg032:2376                 db 0E2h, 0DAh, 0C3h, 0BAh, 0CFh, 3, 0EEh, 8Bh, 1Eh, 66h
seg032:2376                 db 0CDh, 0D1h, 0C7h, 73h, 6, 8Ah, 0C4h, 26h, 86h, 46h
seg032:2376                 db 0, 3, 0EBh, 0E2h, 0F2h, 0C3h, 0F6h, 0D4h, 26h, 86h
seg032:2376                 db 25h, 47h, 0C3h, 10h, 8, 2 dup(0), 18h, 0B3h, 0CCh, 3Dh
seg032:2376                 db 0B3h, 44h, 3Dh, 0B3h, 2 dup(88h), 1Eh, 61h, 0CDh, 0BBh
seg032:2376                 db 39h, 25h, 3Ch, 2, 74h, 3, 0BBh, 3Bh, 25h, 89h, 1Eh
seg032:2376                 db 50h, 0C5h, 0BBh, 40h, 25h, 2Eh, 0D7h, 8Ah, 0E0h, 0BAh
seg032:2376                 db 0CEh, 3, 0B0h, 3, 0E8h, 0E4h, 0E0h, 0C3h, 0D0h, 0E7h
seg032:2376                 db 0BAh, 0CEh, 3, 0B0h, 4, 0EEh, 8Ah, 0C7h
seg032:2579                 db 42h, 0EEh, 8Ah, 24h, 46h, 0ACh, 8Ah, 0F8h, 0D3h, 0C0h
seg032:2579                 db 83h, 0EDh, 8, 76h, 0Dh, 26h, 88h, 25h, 47h, 8Ah, 0E7h
seg032:2579                 db 75h, 0EEh, 0E8h, 0ABh, 0E0h, 0EBh, 0E9h, 22h, 0E5h
seg032:2579                 db 26h, 88h, 25h, 47h, 75h, 3, 0E8h, 9Eh, 0E0h, 0C3h, 36h
seg032:2579                 db 0D0h, 6, 61h, 0CDh, 36h, 0D0h, 6, 61h, 0CDh, 52h, 8Ah
seg032:2579                 db 0DEh, 0BAh, 0CEh, 3, 0B0h, 8, 0EEh, 93h, 42h, 0EEh
seg032:2579                 db 4Ah, 0B0h, 5, 0EEh, 32h, 0C0h, 42h, 0EEh, 4Ah, 0B0h
seg032:2579                 db 4, 0EEh, 8Ah, 0C4h, 42h, 0EEh, 0BAh, 0C4h, 3, 0B0h
seg032:2579                 db 2, 0EEh, 36h, 0A0h, 61h, 0CDh, 24h, 0Fh, 42h, 0EEh
seg032:2579                 db 5Ah, 8Ah, 24h, 46h, 75h, 3, 0E8h, 56h, 0E0h, 36h, 8Bh
seg032:2579                 db 1Eh, 50h, 0C5h, 0D3h, 0C8h, 3, 0E9h, 83h, 0EDh, 8, 76h
seg032:2579                 db 37h, 0FFh, 0D3h, 0B6h, 0FFh, 50h, 52h, 8Ah, 0E6h, 0BAh
seg032:2579                 db 0CEh, 3, 0B0h, 8, 0EEh, 86h, 0C4h, 42h, 0EEh, 5Ah, 58h
seg032:2579                 db 0EBh, 2, 0FFh, 2 dup(0D3h), 0C0h, 0ACh, 0Bh, 0F6h, 74h
seg032:2579                 db 2Ch, 86h, 0E0h, 0D3h, 0C8h, 83h, 0EDh, 8, 77h, 0EEh
seg032:2579                 db 83h, 0C5h, 8, 3Bh, 0CDh, 72h, 8, 0Bh, 0F6h, 75h, 3
seg032:2579                 db 0E8h, 26h, 0E0h, 4Eh, 50h, 22h, 0F2h, 8Ah, 0E6h, 0BAh
seg032:2579                 db 0CEh, 3, 0B0h, 8, 0EEh, 86h, 0C4h, 42h, 0EEh, 4Ah, 58h
seg032:2579                 db 0FFh, 0D3h, 0C3h, 0E8h, 0FAh, 0DFh, 0EBh, 0CFh, 57h
seg032:2579                 db 6, 0C6h, 6, 80h, 0CDh, 1, 0BAh, 0CEh, 3, 0B0h, 5, 0EEh
seg032:2579                 db 0A0h, 0FEh, 0C4h, 42h, 0EEh, 4Ah, 0B0h, 8, 0EEh, 42h
seg032:2579                 db 0C4h, 3Eh, 58h, 0CDh, 8Bh, 0Eh, 56h, 0CDh, 0Ah, 0C9h
seg032:2579                 db 78h, 1Eh, 32h, 0E4h, 0Ah, 0E1h, 4Bh, 74h, 4Ch, 0D0h
seg032:2579                 db 0C9h, 73h, 0F7h, 80h, 3Eh, 5Dh, 0CDh, 0, 74h, 3, 0E8h
seg032:2579                 db 54h, 0, 8Ah, 0C4h, 0EEh, 8Ah, 0C5h, 26h, 86h, 5, 47h
seg032:2579                 db 51h, 0B0h, 0FFh, 0EEh, 8Bh, 0C3h, 8Ah, 0Eh, 1Bh, 0C5h
seg032:2579                 db 0D3h, 0E8h, 74h, 1Eh, 91h, 8Ah, 0C4h, 80h, 3Eh, 5Dh
seg032:2579                 db 0CDh, 0, 74h, 12h, 50h, 0B4h, 0FFh, 0E8h, 2Dh, 0, 8Ah
seg032:2579                 db 0C4h, 0EEh, 58h, 26h, 8Ah, 25h, 0AAh, 0E2h, 0FAh, 0EBh
seg032:2579                 db 2, 0F3h, 0AAh, 59h, 23h, 1Eh, 1Ch, 0C5h, 75h, 0AFh
seg032:2579                 db 0EBh, 10h, 80h, 3Eh, 5Dh, 0CDh, 0, 74h, 3, 0E8h, 0Ch
seg032:2579                 db 0, 8Ah, 0C4h, 0EEh, 26h, 86h, 2Dh, 0E8h, 94h, 0DFh
seg032:2579                 db 7, 5Fh, 0C3h, 53h, 32h, 0FFh, 8Ah, 1Eh, 0CCh, 0CDh
seg032:2579                 db 22h, 0A7h, 0B5h, 0CCh, 5Bh, 0C3h, 0A1h, 58h, 0CDh, 0B9h
seg032:2579                 db 50h, 0, 33h, 0D2h, 0F7h, 0F1h, 0D1h, 0E0h, 0EBh, 64h
seg032:2579                 db 90h, 0A1h, 58h, 0CDh, 0B9h, 28h, 0, 33h, 0D2h, 0F7h
seg032:2579                 db 0F1h, 0E8h, 56h, 0, 0EBh, 10h, 90h, 0A1h, 58h, 0CDh
seg032:2579                 db 0B9h, 50h, 0, 33h, 0D2h, 0F7h, 0F1h, 0D1h, 0E0h, 0E8h
seg032:2579                 db 44h, 0, 57h, 56h, 53h, 0BEh, 7, 0, 0BFh, 3, 0, 32h
seg032:2579                 db 0FFh, 0D0h, 8Dh, 22h, 0CEh, 0D0h, 0D7h, 4Fh, 0F6h, 6
seg032:2579                 db 14h, 0C5h, 2, 74h, 9, 4Fh, 0D0h, 8Dh, 22h, 0CEh, 0D0h
seg032:2579                 db 0D7h, 0EBh, 14h, 0D0h, 8Dh, 22h, 0CEh, 0D0h, 0D7h, 4Fh
seg032:2579                 db 0D0h, 8Dh, 22h, 0CEh, 0D0h, 0D7h, 4Fh, 0D0h, 8Dh, 22h
seg032:2579                 db 0CEh, 0D0h, 0D7h, 88h, 0BCh, 26h, 0CEh, 0BFh, 3, 0
seg032:2579                 db 4Eh, 79h, 0C9h, 5Bh, 5Eh, 5Fh, 0C3h, 0D1h, 0E0h, 0D1h
seg032:2579                 db 0E0h, 0D1h, 0E0h, 8Bh, 0D0h, 0D1h, 0E0h, 0D1h, 0E0h
seg032:2579                 db 3, 0C2h, 8Bh, 0D0h, 3, 6, 6Ch, 0CDh, 0A3h, 72h, 0CDh
seg032:2579                 db 3, 16h, 6Eh, 0CDh, 89h, 16h, 74h, 0CDh, 0C3h, 50h, 57h
seg032:2579                 db 8Ah, 0C7h, 32h, 0E4h, 8Bh, 0F8h, 80h, 3Eh, 14h, 0C5h
seg032:2579                 db 2, 77h, 7, 0D1h, 0E7h, 4Fh, 88h
seg032:277A                 db 9Dh, 22h, 0CEh, 4Fh, 88h, 9Dh, 22h, 0CEh, 88h, 1Eh
seg032:277A                 db 57h, 0CDh, 5Fh, 58h, 0C3h, 52h, 0C4h, 36h, 58h, 0CDh
seg032:277A                 db 8Ah, 2Eh, 56h, 0CDh, 0BAh, 0CEh, 3, 0B0h, 5, 0EEh, 0B0h
seg032:277A                 db 8, 42h, 0EEh, 4Ah, 0B0h, 2, 0EEh, 0A0h, 5Ch, 0CDh, 42h
seg032:277A                 db 0EEh, 32h, 0C9h, 33h, 0DBh, 5Ah, 0C3h, 52h, 0BAh, 0CEh
seg032:277A                 db 3, 8Ah, 26h, 0FEh, 0C4h, 80h, 3Eh, 5Dh, 0CDh, 0, 74h
seg032:277A                 db 3, 80h, 0E4h, 10h, 0B0h, 5, 0EEh, 86h, 0C4h, 42h, 0EEh
seg032:277A                 db 4Ah, 0B0h, 8, 0EEh, 8Ah, 0C3h, 80h, 3Eh, 5Dh, 0CDh
seg032:277A                 db 0, 74h, 7, 8Ah, 0E0h, 0E8h, 0F2h, 0FEh, 8Ah, 0C4h, 42h
seg032:277A                 db 0EEh, 4Ah, 26h, 8Ah, 5, 80h, 3Eh, 5Dh, 0CDh, 0, 74h
seg032:277A                 db 5, 0E8h, 7Eh, 0, 0EBh, 7, 8Ah, 1Eh, 57h, 0CDh, 26h
seg032:277A                 db 88h, 1Dh, 0Ah, 0FFh, 75h, 5, 0E8h, 0D6h, 0, 0EBh, 2Fh
seg032:277A                 db 0B0h, 8, 0EEh, 8Ah, 0C7h, 80h, 3Eh, 5Dh, 0CDh, 0, 74h
seg032:277A                 db 7, 8Ah, 0E0h, 0E8h, 0BDh, 0FEh, 8Ah, 0C4h, 42h, 0EEh
seg032:277A                 db 4Ah, 26h, 8Ah, 4, 80h, 3Eh, 5Dh, 0CDh, 0, 74h, 9, 87h
seg032:277A                 db 0FEh, 0E8h, 47h, 0, 87h, 0FEh, 0EBh, 3, 26h, 88h, 1Ch
seg032:277A                 db 0E8h, 0A5h, 0, 0Bh, 0EDh, 74h, 35h, 47h, 0Ah, 0EDh
seg032:277A                 db 74h, 2, 2 dup(4Fh), 8Ah, 0FDh, 8Bh, 0CDh, 8Ah, 0C3h
seg032:277A                 db 80h, 3Eh, 5Dh, 0CDh, 0, 74h, 1Fh, 0B4h, 0FFh, 0E8h
seg032:277A                 db 82h, 0FEh, 0B0h, 8, 0E8h, 7, 0DEh, 0Ah, 0FFh, 0BBh
seg032:277A                 db 1, 0, 74h, 2, 0F7h, 0DBh, 26h, 8Ah, 5, 0E8h, 0Ch, 0
seg032:277A                 db 3, 0FBh, 0E2h, 0F6h, 0EBh, 2, 0F3h, 0AAh, 0B1h, 1, 5Ah
seg032:277A                 db 0C3h, 52h, 53h, 0BAh, 0C4h, 3, 0B0h, 2, 0EEh, 42h, 0B0h
seg032:277A                 db 8, 0BBh, 3, 0, 0EEh, 8Ah, 0A7h, 22h, 0CEh, 26h, 88h
seg032:277A                 db 25h, 26h, 8Ah, 25h, 4Bh, 0D0h, 0E8h, 73h, 0F0h, 4Ah
seg032:277A                 db 0B0h, 2, 0EEh, 86h, 0C4h, 0B0h, 0Fh, 42h, 0EEh, 5Bh
seg032:277A                 db 5Ah, 0C3h, 0F6h, 6, 14h, 0C5h, 4, 75h, 0Eh, 57h, 0BFh
seg032:277A                 db 60h, 6Dh, 0E8h, 0C7h, 0FFh, 47h, 0E8h, 0C3h, 0FFh, 5Fh
seg032:277A                 db 0EBh, 6, 0E8h, 0BDh, 0FFh, 26h, 8Ah, 5, 0B0h, 8, 0EEh
seg032:277A                 db 32h, 0C0h, 42h, 0EEh, 4Ah, 0C3h, 0D1h, 0E5h, 0D1h, 0E5h
seg032:277A                 db 0D1h, 0E5h, 3, 0D5h, 8Bh, 0DAh, 0C3h, 52h, 0BAh, 0CEh
seg032:277A                 db 3, 0B0h, 2, 0EEh, 0A0h, 57h, 0CDh, 42h, 0EEh, 5Ah, 0C3h
seg032:277A                 db 0B8h, 8, 0FFh, 0EEh, 86h, 0C4h, 42h, 0EEh, 4Ah, 0C3h
seg032:277A                 db 8Ah, 0FDh, 84h, 0E8h, 75h, 0Dh, 0Ah, 0FDh, 84h, 0FCh
seg032:277A                 db 75h, 0Ch, 42h, 0D0h, 0CDh, 73h, 0F1h, 0D0h, 0C5h, 0F6h
seg032:277A                 db 0D0h, 22h, 0F8h, 0C3h, 42h, 0C3h, 84h, 0C5h, 74h, 3
seg032:277A                 db 47h, 0EBh, 15h, 8Ah, 0FDh, 84h, 0FCh, 75h, 16h, 84h
seg032:277A                 db 0E8h, 75h, 0Bh, 0Ah, 0FDh, 84h, 0FCh, 75h, 0Ch, 42h
seg032:277A                 db 0D0h, 0C5h, 73h, 0F1h, 0D0h, 0CDh, 0F6h, 0D0h, 22h
seg032:277A                 db 0F8h, 0C3h, 42h, 0C3h, 32h, 0C9h, 26h, 8Ah, 4, 22h
seg032:277A                 db 0C3h, 32h, 0C3h, 75h, 1Bh, 0Bh, 0FFh, 74h, 0Dh, 46h
seg032:277A                 db 26h, 8Ah, 4, 0F6h, 0D0h, 0Ah, 0C0h, 75h, 0Dh, 4Fh, 75h
seg032:277A                 db 0F3h, 46h, 26h, 8Ah, 4, 22h, 0C7h, 32h, 0C7h, 74h, 2
seg032:277A                 db 8Ah, 0C8h, 0C3h, 52h, 55h, 0FFh, 36h, 58h, 0CDh, 0FFh
seg032:277A                 db 36h, 56h, 0CDh, 53h, 89h, 3Eh, 2Eh, 0CEh, 8Ah, 0C3h
seg032:277A                 db 0Ah, 0C0h, 74h, 5, 0E8h, 8, 1, 75h, 3Ah, 83h, 3Eh, 2Eh
seg032:277A                 db 0CEh, 0, 74h, 23h, 46h, 89h, 36h, 58h, 0CDh, 0C6h, 6
seg032:277A                 db 56h, 0CDh, 80h, 33h, 0EDh, 0FFh, 16h, 30h, 0C5h, 3Ah
seg032:277A                 db 86h, 26h, 0CEh, 75h, 1Dh, 45h, 0D0h, 2Eh, 56h
seg032:297B                 db 0CDh, 73h, 0EFh, 0FFh, 0Eh, 2Eh, 0CEh, 75h, 0DDh, 5Bh
seg032:297B                 db 0Ah, 0FFh, 53h, 74h, 8, 8Ah, 0C7h, 46h, 0E8h, 0A2h
seg032:297B                 db 0, 75h, 2, 0B1h, 0FFh, 0FEh, 0C1h, 5Bh, 8Fh, 6, 56h
seg032:297B                 db 0CDh, 8Fh, 6, 58h, 0CDh, 5Dh, 5Ah, 0C3h, 32h, 0C9h
seg032:297B                 db 26h, 8Ah, 4, 22h, 0C3h, 32h, 0C3h, 75h, 1Fh, 0Ah, 0FFh
seg032:297B                 db 74h, 1Dh, 0Bh, 0FFh, 74h, 0Dh, 4Eh, 26h, 8Ah, 4, 0F6h
seg032:297B                 db 0D0h, 0Ah, 0C0h, 75h, 0Dh, 4Fh, 75h, 0F3h, 4Eh, 26h
seg032:297B                 db 8Ah, 4, 22h, 0C7h, 32h, 0C7h, 74h, 2, 8Ah, 0C8h, 0C3h
seg032:297B                 db 52h, 55h, 0FFh, 36h, 58h, 0CDh, 0FFh, 36h, 56h, 0CDh
seg032:297B                 db 53h, 8Ah, 0C3h, 89h, 3Eh, 2Eh, 0CEh, 0Ah, 0C0h, 74h
seg032:297B                 db 5, 0E8h, 4Bh, 0, 75h, 3Bh, 83h, 3Eh, 2Eh, 0CEh, 0, 74h
seg032:297B                 db 24h, 4Eh, 89h, 36h, 58h, 0CDh, 0C6h, 6, 56h, 0CDh, 1
seg032:297B                 db 0BDh, 7, 0, 0FFh, 16h, 30h, 0C5h, 3Ah, 86h, 26h, 0CEh
seg032:297B                 db 75h, 1Dh, 4Dh, 0D0h, 26h, 56h, 0CDh, 73h, 0EFh, 0FFh
seg032:297B                 db 0Eh, 2Eh, 0CEh, 75h, 0DCh, 5Bh, 0Ah, 0FFh, 53h, 74h
seg032:297B                 db 8, 8Ah, 0C7h, 4Eh, 0E8h, 40h, 0, 75h, 2, 0B1h, 0FFh
seg032:297B                 db 0FEh, 0C1h, 5Bh, 8Fh, 6, 56h, 0CDh, 8Fh, 6, 58h, 0CDh
seg032:297B                 db 5Dh, 5Ah, 0C3h, 0B5h, 80h, 0BDh, 8, 0, 0D0h, 0C5h, 4Dh
seg032:297B                 db 0D0h, 0C8h, 73h, 0F9h, 88h, 2Eh, 56h, 0CDh, 50h, 89h
seg032:297B                 db 36h, 58h, 0CDh, 0FFh, 16h, 30h, 0C5h, 38h, 86h, 26h
seg032:297B                 db 0CEh, 58h, 75h, 0Dh, 4Dh, 0D0h, 0C8h, 73h, 6, 0D0h
seg032:297B                 db 26h, 56h, 0CDh, 73h, 0E5h, 33h, 0EDh, 0C3h, 0B5h, 1
seg032:297B                 db 33h, 0EDh, 0F7h, 0D5h, 0D0h, 0CDh, 45h, 0D0h, 0C0h
seg032:297B                 db 73h, 0F9h, 89h, 36h, 58h, 0CDh, 88h, 2Eh, 56h, 0CDh
seg032:297B                 db 50h, 0FFh, 16h, 30h, 0C5h, 38h, 86h, 26h, 0CEh, 58h
seg032:297B                 db 75h, 0Dh, 0D0h, 0C0h, 73h, 7, 45h, 0D0h, 2Eh, 56h, 0CDh
seg032:297B                 db 73h, 0E9h, 33h, 0EDh, 0C3h, 0BEh, 60h, 6Dh, 0F7h, 0C7h
seg032:297B                 db 1, 0, 75h, 0Ch, 46h, 4Eh, 26h, 8Ah, 4, 26h, 88h, 5
seg032:297B                 db 4Fh, 49h, 0E3h, 0Ah, 46h, 26h, 8Ah, 4, 26h, 88h, 5
seg032:297B                 db 4Fh, 0E2h, 0EBh, 0C3h, 0BEh, 60h, 6Dh, 0F7h, 0C7h, 1
seg032:297B                 db 0, 75h, 0Ch, 46h, 4Eh, 26h, 8Ah, 4, 26h, 88h, 5, 47h
seg032:297B                 db 49h, 0E3h, 0Ah, 46h, 26h, 8Ah, 4, 26h, 88h, 5, 47h
seg032:297B                 db 0E2h, 0EBh, 0C3h, 6, 0E8h, 0B6h, 0FCh, 0D0h, 0C5h, 73h
seg032:297B                 db 8, 83h, 0EEh, 1, 73h, 3, 0E9h, 0A2h, 0, 3Bh, 36h, 72h
seg032:297B                 db 0CDh, 73h, 3, 0E9h, 99h, 0, 75h, 9, 3Ah, 2Eh, 70h, 0CDh
seg032:297B                 db 76h, 3, 0E9h, 8Eh, 0, 8Bh, 0FEh, 8Ah, 0CDh, 0BDh, 2 dup(0FFh)
seg032:297B                 db 33h, 0D2h, 32h, 0E4h, 26h, 8Ah, 5, 84h, 0C5h, 74h, 5
seg032:297B                 db 32h, 0C9h, 0EBh, 78h, 90h, 3Bh, 3Eh, 72h, 0CDh, 75h
seg032:297B                 db 4, 8Ah, 26h, 70h, 0CDh, 84h, 0C5h, 75h, 0Fh, 84h, 0E5h
seg032:297B                 db 75h, 0Bh, 0D0h, 0C5h, 73h, 0F4h, 4Fh, 45h, 26h, 8Ah
seg032:297B                 db 5, 0EBh, 0E3h, 3Bh, 36h, 72h, 0CDh, 74h, 2, 32h, 0E4h
seg032:297B                 db 8Ah, 0E9h, 26h, 8Ah, 4, 0E8h, 0BBh, 0FDh, 8Ah, 0DFh
seg032:297B                 db 32h, 0FFh, 56h, 45h, 74h, 13h, 4Dh, 0B5h, 1, 26h, 8Ah
seg032:297B                 db 5, 3Bh, 3Eh, 72h, 0CDh, 75h, 4, 8Ah, 26h, 70h, 0CDh
seg032:297B                 db 0E8h, 0A0h, 0FDh, 89h, 3Eh, 58h, 0CDh, 88h, 2Eh, 56h
seg032:297B                 db 0CDh, 57h, 8Bh, 0FDh, 80h, 3Eh, 5Dh, 0CDh, 0, 74h, 5
seg032:297B                 db 0E8h, 68h, 0FEh, 0EBh, 6, 0E8h, 54h, 0FDh, 0E8h, 33h
seg032:297B                 db 0FEh, 5Eh, 5Fh, 0Ah, 0C9h, 74h, 9, 32h, 0EDh, 0F6h
seg032:297B                 db 0D5h, 0FDh, 0E8h, 2Eh
seg032:2B7C                 db 2 dup(0FCh), 0E8h, 34h, 0FDh, 0E8h, 0D5h, 0DAh, 7, 0C3h
seg032:2B7C                 db 6, 0E8h, 0FFh, 0FBh, 26h, 8Ah, 4, 32h, 0E4h, 3Bh, 36h
seg032:2B7C                 db 74h, 0CDh, 75h, 4, 8Ah, 26h, 71h, 0CDh, 84h, 0C5h, 74h
seg032:2B7C                 db 13h, 84h, 0E5h, 75h, 0Fh, 4Ah, 74h, 0Ch, 0D0h, 0CDh
seg032:2B7C                 db 73h, 0F1h, 46h, 26h, 8Ah, 4, 0B5h, 80h, 0EBh, 0DFh
seg032:2B7C                 db 84h, 0C5h, 74h, 5, 33h, 0D2h, 0EBh, 72h, 90h, 52h, 33h
seg032:2B7C                 db 0D2h, 89h, 36h, 5Eh, 0CDh, 56h, 88h, 2Eh, 60h, 0CDh
seg032:2B7C                 db 0E8h, 10h, 0FDh, 8Ah, 0DFh, 32h, 0FFh, 33h, 0EDh, 8Bh
seg032:2B7C                 db 3Eh, 74h, 0CDh, 2Bh, 0FEh, 0F6h, 0C3h, 1, 74h, 20h
seg032:2B7C                 db 0Bh, 0FFh, 74h, 1Ch, 4Dh, 0B5h, 80h, 45h, 46h, 26h
seg032:2B7C                 db 8Ah, 4, 0Ah, 0C0h, 75h, 3, 4Fh, 75h, 0F4h, 3Bh, 36h
seg032:2B7C                 db 74h, 0CDh, 75h, 4, 8Ah, 26h, 71h, 0CDh, 0E8h, 0DFh
seg032:2B7C                 db 0FCh, 89h, 36h, 58h, 0CDh, 88h, 2Eh, 56h, 0CDh, 5Fh
seg032:2B7C                 db 57h, 56h, 8Bh, 0F7h, 8Bh, 0FDh, 80h, 3Eh, 5Dh, 0CDh
seg032:2B7C                 db 0, 74h, 5, 0E8h, 2Eh, 0FDh, 0EBh, 6, 0E8h, 0A9h, 0FCh
seg032:2B7C                 db 0E8h, 0FDh, 0FCh, 5Eh, 5Fh, 0Ah, 0C9h, 74h, 6, 32h
seg032:2B7C                 db 0EDh, 0FCh, 0E8h, 85h, 0FBh, 0E8h, 8Ch, 0FCh, 5Ah, 0E8h
seg032:2B7C                 db 2Ch, 0DAh, 8Bh, 36h, 5Eh, 0CDh, 0A0h, 60h, 0CDh, 7
seg032:2B7C                 db 0C3h, 0, 1, 2, 3, 4, 5, 6, 7, 10h, 11h, 12h, 13h, 14h
seg032:2B7C                 db 15h, 16h, 17h, 0, 1, 2, 3, 4, 5, 14h, 7, 38h, 39h, 3Ah
seg032:2B7C                 db 3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 0E9h, 26h, 0EFh, 0E9h, 66h
seg032:2B7C                 db 0EFh, 0F6h, 6, 0Ch, 0CEh, 18h, 75h, 0F3h, 80h, 3Eh
seg032:2B7C                 db 9, 0CEh, 0, 74h, 28h, 0A0h, 76h, 0CDh, 56h, 57h, 6
seg032:2B7C                 db 2 dup(1Eh), 7, 0BFh, 42h, 0CEh, 57h, 0C5h, 36h, 0FFh
seg032:2B7C                 db 0C4h, 0B9h, 10h, 0, 0F3h, 0A4h, 0AAh, 5Ah, 1Fh, 0B0h
seg032:2B7C                 db 2, 55h, 56h, 57h, 0B4h, 10h, 0CDh, 10h, 5Fh, 5Eh, 5Dh
seg032:2B7C                 db 7, 5Fh, 5Eh, 0C3h, 0F6h, 6, 0Ch, 0CEh, 18h, 75h, 0BFh
seg032:2B7C                 db 80h, 3Eh, 9, 0CEh, 0, 74h, 25h, 3Dh, 2 dup(0FFh), 75h
seg032:2B7C                 db 4, 3Bh, 0D0h, 74h, 1Dh, 0FFh, 16h, 0Fh, 0C5h, 72h, 16h
seg032:2B7C                 db 32h, 0FFh, 88h, 87h, 42h, 0CEh, 86h, 0F8h, 0B0h, 0
seg032:2B7C                 db 55h, 56h, 57h, 0B4h, 10h, 0CDh, 10h, 5Fh, 5Eh, 5Dh
seg032:2B7C                 db 0F8h, 0C3h, 0F9h, 0C3h, 3Ah, 1Eh, 0F7h, 0C4h, 77h, 0F8h
seg032:2B7C                 db 0F7h, 0C2h, 0C0h, 0FFh, 75h, 0F2h, 0A9h, 2 dup(0C0h)
seg032:2B7C                 db 75h, 0EDh, 0F6h, 6, 0Ch, 0CEh, 18h, 75h, 3Bh, 0B9h
seg032:2B7C                 db 4, 0, 0D3h, 0E8h, 0D3h, 0EAh, 0D0h, 0E8h, 0D0h, 0D5h
seg032:2B7C                 db 0D0h, 0ECh, 0D0h, 0D5h, 0D0h, 0EAh, 0D0h, 0D5h, 0D0h
seg032:2B7C                 db 0E8h, 0D0h, 0D5h, 0D0h, 0ECh, 0D0h, 0D5h, 0D0h, 0EAh
seg032:2B7C                 db 0D0h, 0D5h, 8Ah, 0C5h, 80h, 3Eh, 0F8h, 0C4h, 0Fh, 75h
seg032:2B7C                 db 13h, 24h, 7, 80h, 0E5h, 38h, 0D0h, 0EDh, 0D0h, 0EDh
seg032:2B7C                 db 0D0h, 0EDh, 84h, 0C5h, 74h, 2, 0B5h, 10h, 0Ah, 0C5h
seg032:2B7C                 db 0F8h, 0C3h, 57h, 0FCh, 33h, 0C9h, 8Ah, 0Eh, 0F7h, 0C4h
seg032:2B7C                 db 41h, 26h, 0ADh, 92h, 26h, 0ADh, 92h, 83h, 0FAh, 0FFh
seg032:2B7C                 db 75h, 4, 3Bh, 0D0h, 74h, 0Ah, 33h, 0DBh, 51h, 0FFh, 16h
seg032:2B7C                 db 0Fh, 0C5h, 59h, 72h, 22h, 0E2h, 0E5h, 8Ah, 0Eh, 0F7h
seg032:2B7C                 db 0C4h, 41h, 8Bh, 0D9h, 2 dup(4Eh), 0FDh, 4Bh, 26h, 0ADh
seg032:2B7C                 db 99h, 92h, 26h, 0ADh, 53h, 51h, 0FFh, 16h, 0Dh, 0C5h
seg032:2B7C                 db 59h, 5Bh, 72h, 5, 0E2h, 0EDh, 0F8h, 0EBh, 1, 0F9h, 0FCh
seg032:2B7C                 db 5Fh, 0C3h, 0, 0D0h, 6, 56h, 0CDh, 0D0h, 6, 56h, 0CDh
seg032:2B7C                 db 72h, 1, 0C3h, 0FFh, 0Eh, 58h, 0CDh, 2 dup(0C3h), 0A1h
seg032:2B7C                 db 58h, 0CDh, 33h, 6, 68h, 0CDh, 80h, 0E4h, 60h, 75h
seg032:2D82                 db 0Bh, 0A1h, 58h, 0CDh, 3Bh, 6, 68h, 0CDh, 73h, 2, 0F9h
seg032:2D82                 db 0C3h, 0A1h, 58h, 0CDh, 2Bh, 6, 16h, 0CEh, 73h, 5, 3
seg032:2D82                 db 6, 1Ah, 0CEh, 0F8h, 0A3h, 58h, 0CDh, 0C3h, 0A1h, 58h
seg032:2D82                 db 0CDh, 33h, 6, 6Ah, 0CDh, 80h, 0E4h, 60h, 75h, 0Bh, 0A1h
seg032:2D82                 db 58h, 0CDh, 3Bh, 6, 6Ah, 0CDh, 72h, 2, 0F9h, 0C3h, 0A1h
seg032:2D82                 db 58h, 0CDh, 2Bh, 6, 18h, 0CEh, 73h, 5, 3, 6, 1Ah, 0CEh
seg032:2D82                 db 0F8h, 0A3h, 58h, 0CDh, 0C3h, 0A1h, 58h, 0CDh, 8Ah, 0ECh
seg032:2D82                 db 80h, 0E5h, 60h, 80h, 0E4h, 1Fh, 33h, 0D2h, 0F7h, 36h
seg032:2D82                 db 15h, 0C5h, 0F7h, 26h, 15h, 0C5h, 0Ah, 0E5h, 92h, 0A1h
seg032:2D82                 db 6Ch, 0CDh, 3, 0C2h, 0A3h, 72h, 0CDh, 0A1h, 6Eh, 0CDh
seg032:2D82                 db 3, 0C2h, 0A3h, 74h
seg032:2D82 seg032          ends
seg032:2D82
seg033:0000 ; ---------------------------------------------------------------------------
seg033:0000
seg033:0000 ; Segment type: Pure code
seg033:0000 seg033          segment byte public 'CODE' use16
seg033:0000                 assume cs:seg033
seg033:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg033:0000                 db 0CDh, 0C3h
seg033:0002
