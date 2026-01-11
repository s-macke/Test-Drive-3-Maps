seg032:04B5 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:04B5
seg032:04B5
seg032:04B5 sub_1B655       proc near               ; CODE XREF: seg032:00C2␘p
seg032:04B5                                         ; seg032:00CA␘p ...
seg032:04B5                 or      ax, ax
seg032:04B7                 jge     short loc_1B65B
seg032:04B9                 sub     ax, ax
seg032:04BB
seg032:04BB loc_1B65B:                              ; CODE XREF: sub_1B655+2␘j
seg032:04BB                 cmp     ax, bx
seg032:04BD                 jl      short locret_1B662
seg032:04BF                 mov     ax, bx
seg032:04C1                 dec     ax
seg032:04C2
seg032:04C2 locret_1B662:                           ; CODE XREF: sub_1B655+8␘j
seg032:04C2                 retn
seg032:04C2 sub_1B655       endp
seg032:04C2
seg032:04C3 ; ---------------------------------------------------------------------------
seg032:04C3                 add     bx, word_2BEC6
seg032:04C7                 mov     word_2BE68, bx
seg032:04CB                 mov     word_2BE70, bx
seg032:04CF                 add     dx, word_2BEC8
seg032:04D3                 mov     word_2BE6A, dx
seg032:04D7                 mov     word_2BE72, dx
seg032:04DB                 mov     cx, bx
seg032:04DD                 call    sub_1BB62
seg032:04E0                 retn
seg032:04E1
