seg005:0E85 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0E85
seg005:0E85
seg005:0E85 sub_CDA5        proc far                ; CODE XREF: sub_7BC+26␘P
seg005:0E85                                         ; sub_84C+35␘P
seg005:0E85                 push    es
seg005:0E86                 push    ds
seg005:0E87                 push    si
seg005:0E88                 cmp     word ptr unk_1F17D, 0
seg005:0E8D                 jz      short loc_CDBC
seg005:0E8F                 cli
seg005:0E90                 push    ds
seg005:0E91                 lds     dx, dword_28140
seg005:0E95                 mov     ax, 2509h
seg005:0E98                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg005:0E98                                         ; AL = interrupt number
seg005:0E98                                         ; DS:DX = new vector to be used for specified interrupt
seg005:0E9A                 pop     ds
seg005:0E9B                 sti
seg005:0E9C
seg005:0E9C loc_CDBC:                               ; CODE XREF: sub_CDA5+8␘j
seg005:0E9C                 pop     si
seg005:0E9D                 pop     ds
seg005:0E9E                 pop     es
seg005:0E9F                 retf
seg005:0E9F sub_CDA5        endp
seg005:0E9F
seg005:0EA0 ; ---------------------------------------------------------------------------
seg005:0EA0                 push    ax
seg005:0EA1                 push    bx
seg005:0EA2                 push    ds
seg005:0EA3                 push    es
seg005:0EA4                 cld
seg005:0EA5                 mov     ax, seg dseg
seg005:0EA8                 mov     ds, ax
seg005:0EAA                 mov     ax, 40h ; '@'
seg005:0EAD                 mov     es, ax
seg005:0EAF                 assume es:nothing
seg005:0EAF                 in      al, 60h         ; AT Keyboard controller 8042.
seg005:0EB1                 mov     ah, al
seg005:0EB3                 in      al, 61h         ; PC/XT PPI port B bits:
seg005:0EB3                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg005:0EB3                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg005:0EB3                                         ; 3: 1=read high switches
seg005:0EB3                                         ; 4: 0=enable RAM parity checking
seg005:0EB3                                         ; 5: 0=enable I/O channel check
seg005:0EB3                                         ; 6: 0=hold keyboard clock low
seg005:0EB3                                         ; 7: 0=enable kbrd
seg005:0EB5                 or      al, 80h
seg005:0EB7                 out     61h, al         ; PC/XT PPI port B bits:
seg005:0EB7                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg005:0EB7                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg005:0EB7                                         ; 3: 1=read high switches
seg005:0EB7                                         ; 4: 0=enable RAM parity checking
seg005:0EB7                                         ; 5: 0=enable I/O channel check
seg005:0EB7                                         ; 6: 0=hold keyboard clock low
seg005:0EB7                                         ; 7: 0=enable kbrd
seg005:0EB9                 and     al, 7Fh
seg005:0EBB                 out     61h, al         ; PC/XT PPI port B bits:
seg005:0EBB                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg005:0EBB                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg005:0EBB                                         ; 3: 1=read high switches
seg005:0EBB                                         ; 4: 0=enable RAM parity checking
seg005:0EBB                                         ; 5: 0=enable I/O channel check
seg005:0EBB                                         ; 6: 0=hold keyboard clock low
seg005:0EBB                                         ; 7: 0=enable kbrd
seg005:0EBD                 cmp     byte_28144, 0EDh ; 'f'
seg005:0EC2                 jnz     short loc_CE04
seg005:0EC4                 mov     al, es:17h
seg005:0EC8                 shr     al, 1
seg005:0ECA                 shr     al, 1
seg005:0ECC                 shr     al, 1
seg005:0ECE                 shr     al, 1
seg005:0ED0                 and     al, 7
seg005:0ED2                 and     byte ptr es:97h, 0F8h
seg005:0ED8                 or      es:97h, al
seg005:0EDD                 out     60h, al         ; AT Keyboard controller 8042.
seg005:0EDF                 mov     byte_28144, 0
seg005:0EE4
seg005:0EE4 loc_CE04:                               ; CODE XREF: seg005:0EC2␘j
seg005:0EE4                 mov     al, ah
seg005:0EE6                 cmp     al, 0E0h ; 'a'
seg005:0EE8                 jb      short loc_CE16
seg005:0EEA                 jz      short loc_CE10
seg005:0EEC                 cmp     al, 0E1h ; 'ß'
seg005:0EEE                 jnz     short loc_CE13
seg005:0EF0
seg005:0EF0 loc_CE10:                               ; CODE XREF: seg005:0EEA␘j
seg005:0EF0                 mov     byte_28144, al
seg005:0EF3
seg005:0EF3 loc_CE13:                               ; CODE XREF: seg005:0EEE␘j
seg005:0EF3                                         ; seg005:0F49␙j
seg005:0EF3                 jmp     loc_CFBA
seg005:0EF6 ; ---------------------------------------------------------------------------
seg005:0EF6
seg005:0EF6 loc_CE16:                               ; CODE XREF: seg005:0EE8␘j
seg005:0EF6                 and     al, 7Fh
seg005:0EF8                 cmp     al, 1Dh
seg005:0EFA                 jb      short loc_CE2E
seg005:0EFC                 jz      short loc_CE22
seg005:0EFE                 cmp     al, 61h ; 'a'
seg005:0F00                 jnz     short loc_CE2E
seg005:0F02
seg005:0F02 loc_CE22:                               ; CODE XREF: seg005:0EFC␘j
seg005:0F02                 mov     bl, 1
seg005:0F04                 or      ah, ah
seg005:0F06                 jns     short loc_CE2A
seg005:0F08                 dec     bl
seg005:0F0A
seg005:0F0A loc_CE2A:                               ; CODE XREF: seg005:0F06␘j
seg005:0F0A                 mov     byte_2813F, bl
seg005:0F0E
seg005:0F0E loc_CE2E:                               ; CODE XREF: seg005:0EFA␘j
seg005:0F0E                                         ; seg005:0F00␘j
seg005:0F0E                 and     al, 7Fh
seg005:0F10                 mov     bl, 2
seg005:0F12                 cmp     al, 2Ah ; '*'
seg005:0F14                 jz      short loc_CE3C
seg005:0F16                 shr     bl, 1
seg005:0F18                 cmp     al, 36h ; '6'
seg005:0F1A                 jnz     short loc_CE60
seg005:0F1C
seg005:0F1C loc_CE3C:                               ; CODE XREF: seg005:0F14␘j
seg005:0F1C                 cmp     byte_28144, 0E0h ; 'a'
seg005:0F21                 jz      short loc_CE58
seg005:0F23                 test    ah, 80h
seg005:0F26                 jnz     short loc_CE4F
seg005:0F28                 or      es:17h, bl
seg005:0F2D                 jmp     short loc_CE60
seg005:0F2F ; ---------------------------------------------------------------------------
seg005:0F2F
seg005:0F2F loc_CE4F:                               ; CODE XREF: seg005:0F26␘j
seg005:0F2F                 not     bl
seg005:0F31                 and     es:17h, bl
seg005:0F36                 jmp     short loc_CE60
seg005:0F38 ; ---------------------------------------------------------------------------
seg005:0F38
seg005:0F38 loc_CE58:                               ; CODE XREF: seg005:0F21␘j
seg005:0F38                                         ; seg005:0F4D␙j ...
seg005:0F38                 mov     byte_28144, 0
seg005:0F3D                 jmp     loc_CFBA
seg005:0F40 ; ---------------------------------------------------------------------------
seg005:0F40
seg005:0F40 loc_CE60:                               ; CODE XREF: seg005:0F1A␘j
seg005:0F40                                         ; seg005:0F2D␘j ...
seg005:0F40                 cmp     byte_28144, 0E1h ; 'ß'
seg005:0F45                 jnz     short loc_CE77
seg005:0F47                 cmp     al, 1Dh
seg005:0F49                 jz      short loc_CE13
seg005:0F4B                 cmp     al, 45h ; 'E'
seg005:0F4D                 jnz     short loc_CE58
seg005:0F4F                 inc     ah
seg005:0F51                 inc     al
seg005:0F53                 dec     byte_28144
seg005:0F57
seg005:0F57 loc_CE77:                               ; CODE XREF: seg005:0F45␘j
seg005:0F57                 cmp     byte_28144, 0E0h ; 'a'
seg005:0F5C                 jnz     short loc_CE9F
seg005:0F5E                 sub     al, 1Ch
seg005:0F60                 cmp     al, 2
seg005:0F62                 jb      short loc_CE8C
seg005:0F64                 sub     al, 17h
seg005:0F66                 cmp     al, 6
seg005:0F68                 jb      short loc_CE8C
seg005:0F6A                 sub     al, 0Dh
seg005:0F6C
seg005:0F6C loc_CE8C:                               ; CODE XREF: seg005:0F62␘j
seg005:0F6C                                         ; seg005:0F68␘j
seg005:0F6C                 mov     bx, 0CB6h
seg005:0F6F                 xlat    byte ptr cs:[bx]
seg005:0F71                 or      al, al
seg005:0F73                 jz      short loc_CE58
seg005:0F75                 and     ah, 80h
seg005:0F78                 or      ah, al
seg005:0F7A                 mov     byte_28144, 0
seg005:0F7F
seg005:0F7F loc_CE9F:                               ; CODE XREF: seg005:0F5C␘j
seg005:0F7F                 test    ah, 80h
seg005:0F7F ; ---------------------------------------------------------------------------
seg005:0F82                 db 75h
seg005:0F83                 db 9, 3Ah, 6, 65h, 90h, 75h, 9, 0E9h, 0Dh, 1, 3Ah, 6, 65h
seg005:0F83                 db 90h, 75h, 4, 88h, 26h, 65h, 90h, 3Ch, 3Ah, 75h, 4, 0B0h
seg005:0F83                 db 40h, 0EBh, 0Eh, 3Ch, 45h, 75h, 4, 0B0h, 20h, 0EBh, 6
seg005:0F83                 db 3Ch, 46h, 75h, 28h, 0B0h, 10h, 0F6h, 0C4h, 80h, 75h
seg005:0F83                 db 1Ah, 26h, 84h, 6, 18h, 0, 75h, 1Ah, 26h, 8, 6, 18h
seg005:0F83                 db 0, 26h, 30h, 6, 17h, 0, 0B0h, 0EDh, 0E6h, 60h, 0A2h
seg005:0F83                 db 64h, 90h, 0EBh, 7, 0F6h, 0D0h, 26h, 20h, 6, 18h, 0
seg005:0F83                 db 0F6h, 0C4h, 80h, 75h, 51h, 8Ah, 0C4h, 0BBh, 0CAh, 0Ch
seg005:0F83                 db 80h, 3Eh, 5Fh, 90h, 0, 75h, 0Eh, 0BBh, 3Ah, 0Dh, 26h
seg005:0F83                 db 0F6h, 6, 17h, 0, 3, 74h, 3, 0BBh, 0AAh, 0Dh, 2Eh, 0D7h
seg005:0F83                 db 26h, 0F6h, 6, 17h, 0, 20h, 74h, 10h, 3Ch, 91h, 72h
seg005:0F83                 db 0Ch, 3Ch, 99h, 77h, 2, 2Ch, 70h, 3Ch, 1Eh, 75h, 2, 4
seg005:0F83                 db 10h, 26h, 0F6h, 6, 17h, 0, 40h, 74h, 12h, 3Ch, 41h
seg005:0F83                 db 72h, 0Eh, 3Ch, 7Ah, 77h, 0Ah, 3Ch, 5Bh, 72h, 4, 3Ch
seg005:0F83                 db 61h, 72h, 2, 34h, 20h, 0A2h, 67h, 90h, 88h, 26h, 66h
seg005:0F83                 db 90h, 8Ah, 0DCh, 80h, 0E3h, 7Fh, 0A0h, 68h, 90h, 80h
seg005:0F83                 db 0FBh, 60h, 74h, 5, 80h, 0FBh, 1Ch, 75h, 0Ah, 0Ch, 10h
seg005:0F83                 db 0Ah, 0E4h, 79h, 52h, 24h, 0EFh, 0EBh, 4Eh, 80h, 0FBh
seg005:0F83                 db 39h, 75h, 0Ah, 0Ch, 20h, 0Ah, 0E4h, 79h, 43h, 24h, 0DFh
seg005:0F83                 db 0EBh, 3Fh, 80h, 0FBh, 29h, 75h, 2, 0B3h, 48h, 80h, 0FBh
seg005:0F83                 db 2Bh, 75h, 2, 0B3h, 4Bh, 80h, 0EBh, 47h, 78h, 2Fh, 80h
seg005:0F83                 db 0FBh, 0Ah, 77h, 9, 2Ah, 0FFh, 81h, 0C3h, 2Ah, 0Eh, 2Eh
seg005:0F83                 db 8Ah, 1Fh, 80h, 0EBh, 1Fh, 78h, 1Ch, 80h, 0FBh, 8, 73h
seg005:0F83                 db 17h, 2Ah, 0FFh, 81h, 0C3h, 1Ah, 0Eh, 2Eh, 0Ah, 7, 0Ah
seg005:0F83                 db 0E4h, 79h, 7, 81h, 0C3h, 8, 0, 2Eh, 22h, 7, 0A2h, 68h
seg005:0F83                 db 90h
seg005:109A ; ---------------------------------------------------------------------------
seg005:109A
seg005:109A loc_CFBA:                               ; CODE XREF: seg005:loc_CE13␘j
seg005:109A                                         ; seg005:0F3D␘j
seg005:109A                 mov     al, 20h ; ' '
seg005:109C                 out     20h, al         ; Interrupt controller, 8259A.
seg005:109E                 pop     es
seg005:109F                 assume es:nothing
seg005:109F                 pop     ds
seg005:10A0                 pop     bx
seg005:10A1                 pop     ax
seg005:10A2                 iret
seg005:10A2 ; ---------------------------------------------------------------------------
seg005:10A3 dword_CFC3      dd 0                    ; DATA XREF: sub_CFC7+8␙w
seg005:10A3                                         ; sub_CFF7+D␙r ...
seg005:10A7
