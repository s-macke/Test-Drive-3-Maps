seg032:0B74 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0B74
seg032:0B74
seg032:0B74 sub_1BD14       proc near               ; CODE XREF: sub_1BAA7+23␘p
seg032:0B74                 mov     ax, word_2BEBE
seg032:0B77                 mov     bx, word_2BEC0
seg032:0B7B                 mov     cx, word_2BEC2
seg032:0B7F                 mov     dx, word_2BEC4
seg032:0B83                 push    bp
seg032:0B84                 call    sub_1B75C
seg032:0B87                 call    sub_1BC8C
seg032:0B8A                 mov     cx, word_2BE68
seg032:0B8E                 mov     dx, word_2BE6A
seg032:0B92                 call    off_2B602
seg032:0B96                 pop     bp
seg032:0B97                 retn
seg032:0B97 sub_1BD14       endp
seg032:0B97
seg032:0B98 ; ---------------------------------------------------------------------------
seg032:0B98                 pushf
seg032:0B99                 push    ax
seg032:0B9A                 push    bx
seg032:0B9B                 xor     ax, ax
seg032:0B9D                 call    sub_1BCD1
seg032:0BA0                 stc
seg032:0BA1                 mov     byte_2BE62, 0
seg032:0BA6                 pop     bx
seg032:0BA7                 pop     ax
seg032:0BA8                 popf
seg032:0BA9                 retn
