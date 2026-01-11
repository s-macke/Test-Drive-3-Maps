seg006:64E2 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:64E2
seg006:64E2
seg006:64E2 sub_14332       proc near               ; CODE XREF: sub_140ED:loc_142AA␘p
seg006:64E2                 mov     ah, al
seg006:64E4                 or      al, al
seg006:64E6                 jns     short loc_1433A
seg006:64E8                 neg     al
seg006:64EA
seg006:64EA loc_1433A:                              ; CODE XREF: sub_14332+4␘j
seg006:64EA                 mov     bl, al
seg006:64EC                 and     bx, 7Fh
seg006:64EF                 shr     bx, 1
seg006:64F1                 shr     bx, 1
seg006:64F3                 mov     dl, [bx-43F5h]
seg006:64F7                 or      ah, ah
seg006:64F9                 jns     short loc_1434D
seg006:64FB                 neg     dl
seg006:64FD
seg006:64FD loc_1434D:                              ; CODE XREF: sub_14332+17␘j
seg006:64FD                 mov     al, dl
seg006:64FF                 sub     ah, ah
seg006:6501                 retn
seg006:6501 sub_14332       endp
seg006:6501
seg006:6502
