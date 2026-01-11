seg001:1C7A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1C7A
seg001:1C7A
seg001:1C7A sub_39BA        proc far                ; CODE XREF: sub_1DAA+7C0␘p
seg001:1C7A                 cmp     word_2D628, 13h
seg001:1C7F                 jnz     short locret_39C6
seg001:1C81                 call    sub_CADF
seg001:1C86
seg001:1C86 locret_39C6:                            ; CODE XREF: sub_39BA+5␘j
seg001:1C86                 retf
seg001:1C86 sub_39BA        endp
seg001:1C86
seg001:1C86 ; ---------------------------------------------------------------------------
seg001:1C87                 align 2
seg001:1C88
