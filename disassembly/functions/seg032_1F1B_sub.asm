seg032:1F1B ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:1F1B
seg032:1F1B
seg032:1F1B sub_1D0BB       proc near               ; CODE XREF: sub_1BCE7+6␘p
seg032:1F1B                 cmp     byte_2B5CC, 0
seg032:1F20                 retn
seg032:1F20 sub_1D0BB       endp
seg032:1F20
seg032:1F20 ; ---------------------------------------------------------------------------
seg032:1F21                 align 2
seg032:1F22                 push    ax
seg032:1F23                 neg     al
seg032:1F25                 sbb     al, al
seg032:1F27                 mov     byte ptr word_2BE36+1, al
seg032:1F2A                 clc
seg032:1F2B                 pop     ax
seg032:1F2C                 retn
seg032:1F2D ; ---------------------------------------------------------------------------
seg032:1F2D                 push    es
seg032:1F2E                 mov     al, byte ptr word_2BE36
seg032:1F31                 les     bx, dword_2BE38
seg032:1F35                 mov     cl, byte_2B5F3
seg032:1F39                 mov     ah, es:[bx]
seg032:1F3C                 and     ah, al
seg032:1F3E
seg032:1F3E loc_1D0DE:                              ; CODE XREF: seg032:1F40␙j
seg032:1F3E                 shr     ax, cl
seg032:1F40                 jnb     short loc_1D0DE
seg032:1F42                 shl     ax, cl
seg032:1F44                 mov     al, ah
seg032:1F46                 pop     es
seg032:1F47                 retn
seg032:1F48 ; ---------------------------------------------------------------------------
seg032:1F48                 push    ds
seg032:1F49                 mov     cx, word_2BE36
seg032:1F4D                 lds     bx, dword_2BE38
seg032:1F51                 xor     ch, [bx]
seg032:1F53                 and     ch, cl
seg032:1F55                 xor     [bx], ch
seg032:1F57                 pop     ds
seg032:1F58                 retn
seg032:1F59 ; ---------------------------------------------------------------------------
seg032:1F59                 mov     byte_2BE60, 1
seg032:1F5E                 mov     cx, word_2BE36
seg032:1F62                 mov     bx, word ptr dword_2BE38
seg032:1F66                 xor     ch, es:[bx]
seg032:1F69                 and     ch, cl
seg032:1F6B                 xor     es:[bx], ch
seg032:1F6E                 retn
seg032:1F6F ; ---------------------------------------------------------------------------
seg032:1F6F                 mov     es, word ptr dword_2BE38+2
seg032:1F73                 retn
