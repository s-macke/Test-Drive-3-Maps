seg004:15FC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:15FC
seg004:15FC
seg004:15FC sub_BEAC        proc near               ; CODE XREF: sub_BD61+81␘p
seg004:15FC                                         ; sub_BEAC+7B␙j
seg004:15FC                 mov     ax, cs:[bx+di]
seg004:15FF                 cmp     ax, bp
seg004:1601                 jnz     short loc_BEB4
seg004:1603                 retn
seg004:1604 ; ---------------------------------------------------------------------------
seg004:1604
seg004:1604 loc_BEB4:                               ; CODE XREF: sub_BEAC+5␘j
seg004:1604                 mov     cl, al
seg004:1606                 sub     ch, ch
seg004:1608                 shl     cx, 1
seg004:160A                 mov     si, cx
seg004:160C                 sub     al, al
seg004:160E                 mov     [si-563Bh], ax
seg004:1612                 add     bx, 2
seg004:1615                 and     bx, dx
seg004:1617                 mov     ax, cs:[bx+di]
seg004:161A                 mov     [si-5C7Bh], ax
seg004:161E                 add     bx, 2
seg004:1621                 and     bx, dx
seg004:1623                 mov     ax, cs:[bx+di]
seg004:1626                 mov     [si-5B3Bh], ax
seg004:162A                 add     bx, 2
seg004:162D                 and     bx, dx
seg004:162F                 mov     ax, cs:[bx+di]
seg004:1632                 mov     [si-59FBh], ax
seg004:1636                 add     bx, 2
seg004:1639                 and     bx, dx
seg004:163B                 mov     ax, cs:[bx+di]
seg004:163E                 mov     [si-58BBh], ax
seg004:1642                 add     bx, 2
seg004:1645                 and     bx, dx
seg004:1647                 mov     ax, cs:[bx+di]
seg004:164A                 mov     [si-577Bh], ax
seg004:164E                 add     bx, 2
seg004:1651                 and     bx, dx
seg004:1653                 mov     ax, cs:[bx+di]
seg004:1656                 mov     [si-54FBh], ax
seg004:165A                 add     bx, 2
seg004:165D                 and     bx, dx
seg004:165F                 mov     ax, cs:[bx+di]
seg004:1662                 mov     [si-53BBh], ax
seg004:1666                 add     bx, 2
seg004:1669                 and     bx, dx
seg004:166B                 mov     ax, cs:[bx+di]
seg004:166E                 mov     [si-527Bh], ax
seg004:1672                 add     bx, 2
seg004:1675                 and     bx, dx
seg004:1677                 jmp     short sub_BEAC
seg004:1677 sub_BEAC        endp
seg004:1677
seg004:1677 seg004          ends
seg004:1677
seg005:0009 ; ---------------------------------------------------------------------------
seg005:0009
seg005:0009 ; Segment type: Pure code
seg005:0009 seg005          segment byte public 'CODE' use16
seg005:0009                 assume cs:seg005
seg005:0009                 ;org 9
seg005:0009                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg005:0009                 db 301h dup(0), 8, 4, 7, 4 dup(8), 3 dup(6), 2 dup(8)
seg005:0009                 db 5, 7, 4, 8, 7, 6, 7, 6, 8, 2 dup(7), 6, 2 dup(7), 4
seg005:0009                 db 5, 3 dup(8), 7, 3 dup(8), 7, 8, 2 dup(6), 2 dup(8)
seg005:0009                 db 4, 5, 8, 6, 6 dup(8), 7, 0Dh dup(8), 5 dup(7), 6, 2 dup(7)
seg005:0009                 db 4, 5, 8, 5, 8, 3 dup(7), 8, 3 dup(6), 2 dup(7), 2 dup(8)
seg005:0009                 db 7, 2 dup(8), 4, 3 dup(8), 9 dup(0), 60h, 2 dup(0), 4 dup(60h)
seg005:0009                 db 5 dup(0), 3 dup(6Ch), 42h, 0FFh, 4 dup(42h), 0FFh, 42h
seg005:0009                 db 0, 18h, 7Ch, 6, 3Ch, 60h, 3Eh, 18h, 0, 46h, 66h, 30h
seg005:0009                 db 18h, 0Ch, 66h, 62h, 0, 3Fh, 66h, 67h, 38h, 3Ch, 66h
seg005:0009                 db 3Ch, 5 dup(0), 60h, 30h, 18h, 0, 18h, 30h, 3 dup(60h)
seg005:0009                 db 30h, 18h, 0, 60h, 30h, 3 dup(18h), 30h, 60h, 8 dup(0)
seg005:03C2                 dw 1800h
seg005:03C4                 dw 7E18h
seg005:03C6                 dw 1818h
seg005:03C8                 dw 0
seg005:03CA                 db 60h, 2 dup(30h), 9 dup(0), 6Ch, 4 dup(0), 2 dup(60h)
seg005:03CA                 db 6 dup(0), 60h, 30h, 18h, 0Ch, 6, 3, 2 dup(0), 38h, 5 dup(6Ch)
seg005:03CA                 db 38h, 0, 78h, 4 dup(30h), 70h, 30h, 0, 78h, 2 dup(60h)
seg005:03CA                 db 38h, 1Ch, 0Ch, 38h, 0, 70h, 3 dup(18h), 70h, 18h, 78h
seg005:03CA                 db 0, 6, 7Eh, 66h, 36h, 1Eh, 0Eh, 6, 0, 78h, 3 dup(0Ch)
seg005:03CA                 db 78h, 60h, 78h, 0, 38h, 3 dup(6Ch), 78h, 60h, 38h, 0
seg005:03CA                 db 2 dup(60h), 2 dup(30h)
seg005:0427                 dd 781818h
seg005:042B a8lll8l8        db '8lll8l8',0
seg005:0433                 db 38h, 0Ch, 3Ch, 3 dup(6Ch)
seg005:0439                 dw 38h
seg005:043B                 align 2
seg005:043C                 db 60h, 2 dup(0), 60h, 2 dup(0), 60h, 2 dup(30h), 2 dup(0)
seg005:043C                 db 30h, 2 dup(0), 18h, 24h, 5Ah, 0BDh, 66h, 0FFh, 0A5h
seg005:043C                 db 0FFh, 7Fh, 3 dup(0)
seg005:0456                 dw 0
seg005:0458                 dw 0
seg005:045A                 dw 7E3Ch
seg005:045C                 db 3 dup(0FFh), 7Eh, 3Ch, 2 dup(0), 30h, 0, 30h, 18h, 0Ch
seg005:045C                 db 6Ch, 38h, 0, 1Eh, 21h, 4Eh, 55h, 4Dh, 22h, 1Ch, 0, 4 dup(66h)
seg005:045C                 db 7Eh, 66h, 3Ch, 0, 7Ch, 3 dup(66h), 7Ch, 66h, 7Ch, 0
seg005:045C                 db 3Ch, 5 dup(60h), 38h, 0, 7Ch, 5 dup(66h), 7Ch, 0, 78h
seg005:045C                 db 3 dup(60h), 78h, 60h, 78h, 0, 4 dup(60h), 78h, 60h
seg005:045C                 db 78h, 0, 3Eh, 3 dup(66h), 6Eh, 60h, 3Ch, 0, 4 dup(66h)
seg005:045C                 db 7Eh, 2 dup(66h), 0, 7 dup(60h), 0, 60h, 6 dup(30h)
seg005:045C                 db 0, 3 dup(66h), 6Ch, 78h, 6Ch, 66h, 0, 78h, 6 dup(60h)
seg005:045C                 db 0, 3 dup(63h), 6Bh, 7Fh, 77h, 63h, 0, 4 dup(66h), 6Eh
seg005:045C                 db 76h, 66h, 0, 3Ch, 5 dup(66h), 3Ch, 0, 4 dup(60h), 7Ch
seg005:045C                 db 6Eh, 7Ch, 0, 3Fh, 6Eh, 4 dup(66h), 3Ch, 0, 3 dup(66h)
seg005:045C                 db 6Ch, 78h, 6Ch, 78h, 0, 78h, 2 dup(0Ch), 1Ch, 38h, 70h
seg005:045C                 db 38h, 0, 6 dup(18h), 7Eh, 0, 3Eh, 6 dup(66h), 0, 18h
seg005:045C                 db 3Ch, 5 dup(66h), 0, 63h, 77h, 7Fh, 6Bh, 3 dup(63h)
seg005:045C                 db 0, 63h, 67h, 3Eh, 1Ch, 3Eh, 73h, 63h, 0, 4 dup(18h)
seg005:045C                 db 3Ch, 76h, 62h, 0, 7Fh, 60h, 70h, 38h, 1Ch, 0Eh, 3Fh
seg005:045C                 db 3Ch, 66h, 3Ch, 6 dup(0), 3, 6, 0Ch, 18h, 30h, 60h, 0
seg005:045C                 db 21h, 52h, 21h, 5 dup(0), 4 dup(18h), 7Eh, 3Ch, 18h
seg005:045C                 db 0, 8, 94h, 8, 5 dup(0), 3Ch, 62h, 60h, 2 dup(6Eh), 66h
seg005:045C                 db 3Ch, 2 dup(0), 3Ch, 2 dup(6Ch), 3Ch, 0Ch, 38h, 2 dup(0)
seg005:045C                 db 78h, 4 dup(6Ch), 78h, 60h, 0, 3Ch, 4 dup(60h), 38h
seg005:045C                 db 2 dup(0), 3Ch, 4 dup(6Ch), 3Ch, 0Ch, 0, 38h, 2 dup(60h)
seg005:045C                 db 7Ch, 6Ch, 38h, 2 dup(0), 4 dup(60h), 78h, 60h, 30h
seg005:045C                 db 38h, 0Ch, 3Ch, 3 dup(6Ch), 38h, 2 dup(0), 5 dup(6Ch)
seg005:045C                 db 78h, 60h, 0, 5 dup(60h), 0, 2 dup(60h), 5 dup(30h)
seg005:045C                 db 0, 30h, 0, 2 dup(66h), 6Ch, 78h, 2 dup(6Ch), 60h, 0
seg005:045C                 db 6 dup(30h), 70h, 0, 5 dup(6Bh), 7Eh, 2 dup(0), 5 dup(6Ch)
seg005:045C                 db 78h, 2 dup(0), 38h, 4 dup(6Ch), 38h, 0, 2 dup(60h)
seg005:045C                 db 78h, 3 dup(6Ch), 78h, 0, 6, 0Ch, 3Ch, 3 dup(6Ch), 3Eh
seg005:045C                 db 2 dup(0), 4 dup(60h), 70h, 68h, 2 dup(0), 70h, 2 dup(18h)
seg005:045C                 db 30h, 60h, 30h, 2 dup(0), 5 dup(30h), 78h, 30h, 0, 3Ch
seg005:045C                 db 5 dup(6Ch), 2 dup(0), 10h, 38h, 4 dup(6Ch), 2 dup(0)
seg005:045C                 db 3Fh, 5 dup(6Bh), 2 dup(0), 46h, 6Eh, 2 dup(3Ch), 76h
seg005:045C                 db 62h, 0, 18h, 0Ch, 3Ch, 4 dup(6Ch), 2 dup(0), 7Eh, 60h
seg005:045C                 db 30h, 18h, 0Ch, 3Ch, 0, 18h, 24h, 3 dup(5Ah), 0FFh, 66h
seg005:045C                 db 0FFh, 8 dup(60h), 66h, 3Ch, 7Eh, 0FFh, 3Ch, 2 dup(18h)
seg005:045C                 db 0, 0FFh, 6 dup(81h), 0FFh, 7Eh, 42h, 6 dup(0)
seg005:066A
