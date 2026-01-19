seg032:06AC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:06AC
seg032:06AC
seg032:06AC sub_1B84C       proc near               ; CODE XREF: sub_1B681+1␘p
seg032:06AC                 mov     al, byte ptr word_2B633
seg032:06AF
seg032:06AF loc_1B84F:                              ; CODE XREF: sub_1B847+3␘j
seg032:06AF                 push    dx
seg032:06B0                 mov     dx, word_2B5DA
seg032:06B4                 shl     dx, 1
seg032:06B6                 shl     dx, 1
seg032:06B8                 shl     dx, 1
seg032:06BA                 shl     dx, 1
seg032:06BC                 xor     ah, ah
seg032:06BE                 push    ds
seg032:06BF                 push    ax
seg032:06C0                 mul     dx
seg032:06C2                 mov     ds, dx
seg032:06C4                 mov     word_1F52E, ax
seg032:06C7                 pop     ax
seg032:06C8                 mov     byte_1F542, al
seg032:06CB                 pop     ds
seg032:06CC                 pop     dx
seg032:06CD                 retn
seg032:06CD sub_1B84C       endp
seg032:06CD
