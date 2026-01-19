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
