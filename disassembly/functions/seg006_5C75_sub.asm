seg006:5C75 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:5C75
seg006:5C75
seg006:5C75 sub_13AC5       proc near               ; CODE XREF: sub_12A2C+9␘p
seg006:5C75                 mov     si, word_2ACBC
seg006:5C79                 cmp     si, 0FFFFh
seg006:5C7C                 jnz     short loc_13ACF
seg006:5C7E
seg006:5C7E locret_13ACE:                           ; CODE XREF: sub_13AC5+1B␙j
seg006:5C7E                 retn
seg006:5C7F ; ---------------------------------------------------------------------------
seg006:5C7F
seg006:5C7F loc_13ACF:                              ; CODE XREF: sub_13AC5+7␘j
seg006:5C7F                 mov     ax, word_2AD23
seg006:5C82                 mov     ah, al
seg006:5C84                 sub     al, al
seg006:5C86                 shl     ax, 1
seg006:5C88                 mov     dl, byte_285C1
seg006:5C8C                 sub     dh, dh
seg006:5C8E                 shl     dx, 1
seg006:5C90                 jz      short locret_13ACE
seg006:5C92                 shl     dx, 1
seg006:5C94                 shl     dx, 1
seg006:5C96                 shl     dx, 1
seg006:5C98                 push    dx
seg006:5C99                 push    ax
seg006:5C9A                 call    sub_10017
seg006:5C9F                 add     sp, 4
seg006:5CA2                 mov     bx, [si-4EBBh]
seg006:5CA6                 xchg    bx, si
seg006:5CA8                 mov     es, word_2D8AA
seg006:5CAC                 shl     si, 1
seg006:5CAE                 mov     ax, si
seg006:5CB0                 shl     si, 1
seg006:5CB2                 shl     si, 1
seg006:5CB4                 add     si, ax
seg006:5CB6                 add     si, word_2D8A8
seg006:5CBA                 mov     si, es:[si]
seg006:5CBD                 and     si, 7FFh
seg006:5CC1                 shl     si, 1
seg006:5CC3                 mov     ax, [bx-5B3Bh]
seg006:5CC7                 shl     ax, 1
seg006:5CC9                 shl     ax, 1
seg006:5CCB                 add     ax, word_2844C
seg006:5CCF                 mov     [si+308Eh], ax
seg006:5CD3                 mov     [si+3090h], ax
seg006:5CD7                 mov     ax, [bx-59FBh]
seg006:5CDB                 shl     ax, 1
seg006:5CDD                 shl     ax, 1
seg006:5CDF                 add     ax, word_2844E
seg006:5CE3                 mov     [si+3D0Eh], ax
seg006:5CE7                 mov     [si+3D10h], ax
seg006:5CEB                 retn
seg006:5CEB sub_13AC5       endp
seg006:5CEB
seg006:5CEC
