seg004:01E8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:01E8
seg004:01E8
seg004:01E8 sub_AA98        proc near               ; CODE XREF: sub_A8EF+D4␘p
seg004:01E8                 mov     bx, word_207A0
seg004:01EC                 call    sub_AA91
seg004:01EF                 push    es
seg004:01F0                 mov     es, word_20798
seg004:01F4                 mov     al, byte_207A9
seg004:01F7                 mov     es:[bx+2], al
seg004:01FB                 mov     ax, word_2079C
seg004:01FE                 mov     es:[bx], ax
seg004:0201                 pop     es
seg004:0202                 inc     word_207A0
seg004:0206                 retn
seg004:0206 sub_AA98        endp
seg004:0206
