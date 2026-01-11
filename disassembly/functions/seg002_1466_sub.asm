seg002:1466 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:1466
seg002:1466 ; Attributes: bp-based frame
seg002:1466
seg002:1466 sub_8B36        proc far                ; CODE XREF: sub_89C2+58␘p
seg002:1466
seg002:1466 arg_0           = word ptr  6
seg002:1466 arg_2           = word ptr  8
seg002:1466
seg002:1466                 push    bp
seg002:1467                 mov     bp, sp
seg002:1469                 push    si
seg002:146A                 sub     ax, ax
seg002:146C                 push    ax
seg002:146D                 mov     ax, 1
seg002:1470                 push    ax
seg002:1471                 mov     ax, 0C7h ; '¦'
seg002:1474                 push    ax
seg002:1475                 mov     ax, 20h ; ' '
seg002:1478                 push    ax
seg002:1479                 mov     ax, 0C7h ; '¦'
seg002:147C                 sub     ax, [bp+arg_0]
seg002:147F                 push    ax
seg002:1480                 mov     ax, 98h ; 'ÿ'
seg002:1483                 sub     ax, [bp+arg_0]
seg002:1486                 push    ax
seg002:1487                 mov     ax, [bp+arg_2]
seg002:148A                 add     ax, 0A7h ; 'º'
seg002:148D                 push    ax
seg002:148E                 push    [bp+arg_2]
seg002:1491                 call    far ptr sub_17BE5
seg002:1496                 add     sp, 10h
seg002:1499                 mov     si, [bp+arg_2]
seg002:149C                 add     si, word_2BF6C
seg002:14A0                 mov     ax, 1
seg002:14A3                 push    ax
seg002:14A4                 push    ax
seg002:14A5                 mov     ax, 88h ; 'ê'
seg002:14A8                 push    ax
seg002:14A9                 mov     ax, 0A8h ; '¿'
seg002:14AC                 push    ax
seg002:14AD                 mov     ax, word_2BF6E
seg002:14B0                 sub     ax, [bp+arg_0]
seg002:14B3                 push    ax
seg002:14B4                 mov     ax, 98h ; 'ÿ'
seg002:14B7                 sub     ax, [bp+arg_0]
seg002:14BA                 push    ax
seg002:14BB                 lea     ax, [si+7]
seg002:14BE                 push    ax
seg002:14BF                 lea     ax, [si-20h]
seg002:14C2                 push    ax
seg002:14C3                 call    far ptr sub_17BE5
seg002:14C8                 add     sp, 10h
seg002:14CB                 mov     si, [bp+arg_2]
seg002:14CE                 add     si, word_2BF6C
seg002:14D2                 mov     ax, 1
seg002:14D5                 push    ax
seg002:14D6                 push    ax
seg002:14D7                 mov     ax, 0A9h ; '¬'
seg002:14DA                 push    ax
seg002:14DB                 mov     ax, 0A8h ; '¿'
seg002:14DE                 push    ax
seg002:14DF                 mov     ax, word_2BF6E
seg002:14E2                 sub     ax, [bp+arg_0]
seg002:14E5                 push    ax
seg002:14E6                 mov     ax, 98h ; 'ÿ'
seg002:14E9                 sub     ax, [bp+arg_0]
seg002:14EC                 push    ax
seg002:14ED                 mov     ax, word_2BF74
seg002:14F0                 add     ax, si
seg002:14F2                 sub     ax, 21h ; '!'
seg002:14F5                 push    ax
seg002:14F6                 lea     ax, [si+8]
seg002:14F9                 push    ax
seg002:14FA                 call    far ptr sub_17BE5
seg002:14FF                 add     sp, 10h
seg002:1502                 mov     si, [bp+arg_2]
seg002:1505                 add     si, word_2BF70
seg002:1509                 mov     ax, 1
seg002:150C                 push    ax
seg002:150D                 push    ax
seg002:150E                 mov     ax, 0C7h ; '¦'
seg002:1511                 push    ax
seg002:1512                 mov     ax, 108h
seg002:1515                 push    ax
seg002:1516                 mov     ax, word_2BF72
seg002:1519                 sub     ax, [bp+arg_0]
seg002:151C                 push    ax
seg002:151D                 mov     ax, 98h ; 'ÿ'
seg002:1520                 sub     ax, [bp+arg_0]
seg002:1523                 push    ax
seg002:1524                 mov     ax, word_2BF76
seg002:1527                 add     ax, si
seg002:1529                 sub     ax, 21h ; '!'
seg002:152C                 push    ax
seg002:152D                 lea     ax, [si-20h]
seg002:1530                 push    ax
seg002:1531                 call    far ptr sub_17BE5
seg002:1536                 add     sp, 10h
seg002:1539                 pop     si
seg002:153A                 pop     bp
seg002:153B                 retf
seg002:153B sub_8B36        endp
seg002:153B
seg002:153C
