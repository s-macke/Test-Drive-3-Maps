seg005:0B91 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0B91
seg005:0B91
seg005:0B91 sub_CAB1        proc far                ; CODE XREF: sub_39C8+7␘P
seg005:0B91                 push    ds
seg005:0B92                 push    es
seg005:0B93                 push    di
seg005:0B94                 push    si
seg005:0B95                 mov     bx, word_1F17A
seg005:0B99                 shl     bx, 1
seg005:0B9B                 mov     ax, [bx-7028h]
seg005:0B9F                 mov     es, ax
seg005:0BA1                 mov     ds, ax
seg005:0BA3                 mov     cx, 7D00h
seg005:0BA6                 sub     di, di
seg005:0BA8                 mov     si, di
seg005:0BAA
seg005:0BAA loc_CACA:                               ; CODE XREF: sub_CAB1+27␙j
seg005:0BAA                 lodsw
seg005:0BAB                 or      al, al
seg005:0BAD                 js      short loc_CAD1
seg005:0BAF                 sub     al, al
seg005:0BB1
seg005:0BB1 loc_CAD1:                               ; CODE XREF: sub_CAB1+1C␘j
seg005:0BB1                 or      ah, ah
seg005:0BB3                 js      short loc_CAD7
seg005:0BB5                 sub     ah, ah
seg005:0BB7
seg005:0BB7 loc_CAD7:                               ; CODE XREF: sub_CAB1+22␘j
seg005:0BB7                 stosw
seg005:0BB8                 loop    loc_CACA
seg005:0BBA                 pop     si
seg005:0BBB                 pop     di
seg005:0BBC                 pop     es
seg005:0BBD                 pop     ds
seg005:0BBE                 retf
seg005:0BBE sub_CAB1        endp
seg005:0BBE
seg005:0BBF
