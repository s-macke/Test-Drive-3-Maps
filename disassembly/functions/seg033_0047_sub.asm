seg033:0047 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0047
seg033:0047 ; Attributes: bp-based frame
seg033:0047
seg033:0047 sub_1DFD7       proc far                ; CODE XREF: sub_3A5C+3A␘P
seg033:0047                                         ; sub_3A5C+106␘P ...
seg033:0047
seg033:0047 arg_0           = dword ptr  6
seg033:0047 arg_4           = byte ptr  0Ah
seg033:0047 arg_6           = byte ptr  0Ch
seg033:0047
seg033:0047                 push    bp
seg033:0048                 mov     bp, sp
seg033:004A                 push    es
seg033:004B                 push    ax
seg033:004C                 push    bx
seg033:004D                 push    cx
seg033:004E                 push    dx
seg033:004F                 call    sub_1DF92
seg033:0052                 les     dx, [bp+arg_0]
seg033:0055                 mov     ax, es
seg033:0057                 or      ax, dx
seg033:0059                 jz      short loc_1E039
seg033:005B                 add     dx, 2
seg033:005E                 mov     word ptr dword_2B923, dx
seg033:0062                 mov     word ptr dword_2B923+2, es
seg033:0066                 mov     byte_2B6C8, 10h
seg033:006B                 mov     al, [bp+arg_4]
seg033:006E                 or      al, al
seg033:0070                 jz      short loc_1E019
seg033:0072                 and     al, 0Fh
seg033:0074                 or      al, 20h
seg033:0076                 or      byte_2B6C8, al
seg033:007A                 mov     al, [bp+arg_6]
seg033:007D                 mov     byte_2B952, al
seg033:0080                 mov     byte_2B951, 0
seg033:0085                 mov     al, 81h ; 'ü'
seg033:0087                 jmp     short loc_1E01C
seg033:0089 ; ---------------------------------------------------------------------------
seg033:0089
seg033:0089 loc_1E019:                              ; CODE XREF: sub_1DFD7+29␘j
seg033:0089                 mov     al, [bp+arg_6]
seg033:008C
seg033:008C loc_1E01C:                              ; CODE XREF: sub_1DFD7+40␘j
seg033:008C                 mov     byte_2B6C4, al
seg033:008F                 mov     word_2B921, 1
seg033:0095                 mov     byte_2B928, 0
seg033:009A                 call    sub_1E0DD
seg033:009D                 test    byte_2B6C6, 1
seg033:00A2                 jz      short loc_1E039
seg033:00A4                 or      byte_2B6C7, 1
seg033:00A9
seg033:00A9 loc_1E039:                              ; CODE XREF: sub_1DFD7+12␘j
seg033:00A9                                         ; sub_1DFD7+5B␘j
seg033:00A9                 pop     dx
seg033:00AA                 pop     cx
seg033:00AB                 pop     bx
seg033:00AC                 pop     ax
seg033:00AD                 pop     es
seg033:00AE                 pop     bp
seg033:00AF                 retf
seg033:00AF sub_1DFD7       endp
seg033:00AF
seg033:00B0
