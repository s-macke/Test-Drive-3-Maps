seg017:0000 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg017:0000
seg017:0000 ; Attributes: bp-based frame
seg017:0000
seg017:0000 sub_16D40       proc near               ; CODE XREF: sub_8DC+305␘P
seg017:0000
seg017:0000 arg_2           = word ptr  6
seg017:0000
seg017:0000                 push    bp
seg017:0001                 mov     bp, sp
seg017:0003                 mov     dx, [bp+arg_2]
seg017:0006                 mov     ax, 1
seg017:0009                 lea     bx, aGa_lz      ; "GA.LZ"
seg017:000D                 add     bx, word_2AD2E
seg017:0011                 jmp     word ptr cs:[bx]
seg017:0011 sub_16D40       endp
seg017:0011
