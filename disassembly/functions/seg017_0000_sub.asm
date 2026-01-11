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
seg017:0011 ; ---------------------------------------------------------------------------
seg017:0014                 db 80h, 0FAh, 1, 7Eh, 41h, 0Bh, 0D2h, 7Eh, 3Dh, 83h, 0FAh
seg017:0014                 db 0Fh, 7Fh, 38h, 0B4h, 48h, 8Bh, 1Eh, 0B6h, 0C0h, 0D1h
seg017:0014                 db 0EBh, 0D1h, 0EBh, 0D1h, 0EBh, 0D1h, 0EBh, 0CDh, 21h
seg017:0014                 db 3Dh, 7, 0, 74h, 23h, 3Dh, 8, 0, 74h, 1Eh, 8Dh, 1Eh
seg017:0014                 db 96h, 0BCh, 8Bh, 4Eh, 6, 0D1h, 0E1h, 3, 0D9h, 89h, 7
seg017:0014                 db 8Eh, 0C0h, 8Bh, 0Eh, 0B6h, 0C0h, 0D1h, 0E9h, 57h, 33h
seg017:0014                 db 0FFh, 33h, 0C0h, 0FCh, 0F3h, 0ABh, 5Fh, 5Dh, 0CBh, 5Ah
seg017:0014                 db 0, 5Ah, 0, 5Ah, 0, 5Ah, 0, 19h, 0, 19h, 0, 19h, 0, 5Ah
seg017:0014                 db 0, 19h, 0, 19h, 0, 19h, 0, 14h, 0, 14h, 0, 5Ah, 0, 5Ah
seg017:0014                 db 0, 5Ah, 0, 5Ah, 0, 5Ah, 0
seg017:0014 seg017          ends
seg017:0014
seg018:0000 ; ---------------------------------------------------------------------------
seg018:0000 ; ---------------------------------------------------------------------------
seg018:0000
seg018:0000 ; Segment type: Pure code
seg018:0000 seg018          segment byte public 'CODE' use16
seg018:0000                 assume cs:seg018
seg018:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg018:0000                 pop     dx
seg018:0001                 add     [bx+di], bl
seg018:0003                 add     [bp+si+0], bl
seg018:0006
