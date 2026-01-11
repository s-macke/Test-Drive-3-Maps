seg006:5DD3 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:5DD3
seg006:5DD3
seg006:5DD3 sub_13C23       proc near               ; CODE XREF: sub_13B3C+D7␘p
seg006:5DD3                                         ; sub_13B3C+E3␘p
seg006:5DD3                 push    bp
seg006:5DD4                 mov     dl, byte_2ACC2
seg006:5DD8                 mov     ax, 1000h
seg006:5DDB                 sub     dl, 10h
seg006:5DDE                 js      short loc_13C36
seg006:5DE0                 mov     dh, dl
seg006:5DE2                 sub     dl, dl
seg006:5DE4                 add     ax, dx
seg006:5DE6
seg006:5DE6 loc_13C36:                              ; CODE XREF: sub_13C23+B␘j
seg006:5DE6                 mov     dl, byte_285C2
seg006:5DEA                 sub     dh, dh
seg006:5DEC                 or      dx, dx
seg006:5DEE                 jz      short loc_13CAE
seg006:5DF0                 push    dx
seg006:5DF1                 push    ax
seg006:5DF2                 call    sub_10017
seg006:5DF7                 add     sp, 4
seg006:5DFA                 mov     bx, [si-4EBBh]
seg006:5DFE                 xchg    bx, si
seg006:5E00                 add     si, 2
seg006:5E03                 mov     es, word_2D8AA
seg006:5E07                 shl     si, 1
seg006:5E09                 mov     ax, si
seg006:5E0B                 shl     si, 1
seg006:5E0D                 shl     si, 1
seg006:5E0F                 add     si, ax
seg006:5E11                 add     si, word_2D8A8
seg006:5E15                 mov     si, es:[si]
seg006:5E18                 and     si, 7FFh
seg006:5E1C                 shl     si, 1
seg006:5E1E                 mov     ax, [si+2414h]
seg006:5E22                 add     ax, word_2844E
seg006:5E26                 mov     [si+240Eh], ax
seg006:5E2A                 add     ax, 8
seg006:5E2D                 mov     [si+2410h], ax
seg006:5E31                 mov     cx, word_2844C
seg006:5E35                 mov     dx, [bx-577Bh]
seg006:5E39                 mov     bp, 8
seg006:5E3C                 test    dh, 80h
seg006:5E3F                 jz      short loc_13C95
seg006:5E41                 neg     cx
seg006:5E43                 neg     bp
seg006:5E45
seg006:5E45 loc_13C95:                              ; CODE XREF: sub_13C23+6C␘j
seg006:5E45                 test    dh, 40h
seg006:5E48                 jnz     short loc_13CB0
seg006:5E4A                 mov     ax, [bx-5B3Bh]
seg006:5E4E                 shl     ax, 1
seg006:5E50                 shl     ax, 1
seg006:5E52                 sub     ax, cx
seg006:5E54                 mov     [si+308Eh], ax
seg006:5E58                 add     ax, bp
seg006:5E5A                 mov     [si+3090h], ax
seg006:5E5E
seg006:5E5E loc_13CAE:                              ; CODE XREF: sub_13C23+1B␘j
seg006:5E5E                 pop     bp
seg006:5E5F                 retn
seg006:5E60 ; ---------------------------------------------------------------------------
seg006:5E60
seg006:5E60 loc_13CB0:                              ; CODE XREF: sub_13C23+75␘j
seg006:5E60                 neg     cx
seg006:5E62                 neg     bp
seg006:5E64                 mov     ax, [bx-59FBh]
seg006:5E68                 shl     ax, 1
seg006:5E6A                 shl     ax, 1
seg006:5E6C                 sub     ax, cx
seg006:5E6E                 mov     [si+3D0Eh], ax
seg006:5E72                 add     ax, bp
seg006:5E74                 mov     [si+3D10h], ax
seg006:5E78                 pop     bp
seg006:5E79                 retn
seg006:5E79 sub_13C23       endp
seg006:5E79
seg006:5E7A
