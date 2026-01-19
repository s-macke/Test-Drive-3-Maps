seg032:1E7E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:1E7E
seg032:1E7E
seg032:1E7E sub_1D01E       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:1E7E                                         ; DATA XREF: dseg:C5AC␙o
seg032:1E7E                 test    byte ptr word_2BEEC, 20h
seg032:1E83                 stc
seg032:1E84                 jz      short locret_1D04C
seg032:1E86                 mov     bx, 1E1Ah
seg032:1E89                 mov     cx, 64h ; 'd'
seg032:1E8C                 call    sub_1B68E
seg032:1E8F                 mov     word_2BEF6, 2000h
seg032:1E95                 mov     word_2BEF8, 5FA6h
seg032:1E9B                 mov     word_2BEFA, 7FA6h
seg032:1EA1                 mov     ax, word_2BEEE
seg032:1EA4                 rol     al, 1
seg032:1EA6                 rol     al, 1
seg032:1EA8                 and     byte_2B5DC, al
seg032:1EAC
seg032:1EAC locret_1D04C:                           ; CODE XREF: sub_1D01E+6␘j
seg032:1EAC                 retn
seg032:1EAC sub_1D01E       endp
seg032:1EAC
seg032:1EAD ; ---------------------------------------------------------------------------
seg032:1EAD                 mov     al, byte ptr word_2B5CD
seg032:1EB0                 mov     ah, 0
seg032:1EB2                 call    sub_1B83E
seg032:1EB5                 retn
