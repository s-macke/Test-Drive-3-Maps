seg032:069E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:069E
seg032:069E
seg032:069E sub_1B83E       proc near               ; CODE XREF: sub_1B681+5␘p
seg032:069E                                         ; seg032:09EF␙p ...
seg032:069E                 push    bp
seg032:069F                 push    si
seg032:06A0                 push    di
seg032:06A1                 int     10h             ; - VIDEO -
seg032:06A3                 pop     di
seg032:06A4                 pop     si
seg032:06A5                 pop     bp
seg032:06A6                 retn
seg032:06A6 sub_1B83E       endp
seg032:06A6
seg032:06A7
