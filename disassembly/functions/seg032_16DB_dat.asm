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
