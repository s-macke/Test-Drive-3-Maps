seg006:04A7 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:04A7
seg006:04A7
seg006:04A7 sub_E2F7        proc far                ; CODE XREF: seg004:138A␘P
seg006:04A7                                         ; sub_E254+41␘P
seg006:04A7                 push    dx
seg006:04A8                 mov     ax, 8
seg006:04AB                 push    ax
seg006:04AC                 call    far ptr sub_16A93
seg006:04B1                 add     sp, 2
seg006:04B4                 mov     ax, 0B3h ; '¦'
seg006:04B7                 push    ax
seg006:04B8                 mov     al, 84h ; 'ä'
seg006:04BA                 push    ax
seg006:04BB                 mov     ax, 12Fh
seg006:04BE                 push    ax
seg006:04BF                 mov     ax, 38h ; '8'
seg006:04C2                 push    ax
seg006:04C3                 call    far ptr sub_172BD
seg006:04C8                 add     sp, 8
seg006:04CB                 pop     dx
seg006:04CC                 mov     ax, 0C3h ; '+'
seg006:04CF                 push    ax
seg006:04D0                 mov     al, 0B4h ; '¦'
seg006:04D2                 push    ax
seg006:04D3                 mov     al, 0C7h ; '¦'
seg006:04D5                 or      dl, dl
seg006:04D7                 jz      short loc_E32C
seg006:04D9                 mov     ax, 12Fh
seg006:04DC
seg006:04DC loc_E32C:                               ; CODE XREF: sub_E2F7+30␘j
seg006:04DC                 push    ax
seg006:04DD                 mov     ax, 38h ; '8'
seg006:04E0                 push    ax
seg006:04E1                 call    far ptr sub_172BD
seg006:04E6                 add     sp, 8
seg006:04E9                 retf
seg006:04E9 sub_E2F7        endp
seg006:04E9
seg006:04EA ; ---------------------------------------------------------------------------
seg006:04EA                 cmp     byte_2849E, 0
seg006:04EF                 jz      short loc_E35E
seg006:04F1                 sub     ax, ax
seg006:04F3                 push    ax
seg006:04F4                 call    sub_D045
seg006:04F9                 add     sp, 2
seg006:04FC                 mov     byte_2A6BF, 1
seg006:0501                 mov     ax, 19h
seg006:0504                 push    ax
seg006:0505                 call    sub_1688
seg006:050A                 add     sp, 2
seg006:050D                 retn
seg006:050E ; ---------------------------------------------------------------------------
seg006:050E
seg006:050E loc_E35E:                               ; CODE XREF: seg006:04EF␘j
seg006:050E                 call    sub_1291D
seg006:0511                 sub     ax, ax
seg006:0513                 mov     byte_207B8, al
seg006:0516                 push    ax
seg006:0517                 call    sub_D045
seg006:051C                 add     sp, 2
seg006:051F                 retn
seg006:0520 ; ---------------------------------------------------------------------------
seg006:0520                 cmp     byte_28477, 0
seg006:0525                 jnz     short locret_E3A1
seg006:0527                 cmp     byte_2A6BD, 0
seg006:052C                 jz      short locret_E3A1
seg006:052E                 mov     byte_2A9BD, 1
seg006:0533                 nop
seg006:0534                 mov     byte_2D851, 1
seg006:0539                 mov     word_2DA64, 2
seg006:053F                 mov     word_20328, 0
seg006:0545                 mov     ax, 7
seg006:0548                 push    ax
seg006:0549                 call    sub_1688
seg006:054E                 add     sp, 2
seg006:0551
seg006:0551 locret_E3A1:                            ; CODE XREF: seg006:0525␘j
seg006:0551                                         ; seg006:052C␘j
seg006:0551                 retn
seg006:0552 ; ---------------------------------------------------------------------------
seg006:0552                 cmp     byte_2849E, 0
seg006:0557                 jz      short locret_E3D2
seg006:0559                 mov     ax, 8
seg006:055C                 push    ax
seg006:055D                 mov     ax, 0Fh
seg006:0560                 push    ax
seg006:0561                 call    sub_C65B
seg006:0566                 add     sp, 4
seg006:0569                 xor     byte_2A6BE, 1
seg006:056E                 mov     ax, 1DE2h
seg006:0571                 jz      short loc_E3C6
seg006:0573                 mov     ax, 1DD9h
seg006:0576
seg006:0576 loc_E3C6:                               ; CODE XREF: seg006:0571␘j
seg006:0576                 sub     dx, dx
seg006:0578                 push    dx
seg006:0579                 push    ax
seg006:057A                 call    sub_37BC
seg006:057F                 add     sp, 4
seg006:0582
seg006:0582 locret_E3D2:                            ; CODE XREF: seg006:0557␘j
seg006:0582                 retn
seg006:0583 ; ---------------------------------------------------------------------------
seg006:0583                 retn
seg006:0584 ; ---------------------------------------------------------------------------
seg006:0584                 cmp     byte_2A6D4, 0
seg006:0589                 jz      short locret_E3F6
seg006:058B                 mov     ax, word_2AC5F
seg006:058E                 mov     byte_285B4, 1
seg006:0593                 inc     ax
seg006:0594                 cmp     ax, 8
seg006:0597                 jbe     short loc_E3EE
seg006:0599                 sub     ax, ax
seg006:059B                 mov     byte_285B4, al
seg006:059E
seg006:059E loc_E3EE:                               ; CODE XREF: seg006:0597␘j
seg006:059E                 mov     word_2AC5F, ax
seg006:05A1                 call    sub_102E8
seg006:05A6
seg006:05A6 locret_E3F6:                            ; CODE XREF: seg006:0589␘j
seg006:05A6                 retn
seg006:05A7 ; ---------------------------------------------------------------------------
seg006:05A7                 cmp     byte_2A6D4, 0
seg006:05AC                 jz      short locret_E420
seg006:05AE                 mov     ax, word_2AC61
seg006:05B1                 mov     byte_285B4, 1
seg006:05B6                 inc     ax
seg006:05B7                 cmp     ax, 8
seg006:05BA                 jbe     short loc_E411
seg006:05BC                 sub     ax, ax
seg006:05BE                 mov     byte_285B4, al
seg006:05C1
seg006:05C1 loc_E411:                               ; CODE XREF: seg006:05BA␘j
seg006:05C1                 mov     word_2AC61, ax
seg006:05C4                 cmp     byte_285B3, 0
seg006:05C9                 jz      short $+2
seg006:05CB                 call    sub_102E8
seg006:05D0
seg006:05D0 locret_E420:                            ; CODE XREF: seg006:05AC␘j
seg006:05D0                 retn
seg006:05D1 ; ---------------------------------------------------------------------------
seg006:05D1                 sub     ah, ah
seg006:05D3                 mov     al, byte_2A6B6
seg006:05D6                 inc     al
seg006:05D8                 cmp     al, 3
seg006:05DA                 jb      short loc_E42E
seg006:05DC                 sub     al, al
seg006:05DE
seg006:05DE loc_E42E:                               ; CODE XREF: seg006:05DA␘j
seg006:05DE                 mov     byte_2A6B6, al
seg006:05E1                 push    ax
seg006:05E2                 call    sub_3A5C
seg006:05E7                 add     sp, 2
seg006:05EA                 or      ax, ax
seg006:05EC                 mov     ax, 22h ; '"'
seg006:05EF                 jnz     short loc_E44E
seg006:05F1                 mov     ax, 28h ; '('
seg006:05F4                 cmp     byte_1F16E, 1
seg006:05F9                 jz      short loc_E44E
seg006:05FB                 mov     ax, 27h ; '''
seg006:05FE
seg006:05FE loc_E44E:                               ; CODE XREF: seg006:05EF␘j
seg006:05FE                                         ; seg006:05F9␘j
seg006:05FE                 push    ax
seg006:05FF                 call    sub_1688
seg006:0604                 add     sp, 2
seg006:0607                 retn
seg006:0608 ; ---------------------------------------------------------------------------
seg006:0608                 cmp     byte_2A6D4, 0
seg006:060D                 jz      short locret_E499
seg006:060F                 xor     byte_285B3, 1
seg006:0614                 jnz     short loc_E480
seg006:0616                 mov     byte_285AC, 9
seg006:061B                 mov     byte_285AD, 8
seg006:0620                 mov     byte_285AE, 72h ; 'r'
seg006:0625                 mov     byte_285AF, 13h
seg006:062A                 call    sub_102E8
seg006:062F                 retn
seg006:0630 ; ---------------------------------------------------------------------------
seg006:0630
seg006:0630 loc_E480:                               ; CODE XREF: seg006:0614␘j
seg006:0630                 mov     byte_285AC, 0Bh
seg006:0635                 mov     byte_285AD, 7
seg006:063A                 mov     byte_285AE, 79h ; 'y'
seg006:063F                 mov     byte_285AF, 19h
seg006:0644                 call    sub_102E8
seg006:0649
seg006:0649 locret_E499:                            ; CODE XREF: seg006:060D␘j
seg006:0649                 retn
seg006:064A ; ---------------------------------------------------------------------------
seg006:064A                 cmp     byte_28478, 0
seg006:064F                 jz      short locret_E4A6
seg006:0651                 xor     byte_2A6B7, 1
seg006:0656
seg006:0656 locret_E4A6:                            ; CODE XREF: seg006:064F␘j
seg006:0656                 retn
seg006:0657 ; ---------------------------------------------------------------------------
seg006:0657                 cmp     byte_28478, 0
seg006:065C                 jz      short locret_E4B3
seg006:065E                 xor     byte_2A6BA, 1
seg006:0663
seg006:0663 locret_E4B3:                            ; CODE XREF: seg006:065C␘j
seg006:0663                 retn
seg006:0664 ; ---------------------------------------------------------------------------
seg006:0664                 push    bp
seg006:0665                 sub     si, si
seg006:0667                 mov     bp, word_2AAC4
seg006:066B                 shl     bp, 1
seg006:066D                 jmp     short loc_E52D
seg006:066D ; ---------------------------------------------------------------------------
seg006:066F                 align 2
seg006:0670
seg006:0670 loc_E4C0:                               ; CODE XREF: seg006:06DF␙j
seg006:0670                 mov     dx, [si+308Eh]
seg006:0674                 sar     dx, 1
seg006:0676                 sar     dx, 1
seg006:0678                 sub     dx, 600h
seg006:067C                 sar     dx, 1
seg006:067E                 sar     dx, 1
seg006:0680                 sar     dx, 1
seg006:0682                 sar     dx, 1
seg006:0684                 add     dx, 28h ; '('
seg006:0687                 jns     short loc_E4DB
seg006:0689                 sub     dx, dx
seg006:068B
seg006:068B loc_E4DB:                               ; CODE XREF: seg006:0687␘j
seg006:068B                 cmp     dx, 13Fh
seg006:068F                 jbe     short loc_E4E4
seg006:0691                 mov     dx, 13Fh
seg006:0694
seg006:0694 loc_E4E4:                               ; CODE XREF: seg006:068F␘j
seg006:0694                 xchg    dl, dh
seg006:0696                 ror     dx, 1
seg006:0698                 mov     [si+498Eh], dx
seg006:069C                 mov     cx, [si+3D0Eh]
seg006:06A0                 sar     cx, 1
seg006:06A2                 sar     cx, 1
seg006:06A4                 sub     cx, 0A00h
seg006:06A8                 neg     cx
seg006:06AA                 sar     cx, 1
seg006:06AC                 sar     cx, 1
seg006:06AE                 add     cx, word_2A6B8
seg006:06B2                 add     cx, 30h ; '0'
seg006:06B5                 mov     [si+560Eh], cx
seg006:06B9                 mov     cx, [si+240Eh]
seg006:06BD                 sar     cx, 1
seg006:06BF                 sar     cx, 1
seg006:06C1                 sar     cx, 1
seg006:06C3                 cmp     byte_2A6BA, 0
seg006:06C8                 jnz     short loc_E51C
seg006:06CA                 neg     cx
seg006:06CC
seg006:06CC loc_E51C:                               ; CODE XREF: seg006:06C8␘j
seg006:06CC                 add     cx, 200h
seg006:06D0                 mov     [si+628Eh], cx
seg006:06D4                 mov     word ptr [si+6F0Eh], 0A0h ; 'á'
seg006:06DA                 add     si, 2
seg006:06DD
seg006:06DD loc_E52D:                               ; CODE XREF: seg006:066D␘j
seg006:06DD                 cmp     si, bp
seg006:06DF                 jb      short loc_E4C0
seg006:06E1                 sub     si, 8
seg006:06E4                 mov     word ptr [si+628Eh], 0C0h ; '+'
seg006:06EA                 mov     word_2AABE, 0
seg006:06F0                 pop     bp
seg006:06F1                 retn
seg006:06F2 ; ---------------------------------------------------------------------------
seg006:06F2
seg006:06F2 loc_E542:                               ; CODE XREF: sub_DEDA␘p
seg006:06F2                                         ; sub_DEDE:loc_DF2B␘p ...
seg006:06F2                 mov     byte_2A6C3, 0
seg006:06F2 ; ---------------------------------------------------------------------------
seg006:06F7                 db 8Ah
seg006:06F8                 dw 680Eh
seg006:06FA                 db 90h, 8Ah, 2Eh, 87h, 93h, 0Ah, 0CDh, 80h, 0E5h, 2, 0D0h
seg006:06FA                 db 0E5h, 0D0h, 0E5h, 0D0h, 0E5h, 0D0h, 0E5h, 0Ah, 0CDh
seg006:06FA                 db 80h, 0E1h, 3Fh, 80h, 3Eh, 97h, 93h, 0, 75h, 1Ah, 8Ah
seg006:06FA                 db 0E9h, 86h, 2Eh, 0Fh, 0B6h, 8Ah, 0F5h, 80h, 0E5h, 3
seg006:06FA                 db 80h, 0FDh, 1, 75h, 0Ah, 0F6h, 0C1h, 1, 75h, 5, 0C6h
seg006:06FA                 db 6, 10h, 0B6h, 1, 0Ah, 0C9h, 75h, 5, 88h, 2 dup(0Eh)
seg006:06FA                 db 0B6h, 0C3h, 80h, 3Eh, 0D7h, 0B5h, 0, 75h, 35h, 80h
seg006:06FA                 db 3Eh, 97h, 93h, 0, 75h, 44h, 0F6h, 0C1h, 20h, 74h, 14h
seg006:06FA                 db 0C6h, 6, 0E3h, 0B5h, 1, 8Ah, 2Eh, 0E0h, 0B5h, 80h, 0EDh
seg006:06FA                 db 2, 79h, 2, 2Ah, 0EDh, 88h, 2Eh, 0E0h, 0B5h, 0F6h, 0C1h
seg006:06FA                 db 10h, 74h, 0Ch, 0A0h, 67h, 0CEh, 3Ah, 6, 0A4h, 0D0h
seg006:06FA                 db 75h, 3, 0E8h, 0Bh, 2, 0E8h, 3Ah, 1, 0C3h, 80h, 0E1h
seg006:06FA                 db 3, 74h, 0FAh, 0F6h, 0C1h, 1, 75h, 6, 83h, 2Eh, 0D8h
seg006:06FA                 db 0B5h, 8, 0C3h, 83h, 6, 0D8h, 0B5h, 8, 0C3h, 0C6h, 6
seg006:06FA                 db 0Eh, 0B6h, 0, 80h, 0E1h, 0Fh, 74h, 0DFh, 0C6h, 6, 0D8h
seg006:06FA                 db 16h, 1, 80h, 26h, 0B8h, 93h, 0F8h, 80h, 0F9h, 3, 73h
seg006:06FA                 db 17h, 0A0h, 0B8h, 93h, 0F6h, 0C1h, 1, 74h, 8, 3Ch, 10h
seg006:06FA                 db 76h, 0Bh, 2Ch, 8, 0EBh, 2 dup(4), 8, 74h, 3, 0A2h, 0B8h
seg006:06FA                 db 93h, 80h, 0F9h, 4, 75h, 5, 80h, 6, 0B7h, 93h, 4, 80h
seg006:06FA                 db 0F9h, 8, 75h, 5, 80h, 2Eh, 0B7h, 93h, 4, 0A1h, 0B1h
seg006:06FA                 db 93h, 80h, 0F9h, 9, 75h, 0Bh, 3Dh, 30h, 0, 7Dh, 6, 5
seg006:06FA                 db 8, 0, 0A3h, 0B1h, 93h, 80h, 0F9h, 0Ah, 75h, 0Bh, 3Dh
seg006:06FA                 db 0E8h, 0FFh, 7Eh, 6, 2Dh, 8, 0, 0A3h, 0B1h, 93h, 80h
seg006:06FA                 db 3Eh, 98h, 93h, 0, 75h, 24h, 80h, 0F9h, 5, 75h, 0Dh
seg006:06FA                 db 81h, 3Eh, 0B5h, 93h, 40h, 1, 73h, 5, 83h, 6, 0B5h, 93h
seg006:06FA                 db 4, 80h, 0F9h, 6, 75h, 0Ch, 83h, 3Eh, 0B5h, 93h, 2Eh
seg006:06FA                 db 76h, 5, 83h, 2Eh, 0B5h, 93h, 4, 0C3h, 80h, 0F9h, 5
seg006:06FA                 db 75h, 5, 83h, 6, 0B3h, 93h, 4, 80h, 0F9h, 6, 75h, 5
seg006:06FA                 db 83h, 2Eh, 0B3h, 93h, 4, 0C3h
seg006:0834
