seg029:0007 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg029:0007
seg029:0007 ; Attributes: bp-based frame
seg029:0007
seg029:0007 sub_18D47       proc far                ; CODE XREF: sub_1693E+31␘P
seg029:0007
seg029:0007 arg_0           = word ptr  6
seg029:0007 arg_2           = word ptr  8
seg029:0007 arg_4           = word ptr  0Ah
seg029:0007 arg_6           = word ptr  0Ch
seg029:0007
seg029:0007                 push    bp
seg029:0008                 mov     bp, sp
seg029:000A                 mov     ax, [bp+arg_0]
seg029:000D                 cmp     ax, word_2AD3B
seg029:0011                 jg      short loc_18DA1
seg029:0013                 cmp     ax, word_2AD3D
seg029:0017                 jge     short loc_18D5C
seg029:0019                 mov     ax, word_2AD3D
seg029:001C
seg029:001C loc_18D5C:                              ; CODE XREF: sub_18D47+10␘j
seg029:001C                 mov     bx, [bp+arg_2]
seg029:001F                 cmp     bx, word_2AD3D
seg029:0023                 jl      short loc_18DA1
seg029:0025                 cmp     bx, word_2AD3B
seg029:0029                 jle     short loc_18D6F
seg029:002B                 mov     bx, word_2AD3B
seg029:002F
seg029:002F loc_18D6F:                              ; CODE XREF: sub_18D47+22␘j
seg029:002F                 mov     cx, [bp+arg_4]
seg029:0032                 cmp     cx, word_2AD3F
seg029:0036                 jg      short loc_18DA1
seg029:0038                 cmp     cx, word_2AD41
seg029:003C                 jge     short loc_18D82
seg029:003E                 mov     cx, word_2AD41
seg029:0042
seg029:0042 loc_18D82:                              ; CODE XREF: sub_18D47+35␘j
seg029:0042                 mov     dx, [bp+arg_6]
seg029:0045                 cmp     dx, word_2AD41
seg029:0049                 jl      short loc_18DA1
seg029:004B                 cmp     dx, word_2AD3F
seg029:004F                 jle     short loc_18D95
seg029:0051                 mov     dx, word_2AD3F
seg029:0055
seg029:0055 loc_18D95:                              ; CODE XREF: sub_18D47+48␘j
seg029:0055                 push    dx
seg029:0056                 push    cx
seg029:0057                 push    bx
seg029:0058                 push    ax
seg029:0059                 call    far ptr sub_172BD
seg029:005E                 add     sp, 8
seg029:0061
seg029:0061 loc_18DA1:                              ; CODE XREF: sub_18D47+A␘j
seg029:0061                                         ; sub_18D47+1C␘j ...
seg029:0061                 xor     ax, ax
seg029:0063                 pop     bp
seg029:0064                 retf
seg029:0064 sub_18D47       endp
seg029:0064
seg029:0064 ; ---------------------------------------------------------------------------
seg029:0065                 db 33h, 0C0h, 8Eh, 0C0h, 57h, 56h, 0B4h, 12h, 0B3h, 10h
seg029:0065                 db 0CDh, 10h, 5Eh, 5Fh, 80h, 0FBh, 10h, 74h, 1Ah, 26h
seg029:0065                 db 0A0h, 87h, 4, 0A8h, 8, 75h, 12h, 0A8h, 2, 75h, 0Eh
seg029:0065                 db 80h, 0E1h, 0Fh, 80h, 0F9h, 9, 75h, 6, 8Ah, 0C3h, 0FEh
seg029:0065                 db 0C0h
seg029:0065 seg029          ends
seg029:0065
seg030:0000 ; ---------------------------------------------------------------------------
seg030:0000 ; ---------------------------------------------------------------------------
seg030:0000
seg030:0000 ; Segment type: Pure code
seg030:0000 seg030          segment byte public 'CODE' use16
seg030:0000                 assume cs:seg030
seg030:0000                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg030:0000                 cbw
seg030:0001                 retf
seg030:0002 ; ---------------------------------------------------------------------------
seg030:0002                 xor     ax, ax
seg030:0004                 retf
seg030:0005
