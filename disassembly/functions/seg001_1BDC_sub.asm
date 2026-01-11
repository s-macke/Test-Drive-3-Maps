seg001:1BDC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1BDC
seg001:1BDC ; Attributes: bp-based frame
seg001:1BDC
seg001:1BDC sub_391C        proc far                ; CODE XREF: sub_1DAA+DF␘p
seg001:1BDC                                         ; sub_1DAA+354␘p ...
seg001:1BDC                 push    bp
seg001:1BDD                 mov     bp, sp
seg001:1BDF                 sub     sp, 2
seg001:1BE2                 sub     ax, ax
seg001:1BE4                 mov     word_1F17A, ax
seg001:1BE7                 push    ax
seg001:1BE8                 call    far ptr sub_16BB0
seg001:1BED                 add     sp, 2
seg001:1BF0                 call    sub_C7ED
seg001:1BF5                 mov     sp, bp
seg001:1BF7                 pop     bp
seg001:1BF8                 retf
seg001:1BF8 sub_391C        endp
seg001:1BF8
seg001:1BF8 ; ---------------------------------------------------------------------------
seg001:1BF9                 align 2
seg001:1BFA
