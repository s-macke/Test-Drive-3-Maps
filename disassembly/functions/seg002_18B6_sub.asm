seg002:18B6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:18B6
seg002:18B6 ; Attributes: bp-based frame
seg002:18B6
seg002:18B6 sub_8F86        proc far                ; CODE XREF: sub_8D70+1C3␘p
seg002:18B6                                         ; sub_8D70+204␘p
seg002:18B6
seg002:18B6 var_4           = word ptr -4
seg002:18B6 var_2           = word ptr -2
seg002:18B6
seg002:18B6                 push    bp
seg002:18B7                 mov     bp, sp
seg002:18B9                 sub     sp, 4
seg002:18BC                 sub     ax, ax
seg002:18BE                 mov     word_1F17A, ax
seg002:18C1                 push    ax
seg002:18C2                 call    far ptr sub_16BB0
seg002:18C7                 add     sp, 2
seg002:18CA                 mov     al, byte_2C1A5
seg002:18CD                 sub     ah, ah
seg002:18CF                 push    ax
seg002:18D0                 call    far ptr sub_16A93
seg002:18D5                 add     sp, 2
seg002:18D8                 push    word_2BF62
seg002:18DC                 push    word_2BF60
seg002:18E0                 call    sub_16A1A
seg002:18E5                 add     sp, 4
seg002:18E8                 push    word_2BF5C
seg002:18EC                 mov     al, byte_2D84F
seg002:18EF                 sub     ah, ah
seg002:18F1                 mov     cx, ax
seg002:18F3                 mov     ax, word_2BF5E
seg002:18F6                 mul     cx
seg002:18F8                 mov     cx, ax
seg002:18FA                 mov     ax, 500h
seg002:18FD                 imul    word_2BF78
seg002:1901                 sub     cx, ax
seg002:1903                 push    cx
seg002:1904                 call    sub_10017
seg002:1909                 add     sp, 4
seg002:190C                 mov     ax, word_2BF60
seg002:190F                 add     ax, word_2844C
seg002:1913                 mov     [bp+var_2], ax
seg002:1916                 mov     ax, word_2BF62
seg002:1919                 sub     ax, word_2844E
seg002:191D                 mov     [bp+var_4], ax
seg002:1920                 push    ax
seg002:1921                 push    [bp+var_2]
seg002:1924                 call    sub_1693E
seg002:1929                 mov     sp, bp
seg002:192B                 pop     bp
seg002:192C                 retf
seg002:192C sub_8F86        endp
seg002:192C
seg002:192C ; ---------------------------------------------------------------------------
seg002:192D                 align 2
seg002:192E
