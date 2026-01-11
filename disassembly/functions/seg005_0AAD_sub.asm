seg005:0AAD ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0AAD
seg005:0AAD
seg005:0AAD sub_C9CD        proc near               ; CODE XREF: sub_C7ED+F␘p
seg005:0AAD                                         ; sub_C7ED+81␘p ...
seg005:0AAD                 push    ax
seg005:0AAE                 push    bx
seg005:0AAF                 push    cx
seg005:0AB0                 push    dx
seg005:0AB1                 push    di
seg005:0AB2                 push    si
seg005:0AB3                 push    es
seg005:0AB4                 mov     si, word_280C0
seg005:0AB8                 mov     di, word_280C2
seg005:0ABC                 mov     es, word_280C4
seg005:0AC0                 call    sub_E9E
seg005:0AC5                 cmp     byte_1F17F, 0
seg005:0ACA                 jnz     short loc_C9F4
seg005:0ACC                 mov     byte_1F16C, 0
seg005:0AD1                 jmp     short loc_CA00
seg005:0AD1 ; ---------------------------------------------------------------------------
seg005:0AD3                 align 2
seg005:0AD4
seg005:0AD4 loc_C9F4:                               ; CODE XREF: sub_C9CD+1D␘j
seg005:0AD4                 mov     ax, 8FE6h
seg005:0AD7                 push    ax
seg005:0AD8                 call    sub_EC6
seg005:0ADD                 add     sp, 2
seg005:0AE0
seg005:0AE0 loc_CA00:                               ; CODE XREF: sub_C9CD+24␘j
seg005:0AE0                 pop     es
seg005:0AE1                 pop     si
seg005:0AE2                 pop     di
seg005:0AE3                 pop     dx
seg005:0AE4                 pop     cx
seg005:0AE5                 pop     bx
seg005:0AE6                 pop     ax
seg005:0AE7                 retn
seg005:0AE7 sub_C9CD        endp
seg005:0AE7
seg005:0AE8
