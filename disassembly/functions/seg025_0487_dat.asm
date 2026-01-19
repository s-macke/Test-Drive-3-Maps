seg025:0487 ; ---------------------------------------------------------------------------
seg025:048A                 db 86h, 0E0h, 3, 0D8h, 0D1h, 0E8h, 0D1h, 0E8h, 3, 0D8h
seg025:048A                 db 0D1h, 0EBh, 0D1h, 0EBh, 89h, 1Eh, 83h, 0BCh, 80h, 0E1h
seg025:048A                 db 3, 0B0h, 1, 0D2h, 0E0h, 88h, 0Eh, 8Ch, 0BCh, 0A2h, 89h
seg025:048A                 db 0BCh, 8Bh, 46h, 6, 0A3h, 85h, 0BCh, 8Bh, 46h, 8, 0A3h
seg025:048A                 db 87h, 0BCh, 8Bh, 46h, 0Ah, 0A3h
seg025:04BA word_1850A      dw 0BC8Eh               ; DATA XREF: sub_CFC7+1F␘w
seg025:04BC ; ---------------------------------------------------------------------------
seg025:04BC                 mov     bl, 80h ; 'Ç'
seg025:04BE                 mov     bh, byte_2AD2B
seg025:04C2
seg025:04C2 loc_18512:                              ; CODE XREF: seg025:050A␙j
seg025:04C2                                         ; seg025:0514␙j
seg025:04C2                 mov     dx, 3C4h
seg025:04C5                 mov     al, 2
seg025:04C7                 mov     ah, byte_2AD69
seg025:04CB                 out     dx, ax          ; EGA: sequencer address reg
seg025:04CB                                         ; sequencer reset.
seg025:04CB                                         ; Bits of data 0-1 indicate asynchronous/synchronous reset.
seg025:04CC                 mov     si, word_2AD65
seg025:04D0                 mov     di, word_2AD63
seg025:04D4                 mov     cx, word_2AD6E
seg025:04D8                 mov     dx, [bp+8]
seg025:04DB
seg025:04DB loc_1852B:                              ; CODE XREF: seg025:04E9␙j
seg025:04DB                 mov     al, [si]
seg025:04DD                 test    al, bl
seg025:04DF                 jz      short loc_18534
seg025:04E1                 mov     es:[di], bh
seg025:04E4
seg025:04E4 loc_18534:                              ; CODE XREF: seg025:04DF␘j
seg025:04E4                 add     si, dx
seg025:04E6                 sub     di, 50h ; 'P'
seg025:04E9                 loop    loc_1852B
seg025:04EB                 mov     cl, byte_2AD6C
seg025:04EF                 inc     cl
seg025:04F1                 and     cl, 3
seg025:04F4                 mov     al, 1
seg025:04F6                 shl     al, cl
seg025:04F8                 mov     byte_2AD6C, cl
seg025:04FC                 mov     byte_2AD69, al
seg025:04FF                 mov     ax, 1
seg025:0502                 shr     ax, cl
seg025:0504                 add     word_2AD63, ax
seg025:0508                 ror     bl, 1
seg025:050A                 jnb     short loc_18512
seg025:050C                 inc     word_2AD65
seg025:0510                 dec     word_2AD67
seg025:0514                 jnz     short loc_18512
seg025:0516
seg025:0516 loc_18566:                              ; CODE XREF: seg025:loc_18151␘j
seg025:0516                                         ; seg025:loc_182A9␘j ...
seg025:0516                 xor     ax, ax
seg025:0518                 pop     si
seg025:0519                 pop     di
seg025:051A                 pop     bp
seg025:051B                 retf
seg025:051B ; ---------------------------------------------------------------------------
seg025:051C                 db 16h, 5, 16h, 5, 16h, 5, 16h, 5, 2Ch, 0, 2Ch, 0, 4, 1
seg025:051C                 db 16h, 5, 16h, 5, 1Dh, 1, 16h, 5, 5Ch, 2, 0CEh, 2, 5
seg025:051C                 db 4, 5, 4, 5, 4, 5, 4, 5, 4
seg025:051C seg025          ends
seg025:051C
seg026:0000 ; ---------------------------------------------------------------------------
seg026:0000
seg026:0000 ; Segment type: Pure code
seg026:0000 seg026          segment byte public 'CODE' use16
seg026:0000                 assume cs:seg026
seg026:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg026:0000                 db 5, 4, 55h, 4, 8Ah, 4
seg026:0006
