seg001:2730 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:2730
seg001:2730 ; Attributes: bp-based frame
seg001:2730
seg001:2730 sub_4470        proc far                ; CODE XREF: sub_4E16+21D␙p
seg001:2730                                         ; sub_5340+9B␙p ...
seg001:2730
seg001:2730 var_2           = word ptr -2
seg001:2730
seg001:2730                 push    bp
seg001:2731                 mov     bp, sp
seg001:2733                 sub     sp, 2
seg001:2736                 push    cs
seg001:2737                 call    near ptr sub_4534
seg001:273A                 mov     ax, 102Eh
seg001:273D                 push    ax
seg001:273E                 mov     ax, 0AAAh
seg001:2741                 push    ax
seg001:2742                 call    sub_1916A
seg001:2747                 add     sp, 4
seg001:274A                 mov     word_2D896, ax
seg001:274D                 or      ax, ax
seg001:274F                 jnz     short loc_4494
seg001:2751                 jmp     loc_4526
seg001:2754 ; ---------------------------------------------------------------------------
seg001:2754
seg001:2754 loc_4494:                               ; CODE XREF: sub_4470+1F␘j
seg001:2754                 push    ax
seg001:2755                 mov     ax, 12h
seg001:2758                 push    ax
seg001:2759                 mov     ax, 1
seg001:275C                 push    ax
seg001:275D                 mov     ax, 0A78h
seg001:2760                 push    ax
seg001:2761                 call    sub_19388
seg001:2766                 add     sp, 8
seg001:2769                 mov     [bp+var_2], ax
seg001:276C                 push    word_2D896
seg001:2770                 mov     ax, 54h ; 'T'
seg001:2773                 push    ax
seg001:2774                 mov     ax, 1
seg001:2777                 push    ax
seg001:2778                 mov     ax, 9E0h
seg001:277B                 push    ax
seg001:277C                 call    sub_19388
seg001:2781                 add     sp, 8
seg001:2784                 mov     [bp+var_2], ax
seg001:2787                 push    word_2D896
seg001:278B                 mov     ax, 40h ; '@'
seg001:278E                 push    ax
seg001:278F                 mov     ax, 1
seg001:2792                 push    ax
seg001:2793                 mov     ax, 0A34h
seg001:2796                 push    ax
seg001:2797                 call    sub_19388
seg001:279C                 add     sp, 8
seg001:279F                 mov     [bp+var_2], ax
seg001:27A2                 push    word_2D896
seg001:27A6                 mov     ax, 4
seg001:27A9                 push    ax
seg001:27AA                 mov     ax, 2
seg001:27AD                 push    ax
seg001:27AE                 mov     ax, 0AFEh
seg001:27B1                 push    ax
seg001:27B2                 call    sub_19388
seg001:27B7                 add     sp, 8
seg001:27BA                 mov     [bp+var_2], ax
seg001:27BD                 push    word_2D896
seg001:27C1                 mov     ax, 4
seg001:27C4                 push    ax
seg001:27C5                 mov     ax, 1
seg001:27C8                 push    ax
seg001:27C9                 mov     ax, 0B06h
seg001:27CC                 push    ax
seg001:27CD                 call    sub_19388
seg001:27D2                 add     sp, 8
seg001:27D5                 mov     [bp+var_2], ax
seg001:27D8                 push    word_2D896
seg001:27DC                 call    sub_190A2
seg001:27E1                 mov     sp, bp
seg001:27E3                 pop     bp
seg001:27E4                 retf
seg001:27E4 ; ---------------------------------------------------------------------------
seg001:27E5                 align 2
seg001:27E6
seg001:27E6 loc_4526:                               ; CODE XREF: sub_4470+21␘j
seg001:27E6                 mov     ax, 8
seg001:27E9                 push    ax
seg001:27EA                 call    sub_1688
seg001:27EF                 mov     sp, bp
seg001:27F1                 pop     bp
seg001:27F2                 retf
seg001:27F2 sub_4470        endp
seg001:27F2
seg001:27F2 ; ---------------------------------------------------------------------------
seg001:27F3                 align 2
seg001:27F4
