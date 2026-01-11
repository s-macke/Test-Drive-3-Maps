seg001:267C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:267C
seg001:267C
seg001:267C sub_43BC        proc far                ; CODE XREF: sub_3BFC+4E7␘p
seg001:267C                                         ; sub_3BFC+748␘p
seg001:267C                 push    si
seg001:267D                 mov     al, byte_1FAA2
seg001:2680                 sub     ah, ah
seg001:2682                 mov     cx, ax
seg001:2684                 shl     ax, 1
seg001:2686                 shl     ax, 1
seg001:2688                 add     ax, cx
seg001:268A                 shl     ax, 1
seg001:268C                 mov     si, ax
seg001:268E                 sub     ax, ax
seg001:2690                 push    ax
seg001:2691                 mov     ax, 1
seg001:2694                 push    ax
seg001:2695                 mov     ax, 2Eh ; '.'
seg001:2698                 push    ax
seg001:2699                 mov     ax, 0A0h ; 'á'
seg001:269C                 push    ax
seg001:269D                 lea     ax, [si+9]
seg001:26A0                 push    ax
seg001:26A1                 push    si
seg001:26A2                 mov     ax, 27h ; '''
seg001:26A5                 push    ax
seg001:26A6                 sub     ax, ax
seg001:26A8                 push    ax
seg001:26A9                 call    far ptr sub_17BE5
seg001:26AE                 add     sp, 10h
seg001:26B1                 mov     al, byte_1FAA2
seg001:26B4                 sub     ah, ah
seg001:26B6                 mov     cx, ax
seg001:26B8                 shl     ax, 1
seg001:26BA                 shl     ax, 1
seg001:26BC                 add     ax, cx
seg001:26BE                 shl     ax, 1
seg001:26C0                 mov     si, ax
seg001:26C2                 sub     ax, ax
seg001:26C4                 push    ax
seg001:26C5                 mov     ax, 1
seg001:26C8                 push    ax
seg001:26C9                 mov     ax, 2Eh ; '.'
seg001:26CC                 push    ax
seg001:26CD                 mov     ax, 0F8h ; '°'
seg001:26D0                 push    ax
seg001:26D1                 lea     ax, [si+9]
seg001:26D4                 push    ax
seg001:26D5                 push    si
seg001:26D6                 mov     ax, 77h ; 'w'
seg001:26D9                 push    ax
seg001:26DA                 mov     ax, 58h ; 'X'
seg001:26DD                 push    ax
seg001:26DE                 call    far ptr sub_17BE5
seg001:26E3                 add     sp, 10h
seg001:26E6                 inc     byte_1FAA2
seg001:26EA                 cmp     byte_1FAA2, 9
seg001:26EF                 jb      short loc_4436
seg001:26F1                 mov     byte_1FAA2, 0
seg001:26F6
seg001:26F6 loc_4436:                               ; CODE XREF: sub_43BC+73␘j
seg001:26F6                 pop     si
seg001:26F7                 retf
seg001:26F7 sub_43BC        endp
seg001:26F7
seg001:26F8
