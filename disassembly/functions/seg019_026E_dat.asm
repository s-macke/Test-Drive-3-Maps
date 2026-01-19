seg019:026E ; ---------------------------------------------------------------------------
seg019:0270                 db 8Ah, 0F2h, 8Ah, 0E8h, 0B4h, 10h, 8Ah, 0C4h, 0CDh, 10h
seg019:027A ; ---------------------------------------------------------------------------
seg019:027A
seg019:027A loc_1709A:                              ; CODE XREF: seg019:0213␘j
seg019:027A                                         ; seg019:026E␘j
seg019:027A                 xor     ax, ax
seg019:027C                 pop     di
seg019:027D                 pop     si
seg019:027E                 pop     bp
seg019:027F                 retf
seg019:0280 ; ---------------------------------------------------------------------------
seg019:0280                 mov     dx, 0BA00h
seg019:0283                 add     [bp+si-4600h], bh
seg019:0287                 add     [bp+si-4600h], bh
seg019:028B                 add     [bp+si-4600h], bh
seg019:028F                 add     [bx+si], ch
seg019:0291                 add     [bx+si], ch
seg019:0293                 add     [bx+si], ch
seg019:0295                 add     [bp+si-4600h], bh
seg019:0299                 add     [di+0], dl
seg019:029C                 push    bp
seg019:029D                 add     [bp+di+0], dh
seg019:02A0                 jnb     short $+2
seg019:02A2                 mov     al, 0
seg019:02A4                 mov     al, 0
seg019:02A6                 mov     al, 0
seg019:02A8                 mov     al, 0
seg019:02AA                 push    bp
seg019:02AB                 mov     bp, sp
seg019:02AD                 push    si
seg019:02AE                 push    di
seg019:02AF                 mov     dx, [bp+6]
seg019:02B2                 mov     cx, [bp+8]
seg019:02B5                 lea     bx, byte_1F1C0
seg019:02B9                 add     bx, word_2AD2E
seg019:02BD                 jmp     word ptr cs:[bx]
seg019:02BD ; ---------------------------------------------------------------------------
seg019:02C0                 db 0B4h, 0Bh, 8Dh, 1Eh, 78h, 0C2h, 3, 0DAh, 8Ah, 1Fh, 0Ah
seg019:02C0                 db 0D9h, 32h, 0FFh, 0CDh, 10h, 0B4h, 0Bh, 8Dh, 1Eh, 84h
seg019:02C0                 db 0C2h, 3, 5Eh, 6, 8Ah, 1Fh, 0B7h, 1, 0CDh, 10h, 33h
seg019:02C0                 db 0C0h, 8Eh, 0C0h, 26h, 0A0h, 65h, 4, 24h, 0FBh, 8Dh
seg019:02C0                 db 1Eh, 7Eh, 0C2h, 3, 5Eh, 6, 8Ah, 27h, 0Ah, 0C4h, 0BAh
seg019:02C0                 db 0D8h, 3, 0EEh, 26h, 0A2h, 65h, 4, 0EBh, 7Ch, 0B4h, 0Bh
seg019:02C0                 db 32h, 0FFh, 8Ah, 0D9h, 0CDh, 10h, 0EBh, 72h, 8Ah, 0DAh
seg019:02C0                 db 0BAh, 0DAh, 3, 0ECh, 8Ah, 0C3h, 0Ch, 10h, 0EEh, 80h
seg019:02C0                 db 0C2h, 4, 8Ah, 0C1h, 0EEh, 0EBh, 5Fh, 0B4h, 10h, 32h
seg019:02C0                 db 0C0h, 8Ah, 0F9h, 8Ah, 0DAh, 0CDh, 10h, 0EBh, 53h, 8Bh
seg019:02C0                 db 0C1h, 8Bh, 0DAh, 8Ah, 0C8h, 80h, 0E1h, 1, 0D0h, 0E8h
seg019:02C0                 db 8Ah, 0E8h, 80h, 0E5h, 1, 0D0h, 0E8h, 8Ah, 0F0h, 80h
seg019:02C0                 db 0E6h, 1, 24h, 0FEh, 0Ah, 0C8h, 80h, 0E1h, 3, 0D0h, 0E8h
seg019:02C0                 db 24h, 0FEh, 0Ah, 0E8h, 80h, 0E5h, 3, 0D0h, 0E8h, 24h
seg019:02C0                 db 0FEh, 0Ah, 0F0h, 80h, 0E6h, 3, 8Dh, 3Eh, 8Ah, 0C2h
seg019:02C0                 db 8Bh, 0F7h, 8Ah, 0C1h, 98h, 3, 0F0h, 8Ah, 0Ch, 8Bh, 0F7h
seg019:02C0                 db 8Ah, 0C5h, 3, 0F0h, 8Ah, 2Ch, 8Bh, 0F7h, 8Ah, 0C6h
seg019:02C0                 db 3, 0F0h, 8Ah, 34h, 0B4h, 10h, 8Ah, 0C4h, 0CDh, 10h
seg019:02C0                 db 33h, 0C0h, 5Fh, 5Eh, 5Dh, 0CBh, 0DAh, 0, 0DAh, 0, 0DAh
seg019:02C0                 db 0, 0DAh, 0, 20h, 0, 20h, 0, 5Eh, 0, 0DAh, 0, 68h, 0
seg019:02C0                 db 68h, 0, 68h, 0, 0DAh, 0, 0DAh, 0, 7Bh, 0, 7Bh, 0, 7Bh
seg019:02C0                 db 0
seg019:02C0 seg019          ends
seg019:02C0
seg020:0000 ; ---------------------------------------------------------------------------
seg020:0000 ; ---------------------------------------------------------------------------
seg020:0000
seg020:0000 ; Segment type: Pure code
seg020:0000 seg020          segment byte public 'CODE' use16
seg020:0000                 assume cs:seg020
seg020:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg020:0000                 jnp     short $+2
seg020:0002                 jnp     short $+2
seg020:0004                 jnp     short $+2
seg020:0006                 xchg    ax, [bx+si]
seg020:0008                 xchg    ax, [bx+si]
seg020:000A
