seg032:0907 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0907
seg032:0907
seg032:0907 sub_1BAA7       proc near               ; CODE XREF: sub_1B896+51␘p
seg032:0907                 cmp     byte_2B5CC, 0
seg032:090C                 jz      short loc_1BAE9
seg032:090E                 xor     ax, ax
seg032:0910                 mov     word_2BEC6, ax
seg032:0913                 mov     word_2BEC8, ax
seg032:0916                 mov     word_2BEBE, ax
seg032:0919                 mov     word_2BEC2, ax
seg032:091C                 mov     ax, word_2B5D1
seg032:091F                 dec     ax
seg032:0920                 mov     word_2BEC0, ax
seg032:0923                 mov     ax, word_2B5D3
seg032:0926                 dec     ax
seg032:0927                 mov     word_2BEC4, ax
seg032:092A                 call    sub_1BD14
seg032:092D                 mov     ax, word_2B5D1
seg032:0930                 sar     ax, 1
seg032:0932                 mov     word_2BD60, ax
seg032:0935                 mov     ax, word_2B5D3
seg032:0938                 sar     ax, 1
seg032:093A                 mov     word_2BD62, ax
seg032:093D                 mov     word_2BD6A, 0FFFFh
seg032:0943                 mov     ax, 3
seg032:0946                 call    sub_1B5D7
seg032:0949
seg032:0949 loc_1BAE9:                              ; CODE XREF: sub_1BAA7+5␘j
seg032:0949                 xor     ax, ax
seg032:094B                 mov     word_2BDAB, ax
seg032:094E                 mov     word_2BDA9, ax
seg032:0951                 mov     al, byte_2B5CF
seg032:0954                 dec     al
seg032:0956                 mov     word_2BDAF, ax
seg032:0959                 mov     al, byte_2B5D0
seg032:095C                 dec     al
seg032:095E                 mov     word_2BDAD, ax
seg032:0961                 xor     ax, ax
seg032:0963                 mov     al, byte_2B5DD
seg032:0966                 call    sub_1B579
seg032:0969                 xor     ax, ax
seg032:096B                 mov     byte_2BD74, al
seg032:096E                 mov     word_2BD64, ax
seg032:0971                 mov     word_2BD66, ax
seg032:0974                 inc     ax
seg032:0975                 mov     byte_2BDB2, al
seg032:0978                 mov     byte_2BDB3, 0
seg032:097D                 retn
seg032:097D sub_1BAA7       endp
seg032:097D
seg032:097D ; ---------------------------------------------------------------------------
seg032:097E byte_1BB1E      db 0E8h, 17h, 2, 9Ah, 0DEh, 9 ; DATA XREF: dseg:CB6A␙o
seg032:0984                 dw seg seg032
seg032:0986 byte_1BB26      db 55h, 56h, 57h, 0B4h, 3, 0CDh, 10h, 5Fh, 5Eh, 5Dh, 33h
seg032:0986                 db 0C0h, 86h, 0F0h, 89h, 16h, 0C7h, 0CCh, 0A3h, 0C5h, 0CCh
seg032:0986                 db 8Ah, 1Eh, 0EDh, 0C4h, 32h, 0FFh, 0D1h, 0E3h, 0FFh, 97h
seg032:0986                 db 9Ch, 0C5h, 0E8h, 0EFh, 0FDh, 88h, 16h, 0E0h, 0C5h, 0E8h
seg032:0986                 db 6Ah, 0FEh, 0A1h, 53h, 0C5h, 0FFh, 16h, 9, 0C5h, 0E8h
seg032:0986                 db 4Ch, 0FFh, 0CBh, 0E8h, 2Bh, 1, 0CBh
seg032:09C0 ; [00000001 BYTES: COLLAPSED FUNCTION nullsub_3. PRESS KEYPAD "+" TO EXPAND]
seg032:09C1                 align 2
seg032:09C2
