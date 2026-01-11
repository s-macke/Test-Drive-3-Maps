seg006:2498 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2498
seg006:2498
seg006:2498 sub_102E8       proc far                ; CODE XREF: sub_76D6:loc_7A38␘P
seg006:2498                                         ; seg006:05A1␘P ...
seg006:2498                 push    es
seg006:2499                 mov     es, word_2D8A2
seg006:249D                 mov     bx, word_2D8A0
seg006:24A1                 sub     cx, cx
seg006:24A3
seg006:24A3 loc_102F3:                              ; CODE XREF: sub_102E8+5E␙j
seg006:24A3                 mov     al, cl
seg006:24A5                 cmp     byte_285B3, 0
seg006:24AA                 jz      short loc_1030A
seg006:24AC                 cmp     byte ptr word_2AC5F, 0
seg006:24B1                 jz      short loc_1030A
seg006:24B3                 sub     dl, dl
seg006:24B5                 cmp     cl, 8
seg006:24B8                 jz      short loc_1033B
seg006:24BA
seg006:24BA loc_1030A:                              ; CODE XREF: sub_102E8+12␘j
seg006:24BA                                         ; sub_102E8+19␘j
seg006:24BA                 mov     dl, 0Fh
seg006:24BC                 cmp     byte_285B3, 0
seg006:24C1                 jnz     short loc_10325
seg006:24C3                 mov     dl, 7
seg006:24C5                 sub     ch, ch
seg006:24C7                 cmp     cl, 8
seg006:24CA                 jz      short loc_10323
seg006:24CC                 cmp     cl, 7
seg006:24CF                 jnz     short loc_10325
seg006:24D1                 mov     ch, 8
seg006:24D3
seg006:24D3 loc_10323:                              ; CODE XREF: sub_102E8+32␘j
seg006:24D3                 mov     al, ch
seg006:24D5
seg006:24D5 loc_10325:                              ; CODE XREF: sub_102E8+29␘j
seg006:24D5                                         ; sub_102E8+37␘j
seg006:24D5                 cmp     byte ptr word_2AC61, 0
seg006:24DA                 jz      short loc_1033D
seg006:24DC                 cmp     cl, 3
seg006:24DF                 jz      short loc_1033B
seg006:24E1                 cmp     cl, 0Ah
seg006:24E4                 jz      short loc_1033B
seg006:24E6                 cmp     cl, 2
seg006:24E9                 jnz     short loc_1033D
seg006:24EB
seg006:24EB loc_1033B:                              ; CODE XREF: sub_102E8+20␘j
seg006:24EB                                         ; sub_102E8+47␘j ...
seg006:24EB                 mov     al, dl
seg006:24ED
seg006:24ED loc_1033D:                              ; CODE XREF: sub_102E8+42␘j
seg006:24ED                                         ; sub_102E8+51␘j
seg006:24ED                 mov     es:[bx], al
seg006:24F0                 inc     bx
seg006:24F1                 inc     cl
seg006:24F3                 and     cl, 1Fh
seg006:24F6                 jnz     short loc_102F3
seg006:24F8                 pop     es
seg006:24F9                 retf
seg006:24F9 sub_102E8       endp
seg006:24F9
seg006:24F9 ; ---------------------------------------------------------------------------
seg006:24FA                 db 0Ch dup(0FFh), 7Fh, 0FFh, 0FEh, 2 dup(0FFh), 0F7h, 2 dup(0FFh)
seg006:24FA                 db 0BFh, 0EFh, 7Fh, 0FFh, 0FEh, 2 dup(0FDh), 0F7h, 0FFh
seg006:24FA                 db 0DFh, 0BDh, 0EFh, 7Fh, 0F7h, 0FEh, 0FDh, 0BDh, 77h
seg006:24FA                 db 0FFh, 0DFh, 0BDh, 0EFh, 7Bh, 0B7h, 0DEh, 0FDh, 0BDh
seg006:24FA                 db 77h, 0FFh, 0DDh, 0BDh, 0EBh, 7Bh, 0B7h, 0DEh, 2 dup(0BDh)
seg006:24FA                 db 77h, 0FFh, 0DDh, 0ADh, 0EBh, 7Ah, 0B7h, 5Eh, 0BDh, 0B5h
seg006:24FA                 db 77h, 7Fh, 0DDh, 0ADh, 0ABh, 7Ah, 0B5h, 5Eh, 2 dup(0B5h)
seg006:24FA                 db 75h, 7Dh, 0DDh, 0A5h, 0ABh, 5Ah, 0B5h, 5Ah, 0B5h, 0A5h
seg006:24FA                 db 75h, 7Dh, 5Dh, 0A5h, 0AAh, 5Ah, 0A5h, 5Ah, 2 dup(0A5h)
seg006:24FA                 db 55h, 7Dh, 5Dh, 25h, 0AAh, 52h, 0A5h, 4Ah, 0A5h, 0A4h
seg006:24FA                 db 55h, 7Dh, 55h, 25h, 8Ah, 52h, 0A5h, 4Ah, 0A1h, 0A4h
seg006:24FA                 db 55h, 5Dh, 55h, 25h, 8Ah, 52h, 0A4h, 4Ah, 0A1h, 0A4h
seg006:24FA                 db 3 dup(55h), 25h, 8Ah, 12h, 0A4h, 42h, 0A1h, 0A4h, 15h
seg006:24FA                 db 2 dup(55h), 21h, 8Ah, 12h, 0A4h, 42h, 0A1h, 84h, 15h
seg006:24FA                 db 55h, 45h, 21h, 82h, 12h, 0A4h, 42h, 21h, 84h, 11h, 55h
seg006:24FA                 db 45h, 21h, 82h, 12h, 24h, 42h, 21h, 84h, 11h, 55h, 44h
seg006:24FA                 db 1, 82h, 12h, 24h, 42h, 21h, 80h, 11h, 15h, 44h, 1, 80h
seg006:24FA                 db 12h, 24h, 42h, 1, 80h, 11h, 14h, 44h, 1, 80h, 2, 24h
seg006:24FA                 db 40h, 1, 80h, 10h, 14h, 44h, 1, 80h, 2, 20h, 40h, 1
seg006:24FA                 db 80h, 10h, 14h, 4, 0, 80h, 2, 20h, 40h, 1, 2 dup(0)
seg006:24FA                 db 14h, 4, 0, 80h, 0, 20h, 0, 1, 2 dup(0), 14h, 4 dup(0)
seg006:24FA                 db 20h, 4 dup(0), 4, 0
seg006:25EA
