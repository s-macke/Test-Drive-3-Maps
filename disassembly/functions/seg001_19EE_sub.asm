seg001:19EE ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:19EE
seg001:19EE ; Attributes: bp-based frame
seg001:19EE
seg001:19EE sub_372E        proc far                ; CODE XREF: sub_1DAA+A1B␘p
seg001:19EE
seg001:19EE var_6           = word ptr -6
seg001:19EE var_4           = word ptr -4
seg001:19EE var_2           = word ptr -2
seg001:19EE arg_0           = word ptr  6
seg001:19EE
seg001:19EE                 push    bp
seg001:19EF                 mov     bp, sp
seg001:19F1                 sub     sp, 8
seg001:19F4                 push    si
seg001:19F5                 mov     [bp+var_4], 0
seg001:19FA                 sub     ax, ax
seg001:19FC                 mov     word_1F17A, ax
seg001:19FF                 push    ax
seg001:1A00                 call    far ptr sub_16BB0
seg001:1A05                 add     sp, 2
seg001:1A08
seg001:1A08 loc_3748:                               ; CODE XREF: sub_372E+89␙j
seg001:1A08                 mov     ax, 1
seg001:1A0B                 push    ax
seg001:1A0C                 mov     ax, 3
seg001:1A0F                 push    ax
seg001:1A10                 call    sub_C693
seg001:1A15                 add     sp, 4
seg001:1A18                 push    [bp+var_4]
seg001:1A1B                 push    [bp+arg_0]
seg001:1A1E                 push    cs
seg001:1A1F                 call    near ptr sub_3810
seg001:1A22                 add     sp, 4
seg001:1A25                 mov     [bp+var_4], ax
seg001:1A28                 mov     [bp+var_2], 0
seg001:1A2D                 jmp     short loc_3773
seg001:1A2D ; ---------------------------------------------------------------------------
seg001:1A2F                 align 2
seg001:1A30
seg001:1A30 loc_3770:                               ; CODE XREF: sub_372E+6F␙j
seg001:1A30                 inc     [bp+var_2]
seg001:1A33
seg001:1A33 loc_3773:                               ; CODE XREF: sub_372E+3F␘j
seg001:1A33                 cmp     [bp+var_2], 27h ; '''
seg001:1A37                 jge     short loc_37A6
seg001:1A39                 mov     ax, 2
seg001:1A3C                 push    ax
seg001:1A3D                 call    sub_16A5D
seg001:1A42                 add     sp, 2
seg001:1A45                 call    sub_E9E
seg001:1A4A                 mov     [bp+var_6], ax
seg001:1A4D                 lea     ax, [bp+var_6]
seg001:1A50                 push    ax
seg001:1A51                 call    sub_EC6
seg001:1A56                 add     sp, 2
seg001:1A59                 cmp     [bp+var_6], 0
seg001:1A5D                 jz      short loc_3770
seg001:1A5F
seg001:1A5F loc_379F:                               ; CODE XREF: sub_372E+8B␙j
seg001:1A5F                 sub     ax, ax
seg001:1A61                 pop     si
seg001:1A62                 mov     sp, bp
seg001:1A64                 pop     bp
seg001:1A65                 retf
seg001:1A66 ; ---------------------------------------------------------------------------
seg001:1A66
seg001:1A66 loc_37A6:                               ; CODE XREF: sub_372E+49␘j
seg001:1A66                 mov     si, [bp+var_4]
seg001:1A69                 add     si, [bp+arg_0]
seg001:1A6C                 mov     al, [si+1]
seg001:1A6F                 sub     ah, ah
seg001:1A71                 mov     cl, [si]
seg001:1A73                 sub     ch, ch
seg001:1A75                 add     ax, cx
seg001:1A77                 jnz     short loc_3748
seg001:1A79                 jmp     short loc_379F
seg001:1A79 sub_372E        endp
seg001:1A79
seg001:1A79 ; ---------------------------------------------------------------------------
seg001:1A7B                 align 2
seg001:1A7C
