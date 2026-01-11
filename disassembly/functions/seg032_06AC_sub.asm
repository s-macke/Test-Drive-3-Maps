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
seg032:06CD ; ---------------------------------------------------------------------------
seg032:06CE                 db 50h, 52h, 0B2h, 7, 0B8h, 1, 6
seg032:06D5 ; ---------------------------------------------------------------------------
seg032:06D5
seg032:06D5 loc_1B875:                              ; CODE XREF: seg032:06D9␙j
seg032:06D5                 cmp     byte_2BE58, al
seg032:06D9                 jz      short loc_1B875
seg032:06DB                 int     21h
seg032:06DD ; ---------------------------------------------------------------------------
seg032:06DD                 pop     dx
seg032:06DE                 pop     ax
seg032:06DF                 retn
seg032:06DF ; ---------------------------------------------------------------------------
seg032:06E0                 db 50h, 53h, 51h, 52h, 3Ch, 0FFh, 74h, 6, 8Ah, 0D0h, 0B4h
seg032:06E0                 db 6, 0CDh, 21h, 5Ah, 59h, 5Bh, 58h, 0C3h, 0
seg032:06F4
