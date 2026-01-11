seg004:0138 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:0138
seg004:0138
seg004:0138 sub_A9E8        proc near               ; CODE XREF: sub_A8EF+46␘p
seg004:0138                 push    cx
seg004:0139                 push    di
seg004:013A                 push    si
seg004:013B                 push    ds
seg004:013C                 push    es
seg004:013D                 mov     cx, 400h
seg004:0140                 les     di, off_20794
seg004:0144                 assume es:nothing
seg004:0144                 lds     si, dword_2038C
seg004:0148                 rep movsb
seg004:014A                 pop     es
seg004:014B                 pop     ds
seg004:014C                 mov     word ptr dword_2038C, si
seg004:0150                 pop     si
seg004:0151                 pop     di
seg004:0152                 pop     cx
seg004:0153                 retn
seg004:0153 sub_A9E8        endp
seg004:0153
seg004:0154
