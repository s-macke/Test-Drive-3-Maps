seg005:1E8F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1E8F
seg005:1E8F
seg005:1E8F sub_DDAF        proc near               ; CODE XREF: sub_DAB2+E7␘p
seg005:1E8F                                         ; sub_DAB2:loc_DC2F␘p
seg005:1E8F                 cmp     byte ptr word_2D628, 9
seg005:1E94                 jz      short loc_DE07
seg005:1E96                 mov     bx, word_1F17A
seg005:1E9A                 shl     bx, 1
seg005:1E9C                 mov     es, word ptr [bx-7028h]
seg005:1EA0                 mov     di, word_280C6
seg005:1EA4                 mov     dx, 3CEh
seg005:1EA7                 mov     al, 8
seg005:1EA9                 mov     ah, byte_28457
seg005:1EAD                 mov     bl, ah
seg005:1EAF                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1EAF                                         ; set/reset.
seg005:1EAF                                         ; Data bits 0-3 select planes for write mode 00
seg005:1EB0                 sub     al, al
seg005:1EB2                 mov     ah, byte ptr word_28440
seg005:1EB6                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1EB6                                         ; set/reset.
seg005:1EB6                                         ; Data bits 0-3 select planes for write mode 00
seg005:1EB7                 and     es:[di], al
seg005:1EBA                 ror     bl, 1
seg005:1EBC                 jnb     short loc_DDDF
seg005:1EBE                 inc     di
seg005:1EBF
seg005:1EBF loc_DDDF:                               ; CODE XREF: sub_DDAF+2D␘j
seg005:1EBF                 mov     ax, word_28450
seg005:1EC2                 inc     ax
seg005:1EC3                 cmp     ax, word_2844E
seg005:1EC7                 jb      short loc_DDFA
seg005:1EC9                 sub     ax, ax
seg005:1ECB                 mov     di, word_2844C
seg005:1ECF                 sub     di, 28h ; '('
seg005:1ED2                 mov     word_2844C, di
seg005:1ED6                 mov     bl, byte_28458
seg005:1EDA
seg005:1EDA loc_DDFA:                               ; CODE XREF: sub_DDAF+38␘j
seg005:1EDA                 mov     word_280C6, di
seg005:1EDE                 mov     word_28450, ax
seg005:1EE1                 mov     byte_28457, bl
seg005:1EE5                 jmp     short locret_DE59
seg005:1EE7 ; ---------------------------------------------------------------------------
seg005:1EE7
seg005:1EE7 loc_DE07:                               ; CODE XREF: sub_DDAF+5␘j
seg005:1EE7                 mov     ah, byte_28442
seg005:1EEB                 mov     al, byte ptr word_28440
seg005:1EEE                 mov     byte_28442, al
seg005:1EF1                 inc     byte_28456
seg005:1EF5                 test    byte_28456, 1
seg005:1EFA                 jnz     short locret_DE59
seg005:1EFC                 mov     bx, word_1F17A
seg005:1F00                 shl     bx, 1
seg005:1F02                 mov     es, word ptr [bx-7028h]
seg005:1F06                 shl     ah, 1
seg005:1F08                 shl     ah, 1
seg005:1F0A                 shl     ah, 1
seg005:1F0C                 shl     ah, 1
seg005:1F0E                 or      al, ah
seg005:1F10                 mov     di, word_280C6
seg005:1F14                 stosb
seg005:1F15                 mov     bl, byte_28457
seg005:1F19                 inc     bl
seg005:1F1B                 cmp     bl, byte_28458
seg005:1F1F                 jnz     short loc_DE51
seg005:1F21                 sub     bh, bh
seg005:1F23                 sub     di, bx
seg005:1F25                 sub     bl, bl
seg005:1F27                 sub     di, 2000h
seg005:1F2B                 jns     short loc_DE51
seg005:1F2D                 add     di, 7F60h
seg005:1F31
seg005:1F31 loc_DE51:                               ; CODE XREF: sub_DDAF+90␘j
seg005:1F31                                         ; sub_DDAF+9C␘j
seg005:1F31                 mov     word_280C6, di
seg005:1F35                 mov     byte_28457, bl
seg005:1F39
seg005:1F39 locret_DE59:                            ; CODE XREF: sub_DDAF+56␘j
seg005:1F39                                         ; sub_DDAF+6B␘j
seg005:1F39                 retn
seg005:1F39 sub_DDAF        endp
seg005:1F39
seg005:1F39 seg005          ends
seg005:1F39
seg006:000A ; ---------------------------------------------------------------------------
seg006:000A
seg006:000A ; Segment type: Pure code
seg006:000A seg006          segment byte public 'CODE' use16
seg006:000A                 assume cs:seg006
seg006:000A                 ;org 0Ah
seg006:000A                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg006:000A                 db 0DFh, 0, 3Eh, 1, 0DFh, 0, 0E9h, 0, 1Fh, 2, 0DFh, 0
seg006:000A                 db 0DFh, 0, 0DFh, 0, 0C5h, 2, 0DFh, 0, 0DFh, 0, 0DFh, 0
seg006:000A                 db 0DFh, 0, 0D1h, 5, 8, 6, 57h, 6, 0DFh, 0, 0DFh, 0, 0E3h
seg006:000A                 db 0, 0A7h, 5, 84h, 5, 0DFh, 0, 0FFh, 0, 0B8h, 2, 0DFh
seg006:000A                 db 0, 0DFh, 0, 0DFh, 1, 0DFh, 0, 0DFh, 0, 0DFh, 0, 0DFh
seg006:000A                 db 0, 0DFh, 0, 0DFh, 0, 3Eh, 1, 0DFh, 0, 0E9h, 0, 1Fh
seg006:000A                 db 2, 0DFh, 0, 0DFh, 0, 0DFh, 0, 0C5h, 2, 0DFh, 0, 0DFh
seg006:000A                 db 0, 0DFh, 0, 0DFh, 0, 0D1h, 5, 0DFh, 0, 0DFh, 0, 0DFh
seg006:000A                 db 0, 0DFh, 0, 0E3h, 0, 0A7h, 5, 0DFh, 0, 0DFh, 0, 0FFh
seg006:000A                 db 0, 0B8h, 2, 0DFh, 0, 0DFh, 0, 0DFh, 1, 0DFh, 0, 0DFh
seg006:000A                 db 0, 0DFh, 0, 0DFh, 0, 0DFh, 0
seg006:008A
