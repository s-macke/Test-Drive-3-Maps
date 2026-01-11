seg006:4678 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4678
seg006:4678
seg006:4678 sub_124C8       proc near               ; CODE XREF: sub_110C3+C6␘p
seg006:4678                                         ; sub_1249D+14␘p ...
seg006:4678                 push    si
seg006:4679                 push    dx
seg006:467A                 mov     bl, byte_2AB1E
seg006:467E                 inc     bl
seg006:4680                 and     bl, 3Fh
seg006:4683                 mov     byte_2AB1E, bl
seg006:4687                 mov     [bx-45C1h], dl
seg006:468B                 shl     bx, 1
seg006:468D                 shr     ax, 1
seg006:468F                 mov     [bx-4581h], ax
seg006:4693                 sub     dx, dx
seg006:4695                 mov     cx, 140h
seg006:4698                 div     cx
seg006:469A                 mov     cx, 8000h
seg006:469D                 sub     ax, 60h ; '`'
seg006:46A0                 jns     short loc_12543
seg006:46A2                 neg     ax
seg006:46A4                 sub     si, si
seg006:46A6                 sub     dx, 2Fh ; '/'
seg006:46A9                 cmp     dx, 7Fh ; '␡'
seg006:46AC                 jl      short loc_12501
seg006:46AE                 sub     dx, 7Fh ; '␡'
seg006:46B1
seg006:46B1 loc_12501:                              ; CODE XREF: sub_124C8+34␘j
seg006:46B1                 or      dx, dx
seg006:46B3                 jns     short loc_12508
seg006:46B5                 neg     dx
seg006:46B7                 inc     si
seg006:46B8
seg006:46B8 loc_12508:                              ; CODE XREF: sub_124C8+3B␘j
seg006:46B8                 mov     di, dx
seg006:46BA                 cmp     di, ax
seg006:46BC                 ja      short loc_12514
seg006:46BE                 add     di, ax
seg006:46C0                 add     di, ax
seg006:46C2                 jmp     short loc_12518
seg006:46C4 ; ---------------------------------------------------------------------------
seg006:46C4
seg006:46C4 loc_12514:                              ; CODE XREF: sub_124C8+44␘j
seg006:46C4                 add     di, dx
seg006:46C6                 add     di, dx
seg006:46C8
seg006:46C8 loc_12518:                              ; CODE XREF: sub_124C8+4A␘j
seg006:46C8                 add     di, ax
seg006:46CA                 shr     di, 1
seg006:46CC                 shr     di, 1
seg006:46CE                 cmp     di, word_284D5
seg006:46D2                 ja      short loc_12543
seg006:46D4                 mov     cx, ax
seg006:46D6                 mov     ah, dl
seg006:46D8                 mov     dl, dh
seg006:46DA                 sub     dh, dh
seg006:46DC                 sub     al, al
seg006:46DE                 mov     di, 7FFFh
seg006:46E1                 cmp     dx, cx
seg006:46E3                 jnb     short loc_1253B
seg006:46E5                 div     cx
seg006:46E7                 shr     ax, 1
seg006:46E9                 mov     di, ax
seg006:46EB
seg006:46EB loc_1253B:                              ; CODE XREF: sub_124C8+6B␘j
seg006:46EB                 or      si, si
seg006:46ED                 jz      short loc_12541
seg006:46EF                 neg     di
seg006:46F1
seg006:46F1 loc_12541:                              ; CODE XREF: sub_124C8+75␘j
seg006:46F1                 mov     cx, di
seg006:46F3
seg006:46F3 loc_12543:                              ; CODE XREF: sub_124C8+28␘j
seg006:46F3                                         ; sub_124C8+5A␘j
seg006:46F3                 mov     [bx-4501h], cx
seg006:46F7                 pop     dx
seg006:46F8                 pop     si
seg006:46F9                 retn
seg006:46F9 sub_124C8       endp
seg006:46F9
seg006:46FA
