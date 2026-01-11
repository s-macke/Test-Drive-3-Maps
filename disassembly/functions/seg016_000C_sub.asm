seg016:000C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg016:000C
seg016:000C ; Attributes: bp-based frame
seg016:000C
seg016:000C sub_16C1C       proc far                ; CODE XREF: sub_8DC+2F9␘P
seg016:000C
seg016:000C arg_0           = word ptr  6
seg016:000C
seg016:000C                 push    bp
seg016:000D                 mov     bp, sp
seg016:000F                 xor     ax, ax
seg016:0011                 mov     es, ax
seg016:0013                 assume es:seg000
seg016:0013                 mov     ax, [bp+arg_0]
seg016:0016                 and     ax, 0Fh
seg016:0019                 cmp     byte_2AD34, al
seg016:001D                 jz      short loc_16C3A
seg016:001F                 lea     bx, aOtEnoughRam570 ; "ot enough RAM, 570K (VGA & Tandy) or 54"...
seg016:0023                 add     bx, word_2AD2E
seg016:0027                 jmp     word ptr cs:[bx]
seg016:002A ; ---------------------------------------------------------------------------
seg016:002A
seg016:002A loc_16C3A:                              ; CODE XREF: sub_16C1C+11␘j
seg016:002A                 jmp     loc_16D12
seg016:002A ; ---------------------------------------------------------------------------
seg016:002D                 db 0A2h, 54h, 0BCh, 0B4h, 5, 57h, 56h, 0CDh, 10h, 5Eh
seg016:002D                 db 5Fh, 0E9h, 0C7h, 0, 24h, 1, 26h, 0A2h, 62h, 4, 0A2h
seg016:002D                 db 54h, 0BCh, 8Bh, 0Eh, 0B6h, 0C0h, 0F7h, 0E1h, 26h, 0A3h
seg016:002D                 db 4Eh, 4, 8Bh, 0C8h, 0BAh, 0B8h, 3, 0A0h, 54h, 0BCh, 24h
seg016:002D                 db 1, 0D0h, 0C8h, 0Ch, 0Ah, 0EEh, 0D1h, 0E9h, 0D1h, 0E9h
seg016:002D                 db 0D1h, 0E9h, 0D1h, 0E9h, 3, 0Eh, 3Ah, 0C1h, 89h, 0Eh
seg016:002D                 db 94h, 0BCh, 0E9h, 92h, 0, 1Eh, 56h, 57h, 8Ah, 0Eh, 54h
seg016:002D                 db 0BCh, 32h, 0EDh, 0A2h, 54h, 0BCh, 8Dh, 1Eh, 96h, 0BCh
seg016:002D                 db 8Bh, 0F8h, 0D1h, 0E7h, 3, 0FBh, 8Bh, 5, 8Bh, 0F1h, 0D1h
seg016:002D                 db 0E6h, 3, 0F3h, 8Bh, 0Ch, 89h, 4, 89h, 0Dh, 8Ah, 16h
seg016:002D                 db 4Ah, 0BCh, 32h, 0F6h, 8Bh, 0F2h, 0D1h, 0E6h, 3, 0F3h
seg016:002D                 db 8Bh, 14h, 89h, 16h, 92h, 0BCh, 8Eh, 0C1h, 8Bh, 0Eh
seg016:002D                 db 0B6h, 0C0h, 0D1h, 0E9h, 8Eh, 0D8h, 33h, 0FFh, 33h, 0F6h
seg016:002D                 db 0FCh, 26h, 8Bh, 5, 0A5h, 89h, 45h, 0FEh, 0E2h, 0F7h
seg016:002D                 db 5Fh, 5Eh, 1Fh, 0EBh, 3Fh, 26h, 0A2h, 62h, 4, 0A2h, 54h
seg016:002D                 db 0BCh, 8Bh, 0Eh, 0B6h, 0C0h, 0F7h, 0E1h, 26h, 0A3h, 4Eh
seg016:002D                 db 4, 8Bh, 0C8h, 0BAh, 0DAh, 3, 0ECh, 0A8h, 8, 74h, 0FBh
seg016:002D                 db 0ECh, 0A8h, 8, 75h, 0FBh, 0FAh, 80h, 0EAh, 6, 8Ah, 0E5h
seg016:002D                 db 0B0h, 0Ch, 0EFh, 8Ah, 0E1h, 0FEh, 0C0h, 0EFh, 0FBh
seg016:002D                 db 0D1h, 0E9h, 0D1h, 0E9h, 0D1h, 0E9h, 0D1h, 0E9h, 3, 0Eh
seg016:002D                 db 3Ah, 0C1h, 89h, 0Eh, 94h, 0BCh
seg016:0102 ; ---------------------------------------------------------------------------
seg016:0102
seg016:0102 loc_16D12:                              ; CODE XREF: sub_16C1C:loc_16C3A␘j
seg016:0102                 xor     ax, ax
seg016:0104                 pop     bp
seg016:0105                 retf
seg016:0105 sub_16C1C       endp
seg016:0105
seg016:0106 ; ---------------------------------------------------------------------------
seg016:0106                 sub     ax, 2D00h
seg016:0109                 add     [di], ch
seg016:010B                 add     [di], ch
seg016:010D                 add     [bx+si+0], dh
seg016:0110                 jo      short $+2
seg016:0112                 jo      short $+2
seg016:0114                 add     al, [bx+di]
seg016:0116                 jo      short $+2
seg016:0118                 jo      short $+2
seg016:011A                 jo      short $+2
seg016:011C                 cmp     ax, [bx+si]
seg016:011E                 cmp     ax, [bx+si]
seg016:0120                 retn
seg016:0120 ; ---------------------------------------------------------------------------
seg016:0121                 align 2
seg016:0122                 retn
seg016:0122 ; ---------------------------------------------------------------------------
seg016:0123                 align 2
seg016:0124                 retn
seg016:0124 ; ---------------------------------------------------------------------------
seg016:0125                 align 2
seg016:0126                 retn
seg016:0126 ; ---------------------------------------------------------------------------
seg016:0127                 align 2
seg016:0128                 add     al, [bx+di]
seg016:012A                 add     al, [bx+di]
seg016:012C                 jo      short $+2
seg016:012E                 retn
seg016:012E ; ---------------------------------------------------------------------------
seg016:012F                 align 2
seg016:012F seg016          ends
seg016:012F
seg017:0000 ; ---------------------------------------------------------------------------
seg017:0000
seg017:0000 ; Segment type: Pure code
seg017:0000 seg017          segment byte public 'CODE' use16
seg017:0000                 assume cs:seg017
seg017:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg017:0000
