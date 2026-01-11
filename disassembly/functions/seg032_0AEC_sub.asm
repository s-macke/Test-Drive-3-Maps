seg032:0AEC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0AEC
seg032:0AEC
seg032:0AEC sub_1BC8C       proc near               ; CODE XREF: sub_1BD14+13␙p
seg032:0AEC                 push    ax
seg032:0AED                 push    bx
seg032:0AEE                 push    cx
seg032:0AEF                 push    dx
seg032:0AF0                 xor     cx, cx
seg032:0AF2                 mov     ax, word_2BEDA
seg032:0AF5                 cmp     byte_2BECD, 0
seg032:0AFA                 jnz     short loc_1BCA3
seg032:0AFC                 mov     cx, word_2BEBE
seg032:0B00                 mov     ax, word_2BEC0
seg032:0B03
seg032:0B03 loc_1BCA3:                              ; CODE XREF: sub_1BC8C+E␘j
seg032:0B03                 sub     ax, cx
seg032:0B05                 inc     ax
seg032:0B06                 shr     ax, 1
seg032:0B08                 add     cx, ax
seg032:0B0A                 mov     word_2BE68, cx
seg032:0B0E                 xor     dx, dx
seg032:0B10                 mov     ax, word_2BEDC
seg032:0B13                 cmp     byte_2BECD, 0
seg032:0B18                 jnz     short loc_1BCC1
seg032:0B1A                 mov     dx, word_2BEC2
seg032:0B1E                 mov     ax, word_2BEC4
seg032:0B21
seg032:0B21 loc_1BCC1:                              ; CODE XREF: sub_1BC8C+2C␘j
seg032:0B21                 sub     ax, dx
seg032:0B23                 inc     ax
seg032:0B24                 shr     ax, 1
seg032:0B26                 add     dx, ax
seg032:0B28                 mov     word_2BE6A, dx
seg032:0B2C                 pop     dx
seg032:0B2D                 pop     cx
seg032:0B2E                 pop     bx
seg032:0B2F                 pop     ax
seg032:0B30                 retn
seg032:0B30 sub_1BC8C       endp
seg032:0B30
seg032:0B31
