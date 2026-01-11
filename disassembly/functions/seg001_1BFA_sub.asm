seg001:1BFA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1BFA
seg001:1BFA ; Attributes: bp-based frame
seg001:1BFA
seg001:1BFA sub_393A        proc far                ; CODE XREF: sub_7CC4+2E␙P
seg001:1BFA                                         ; sub_7FD4+82␙P
seg001:1BFA
seg001:1BFA var_2           = word ptr -2
seg001:1BFA
seg001:1BFA                 push    bp
seg001:1BFB                 mov     bp, sp
seg001:1BFD                 sub     sp, 2
seg001:1C00                 mov     [bp+var_2], 0
seg001:1C05
seg001:1C05 loc_3945:                               ; CODE XREF: sub_393A+1A␙j
seg001:1C05                 mov     bx, [bp+var_2]
seg001:1C08                 mov     byte ptr [bx-1668h], 0
seg001:1C0D                 inc     [bp+var_2]
seg001:1C10                 cmp     [bp+var_2], 20h ; ' '
seg001:1C14                 jl      short loc_3945
seg001:1C16                 cmp     word_2D628, 13h
seg001:1C1B                 jz      short loc_3969
seg001:1C1D                 mov     ax, 0E998h
seg001:1C20                 push    ax
seg001:1C21                 call    far ptr sub_18994
seg001:1C26                 add     sp, 2
seg001:1C29
seg001:1C29 loc_3969:                               ; CODE XREF: sub_393A+21␘j
seg001:1C29                 mov     sp, bp
seg001:1C2B                 pop     bp
seg001:1C2C                 retf
seg001:1C2C sub_393A        endp
seg001:1C2C
seg001:1C2C ; ---------------------------------------------------------------------------
seg001:1C2D                 align 2
seg001:1C2E
