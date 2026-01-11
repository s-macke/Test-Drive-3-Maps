seg006:4B2C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4B2C
seg006:4B2C ; Attributes: bp-based frame
seg006:4B2C
seg006:4B2C sub_1297C       proc near               ; CODE XREF: sub_12728+D4␘p
seg006:4B2C                                         ; sub_128BF+57␘p
seg006:4B2C
seg006:4B2C arg_0           = word ptr  4
seg006:4B2C
seg006:4B2C                 push    bp
seg006:4B2D                 mov     bp, sp
seg006:4B2F                 mov     ax, [bp+arg_0]
seg006:4B32                 push    ax
seg006:4B33                 mov     byte_2AA84, 70h ; 'p'
seg006:4B38                 mov     si, 0C68h
seg006:4B3B                 mov     di, 0C6Ah
seg006:4B3E                 mov     bp, 0C6Ch
seg006:4B41                 mov     bx, 0C6Eh
seg006:4B44                 mov     ax, ds
seg006:4B46                 mov     es, ax
seg006:4B48                 mov     word_2AABA, 0BB8Fh
seg006:4B4E                 call    sub_146A6
seg006:4B51                 mov     si, 0C6Ch
seg006:4B54                 mov     di, 0C6Eh
seg006:4B57                 mov     bp, 0C70h
seg006:4B5A                 mov     bx, 0C72h
seg006:4B5D                 mov     ax, ds
seg006:4B5F                 mov     es, ax
seg006:4B61                 mov     word_2AABA, 0BB97h
seg006:4B67                 call    sub_146A6
seg006:4B6A                 mov     si, 0C74h
seg006:4B6D                 mov     di, 0C76h
seg006:4B70                 mov     bp, 0C78h
seg006:4B73                 mov     bx, 0C7Ah
seg006:4B76                 mov     ax, ds
seg006:4B78                 mov     es, ax
seg006:4B7A                 mov     word_2AABA, 0BB9Fh
seg006:4B80                 call    sub_146A6
seg006:4B83                 mov     si, 0C78h
seg006:4B86                 mov     di, 0C7Ah
seg006:4B89                 mov     bp, 0C7Ch
seg006:4B8C                 mov     bx, 0C7Eh
seg006:4B8F                 mov     ax, ds
seg006:4B91                 mov     es, ax
seg006:4B93                 mov     word_2AABA, 0BBA7h
seg006:4B99                 call    sub_146A6
seg006:4B9C                 mov     word_2844A, 0
seg006:4BA2                 pop     ax
seg006:4BA3                 or      ax, ax
seg006:4BA5                 jz      short loc_12A2A
seg006:4BA7                 mov     word_2AA9B, ax
seg006:4BAA                 mov     bx, 0C6Ah
seg006:4BAD                 mov     si, 0C6Ch
seg006:4BB0                 mov     ax, ds
seg006:4BB2                 mov     es, ax
seg006:4BB4                 mov     ax, [bx+498Eh]
seg006:4BB8                 mov     dx, [si+498Eh]
seg006:4BBC                 mov     bp, 0BB93h
seg006:4BBF                 call    sub_1447B
seg006:4BC2                 mov     bx, 0C76h
seg006:4BC5                 mov     si, 0C78h
seg006:4BC8                 mov     ax, ds
seg006:4BCA                 mov     es, ax
seg006:4BCC                 mov     ax, [bx+498Eh]
seg006:4BD0                 mov     dx, [si+498Eh]
seg006:4BD4                 mov     bp, 0BBA3h
seg006:4BD7                 call    sub_1447B
seg006:4BDA
seg006:4BDA loc_12A2A:                              ; CODE XREF: sub_1297C+79␘j
seg006:4BDA                 pop     bp
seg006:4BDB                 retn
seg006:4BDB sub_1297C       endp
seg006:4BDB
seg006:4BDC
