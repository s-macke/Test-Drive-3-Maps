seg032:1250 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:1250
seg032:1250
seg032:1250 sub_1C3F0       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:1250                                         ; DATA XREF: dseg:C5BA␙o
seg032:1250                 test    byte ptr word_2BEEC+1, 9
seg032:1255                 jz      short loc_1C424
seg032:1257                 mov     bx, 105Eh
seg032:125A                 cmp     word_2BEEE, 40h ; '@'
seg032:125F                 ja      short loc_1C404
seg032:1261                 mov     bx, 10C2h
seg032:1264
seg032:1264 loc_1C404:                              ; CODE XREF: sub_1C3F0+F␘j
seg032:1264                 test    byte ptr word_2BEEC, 0Ch
seg032:1269                 jz      short loc_1C424
seg032:126B                 mov     cx, 64h ; 'd'
seg032:126E                 call    sub_1B68E
seg032:1271                 mov     ax, word_2BEEE
seg032:1274                 shr     ax, 1
seg032:1276                 div     byte_2B5D9
seg032:127A                 sub     al, 1
seg032:127C                 adc     al, 0
seg032:127E                 mov     byte_2B5DC, al
seg032:1281                 clc
seg032:1282                 jmp     short locret_1C425
seg032:1284 ; ---------------------------------------------------------------------------
seg032:1284
seg032:1284 loc_1C424:                              ; CODE XREF: sub_1C3B5+8␘j
seg032:1284                                         ; sub_1C3C1+5␘j ...
seg032:1284                 stc
seg032:1285
seg032:1285 locret_1C425:                           ; CODE XREF: sub_1C3F0+32␘j
seg032:1285                 retn
seg032:1285 sub_1C3F0       endp
seg032:1285
seg032:1285 ; ---------------------------------------------------------------------------
seg032:1286 aAaUvw          db 'áf-UVW¦',0
seg032:128E                 db 0CDh, 10h, 5Fh, 5Eh, 5Dh, 80h, 3Eh, 0F0h, 0C4h, 2Bh
seg032:128E                 db 75h, 0Fh, 0B2h, 2Bh, 0B8h, 23h, 11h, 32h, 0DBh, 55h
seg032:128E                 db 56h, 57h, 0CDh, 10h, 5Fh, 5Eh, 5Dh, 0E8h, 0ADh, 0F3h
seg032:128E                 db 0C3h, 0A3h, 53h, 0C5h, 50h, 8Ah, 0C4h, 55h, 56h, 57h
seg032:128E                 db 0B4h, 5, 0CDh, 10h, 5Fh, 5Eh, 5Dh, 58h, 98h, 0F7h, 26h
seg032:128E                 db 0FAh, 0C4h, 3, 6, 0F5h, 0C4h, 0A3h, 5Ah, 0CDh, 0C3h
seg032:128E                 db 3Dh, 2 dup(0FFh), 75h, 4, 3Bh, 0D0h, 74h, 31h, 0E8h
seg032:128E                 db 41h, 0, 72h, 2Ch, 32h, 0FFh, 88h, 87h, 42h, 0CEh, 88h
seg032:128E                 db 0A7h, 4Ah, 0CEh, 8Ah, 0F8h, 8Ah, 0C3h, 4, 8, 50h, 32h
seg032:128E                 db 0C0h, 55h, 56h, 57h, 0B4h, 10h, 0CDh, 10h, 5Fh, 5Eh
seg032:128E                 db 5Dh, 58h, 93h, 32h, 0C0h, 55h, 56h, 57h, 0B4h, 10h
seg032:128E                 db 0CDh, 10h, 5Fh, 5Eh, 5Dh, 0F8h, 0C3h, 3 dup(0), 8, 0
seg032:128E                 db 18h, 8, 0, 3 dup(8), 2 dup(18h), 0, 18h, 8, 2 dup(18h)
seg032:128E                 db 3Ah, 1Eh, 0F7h, 0C4h, 77h, 33h, 0Ah, 0F2h, 0Ah, 0F4h
seg032:128E                 db 75h, 2Dh, 3Ah, 6, 0F8h, 0C4h, 77h, 27h, 80h, 0FBh, 2
seg032:128E                 db 72h, 3, 80h, 0C3h, 2, 57h, 0BFh, 6, 13h, 32h, 0E4h
seg032:128E                 db 0D0h, 0E0h, 3, 0F8h, 2Eh, 8Bh, 5, 5Fh, 0F8h, 0C3h, 0E8h
seg032:128E                 db 83h, 19h, 72h, 0Ah, 80h, 0FBh, 2, 72h, 3, 80h, 0C3h
seg032:128E                 db 2, 0F8h, 0C3h, 0F9h, 0C3h, 0, 3, 0Ch, 0Fh, 50h, 53h
seg032:128E                 db 3Ah, 6, 0F7h, 0C4h, 76h, 3, 0A0h, 0F7h, 0C4h, 0BBh
seg032:128E                 db 53h, 13h, 2Eh, 0D7h, 0A2h, 57h, 0CDh, 0F8h, 5Bh, 58h
seg032:128E                 db 0C3h, 52h, 0BAh, 0CEh, 3, 0B0h, 7, 0EEh, 42h, 0B0h
seg032:128E                 db 0AAh, 0F7h, 0C6h, 1, 0, 75h, 2, 0D0h, 0C8h, 0EEh, 26h
seg032:128E                 db 8Ah, 0Ch, 22h, 0CBh, 32h, 0CBh, 75h, 27h, 0Ah, 0FFh
seg032:128E                 db 74h, 21h, 0Bh, 0FFh, 74h, 10h, 4Eh, 0D0h, 0C8h, 0EEh
seg032:128E                 db 26h, 8Ah, 0Ch, 0F6h, 0D1h, 0Ah, 0C9h, 75h, 12h, 4Fh
seg032:128E                 db 75h, 0F0h, 4Eh, 0D0h, 0C8h, 0EEh, 26h, 8Ah, 0Ch, 22h
seg032:128E                 db 0CFh, 32h, 0CFh, 75h, 2, 32h, 0C9h, 5Ah, 0C3h, 52h
seg032:128E                 db 0BAh, 0CEh, 3, 0B0h, 7, 0EEh, 42h, 0B0h, 0AAh, 0F7h
seg032:128E                 db 0C6h, 1, 0, 75h, 2, 0D0h, 0C8h, 0EEh, 26h, 8Ah, 0Ch
seg032:128E                 db 22h, 0CBh, 32h, 0CBh, 75h, 23h, 0Bh, 0FFh, 74h, 10h
seg032:128E                 db 46h, 0D0h, 0C8h, 0EEh, 26h, 8Ah, 0Ch, 0F6h, 0D1h, 0Ah
seg032:128E                 db 0C9h, 75h, 12h, 4Fh, 75h, 0F0h, 46h, 0D0h, 0C8h, 0EEh
seg032:128E                 db 26h, 8Ah, 0Ch, 22h, 0CFh, 32h, 0CFh, 75h, 2, 32h, 0C9h
seg032:128E                 db 5Ah, 0C3h, 6, 0E8h, 91h, 13h, 0D0h, 0C5h, 73h, 3, 4Eh
seg032:128E                 db 78h, 6, 3Bh, 36h, 72h, 0CDh, 73h, 3, 0E9h, 0D3h, 0
seg032:128E                 db 75h, 9, 3Ah, 2Eh, 70h, 0CDh, 76h, 3, 0E9h, 0C8h, 0
seg032:128E                 db 8Bh, 0FEh, 8Ah, 0DDh, 0BDh, 2 dup(0FFh), 32h, 0E4h
seg032:128E                 db 0B1h, 0AAh, 0F7h, 0C6h, 1, 0, 75h, 2, 0D0h, 0C9h, 0BAh
seg032:128E                 db 0CEh, 3, 0B0h, 7, 0EEh, 42h, 8Ah, 0C1h, 0EEh, 26h, 8Ah
seg032:128E                 db 5, 84h, 0C5h, 74h, 7, 32h, 0C9h, 8Ah, 0D9h, 0E9h, 9Dh
seg032:128E                 db 0, 3Bh, 3Eh, 72h, 0CDh, 75h, 4, 8Ah, 26h, 70h, 0CDh
seg032:128E                 db 84h, 0C5h, 75h, 14h, 84h, 0E5h, 75h, 10h, 0D0h, 0C5h
seg032:128E                 db 73h, 0F4h, 4Fh, 45h, 0D0h, 0C9h, 8Ah, 0C1h, 0EEh, 26h
seg032:128E                 db 8Ah, 5, 0EBh, 0DEh, 3Bh, 36h, 72h, 0CDh, 74h, 2, 32h
seg032:128E                 db 0E4h, 8Ah, 0EBh, 0B1h, 0AAh, 0F7h, 0C6h, 1, 0, 75h
seg032:128E                 db 2, 0D0h, 0C9h, 8Ah, 0C1h, 0EEh, 26h, 8Ah, 4, 33h, 0D2h
seg032:128E                 db 0E8h, 73h, 14h, 8Ah, 0DFh, 32h, 0FFh, 56h, 45h, 74h
seg032:128E                 db 25h, 4Dh, 52h, 0BAh, 0CFh, 3, 0B1h, 0AAh, 0F7h, 0C7h
seg032:128E                 db 1, 0, 75h, 2, 0D0h, 0C9h
seg032:1496                 db 8Ah, 0C1h, 0EEh, 5Ah, 26h, 8Ah, 5, 0B5h, 1, 3Bh, 3Eh
seg032:1496                 db 72h, 0CDh, 75h, 4, 8Ah, 26h, 70h, 0CDh, 0E8h, 46h, 14h
seg032:1496                 db 89h, 3Eh, 58h, 0CDh, 88h, 2Eh, 56h, 0CDh, 57h, 8Bh
seg032:1496                 db 0FDh, 80h, 3Eh, 5Dh, 0CDh, 0, 74h, 5, 0E8h, 0Eh, 15h
seg032:1496                 db 0EBh, 6, 0E8h, 0FAh, 13h, 0E8h, 0A5h, 0FEh, 5Eh, 5Fh
seg032:1496                 db 0Ah, 0C9h, 74h, 9, 32h, 0EDh, 0F6h, 0D5h, 0FDh, 0E8h
seg032:1496                 db 0D4h, 12h, 0FCh, 0E8h, 0DAh, 13h, 0E8h, 7Bh, 0F1h, 7
seg032:1496                 db 0C3h, 6, 0E8h, 0A5h, 12h, 8Bh, 0DAh, 0B1h, 0AAh, 0F7h
seg032:1496                 db 0C6h, 1, 0, 75h, 2, 0D0h, 0C9h, 0BAh, 0CEh, 3, 0B0h
seg032:1496                 db 7, 0EEh, 42h, 8Ah, 0C1h, 0EEh, 26h, 8Ah, 4, 32h, 0E4h
seg032:1496                 db 3Bh, 36h, 74h, 0CDh, 75h, 4, 8Ah, 26h, 71h, 0CDh, 84h
seg032:1496                 db 0C5h, 74h, 18h, 84h, 0E5h, 75h, 14h, 4Bh, 74h, 11h
seg032:1496                 db 0D0h, 0CDh, 73h, 0F1h, 46h, 0D0h, 0C9h, 8Ah, 0C1h, 0EEh
seg032:1496                 db 26h, 8Ah, 4, 0B5h, 80h, 0EBh, 0DAh, 8Bh, 0D3h, 84h
seg032:1496                 db 0C5h, 74h, 9, 33h, 0D2h, 8Bh, 0DAh, 32h, 0C9h, 0EBh
seg032:1496                 db 7Ch, 90h, 52h, 33h, 0D2h, 89h, 36h, 5Eh, 0CDh, 56h
seg032:1496                 db 88h, 2Eh, 60h, 0CDh, 0E8h, 95h, 13h, 8Ah, 0DFh, 32h
seg032:1496                 db 0FFh, 33h, 0EDh, 8Bh, 3Eh, 74h, 0CDh, 2Bh, 0FEh, 0F6h
seg032:1496                 db 0C3h, 1, 74h, 2Ah, 0Bh, 0FFh, 74h, 26h, 4Dh, 0B5h, 80h
seg032:1496                 db 52h, 0BAh, 0CFh, 3, 45h, 46h, 0D0h, 0C9h, 8Ah, 0C1h
seg032:1496                 db 0EEh, 26h, 8Ah, 4, 0Ah, 0C0h, 75h, 3, 4Fh, 75h, 0EFh
seg032:1496                 db 3Bh, 36h, 74h, 0CDh, 75h, 4, 8Ah, 26h, 71h, 0CDh, 5Ah
seg032:1496                 db 0E8h, 5Ah, 13h, 89h, 36h, 58h, 0CDh, 88h, 2Eh, 56h
seg032:1496                 db 0CDh, 5Fh, 57h, 56h, 8Bh, 0F7h, 8Bh, 0FDh, 80h, 3Eh
seg032:1496                 db 5Dh, 0CDh, 0, 74h, 5, 0E8h, 0A9h, 13h, 0EBh, 6, 0E8h
seg032:1496                 db 24h, 13h, 0E8h, 14h, 0FEh, 5Eh, 5Fh, 0Ah, 0C9h, 74h
seg032:1496                 db 6, 32h, 0EDh, 0FCh, 0E8h, 0, 12h, 0E8h, 7, 13h, 5Ah
seg032:1496                 db 0E8h, 0A7h, 0F0h, 8Bh, 36h, 5Eh, 0CDh, 0A0h, 60h, 0CDh
seg032:1496                 db 7, 0C3h, 0B0h, 4, 0EEh, 42h, 32h, 0C0h, 0D1h, 0CFh
seg032:1496                 db 36h, 12h, 6, 15h, 0CEh, 0D1h, 0C7h, 0EEh, 4Ah, 0ACh
seg032:1496                 db 0C3h, 0BAh, 0CEh, 3, 0D0h, 0E7h, 36h, 88h, 3Eh, 15h
seg032:1496                 db 0CEh, 0E8h, 0E0h, 0FFh, 8Ah, 0E0h, 0E8h, 0DBh, 0FFh
seg032:1496                 db 8Ah, 0F8h, 0D3h, 0C0h, 83h, 0EDh, 8, 76h, 0Dh, 26h
seg032:1496                 db 88h, 25h, 47h, 8Ah, 0E7h, 75h, 0ECh, 0E8h, 4Ah, 0F0h
seg032:1496                 db 0EBh, 0E7h, 22h, 0E5h, 26h, 88h, 25h, 47h, 75h, 3, 0E8h
seg032:1496                 db 3Dh, 0F0h, 0C3h, 50h, 52h, 50h, 0BAh, 0CEh, 3, 0B0h
seg032:1496                 db 4, 0EEh, 42h, 32h, 0C0h, 0D1h, 0CFh, 36h, 12h, 6, 15h
seg032:1496                 db 0CEh, 0D1h, 0C7h, 0EEh, 0BAh, 0C4h, 3, 0B0h, 2, 0EEh
seg032:1496                 db 42h, 36h, 0A0h, 61h, 0CDh, 36h, 22h, 6, 14h, 0CEh, 24h
seg032:1496                 db 0Fh, 0EEh, 36h, 0D0h, 6, 14h, 0CEh, 58h, 36h, 0FFh
seg032:1496                 db 16h, 50h, 0C5h, 5Ah, 58h, 0C3h, 36h, 0D0h, 6, 61h, 0CDh
seg032:1496                 db 36h, 0D0h, 6, 61h, 0CDh, 36h, 0C6h, 6, 14h, 0CEh, 55h
seg032:1496                 db 0F7h, 0C7h, 1, 0, 74h, 5, 36h, 0D0h, 6, 14h, 0CEh, 0D0h
seg032:1496                 db 0E7h, 36h, 88h, 3Eh, 15h, 0CEh, 52h, 8Ah, 0E6h, 0BAh
seg032:1496                 db 0CEh, 3, 0B0h, 8, 0E8h, 0ECh, 0EFh, 5Ah, 8Ah, 24h, 46h
seg032:1496                 db 75h, 3, 0E8h, 0C5h, 0EFh, 0D3h, 0C8h, 3, 0E9h, 83h
seg032:1496                 db 0EDh, 8, 76h, 2Fh, 0E8h, 87h, 0FFh, 0B6h, 0FFh, 50h
seg032:1496                 db 52h, 8Ah, 0E6h, 0BAh, 0CEh, 3, 0B0h, 8, 0E8h, 0C9h
seg032:1496                 db 0EFh, 5Ah, 58h, 0EBh, 3, 0E8h, 72h, 0FFh, 0D3h, 0C0h
seg032:1496                 db 86h, 0E0h, 3Bh, 0CDh
seg032:1696                 db 73h, 8, 8Ah, 24h, 46h, 75h, 3, 0E8h, 94h, 0EFh, 0D3h
seg032:1696                 db 0C8h, 83h, 0EDh, 8, 77h, 0E6h, 50h, 22h, 0F2h, 8Ah
seg032:1696                 db 0E6h, 0BAh, 0CEh, 3, 0B0h, 8, 0E8h, 9Eh, 0EFh, 58h
seg032:1696                 db 0E8h, 4Ah, 0FFh, 0C3h, 0, 0Bh, 11h, 0, 50h, 1Eh, 80h
seg032:1696                 db 2, 0E0h, 1, 0, 0A0h, 1, 0FFh, 40h, 3 dup(0), 1, 0, 0F7h
seg032:1696                 db 17h
seg032:16CF                 dw seg seg032
seg032:16D1                 dd byte_1C997
seg032:16D5 ; ---------------------------------------------------------------------------
seg032:16D5                 dec     cx
seg032:16D6                 sbb     bp, [di+1Bh]
seg032:16D9                 jg      short loc_1C896
seg032:16DB                 retn    0E71Bh
seg032:16DB ; ---------------------------------------------------------------------------
seg032:16DE                 db 1Bh, 7, 1Ch, 2 dup(1), 50h, 0, 80h, 1, 8, 0, 3, 7, 2 dup(0)
seg032:16DE                 db 1, 0, 1, 0A4h, 23h, 0CEh, 23h, 0DAh, 23h
seg032:16F6 ; ---------------------------------------------------------------------------
seg032:16F6
seg032:16F6 loc_1C896:                              ; CODE XREF: seg032:16D9␘j
seg032:16F6                 in      ax, 23h
seg032:16F8                 out     dx, al
seg032:16F9                 and     di, cx
seg032:16FB                 and     sp, [bp+si]
seg032:16FD                 pop     ds
seg032:16FE                 sub     ax, 481Fh
seg032:1701                 pop     ds
seg032:1702                 pop     cx
seg032:1703                 pop     ds
seg032:1704                 outsw
seg032:1705                 pop     ds
seg032:1706                 jnb     short loc_1C8C7
seg032:1708                 iret
seg032:1708 ; ---------------------------------------------------------------------------
seg032:1709                 db 22h, 38h, 23h, 7Ah, 23h, 88h, 1Fh, 0BDh, 1Fh, 0E3h
seg032:1709                 db 1Fh, 45h, 20h, 0D5h, 26h, 11h, 21h, 42h, 21h, 0D2h
seg032:1709                 db 21h, 0Ch, 12h, 0, 50h, 1Eh, 80h, 2, 0E0h, 1
seg032:1727 ; ---------------------------------------------------------------------------
seg032:1727
seg032:1727 loc_1C8C7:                              ; CODE XREF: seg032:1706␘j
seg032:1727                 add     [bx+si-0F1h], ah
seg032:172B                 inc     word ptr [bx+si]
seg032:172B ; ---------------------------------------------------------------------------
seg032:172D                 db 2 dup(0), 0Fh, 2, 0F7h, 17h
seg032:1733                 dw seg seg032
seg032:1735                 dd byte_1C997
seg032:1739 ; ---------------------------------------------------------------------------
seg032:1739                 dec     cx
seg032:173A                 sbb     bp, [di+1Bh]
seg032:173D                 jg      short loc_1C8FA
seg032:173F                 retn    0F31Bh
seg032:173F ; ---------------------------------------------------------------------------
seg032:1742                 db 1Bh, 7, 1Ch, 1, 4, 50h, 0, 80h, 1, 8, 0, 3, 7, 2 dup(0)
seg032:1742                 db 1, 0, 1, 0A4h, 23h, 0CEh, 23h, 0DAh, 23h
seg032:175A ; ---------------------------------------------------------------------------
seg032:175A
seg032:175A loc_1C8FA:                              ; CODE XREF: seg032:173D␘j
seg032:175A                 in      ax, 23h
seg032:175C                 out     dx, al
seg032:175D                 and     di, cx
seg032:175F                 and     ax, [bp+si]
seg032:1761                 and     al, 12h
seg032:1763                 and     al, 62h
seg032:1765                 and     al, 8Eh
seg032:1767                 and     al, 0A2h
seg032:1769                 and     al, 59h
seg032:176B                 push    es
seg032:176C                 mov     dh, 24h ; '$'
seg032:176E                 clc
seg032:176F                 and     al, 22h
seg032:1771                 and     ax, 254Bh
seg032:1774                 jno     short near ptr off_1C939+2
seg032:1776                 cmpsb
seg032:1777                 and     ax, 263Ch
seg032:177A                 hlt
seg032:177B                 db      26h, 67h
seg032:177B                 daa
seg032:177E                 iret
seg032:177E ; ---------------------------------------------------------------------------
seg032:177F                 db 2Ah, 86h, 2Bh, 0Dh, 13h, 0, 28h, 19h, 40h, 1, 0C8h
seg032:177F                 db 2 dup(0), 0A0h, 2 dup(0FFh), 40h, 3 dup(0), 0Fh, 2
seg032:177F                 db 0F7h, 17h
seg032:1797                 dw seg seg032
seg032:1799 off_1C939       dd byte_1C997           ; CODE XREF: seg032:1774␘j
seg032:179D ; ---------------------------------------------------------------------------
seg032:179D                 dec     cx
seg032:179E                 sbb     bp, [di+1Bh]
seg032:17A1                 ja      short loc_1C95E
seg032:17A3                 retn    0F81Bh
seg032:17A3 ; ---------------------------------------------------------------------------
seg032:17A6                 db 1Bh, 7, 1Ch, 8, 1, 40h, 1, 2 dup(0FFh), 1, 4 dup(0)
seg032:17A6                 db 0D6h, 0, 34h, 1, 0Ah, 1Ch, 0D5h, 23h, 0DAh, 23h
seg032:17BE ; ---------------------------------------------------------------------------
seg032:17BE
seg032:17BE loc_1C95E:                              ; CODE XREF: seg032:17A1␘j
seg032:17BE                 in      ax, 23h
seg032:17C0                 out     dx, al
seg032:17C1                 and     di, cx
seg032:17C3                 and     sp, [bp+di]
seg032:17C5                 sbb     al, 28h ; '('
seg032:17C7                 sbb     al, 31h ; '1'
seg032:17C9                 sbb     al, 3Dh ; '='
seg032:17CB                 sbb     al, 6Fh ; 'o'
seg032:17CD                 pop     ds
seg032:17CE                 jnb     short near ptr loc_1C98E+1
seg032:17D0                 dec     bp
seg032:17D1                 sbb     al, 6Dh ; 'm'
seg032:17D3                 sbb     al, 8Eh ; 'Ä'
seg032:17D5                 sbb     al, 0A9h ; '¬'
seg032:17D7                 sbb     al, 0B8h ; '+'
seg032:17D9                 sbb     al, 0DAh ; '+'
seg032:17DB                 sbb     al, 11h
seg032:17DD                 sbb     ax, 1D50h
seg032:17E0                 adc     [bx+di], sp
seg032:17E2                 jns     short loc_1C9A1
seg032:17E4                 mov     ch, 1Dh
seg032:17E6                 add     [bx+di], al
seg032:17E8                 add     al, [bp+di]
seg032:17EA                 add     al, 5
seg032:17EC                 push    es
seg032:17ED                 pop     es
seg032:17EE
seg032:17EE loc_1C98E:                              ; CODE XREF: seg032:17CE␘j
seg032:17EE                 or      [bx+di], cl
seg032:17F0                 or      cl, [bp+di]
seg032:17F2                 or      al, 0Dh
seg032:17F4                 push    cs
seg032:17F4 ; ---------------------------------------------------------------------------
seg032:17F5                 db 0Fh, 10h
seg032:17F7 byte_1C997      db 5 dup(0), 2Ah, 0, 2Ah, 2 dup(0) ; DATA XREF: seg032:0BC1␘o
seg032:17F7                                         ; seg032:0BE8␘o ...
seg032:1801 ; ---------------------------------------------------------------------------
seg032:1801
seg032:1801 loc_1C9A1:                              ; CODE XREF: seg032:17E2␘j
seg032:1801                 sub     ch, [bp+si]
seg032:1803                 sub     al, [bx+si]
seg032:1805                 add     [bp+si], ch
seg032:1807                 add     [bp+si], ch
seg032:1809                 sub     dl, [di]
seg032:180B                 add     [bp+si], ch
seg032:180D                 sub     ch, [bp+si]
seg032:180F                 adc     ax, 1515h
seg032:1812                 adc     ax, 3F15h
seg032:1815                 adc     ax, 153Fh
seg032:1818                 adc     ax, 3F3Fh
seg032:181B                 aas
seg032:181C                 adc     ax, 3F15h
seg032:181F                 adc     ax, 3F3Fh
seg032:1822                 aas
seg032:1823                 adc     ax, 3F3Fh
seg032:1826                 aas
seg032:1826 ; ---------------------------------------------------------------------------
seg032:1827                 db 3 dup(0), 3 dup(5), 3 dup(8), 3 dup(0Bh), 3 dup(0Eh)
seg032:1827                 db 3 dup(11h), 3 dup(14h), 3 dup(18h), 3 dup(1Ch)
seg032:1842 a222888???      db '   $$$(((---222888???',0
seg032:1858                 db 0, 3Fh, 10h, 0, 3Fh, 1Fh, 0, 3Fh, 2Fh, 0, 2 dup(3Fh)
seg032:1858                 db 0, 2 dup(3Fh), 0, 2Fh, 3Fh, 0, 1Fh, 3Fh, 0, 10h, 3Fh
seg032:1858                 db 2 dup(0), 3Fh, 10h, 0, 3Fh, 1Fh, 0, 3Fh, 2Fh, 0, 2 dup(3Fh)
seg032:1858                 db 0, 2Fh, 3Fh, 0, 1Fh, 3Fh, 0, 10h, 3Fh, 2 dup(0), 3Fh
seg032:1858                 db 2 dup(0), 3Fh, 10h, 0, 3Fh, 1Fh, 0, 3Fh, 2Fh, 0, 2 dup(3Fh)
seg032:1858                 db 0, 2Fh, 3Fh, 0, 1Fh, 3Fh, 0, 10h, 3Fh, 2 dup(1Fh), 3Fh
seg032:1858                 db 27h, 1Fh, 3Fh, 2Fh, 1Fh, 3Fh, 37h, 1Fh, 2 dup(3Fh)
seg032:1858                 db 1Fh, 2 dup(3Fh), 1Fh, 37h, 3Fh, 1Fh, 2Fh, 3Fh, 1Fh
seg032:1858                 db 27h, 3Fh, 2 dup(1Fh), 3Fh, 27h, 1Fh, 3Fh, 2Fh, 1Fh
seg032:1858                 db 3Fh, 37h, 1Fh, 2 dup(3Fh), 1Fh, 37h, 3Fh, 1Fh, 2Fh
seg032:1858                 db 3Fh, 1Fh, 27h, 3Fh, 2 dup(1Fh), 3Fh, 2 dup(1Fh), 3Fh
seg032:1858                 db 27h, 1Fh, 3Fh, 2Fh, 1Fh, 3Fh, 37h, 1Fh, 2 dup(3Fh)
seg032:1858                 db 1Fh, 37h, 3Fh, 1Fh, 2Fh, 3Fh, 1Fh
seg032:18E5 a??1?6??????6?1 db 27h,'?--?1-?6-?:-??-??-:?-6?-1?--?1-?6-?:-??-:?-6?-1?--?--?1-?6-?:-??'
seg032:18E5                 db '-:?-6?-1?',0
seg032:1930                 db 0, 1Ch, 7, 0, 1Ch, 0Eh, 0, 1Ch, 15h, 0, 2 dup(1Ch)
seg032:1930                 db 0, 2 dup(1Ch), 0, 15h, 1Ch, 0, 0Eh, 1Ch, 0, 7, 1Ch
seg032:1930                 db 2 dup(0), 1Ch, 7, 0, 1Ch, 0Eh, 0, 1Ch, 15h, 0, 2 dup(1Ch)
seg032:1930                 db 0, 15h, 1Ch, 0, 0Eh, 1Ch, 0, 7, 1Ch, 2 dup(0), 1Ch
seg032:1930                 db 2 dup(0), 1Ch, 7, 0, 1Ch, 0Eh, 0, 1Ch, 15h, 0, 2 dup(1Ch)
seg032:1930                 db 0, 15h, 1Ch, 0, 0Eh, 1Ch, 0, 7, 1Ch, 2 dup(0Eh), 1Ch
seg032:1930                 db 11h, 0Eh, 1Ch, 15h, 0Eh, 1Ch, 18h, 0Eh, 2 dup(1Ch)
seg032:1930                 db 0Eh, 2 dup(1Ch), 0Eh, 18h, 1Ch, 0Eh, 15h, 1Ch, 0Eh
seg032:1930                 db 11h, 1Ch, 2 dup(0Eh), 1Ch, 11h, 0Eh, 1Ch, 15h, 0Eh
seg032:1930                 db 1Ch, 18h, 0Eh, 2 dup(1Ch), 0Eh, 18h, 1Ch, 0Eh, 15h
seg032:1930                 db 1Ch, 0Eh, 11h, 1Ch, 2 dup(0Eh), 1Ch, 2 dup(0Eh), 1Ch
seg032:1930                 db 11h, 0Eh, 1Ch, 15h, 0Eh, 1Ch, 18h, 0Eh, 2 dup(1Ch)
seg032:1930                 db 0Eh, 18h, 1Ch, 0Eh, 15h, 1Ch, 0Eh, 11h, 1Ch, 2 dup(14h)
seg032:1930                 db 1Ch, 16h, 14h, 1Ch, 18h, 14h, 1Ch, 1Ah, 14h, 2 dup(1Ch)
seg032:1930                 db 14h, 2 dup(1Ch), 14h, 1Ah, 1Ch, 14h, 18h, 1Ch, 14h
seg032:1930                 db 16h, 1Ch, 2 dup(14h), 1Ch, 16h, 14h, 1Ch, 18h, 14h
seg032:1930                 db 1Ch, 1Ah, 14h, 2 dup(1Ch), 14h, 1Ah, 1Ch, 14h, 18h
seg032:1930                 db 1Ch, 14h, 16h, 1Ch, 2 dup(14h), 1Ch, 2 dup(14h), 1Ch
seg032:1930                 db 16h, 14h, 1Ch, 18h, 14h, 1Ch, 1Ah, 14h, 2 dup(1Ch)
seg032:1930                 db 14h, 1Ah, 1Ch, 14h, 18h, 1Ch, 14h, 16h, 1Ch, 2 dup(0)
seg032:1930                 db 10h, 4, 0, 10h, 8, 0, 10h, 0Ch, 0, 2 dup(10h), 0, 2 dup(10h)
seg032:1930                 db 0, 0Ch, 10h, 0, 8, 10h, 0, 4, 10h, 2 dup(0), 10h, 4
seg032:1930                 db 0, 10h, 8, 0, 10h, 0Ch, 0, 2 dup(10h), 0, 0Ch, 10h
seg032:1930                 db 0, 8, 10h, 0, 4, 10h, 2 dup(0), 10h, 2 dup(0), 10h
seg032:1930                 db 4, 0, 10h, 8, 0, 10h, 0Ch, 0, 2 dup(10h), 0, 0Ch, 10h
seg032:1930                 db 0, 8, 10h, 0, 4, 10h, 2 dup(8), 10h, 0Ah, 8, 10h, 0Ch
seg032:1930                 db 8, 10h, 0Eh, 8, 2 dup(10h), 8, 2 dup(10h), 8, 0Eh, 10h
seg032:1930                 db 8, 0Ch, 10h, 8, 0Ah, 10h, 2 dup(8), 10h, 0Ah, 8, 10h
seg032:1930                 db 0Ch, 8, 10h, 0Eh, 8, 2 dup(10h), 8, 0Eh, 10h, 8, 0Ch
seg032:1930                 db 10h, 8, 0Ah, 10h, 2 dup(8), 10h, 2 dup(8), 10h, 0Ah
seg032:1930                 db 8, 10h, 0Ch, 8, 10h, 0Eh, 8, 2 dup(10h), 8, 0Eh, 10h
seg032:1930                 db 8, 0Ch, 10h, 8, 0Ah, 10h, 2 dup(0Bh), 10h, 0Ch, 0Bh
seg032:1930                 db 10h, 0Dh, 0Bh, 10h, 0Fh, 0Bh, 2 dup(10h), 0Bh, 2 dup(10h)
seg032:1930                 db 0Bh, 0Fh, 10h, 0Bh, 0Dh, 10h, 0Bh, 0Ch, 10h, 2 dup(0Bh)
seg032:1930                 db 10h, 0Ch, 0Bh, 10h, 0Dh, 0Bh, 10h, 0Fh, 0Bh, 2 dup(10h)
seg032:1930                 db 0Bh, 0Fh, 10h, 0Bh, 0Dh, 10h, 0Bh, 0Ch, 10h, 2 dup(0Bh)
seg032:1930                 db 10h, 2 dup(0Bh), 10h, 0Ch, 0Bh, 10h, 0Dh, 0Bh, 10h
seg032:1930                 db 0Fh, 0Bh, 2 dup(10h), 0Bh, 0Fh, 10h, 0Bh, 0Dh, 10h
seg032:1930                 db 0Bh, 0Ch, 10h, 18h dup(0)
seg032:1AF7
