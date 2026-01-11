seg004:01D5 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:01D5
seg004:01D5
seg004:01D5 sub_AA85        proc near               ; CODE XREF: sub_A8EF+71␘p
seg004:01D5                                         ; sub_A8EF+CB␘p
seg004:01D5                 push    es
seg004:01D6                 les     di, dword_20390
seg004:01DA                 stosb
seg004:01DB                 mov     word ptr dword_20390, di
seg004:01DF                 pop     es
seg004:01E0                 retn
seg004:01E0 sub_AA85        endp
seg004:01E0
seg004:01E1
