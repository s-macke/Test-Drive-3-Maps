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
