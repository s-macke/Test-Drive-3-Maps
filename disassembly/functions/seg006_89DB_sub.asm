seg006:89DB ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:89DB
seg006:89DB
seg006:89DB sub_1682B       proc near               ; CODE XREF: sub_1176A+167␘p
seg006:89DB                                         ; sub_1176A+1EC␘p ...
seg006:89DB                 push    bp
seg006:89DC                 mov     dx, [bx+240Eh]
seg006:89E0                 push    bx
seg006:89E1                 mov     bx, [bx+6F0Eh]
seg006:89E5                 mov     bp, 2
seg006:89E8                 sub     dx, word_2848A
seg006:89EC                 jns     short loc_16842
seg006:89EE                 neg     dx
seg006:89F0                 sub     bp, bp
seg006:89F2
seg006:89F2 loc_16842:                              ; CODE XREF: sub_1682B+11␘j
seg006:89F2                 cmp     dx, bx
seg006:89F4                 jb      short loc_1684B
seg006:89F6                 xchg    bx, dx
seg006:89F8                 xor     bp, 8
seg006:89FB
seg006:89FB loc_1684B:                              ; CODE XREF: sub_1682B+19␘j
seg006:89FB                 sub     ax, ax
seg006:89FD                 mov     ah, dl
seg006:89FF                 mov     dl, dh
seg006:8A01                 sub     dh, dh
seg006:8A03                 shl     ax, 1
seg006:8A05                 rcl     dx, 1
seg006:8A07                 cmp     dx, bx
seg006:8A09                 jnb     short loc_1689B
seg006:8A0B                 div     bx
seg006:8A0D
seg006:8A0D loc_1685D:                              ; CODE XREF: sub_1682B+73␙j
seg006:8A0D                 mov     bx, 1976h
seg006:8A10                 add     bx, [bp-4957h]
seg006:8A14                 shl     ax, 1
seg006:8A16                 add     bx, ax
seg006:8A18                 mov     ax, cs:[bx]
seg006:8A1B                 add     ax, [bp-4967h]
seg006:8A1F                 pop     bx
seg006:8A20                 mov     cl, byte_2848C
seg006:8A24                 or      cl, cl
seg006:8A26                 jz      short loc_1688C
seg006:8A28                 mov     ch, cl
seg006:8A2A                 jns     short loc_1687E
seg006:8A2C                 neg     cl
seg006:8A2E
seg006:8A2E loc_1687E:                              ; CODE XREF: sub_1682B+4F␘j
seg006:8A2E                 mov     dx, [bx+498Eh]
seg006:8A32                 sub     dx, 9400h
seg006:8A36                 sar     dx, 1
seg006:8A38                 sar     dx, cl
seg006:8A3A                 sub     ax, dx
seg006:8A3C
seg006:8A3C loc_1688C:                              ; CODE XREF: sub_1682B+4B␘j
seg006:8A3C                 sub     ax, word_2847B
seg006:8A40                 sar     ax, 1
seg006:8A42                 add     ax, 0Ah
seg006:8A45                 mov     [bx+7B8Eh], ax
seg006:8A49                 pop     bp
seg006:8A4A                 retn
seg006:8A4B ; ---------------------------------------------------------------------------
seg006:8A4B
seg006:8A4B loc_1689B:                              ; CODE XREF: sub_1682B+2E␘j
seg006:8A4B                 mov     ax, 1FFh
seg006:8A4E                 jmp     short loc_1685D
seg006:8A4E sub_1682B       endp
seg006:8A4E
seg006:8A4E seg006          ends
seg006:8A4E
seg007:0000 ; ---------------------------------------------------------------------------
seg007:0000 ; ---------------------------------------------------------------------------
seg007:0000
seg007:0000 ; Segment type: Pure code
seg007:0000 seg007          segment byte public 'CODE' use16
seg007:0000                 assume cs:seg007
seg007:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg007:0000                 pop     bp
seg007:0001                 retn
seg007:0002
