seg000:1C3E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:1C3E
seg000:1C3E ; Attributes: bp-based frame
seg000:1C3E
seg000:1C3E sub_1C3E        proc far                ; CODE XREF: sub_EC6+43␘p
seg000:1C3E                                         ; sub_1688+15F␘p ...
seg000:1C3E
seg000:1C3E var_2           = word ptr -2
seg000:1C3E arg_0           = word ptr  6
seg000:1C3E
seg000:1C3E                 push    bp
seg000:1C3F                 mov     bp, sp
seg000:1C41                 sub     sp, 2
seg000:1C44                 sub     al, al
seg000:1C46                 mov     byte_28467, al
seg000:1C49                 sub     ah, ah
seg000:1C4B                 mov     [bp+var_2], ax
seg000:1C4E                 cmp     word_1F172, 0
seg000:1C53                 jz      short loc_1C8E
seg000:1C55                 mov     ax, word_1F1A2
seg000:1C58                 mov     word_1F1A4, ax
seg000:1C5B                 mov     ax, word_1F1AC
seg000:1C5E                 mov     word_1F1AE, ax
seg000:1C61                 call    sub_C600
seg000:1C66                 or      ax, ax
seg000:1C68                 jz      short loc_1C74
seg000:1C6A                 add     byte_28467, 10h
seg000:1C6F                 mov     [bp+var_2], 0Dh
seg000:1C74
seg000:1C74 loc_1C74:                               ; CODE XREF: sub_1C3E+2A␘j
seg000:1C74                 push    cs
seg000:1C75                 call    near ptr sub_1C9E
seg000:1C78                 cmp     [bp+var_2], 0
seg000:1C7C                 jnz     short loc_1C8E
seg000:1C7E                 mov     bl, byte_28467
seg000:1C82                 and     bx, 0Fh
seg000:1C85                 mov     al, [bx+0AAh]
seg000:1C89                 sub     ah, ah
seg000:1C8B                 mov     [bp+var_2], ax
seg000:1C8E
seg000:1C8E loc_1C8E:                               ; CODE XREF: sub_1C3E+15␘j
seg000:1C8E                                         ; sub_1C3E+3E␘j
seg000:1C8E                 mov     bx, [bp+arg_0]
seg000:1C91                 mov     ax, [bp+var_2]
seg000:1C94                 mov     [bx], ax
seg000:1C96                 mov     ax, [bp+var_2]
seg000:1C99                 mov     sp, bp
seg000:1C9B                 pop     bp
seg000:1C9C                 retf
seg000:1C9C sub_1C3E        endp
seg000:1C9C
seg000:1C9C ; ---------------------------------------------------------------------------
seg000:1C9D                 align 2
seg000:1C9E
