seg001:1CEA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1CEA
seg001:1CEA
seg001:1CEA sub_3A2A        proc far                ; CODE XREF: sub_0+63␘P
seg001:1CEA                 cmp     byte_1F17C, 0
seg001:1CEF                 jnz     short loc_3A56
seg001:1CF1                 push    word_1F176
seg001:1CF5                 call    sub_1EF8A
seg001:1CFA                 add     sp, 2
seg001:1CFD                 push    word_1F176
seg001:1D01                 call    sub_1E158
seg001:1D06                 add     sp, 2
seg001:1D09                 mov     al, byte_2B6C9
seg001:1D0C                 sub     ah, ah
seg001:1D0E                 mov     word_1F176, ax
seg001:1D11                 call    sub_CFC7
seg001:1D16
seg001:1D16 loc_3A56:                               ; CODE XREF: sub_3A2A+5␘j
seg001:1D16                 mov     byte_1F17C, 1
seg001:1D1B                 retf
seg001:1D1B sub_3A2A        endp
seg001:1D1B
seg001:1D1C
