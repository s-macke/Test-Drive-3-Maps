seg033:00B0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:00B0
seg033:00B0 ; Attributes: bp-based frame
seg033:00B0
seg033:00B0 sub_1E040       proc far                ; CODE XREF: sub_EC6+FA␘P
seg033:00B0                                         ; sub_EC6+1A2␘P ...
seg033:00B0
seg033:00B0 arg_0           = byte ptr  6
seg033:00B0
seg033:00B0                 push    bp
seg033:00B1                 mov     bp, sp
seg033:00B3                 push    ax
seg033:00B4                 push    bx
seg033:00B5                 push    cx
seg033:00B6                 push    dx
seg033:00B7                 cmp     [bp+arg_0], 0
seg033:00BB                 jnz     short loc_1E052
seg033:00BD                 call    sub_1DF92
seg033:00C0                 jmp     short loc_1E072
seg033:00C2 ; ---------------------------------------------------------------------------
seg033:00C2
seg033:00C2 loc_1E052:                              ; CODE XREF: sub_1E040+B␘j
seg033:00C2                 mov     al, [bp+arg_0]
seg033:00C5                 test    al, 80h
seg033:00C7                 jz      short loc_1E060
seg033:00C9                 mov     byte_2B6C8, 80h ; 'Ç'
seg033:00CE                 jmp     short loc_1E072
seg033:00D0 ; ---------------------------------------------------------------------------
seg033:00D0
seg033:00D0 loc_1E060:                              ; CODE XREF: sub_1E040+17␘j
seg033:00D0                 and     al, 0Fh
seg033:00D2                 mov     ah, byte_2B6C8
seg033:00D6                 and     ah, 0F0h
seg033:00D9                 or      ah, al
seg033:00DB                 or      ah, 40h
seg033:00DE                 mov     byte_2B6C8, ah
seg033:00E2
seg033:00E2 loc_1E072:                              ; CODE XREF: sub_1E040+10␘j
seg033:00E2                                         ; sub_1E040+1E␘j
seg033:00E2                 pop     dx
seg033:00E3                 pop     cx
seg033:00E4                 pop     bx
seg033:00E5                 pop     ax
seg033:00E6                 pop     bp
seg033:00E7                 retf
seg033:00E7 sub_1E040       endp
seg033:00E7
seg033:00E8
