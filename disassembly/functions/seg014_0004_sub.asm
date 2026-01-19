seg014:0004 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg014:0004
seg014:0004 ; Attributes: bp-based frame
seg014:0004
seg014:0004 sub_16B44       proc near               ; CODE XREF: sub_8DC+324␘P
seg014:0004                                         ; sub_1688+595␘P
seg014:0004
seg014:0004 arg_2           = word ptr  6
seg014:0004
seg014:0004                 push    bp
seg014:0005                 mov     bp, sp
seg014:0007                 mov     ax, [bp+arg_2]
seg014:000A                 and     ax, 0Fh
seg014:000D                 lea     bx, aAss_lz     ; "ASS.LZ"
seg014:0011                 add     bx, word_2AD2E
seg014:0015                 jmp     word ptr cs:[bx]
seg014:0015 sub_16B44       endp
seg014:0015
seg014:0018 ; ---------------------------------------------------------------------------
seg014:0018                 cmp     al, 1
seg014:001A                 jle     short loc_16B6E
seg014:001C                 mov     byte_2AD2D, al
seg014:001F                 shl     ax, 1
seg014:0021                 lea     bx, unk_2AD76
seg014:0025                 add     bx, ax
seg014:0027                 mov     ax, [bx]
seg014:0029                 mov     word_2AD70, ax
seg014:002C                 jmp     short loc_16B82
seg014:002E ; ---------------------------------------------------------------------------
seg014:002E
seg014:002E loc_16B6E:                              ; CODE XREF: seg014:001A␘j
seg014:002E                 mov     byte_2AD2D, al
seg014:0031                 mov     cx, word_2B196
seg014:0035                 mul     cx
seg014:0037                 mov     cl, 4
seg014:0039                 shr     ax, cl
seg014:003B                 add     ax, word_2B21A
seg014:003F                 mov     word_2AD70, ax
seg014:0042
seg014:0042 loc_16B82:                              ; CODE XREF: seg014:002C␘j
seg014:0042                 xor     ax, ax
seg014:0044                 pop     bp
seg014:0045                 retf
