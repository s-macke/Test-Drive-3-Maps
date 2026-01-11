seg018:0006 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg018:0006
seg018:0006 ; Attributes: bp-based frame
seg018:0006
seg018:0006 sub_16DC6       proc near               ; CODE XREF: sub_7BC+D␘P
seg018:0006                                         ; sub_84C+1C␘P
seg018:0006                 push    bp
seg018:0007                 mov     bp, sp
seg018:0009                 mov     ax, 1
seg018:000C                 lea     bx, unk_1F11D
seg018:0010                 add     bx, word_2AD2E
seg018:0014                 jmp     word ptr cs:[bx]
seg018:0014 sub_16DC6       endp
seg018:0014
seg018:0014 ; ---------------------------------------------------------------------------
seg018:0017                 db 8Dh, 1Eh, 96h, 0BCh, 8Bh, 4Eh, 6, 0D1h, 0E1h, 3, 0D9h
seg018:0017                 db 8Bh, 7, 8Eh, 0C0h, 0B4h, 49h, 0CDh, 21h, 3Dh, 7, 0
seg018:0017                 db 74h, 0Ch, 3Dh, 9, 0, 74h, 7, 0A1h, 3Ah, 0C1h, 89h, 7
seg018:0017                 db 33h, 0C0h, 5Dh, 0CBh, 3Bh, 0, 3Bh, 0, 3Bh, 0, 3Bh, 0
seg018:0017                 db 17h, 0, 17h, 0, 17h, 0, 3Bh, 0, 17h, 0, 17h, 0, 17h
seg018:0017                 db 0, 17h, 0, 17h, 0, 3Bh, 0, 3Bh, 0, 3Bh, 0, 3Bh, 0, 3Bh
seg018:0017 seg018          ends
seg018:0017
seg019:0000 ; ---------------------------------------------------------------------------
seg019:0000
seg019:0000 ; Segment type: Pure code
seg019:0000 seg019          segment byte public 'CODE' use16
seg019:0000                 assume cs:seg019
seg019:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg019:0000                 db 0, 3Bh, 0, 17h, 0, 3Bh, 0
seg019:0007
