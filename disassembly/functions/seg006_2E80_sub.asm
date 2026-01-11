seg006:2E80 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2E80
seg006:2E80
seg006:2E80 sub_10CD0       proc near               ; CODE XREF: sub_10A92+23␘p
seg006:2E80                 mov     al, cl
seg006:2E82                 and     al, 3Fh
seg006:2E84                 mov     byte_2846E, al
seg006:2E87                 mov     si, bx
seg006:2E89                 sub     bx, bx
seg006:2E8B                 sub     ch, ch
seg006:2E8D                 mov     dl, 8
seg006:2E8F                 mov     ah, byte_2846C
seg006:2E93                 sub     ah, byte_2846E
seg006:2E97                 shr     ah, 1
seg006:2E99                 mov     byte_2A9C3, ah
seg006:2E9D                 mov     cl, byte_2A9C3
seg006:2EA1                 sub     al, al
seg006:2EA3                 cmp     al, cl
seg006:2EA5                 jz      short loc_10D0D
seg006:2EA7
seg006:2EA7 loc_10CF7:                              ; CODE XREF: sub_10CD0+33␙j
seg006:2EA7                                         ; sub_10CD0+3B␙j
seg006:2EA7                 rol     byte ptr [bx-4707h], 1
seg006:2EAB                 stosb
seg006:2EAC                 jnb     short loc_10CFF
seg006:2EAE                 stosb
seg006:2EAF
seg006:2EAF loc_10CFF:                              ; CODE XREF: sub_10CD0+2C␘j
seg006:2EAF                 dec     dl
seg006:2EB1                 jz      short loc_10D08
seg006:2EB3                 loop    loc_10CF7
seg006:2EB5                 jmp     short loc_10D0D
seg006:2EB5 ; ---------------------------------------------------------------------------
seg006:2EB7                 align 2
seg006:2EB8
seg006:2EB8 loc_10D08:                              ; CODE XREF: sub_10CD0+31␘j
seg006:2EB8                 inc     bx
seg006:2EB9                 mov     dl, 8
seg006:2EBB                 loop    loc_10CF7
seg006:2EBD
seg006:2EBD loc_10D0D:                              ; CODE XREF: sub_10CD0+25␘j
seg006:2EBD                                         ; sub_10CD0+35␘j
seg006:2EBD                 mov     cl, byte_2846E
seg006:2EC1
seg006:2EC1 loc_10D11:                              ; CODE XREF: sub_10CD0+4E␙j
seg006:2EC1                                         ; sub_10CD0+56␙j
seg006:2EC1                 rol     byte ptr [bx-4707h], 1
seg006:2EC5                 lodsb
seg006:2EC6                 stosb
seg006:2EC7                 jnb     short loc_10D1A
seg006:2EC9                 stosb
seg006:2ECA
seg006:2ECA loc_10D1A:                              ; CODE XREF: sub_10CD0+47␘j
seg006:2ECA                 dec     dl
seg006:2ECC                 jz      short loc_10D23
seg006:2ECE                 loop    loc_10D11
seg006:2ED0                 jmp     short loc_10D28
seg006:2ED0 ; ---------------------------------------------------------------------------
seg006:2ED2                 db 90h
seg006:2ED3 ; ---------------------------------------------------------------------------
seg006:2ED3
seg006:2ED3 loc_10D23:                              ; CODE XREF: sub_10CD0+4C␘j
seg006:2ED3                 inc     bx
seg006:2ED4                 mov     dl, 8
seg006:2ED6                 loop    loc_10D11
seg006:2ED8
seg006:2ED8 loc_10D28:                              ; CODE XREF: sub_10CD0+50␘j
seg006:2ED8                 mov     cl, byte_2A9C3
seg006:2EDC                 sub     al, al
seg006:2EDE                 cmp     al, cl
seg006:2EE0                 jz      short loc_10D48
seg006:2EE2
seg006:2EE2 loc_10D32:                              ; CODE XREF: sub_10CD0+6E␙j
seg006:2EE2                                         ; sub_10CD0+76␙j
seg006:2EE2                 rol     byte ptr [bx-4707h], 1
seg006:2EE6                 stosb
seg006:2EE7                 jnb     short loc_10D3A
seg006:2EE9                 stosb
seg006:2EEA
seg006:2EEA loc_10D3A:                              ; CODE XREF: sub_10CD0+67␘j
seg006:2EEA                 dec     dl
seg006:2EEC                 jz      short loc_10D43
seg006:2EEE                 loop    loc_10D32
seg006:2EF0                 jmp     short loc_10D48
seg006:2EF0 ; ---------------------------------------------------------------------------
seg006:2EF2                 db 90h
seg006:2EF3 ; ---------------------------------------------------------------------------
seg006:2EF3
seg006:2EF3 loc_10D43:                              ; CODE XREF: sub_10CD0+6C␘j
seg006:2EF3                 inc     bx
seg006:2EF4                 mov     dl, 8
seg006:2EF6                 loop    loc_10D32
seg006:2EF8
seg006:2EF8 loc_10D48:                              ; CODE XREF: sub_10CD0+60␘j
seg006:2EF8                                         ; sub_10CD0+70␘j
seg006:2EF8                 mov     cl, dl
seg006:2EFA
seg006:2EFA loc_10D4A:                              ; CODE XREF: sub_10CD0+7E␙j
seg006:2EFA                 rol     byte ptr [bx-4707h], 1
seg006:2EFE                 loop    loc_10D4A
seg006:2F00                 retn
seg006:2F00 sub_10CD0       endp
seg006:2F00
seg006:2F01
