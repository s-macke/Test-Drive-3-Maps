seg001:1C96 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1C96
seg001:1C96 ; Attributes: bp-based frame
seg001:1C96
seg001:1C96 sub_39D6        proc far                ; CODE XREF: sub_0+59␘P
seg001:1C96
seg001:1C96 var_2           = word ptr -2
seg001:1C96
seg001:1C96                 push    bp
seg001:1C97                 mov     bp, sp
seg001:1C99                 sub     sp, 2
seg001:1C9C                 push    si
seg001:1C9D                 mov     ax, word_2D628
seg001:1CA0                 cmp     ax, 9
seg001:1CA3                 jz      short loc_39F0
seg001:1CA5                 cmp     ax, 0Dh
seg001:1CA8                 jz      short loc_3A19
seg001:1CAA                 pop     si
seg001:1CAB                 mov     sp, bp
seg001:1CAD                 pop     bp
seg001:1CAE                 retf
seg001:1CAE ; ---------------------------------------------------------------------------
seg001:1CAF                 align 2
seg001:1CB0
seg001:1CB0 loc_39F0:                               ; CODE XREF: sub_39D6+D␘j
seg001:1CB0                 mov     [bp+var_2], 0
seg001:1CB5
seg001:1CB5 loc_39F5:                               ; CODE XREF: sub_39D6+41␙j
seg001:1CB5                 mov     si, [bp+var_2]
seg001:1CB8                 shl     si, 1
seg001:1CBA                 add     si, 0E6Ah
seg001:1CBE                 mov     al, [si]
seg001:1CC0                 sub     ah, ah
seg001:1CC2                 and     ax, 10h
seg001:1CC5                 shr     ax, 1
seg001:1CC7                 mov     cx, [si]
seg001:1CC9                 and     cx, 7
seg001:1CCC                 or      ax, cx
seg001:1CCE                 mov     [si], ax
seg001:1CD0                 inc     [bp+var_2]
seg001:1CD3                 cmp     [bp+var_2], 10h
seg001:1CD7                 jl      short loc_39F5
seg001:1CD9
seg001:1CD9 loc_3A19:                               ; CODE XREF: sub_39D6+12␘j
seg001:1CD9                 mov     ax, 0E6Ah
seg001:1CDC                 push    ax
seg001:1CDD                 call    far ptr sub_18994
seg001:1CE2                 add     sp, 2
seg001:1CE5                 pop     si
seg001:1CE6                 mov     sp, bp
seg001:1CE8                 pop     bp
seg001:1CE9                 retf
seg001:1CE9 sub_39D6        endp
seg001:1CE9
seg001:1CEA
