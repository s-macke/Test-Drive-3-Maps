seg031:1C0C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1C0C
seg031:1C0C ; Attributes: bp-based frame
seg031:1C0C
seg031:1C0C sub_1AA6C       proc far                ; CODE XREF: sub_19525+31␘P
seg031:1C0C                                         ; sub_19696+77␘P ...
seg031:1C0C
seg031:1C0C arg_0           = word ptr  6
seg031:1C0C
seg031:1C0C                 push    bp
seg031:1C0D                 mov     bp, sp
seg031:1C0F                 push    si
seg031:1C10                 push    di
seg031:1C11                 mov     bx, 0C4C8h
seg031:1C14                 cmp     word ptr [bx], 0
seg031:1C17                 jnz     short loc_1AAA2
seg031:1C19                 push    ds
seg031:1C1A                 pop     es
seg031:1C1B                 mov     ax, 5
seg031:1C1E                 call    sub_1ABF4
seg031:1C21                 jnz     short loc_1AA88
seg031:1C23                 xor     ax, ax
seg031:1C25                 cwd
seg031:1C26                 jmp     short loc_1AAAC
seg031:1C28 ; ---------------------------------------------------------------------------
seg031:1C28
seg031:1C28 loc_1AA88:                              ; CODE XREF: sub_1AA6C+15␘j
seg031:1C28                 inc     ax
seg031:1C29                 and     al, 0FEh
seg031:1C2B                 mov     word_2B5A8, ax
seg031:1C2E                 mov     word_2B5AA, ax
seg031:1C31                 xchg    ax, si
seg031:1C32                 mov     word ptr [si], 1
seg031:1C36                 add     si, 4
seg031:1C39                 mov     word ptr [si-2], 0FFFEh
seg031:1C3E                 mov     word_2B5AE, si
seg031:1C42
seg031:1C42 loc_1AAA2:                              ; CODE XREF: sub_1AA6C+B␘j
seg031:1C42                 mov     cx, [bp+arg_0]
seg031:1C45                 mov     ax, ds
seg031:1C47                 mov     es, ax
seg031:1C49                 call    sub_1AAB5
seg031:1C4C
seg031:1C4C loc_1AAAC:                              ; CODE XREF: sub_1AA6C+1A␘j
seg031:1C4C                 pop     di
seg031:1C4D                 pop     si
seg031:1C4E                 mov     sp, bp
seg031:1C50                 pop     bp
seg031:1C51                 retf
seg031:1C51 sub_1AA6C       endp
seg031:1C51
seg031:1C52 ; ---------------------------------------------------------------------------
seg031:1C52 ; START OF FUNCTION CHUNK FOR sub_1AAB5
seg031:1C52
seg031:1C52 loc_1AAB2:                              ; CODE XREF: sub_1AAB5+1␙j
seg031:1C52                                         ; sub_1AAB5+9␙j
seg031:1C52                 jmp     loc_1AB83
seg031:1C52 ; END OF FUNCTION CHUNK FOR sub_1AAB5
seg031:1C55
